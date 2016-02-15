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
 AXIL_TPG_MOSI : out t_axi4_lite_mosi;
 AXIL_TPG_MISO : in t_axi4_lite_miso;

 AXIL_SCALER_MOSI : out t_axi4_lite_mosi;
 AXIL_SCALER_MISO : in t_axi4_lite_miso;
 
 Input_Img_Size : out std_logic_vector(31 downto 0);
 Input_Img_Width : out std_logic_vector(31 downto 0);

 AXIS_MOSI : out t_axi4_stream_miso;
 
 CLK160 : out STD_LOGIC;
 CLK100 : out STD_LOGIC;
 CLK75 : out STD_LOGIC;
 Rstn : out std_logic;
 Enable : out std_logic
 );
end ublaze_sim;

architecture Behavioral of ublaze_sim is

signal TestReadValue : std_logic_vector(31 downto 0);
signal rstn_i : std_logic := '0';
signal enable_i : std_logic := '0';
signal clk_160_i : std_logic;
signal clk_100_i : std_logic;
signal clk_75_i : std_logic;

begin

--! Reset Generation
rstn_i <= '1' after 500 ns;
Rstn <= rstn_i;
Enable <= enable_i;
enable_i <= '1' after 600 ns;

	Input_Img_Size <= x"00050000";
	Input_Img_Width <= x"00000280";

   CLK160_GEN : process
   begin          
      clk_160_i <= '1';
   wait for 6.25 ns;
      clk_160_i <= '0'; 
   wait for 6.25 ns;
   end process; 

	CLK160 <= clk_160_i;

   CLK100_GEN : process
   begin          
      clk_100_i <= '1';
   wait for 10 ns;
      clk_100_i <= '0'; 
   wait for 10 ns;
   end process; 

	CLK100 <= clk_100_i;

   CLK75_GEN : process
   begin          
      clk_75_i <= '1';
   wait for 13.33 ns;
      clk_75_i <= '0'; 
   wait for 13.33 ns;
   end process; 

	CLK75 <= clk_75_i;

ublaze_stim: process is
   begin
  
      AXIS_MOSI.TREADY <= '1';
	  wait until rstn_i = '1';
	  
	  wait for 10 ns;
      wait until rising_edge(clk_160_i);

      --Write AXI config Test Pattern
	  --write_axi_lite (clk_100_i, x"00000000", x"00000000", AXIL_TPG_MISO, AXIL_TPG_MOSI);
	  --write_axi_lite (clk_100_i, x"00000020", x"02000280", AXIL_TPG_MISO, AXIL_TPG_MOSI);
	  --write_axi_lite (clk_100_i, x"00000100", x"00000006", AXIL_TPG_MISO, AXIL_TPG_MOSI);
	  --write_axi_lite (clk_100_i, x"00000000", x"00000002", AXIL_TPG_MISO, AXIL_TPG_MOSI);
	  --write_axi_lite (clk_100_i, x"00000000", x"00000003", AXIL_TPG_MISO, AXIL_TPG_MOSI);

      report "END OF SIMULATION" 
      severity error;
end process ublaze_stim;

 
end Behavioral;
