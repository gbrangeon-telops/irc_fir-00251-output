-------------------------------------------------------------------------------
--
-- Title       : colormap_top
-- Design      : X_to_Add_top_level
-- Author      : Unknown
-- Company     : Unknown
--
-------------------------------------------------------------------------------
--
-- File        : D:\Telops\FIR-00251-Output\src\SDI\Sim\X_to_Add_Sim\X_to_Add_top_level\compile\colormap_top.vhd
-- Generated   : Thu Feb 26 12:19:53 2015
-- From        : D:\Telops\FIR-00251-Output\src\SDI\HDL\colormap_top.bde
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

entity colormap_top is
  port(
       aresetn : in STD_LOGIC;
       clk160 : in STD_LOGIC;
       END_ADDR : in STD_LOGIC_VECTOR(31 downto 0);
       LUT_SIZE : in STD_LOGIC_VECTOR(31 downto 0);
       START_ADDR : in STD_LOGIC_VECTOR(31 downto 0);
       TX_MISO : in t_axi4_stream_miso;
       X_MIN : in STD_LOGIC_VECTOR(31 downto 0);
       X_MOSI : in t_axi4_stream_mosi16;
       X_RANGE : in STD_LOGIC_VECTOR(31 downto 0);
       TX_MOSI : out t_axi4_stream_mosi32;
       X_MISO : out t_axi4_stream_miso
  );
end colormap_top;

architecture colormap_top of colormap_top is

---- Component declarations -----

component colormap_mem
  port (
       RX_MOSI : in T_AXI4_STREAM_MOSI16;
       TX_MISO : in T_AXI4_STREAM_MISO;
       aresetn : in STD_LOGIC;
       clk : in STD_LOGIC;
       RX_MISO : out T_AXI4_STREAM_MISO;
       TX_MOSI : out T_AXI4_STREAM_MOSI32
  );
end component;
component X_to_Add
  port (
       CLK : in STD_LOGIC;
       END_ADDR : in STD_LOGIC_VECTOR(31 downto 0);
       LUT_SIZE : in STD_LOGIC_VECTOR(31 downto 0);
       START_ADDR : in STD_LOGIC_VECTOR(31 downto 0);
       TX_MISO : in t_axi4_stream_miso;
       X_MIN : in STD_LOGIC_VECTOR(31 downto 0);
       X_MOSI : in t_axi4_stream_mosi16;
       X_RANGE : in STD_LOGIC_VECTOR(31 downto 0);
       aresetn : in STD_LOGIC;
       TX_MOSI : out t_axi4_stream_mosi16;
       X_MISO : out t_axi4_stream_miso
  );
end component;

---- Signal declarations used on the diagram ----

signal axis_colormap_miso : t_axi4_stream_miso;
signal axis_colormap_mosi : t_axi4_stream_mosi16;
signal RX_MISO : t_axi4_stream_miso;
signal RX_MOSI : t_axi4_stream_mosi32;

begin

----  Component instantiations  ----

U1 : colormap_mem
  port map(
       RX_MISO => axis_colormap_miso,
       RX_MOSI => axis_colormap_mosi,
       TX_MISO => RX_MISO,
       TX_MOSI => RX_MOSI,
       aresetn => aresetn,
       clk => clk160
  );

U2 : X_to_Add
  port map(
       CLK => clk160,
       END_ADDR => END_ADDR,
       LUT_SIZE => LUT_SIZE,
       START_ADDR => START_ADDR,
       TX_MISO => axis_colormap_miso,
       TX_MOSI => axis_colormap_mosi,
       X_MIN => X_MIN,
       X_MISO => X_MISO,
       X_MOSI => X_MOSI,
       X_RANGE => X_RANGE,
       aresetn => aresetn
  );


---- Terminal assignment ----

    -- Inputs terminals
	RX_MISO <= TX_MISO;

    -- Output\buffer terminals
	TX_MOSI <= RX_MOSI;


end colormap_top;
