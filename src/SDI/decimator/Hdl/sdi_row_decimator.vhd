-------------------------------------------------------------------------------
--
-- Title       : control_intf
-- Design      : sdi_row_decimator
-- Author      : Philippe Couture   
-- Company     : Telops
--
-------------------------------------------------------------------------------
--
-- File        : D:\Telops\FIR-00251-Proc\src\FrameBuffer\HDL\fb_ctrl_intf.vhd
-- Generated   : Mon Aug 10 13:20:42 2020
-- From        : interface description file
-- By          : Itf2Vhdl ver. 1.22
--
-------------------------------------------------------------------------------
--
-- Description : 
--
-------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.all; 
use ieee.numeric_std.all;
use work.TEL2000.all;
use work.sdi_decimator_define.all;

entity sdi_row_decimator is
   port (
   
      ARESETN                   : in std_logic;
      CLK                       : in std_logic;

      AXIS_RX_DATA_MOSI         : in t_axi4_stream_mosi64;
      AXIS_RX_DATA_MISO         : out t_axi4_stream_miso;
      
      AXIS_TX_DATA_MOSI         : out t_axi4_stream_mosi64;
      AXIS_TX_DATA_MISO         : in  t_axi4_stream_miso;

      CFG                       : in sdi_decimator_cfg_type
   );     
end sdi_row_decimator;
                                       

architecture sdi_row_decimator of sdi_row_decimator is   

  component sync_reset
      port (
         ARESET : in std_logic;
         CLK    : in std_logic;
         SRESET : out std_logic := '1'
         );
   end component;   
   
   signal areset_i         : std_logic; 
   signal sreset           : std_logic; 
   signal gate             : std_logic;
   signal cfg_i            : sdi_decimator_cfg_type := sdi_decimator_cfg_default;
   signal pix_cnt          : unsigned(10 downto 0); 
   signal discard_row      : std_logic;
   
   
begin  
   
   -- I/O Connections assignments
   areset_i            <= not ARESETN;  
   cfg_i               <= CFG;   
   gate                <= discard_row and cfg_i.enable(0);    
   
   U2: sync_reset
   port map(
      ARESET => areset_i,
      CLK    => CLK,
      SRESET => sreset
   ); 

   AXIS_RX_DATA_MISO.TREADY  <= AXIS_TX_DATA_MISO.TREADY when gate = '0' else '1';
   AXIS_TX_DATA_MOSI.TDATA   <= AXIS_RX_DATA_MOSI.TDATA;    
   AXIS_TX_DATA_MOSI.TLAST   <= AXIS_RX_DATA_MOSI.TLAST;  
   AXIS_TX_DATA_MOSI.TID     <= AXIS_RX_DATA_MOSI.TID;    
   AXIS_TX_DATA_MOSI.TVALID <=  AXIS_RX_DATA_MOSI.TVALID when gate = '0' else '0';   
   
   U1: process (CLK)
   begin
      if rising_edge(CLK) then 
         if sreset = '1' then
            pix_cnt                  <= (others => '0');   
            discard_row <= '1'; -- On discarte les lignes paires pour que le TLAST arrive sur une ligne valide.
         else
            if AXIS_RX_DATA_MOSI.tvalid = '1' and AXIS_TX_DATA_MISO.TREADY = '1' then
               pix_cnt <= pix_cnt + 4;
               if pix_cnt = (unsigned(cfg_i.row_width) - 4) then
                  discard_row <= not discard_row;
                  pix_cnt <= (others => '0');
               end if;
            end if;
         end if;
      end if;
   end process; 

end sdi_row_decimator;
