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
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

use work.TEL2000.all;

entity Bad_Frame_Sync is
    port(
        CLK : in STD_LOGIC;
        ARESETN : in STD_LOGIC;	  
        axis_video_in_mosi : in t_axi4_stream_mosi32;
        axis_video_in_miso : out t_axi4_stream_miso;
        axis_video_out_mosi : out t_axi4_stream_mosi32;
        axis_video_out_miso : in t_axi4_stream_miso;
	    Output_Img_Size     : in std_logic_vector(31 downto 0);
    	Nb_Frame 			: in std_logic_vector(31 downto 0);
    	Img_Width 			: in std_logic_vector(15 downto 0);
    	Img_Heigth 			: in std_logic_vector(15 downto 0)
    );
    attribute keep : string;
    attribute keep of Bad_Frame_Sync : entity is "TRUE";
end Bad_Frame_Sync;


architecture rtl of Bad_Frame_Sync is
    --attribute keep : string;
    
   component sync_resetn
      port(
         ARESETN : in STD_LOGIC;
         SRESETN : out STD_LOGIC;
         CLK    : in STD_LOGIC);
   end component;

    type Replacer_state is (Cnt_valid_frame, wait_next_eof, transmit_rdy);
   
    signal image_pix_cnt : unsigned(31 downto 0) := unsigned(Img_Width) * unsigned(Img_Heigth);
   
    signal replacer_state_s : Replacer_state := Cnt_valid_frame;
   
    signal sresetn : std_logic;
    signal frame_cnt : unsigned(31 downto 0);
    signal m_tvalid_o    : std_logic;
    signal line_cnt  : unsigned(15 downto 0);
    signal pixel_cnt : unsigned(31 downto 0);
    signal frame_sync_err : std_logic;
    signal frame_trig   : std_logic;
    
    attribute keep of frame_cnt : signal is "TRUE";
    attribute keep of m_tvalid_o : signal is "TRUE";
    attribute keep of line_cnt : signal is "TRUE";
    attribute keep of pixel_cnt : signal is "TRUE";
    attribute keep of frame_sync_err : signal is "TRUE";
    attribute keep of replacer_state_s : signal is "TRUE";
    attribute keep of frame_trig : signal is "TRUE";
    
    signal s_axis_video_tdata      : std_logic_vector(23 downto 0);
    signal s_axis_video_tready     : std_logic;
    signal s_axis_video_tvalid     : std_logic;
    signal s_axis_video_tlast      : std_logic;
    signal s_axis_video_tuser      : std_logic;
    signal m_axis_video_tdata      : std_logic_vector(23 downto 0);
    signal m_axis_video_tready     : std_logic;
    signal m_axis_video_tvalid     : std_logic;
    signal m_axis_video_tuser      : std_logic;
    
    signal compteur_pixel_sdi      : std_logic_vector(31 downto 0);
    signal internal_tlast_sdi      : std_logic;    
    signal internal_pixel_remove_sdi :   std_logic_vector(0 downto 0);    

begin

   s_axis_video_tdata <= axis_video_in_mosi.TDATA(23 downto 0);
   axis_video_in_miso.TREADY <= s_axis_video_tready;
   s_axis_video_tvalid <= axis_video_in_mosi.TVALID;
   s_axis_video_tlast <= axis_video_in_mosi.TLAST;
   s_axis_video_tuser <= axis_video_in_mosi.TUSER(0);
   
   axis_video_out_mosi.TDATA <= "00000000" & m_axis_video_tdata;
   m_axis_video_tready <= axis_video_out_miso.TREADY;
   axis_video_out_mosi.TVALID <= m_axis_video_tvalid;
   axis_video_out_mosi.TLAST <= internal_tlast_sdi;
   axis_video_out_mosi.TUSER <= "0000000" & m_axis_video_tuser;

   -- enter your statements here --
   reset : sync_resetn
   port map(ARESETN => ARESETN, CLK => CLK, SRESETN => sresetn);
   
   m_axis_video_tvalid <= s_axis_video_tvalid and internal_pixel_remove_sdi(0);
   s_axis_video_tready <= m_axis_video_tready;
   m_axis_video_tuser <= s_axis_video_tuser;
   m_axis_video_tdata <= s_axis_video_tdata;
   
   Count : process(CLK)
   begin
      if rising_edge(CLK) then
         if sresetn = '0' then
            line_cnt <= (others => '0');
            pixel_cnt <= (others => '0');
            frame_trig <= '0';
         else
            if s_axis_video_tuser = '1' and s_axis_video_tvalid = '1' and m_axis_video_tready = '1' then -- start of new frame
                frame_trig <= '1';  
                line_cnt <= (others => '0');
                pixel_cnt <= (others => '0');
            elsif s_axis_video_tlast = '1' and s_axis_video_tvalid = '1' and m_axis_video_tready = '1' then -- start of new line
                line_cnt <= line_cnt +1;
                pixel_cnt <= pixel_cnt +1;
                frame_trig <= '0';  
            elsif (s_axis_video_tvalid = '1' and m_axis_video_tready = '1') then
                line_cnt <= line_cnt;
                pixel_cnt <= pixel_cnt + 1;
                frame_trig <= '0';                  
            end if;
         end if;
      end if;
   end process;
      
   tlast_sdi_proc : process(CLK) --Count pixels and generate tlast (end of frame) from the scaler output
   begin
        if(rising_edge(CLK)) then
             if sresetn = '0' then
                compteur_pixel_sdi <= x"00000000";
                internal_tlast_sdi <= '0';
             else
                 if ((compteur_pixel_sdi = (output_img_size) - 2) and m_axis_video_tvalid = '1' and m_axis_video_tready = '1') then
                      compteur_pixel_sdi <= compteur_pixel_sdi + 1;
                      internal_tlast_sdi <= '0';      
                 elsif ((compteur_pixel_sdi = (output_img_size) - 3) and m_axis_video_tvalid = '1' and m_axis_video_tready = '1') then
                      compteur_pixel_sdi <= compteur_pixel_sdi + 1;
                      internal_tlast_sdi <= '1';
                 elsif(m_axis_video_tvalid = '1' and m_axis_video_tready = '1' and s_axis_video_tuser = '1') then  --Sync to first line
                      compteur_pixel_sdi <= x"00000000";
                      internal_tlast_sdi <= '0';
                 elsif ((compteur_pixel_sdi >= (output_img_size) - 1) and m_axis_video_tvalid = '1' and m_axis_video_tready = '1') then
                      compteur_pixel_sdi <= compteur_pixel_sdi + 1;
                      internal_tlast_sdi <= '0'; 
                 elsif(m_axis_video_tvalid = '1' and m_axis_video_tready = '1') then
                      compteur_pixel_sdi <= compteur_pixel_sdi + 1;
                      internal_tlast_sdi <= '0';
                 else
                     compteur_pixel_sdi <= compteur_pixel_sdi;
                     internal_tlast_sdi <= internal_tlast_sdi;
                 end if;
             end if;
        end if;
   end process;

   pixelremove : process(compteur_pixel_sdi, output_img_size, s_axis_video_tuser)  --Count pixels and generate tlast (end of frame) from the scaler output
   begin
   	if ((compteur_pixel_sdi >= (output_img_size) - 1) and s_axis_video_tuser = '0') then -- remove pixels between TLAST AND SOF.
       internal_pixel_remove_sdi(0) <= '0';
    else
       internal_pixel_remove_sdi(0) <= '1';
    end if;
   end process;
   
end rtl;