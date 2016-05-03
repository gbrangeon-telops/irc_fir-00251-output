----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/13/2014 09:26:29 AM
-- Design Name: 
-- Module Name: ublaze_sim - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.all;

use work.tel2000.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ublaze_sim is
port(
 AXIS_MOSI : out t_axi4_stream_mosi64;
 AXIS_MISO : in t_axi4_stream_miso;
 CLK160 : out STD_LOGIC;
 Rstn : out std_logic
 );
end ublaze_sim;

architecture Behavioral of ublaze_sim is

signal TestReadValue : std_logic_vector(31 downto 0);
signal rstn_i : std_logic := '0';
signal clk_i : std_logic;

begin

--! Reset Generation
rstn_i <= '1' after 500 ns;
Rstn <= rstn_i;

   CLK100_GEN : process
   begin          
      clk_i <= '1';
   wait for 6.25 ns;
      clk_i <= '0'; 
   wait for 6.25 ns;
   end process; 

	CLK160 <= clk_i;


ublaze_stim: process is
   begin
      AXIS_MOSI.TVALID <= '0';
      AXIS_MOSI.TDATA <= (others => '0');
      AXIS_MOSI.TSTRB <= (others => '0');
      AXIS_MOSI.TKEEP <= (others => '0');
      AXIS_MOSI.TLAST <= '0';
      AXIS_MOSI.TID <= (others => '0');
      AXIS_MOSI.TDEST <= (others => '0');
      AXIS_MOSI.TUSER <= (others => '0');
	  
      wait until rstn_i = '1';

      wait until rising_edge(clk_i);
   
      --Write AXI config   FULL
	for I in 0 to 255 loop
      write_axis64 (clk_i, X"0000200000002000", AXIS_MISO,  AXIS_MOSI);
	end loop;      wait for 10 ns;
      wait for 10 ns;
      write_axis64 (clk_i, X"0000200000002000", AXIS_MISO,  AXIS_MOSI);
      wait for 10 ns;
      write_axis64 (clk_i, X"0000200000002000", AXIS_MISO,  AXIS_MOSI);
      wait for 10 ns;
      write_axis64 (clk_i, X"0000200000002000", AXIS_MISO,  AXIS_MOSI);
      wait for 10 ns;
      write_axis64 (clk_i, X"0000200000002000", AXIS_MISO,  AXIS_MOSI);
      wait for 10 ns;
      write_axis64 (clk_i, X"0000200000002000", AXIS_MISO,  AXIS_MOSI);
      wait for 10 ns;
      write_axis64 (clk_i, X"0000200000002000", AXIS_MISO,  AXIS_MOSI);
      wait for 10 ns;
      write_axis64 (clk_i, X"0000200000002000", AXIS_MISO,  AXIS_MOSI);
      wait for 10 ns;
      write_axis64 (clk_i, X"0000200000002000", AXIS_MISO,  AXIS_MOSI);
      report "FCR written"; 

      report "END OF SIMULATION" 
      severity error;
end process ublaze_stim;

 
end Behavioral;
