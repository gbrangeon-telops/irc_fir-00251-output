 -------------------------------------------------------------------------------
--
-- Title       : mgt_stream_unmerger
-- Design      : 
-- Author      : 
-- Company     : 
--
-------------------------------------------------------------------------------
--
-- File        : 
-- Generated   : Wed Aug 15 07:58:26 2018
-- From        : interface description file
-- By          : Philippe Couture
--
-------------------------------------------------------------------------------
--
-- Description : 
--
-------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use work.Tel2000.all;
use work.calib_define.all;

entity mgt_stream_unmerger is 
   port(
       RX_MOSI  : in  t_axi4_stream_mosi64;
       RX_MISO  : out  t_axi4_stream_miso;
       TX_DATA_MISO : in t_axi4_stream_miso;
	   TX_VIDEO_MISO : in t_axi4_stream_miso;
       TX_DATA_MOSI  : out  t_axi4_stream_mosi32;
       TX_VIDEO_MOSI  : out  t_axi4_stream_mosi32
   );  
end mgt_stream_unmerger;

architecture rtl of mgt_stream_unmerger is

------------------------------------------------------------------------ 

------------------------------------------------------------------------ 

begin  
   
   RX_MISO.TREADY <= TX_DATA_MISO.TREADY and TX_VIDEO_MISO.TREADY;
	
   TX_DATA_MOSI.TDATA <= RX_MOSI.TDATA(31 downto 0);
   TX_VIDEO_MOSI.TDATA <= RX_MOSI.TDATA(63 downto 32);  
   
   TX_DATA_MOSI.TVALID <= RX_MOSI.TVALID;
   TX_VIDEO_MOSI.TVALID <= RX_MOSI.TVALID;
   
   TX_DATA_MOSI.TLAST <= RX_MOSI.TLAST;
   TX_VIDEO_MOSI.TLAST <= RX_MOSI.TLAST; 
   
   TX_DATA_MOSI.TID <= RX_MOSI.TID;
   TX_VIDEO_MOSI.TID <= RX_MOSI.TID;
   
   TX_DATA_MOSI.TKEEP <=  (others => '1');
   TX_DATA_MOSI.TSTRB <= (others => '1');
   TX_DATA_MOSI.TDEST <= (others => '0'); -- non géré
   TX_DATA_MOSI.TUSER <= (others => '0'); -- non géré 
   
   TX_VIDEO_MOSI.TKEEP <=  (others => '1');
   TX_VIDEO_MOSI.TSTRB <= (others => '1');
   TX_VIDEO_MOSI.TDEST <= (others => '0'); -- non géré
   TX_VIDEO_MOSI.TUSER <= (others => '0'); -- non géré 
      
 end rtl;
