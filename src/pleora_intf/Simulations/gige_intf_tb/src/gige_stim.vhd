-------------------------------------------------------------------------------
--
-- Title       : axis_lane_stim
-- Design      : clink_tb
-- Author      : 
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
-- Description : 
--
-------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;
use work.tel2000.all;


entity gige_stim is
	 port(
    CLK80 : out STD_LOGIC;
    CLK80_N : out STD_LOGIC;
      ARESET : out STD_LOGIC
      );
end gige_stim;



architecture rtl of gige_stim is

-- CLK and RESET
constant clk80_per : time := 12.5 ns;

signal clk80_o : std_logic := '0';


signal rst_i : std_logic := '0';



begin
-- Assign clock
CLK80 <= clk80_o;
CLK80_N <= not clk80_o;
   ARESET <= rst_i;

--! Clock 80MHz generation
   CLK80_GEN: process(clk80_o)
   begin
   clk80_o <= not clk80_o after clk80_per/2;                          
   end process;

--! Reset Generation
   RST_GEN : process
   begin          
      rst_i <= '1';
   wait for 5 us;
      rst_i <= '0'; 
   wait;
   end process; 

end rtl;
