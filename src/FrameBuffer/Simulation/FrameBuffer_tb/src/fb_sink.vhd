-------------------------------------------------------------------------------
--
-- Title       : Fb_sink
-- Design      : clink_tb
-- Author      : JEan-Alexis Boulet
-- Company     : 
--
-------------------------------------------------------------------------------
--
-- File        : D:\Telops\FIR-00251-Output\src\Clink\Simulations\clink_tb\src\axis_lane_stim.vhd
-- Generated   : Thu Jan 30 13:26:14 2014
-- From        : interface description file
-- By          : Itf2Vhdl ver. 1.22
--
-------------------------------------------------------------------------------
--
-- Description : this file unlock the data transmission Just for debug purpose
--
-------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;
use work.tel2000.all;
use work.FB_Define.all;

entity fb_sink is
	 port(
      AXIS_MOSI : in t_axi4_stream_mosi32;
      AXIS_MISO : out t_axi4_stream_miso;

      AXI_MM2S_MOSI : in t_axi4_a32_d32_read_mosi;
      AXI_MM2S_MISO :out t_axi4_a32_d32_read_miso;

      AXI_S2MM_MOSI : in t_axi4_a32_d32_write_mosi;
      AXI_S2MM_MISO : out t_axi4_a32_d32_write_miso;

      CLK160 : in STD_LOGIC;
      ARESETN : in STD_LOGIC
      );
end fb_sink;



architecture sim of fb_sink is

   
begin

AXIS_MISO.TREADY <= '1';

AXI_MM2S_MISO.arready <= '1' ;
AXI_MM2S_MISO.rdata <= x"00000000";
AXI_MM2S_MISO.rlast <= '0';
AXI_MM2S_MISO.rvalid <= '1';
AXI_MM2S_MISO.rresp <=  b"00";


AXI_S2MM_MISO.wready <= '1';
AXI_S2MM_MISO.bresp <= b"00";
AXI_S2MM_MISO.bvalid <= '1';

stop_arwrite : process(CLK160)
   begin
      if rising_edge(CLK160) then
         if ARESETN = '0' then
            AXI_S2MM_MISO.awready <= '0';
         else
            if(AXI_S2MM_MOSI.wvalid = '1') then
               AXI_S2MM_MISO.awready <= '0';
            else
               AXI_S2MM_MISO.awready <= '1';
            end if; 
         end if;
      end if;
   end process;
   
end sim;
