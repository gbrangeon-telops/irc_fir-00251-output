-------------------------------------------------------------------------------
--
-- Title       : control_intf
-- Design      : sdi_column_decimator
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

entity sdi_column_decimator is
   port (
      ARESETN                   : in std_logic;
      CLK                       : in std_logic;

      AXIS_RX_DATA_MOSI         : in t_axi4_stream_mosi64;
      AXIS_RX_DATA_MISO         : out t_axi4_stream_miso;
      
      AXIS_TX_DATA_MOSI         : out t_axi4_stream_mosi64;
      AXIS_TX_DATA_MISO         : in  t_axi4_stream_miso;
      
      CFG                       : in sdi_decimator_cfg_type
   );     
end sdi_column_decimator;



architecture sdi_column_decimator of sdi_column_decimator is
  component sync_reset
      port (
         ARESET : in std_logic;
         CLK    : in std_logic;
         SRESET : out std_logic := '1'
         );
   end component;   
   
   component t_axi4_stream_wr32_rd64_fifo
   GENERIC (   
   WR_FIFO_DEPTH  : integer := 32;
   ASYNC          : boolean := false 
   );
   port(
      ARESETN  : in std_logic;
      RX_CLK   : in std_logic;
      RX_MOSI  : in t_axi4_stream_mosi32;
      RX_MISO  : out t_axi4_stream_miso;
      TX_CLK   : in std_logic;
      TX_MOSI  : out t_axi4_stream_mosi64;
      TX_MISO  : in t_axi4_stream_miso;
      OVFL     : out std_logic
      );
   end component;


   signal sresetn                   : std_logic;    
   signal asym_fifo_input_mosi      : t_axi4_stream_mosi32;
   signal asym_fifo_input_miso      : t_axi4_stream_miso;
   signal asym_fifo_output_mosi     : t_axi4_stream_mosi64;  
   
   signal cfg_i                     : sdi_decimator_cfg_type := sdi_decimator_cfg_default;
   
begin  
    
   U1: sync_reset
   port map(
      ARESET => ARESETN,
      CLK    => CLK,
      SRESET => sresetn
   ); 
   
   cfg_i               <= CFG;
   
   AXIS_TX_DATA_MOSI  <= asym_fifo_output_mosi when cfg_i.enable(1) = '1' else AXIS_RX_DATA_MOSI;
   AXIS_RX_DATA_MISO  <= asym_fifo_input_miso  when cfg_i.enable(1) = '1' else AXIS_TX_DATA_MISO;


   asym_fifo_input_mosi.TDATA   <= AXIS_RX_DATA_MOSI.TDATA(47 downto 32) & AXIS_RX_DATA_MOSI.TDATA(15 downto 0);   
   asym_fifo_input_mosi.TLAST   <= AXIS_RX_DATA_MOSI.TLAST;  
   asym_fifo_input_mosi.TID     <= AXIS_RX_DATA_MOSI.TID;  
   asym_fifo_input_mosi.TVALID  <= AXIS_RX_DATA_MOSI.TVALID; 
   
   U2: t_axi4_stream_wr32_rd64_fifo
   generic map (WR_FIFO_DEPTH => 32, ASYNC => false)
   port map(
      ARESETN  => sresetn,
      RX_CLK   => CLK,
      RX_MOSI  => asym_fifo_input_mosi,
      RX_MISO => asym_fifo_input_miso,
      TX_CLK =>  CLK,
      TX_MOSI => asym_fifo_output_mosi,
      TX_MISO => AXIS_TX_DATA_MISO,  
      OVFL => open
      );  

end sdi_column_decimator;
