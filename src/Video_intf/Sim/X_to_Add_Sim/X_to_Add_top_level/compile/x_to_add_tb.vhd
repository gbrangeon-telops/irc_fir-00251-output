-------------------------------------------------------------------------------
--
-- Title       : x_to_add_tb
-- Design      : X_to_Add_top_level
-- Author      : Unknown
-- Company     : Unknown
--
-------------------------------------------------------------------------------
--
-- File        : D:\Telops\FIR-00251-Output\src\SDI\Sim\X_to_Add_Sim\X_to_Add_top_level\compile\x_to_add_tb.vhd
-- Generated   : Mon Mar  9 14:16:00 2015
-- From        : D:\Telops\FIR-00251-Output\src\SDI\Sim\X_to_Add_Sim\X_to_Add_top_level\src\x_to_add_tb.bde
-- By          : Bde2Vhdl ver. 2.6
--
-------------------------------------------------------------------------------
--
-- Description : 
--
-------------------------------------------------------------------------------
-- Design unit header --
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_signed.all;
use IEEE.std_logic_unsigned.all;
library work;
use work.tel2000.all;

entity x_to_add_tb is 
end x_to_add_tb;

architecture x_to_add_tb of x_to_add_tb is

---- Component declarations -----

component colormap_top
  port (
       END_ADDR : in STD_LOGIC_VECTOR(31 downto 0);
       LUT_SIZE : in STD_LOGIC_VECTOR(31 downto 0);
       START_ADDR : in STD_LOGIC_VECTOR(31 downto 0);
       TX_MISO : in T_AXI4_STREAM_MISO;
       X_MIN : in STD_LOGIC_VECTOR(31 downto 0);
       X_MOSI : in T_AXI4_STREAM_MOSI16;
       X_RANGE : in STD_LOGIC_VECTOR(31 downto 0);
       aresetn : in STD_LOGIC;
       clk160 : in STD_LOGIC;
       TX_MOSI : out T_AXI4_STREAM_MOSI32;
       X_MISO : out T_AXI4_STREAM_MISO
  );
end component;
component ublaze_sim
  port (
       AXIS_MISO : in T_AXI4_STREAM_MISO;
       AXIS_MOSI : out T_AXI4_STREAM_MOSI16;
       CLK160 : out STD_LOGIC;
       END_ADDR : out STD_LOGIC_VECTOR(31 downto 0);
       LUT_SIZE : out STD_LOGIC_VECTOR(31 downto 0);
       Rstn : out STD_LOGIC;
       START_ADDR : out STD_LOGIC_VECTOR(31 downto 0);
       X_MIN : out STD_LOGIC_VECTOR(31 downto 0);
       X_RANGE : out STD_LOGIC_VECTOR(31 downto 0)
  );
end component;

---- Signal declarations used on the diagram ----

signal clk : STD_LOGIC;
signal miso : t_axi4_stream_miso;
signal mosi : t_axi4_stream_mosi16;
signal resetn : STD_LOGIC;
signal tx_miso : t_axi4_stream_miso;
signal tx_mosi : t_axi4_stream_mosi32;
signal end_addr : STD_LOGIC_VECTOR (31 downto 0);
signal lut_size : STD_LOGIC_VECTOR (31 downto 0);
signal start_addr : STD_LOGIC_VECTOR (31 downto 0);
signal x_min : STD_LOGIC_VECTOR (31 downto 0);
signal x_range : STD_LOGIC_VECTOR (31 downto 0);

begin

---- User Signal Assignments ----
tx_miso.tready <= '1';

----  Component instantiations  ----

U1 : colormap_top
  port map(
       END_ADDR => end_addr,
       LUT_SIZE => lut_size,
       START_ADDR => start_addr,
       TX_MISO => tx_miso,
       TX_MOSI => tx_mosi,
       X_MIN => x_min,
       X_MISO => miso,
       X_MOSI => mosi,
       X_RANGE => x_range,
       aresetn => resetn,
       clk160 => clk
  );

U2 : ublaze_sim
  port map(
       AXIS_MISO => miso,
       AXIS_MOSI => mosi,
       CLK160 => clk,
       END_ADDR => end_addr,
       LUT_SIZE => lut_size,
       Rstn => resetn,
       START_ADDR => start_addr,
       X_MIN => x_min,
       X_RANGE => x_range
  );


end x_to_add_tb;
