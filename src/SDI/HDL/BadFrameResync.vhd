-------------------------------------------------------------------------------
--
-- Title       : BadFrameREsync
-- Design      : fir-00251-camera
-- Author      : Jean-Alexis Boulet
-- Company     : Telops
--
-------------------------------------------------------------------------------
--
-- File        : 
-- Generated   : 
-- From        : 
-- By          : 
--
-------------------------------------------------------------------------------
--
-- Description : This file skip à number X of valid frame before letting the data go to the next interface
-- This should fix the issue with the video scaler
--
-------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;
use work.TEL2000.all;

entity Bad_Frame_Sync is
    port(
        CLK : in STD_LOGIC;
        ARESETN : in STD_LOGIC;
        AXIS_VIDEO_IN_MOSI  : in t_axi4_stream_mosi32;
        AXIS_VIDEO_IN_MISO  : out t_axi4_stream_miso;
        AXIS_VIDEO_OUT_MOSI : out t_axi4_stream_mosi32;
        AXIS_VIDEO_OUT_MISO : in t_axi4_stream_miso;
        OUTPUT_IMG_SIZE     : in std_logic_vector(31 downto 0)
    );
    attribute KEEP_HIERARCHY : string;
    attribute KEEP_HIERARCHY of Bad_Frame_Sync : entity is "TRUE";
end Bad_Frame_Sync;


architecture rtl of Bad_Frame_Sync is
    
   component sync_resetn
      port(
         ARESETN : in STD_LOGIC;
         SRESETN : out STD_LOGIC;
         CLK    : in STD_LOGIC);
   end component;

    signal sresetn : std_logic;
    
    signal axis_video_out_tvalid    : std_logic;
    
    signal compteur_pixel_sdi       : unsigned(OUTPUT_IMG_SIZE'range);
    signal internal_tlast_sdi       : std_logic;
    signal internal_pixel_keep_sdi  : std_logic;

begin

   AXIS_VIDEO_IN_MISO.TREADY <= AXIS_VIDEO_OUT_MISO.TREADY;
   
   AXIS_VIDEO_OUT_MOSI.TDATA <= AXIS_VIDEO_IN_MOSI.TDATA;
   AXIS_VIDEO_OUT_MOSI.TVALID <= axis_video_out_tvalid;
   AXIS_VIDEO_OUT_MOSI.TLAST <= internal_tlast_sdi;
   AXIS_VIDEO_OUT_MOSI.TUSER <= AXIS_VIDEO_IN_MOSI.TUSER;
   AXIS_VIDEO_OUT_MOSI.TSTRB <= AXIS_VIDEO_IN_MOSI.TSTRB;
   AXIS_VIDEO_OUT_MOSI.TKEEP <= AXIS_VIDEO_IN_MOSI.TKEEP;
   AXIS_VIDEO_OUT_MOSI.TID <= AXIS_VIDEO_IN_MOSI.TID;
   AXIS_VIDEO_OUT_MOSI.TDEST <= AXIS_VIDEO_IN_MOSI.TDEST;

   -- enter your statements here --
   reset : sync_resetn port map(ARESETN => ARESETN, CLK => CLK, SRESETN => sresetn);
   
   axis_video_out_tvalid <= AXIS_VIDEO_IN_MOSI.TVALID and internal_pixel_keep_sdi;
      
   tlast_sdi_proc : process(CLK) --Count pixels and generate tlast (end of frame) from the scaler output
   begin
      if rising_edge(CLK) then
         if sresetn = '0' then
            compteur_pixel_sdi <= (others => '0');
            internal_tlast_sdi <= '0';
         else
            if (compteur_pixel_sdi = (unsigned(OUTPUT_IMG_SIZE) - 2) and axis_video_out_tvalid = '1' and AXIS_VIDEO_OUT_MISO.TREADY = '1') then
               compteur_pixel_sdi <= compteur_pixel_sdi + 1;
               internal_tlast_sdi <= '0';
            elsif (compteur_pixel_sdi = (unsigned(OUTPUT_IMG_SIZE) - 3) and axis_video_out_tvalid = '1' and AXIS_VIDEO_OUT_MISO.TREADY = '1') then
               compteur_pixel_sdi <= compteur_pixel_sdi + 1;
               internal_tlast_sdi <= '1';
            elsif (axis_video_out_tvalid = '1' and AXIS_VIDEO_OUT_MISO.TREADY = '1' and AXIS_VIDEO_IN_MOSI.TUSER(0) = '1') then  --Sync to first line
               compteur_pixel_sdi <= (others => '0');
               internal_tlast_sdi <= '0';
            elsif (compteur_pixel_sdi >= (unsigned(OUTPUT_IMG_SIZE) - 1) and axis_video_out_tvalid = '1' and AXIS_VIDEO_OUT_MISO.TREADY = '1') then
               compteur_pixel_sdi <= compteur_pixel_sdi + 1;
               internal_tlast_sdi <= '0';
            elsif (axis_video_out_tvalid = '1' and AXIS_VIDEO_OUT_MISO.TREADY = '1') then
               compteur_pixel_sdi <= compteur_pixel_sdi + 1;
               internal_tlast_sdi <= '0';
            else
               compteur_pixel_sdi <= compteur_pixel_sdi;
               internal_tlast_sdi <= internal_tlast_sdi;
            end if;
         end if;
      end if;
   end process;
   
   -- remove pixels between TLAST AND SOF.
   internal_pixel_keep_sdi <= '0' when (compteur_pixel_sdi >= (unsigned(OUTPUT_IMG_SIZE) - 1) and AXIS_VIDEO_IN_MOSI.TUSER(0) = '0') else '1';
   
end rtl;