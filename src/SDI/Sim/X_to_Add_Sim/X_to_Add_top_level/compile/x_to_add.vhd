-------------------------------------------------------------------------------
--
-- Title       : No Title
-- Design      : X_to_Add_top_level
-- Author      : telops
-- Company     : Microsoft
--
-------------------------------------------------------------------------------
--
-- File        : D:\Telops\FIR-00251-Output\src\SDI\Sim\X_to_Add_Sim\X_to_Add_top_level\compile\x_to_add.vhd
-- Generated   : Thu Feb 26 12:19:52 2015
-- From        : D:\Telops\FIR-00251-Output\src\SDI\hdl\x_to_add.bde
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
use IEEE.std_logic_unsigned.all;

library work;
use work.tel2000.all;

entity X_to_Add is
  port(
       CLK : in STD_LOGIC;
       aresetn : in STD_LOGIC;
       END_ADDR : in STD_LOGIC_VECTOR(31 downto 0);
       LUT_SIZE : in STD_LOGIC_VECTOR(31 downto 0);
       START_ADDR : in STD_LOGIC_VECTOR(31 downto 0);
       TX_MISO : in t_axi4_stream_miso;
       X_MIN : in STD_LOGIC_VECTOR(31 downto 0);
       X_MOSI : in t_axi4_stream_mosi16;
       X_RANGE : in STD_LOGIC_VECTOR(31 downto 0);
       TX_MOSI : out t_axi4_stream_mosi16;
       X_MISO : out t_axi4_stream_miso
  );
end X_to_Add;

architecture X_to_Add of X_to_Add is

---- Component declarations -----

component axis_fi16tofp32
  generic(
       input_efflen : NATURAL := 12;
       input_signed : BOOLEAN := false
  );
  port (
       ARESETN : in STD_LOGIC;
       CLK : in STD_LOGIC;
       RX_MOSI : in T_AXI4_STREAM_MOSI16;
       TX_MISO : in T_AXI4_STREAM_MISO;
       RX_MISO : out T_AXI4_STREAM_MISO;
       TX_MOSI : out T_AXI4_STREAM_MOSI32
  );
end component;
component axis_fi32tofp32
  generic(
       input_efflen : NATURAL := 12;
       input_signed : BOOLEAN := false
  );
  port (
       ARESETN : in STD_LOGIC;
       CLK : in STD_LOGIC;
       RX_MOSI : in T_AXI4_STREAM_MOSI32;
       TX_MISO : in T_AXI4_STREAM_MISO;
       RX_MISO : out T_AXI4_STREAM_MISO;
       TX_MOSI : out T_AXI4_STREAM_MOSI32
  );
end component;
component fi16_axis_min
  generic(
       a_input_efflen : NATURAL := 16;
       a_input_signed : BOOLEAN := false;
       b_input_efflen : NATURAL := 16;
       b_input_signed : BOOLEAN := false
  );
  port (
       ARESETN : in STD_LOGIC;
       CLK : in STD_LOGIC;
       RXA_MOSI : in T_AXI4_STREAM_MOSI16;
       RXB_MOSI : in T_AXI4_STREAM_MOSI16;
       TX_MISO : in T_AXI4_STREAM_MISO;
       ERR : out STD_LOGIC;
       RXA_MISO : out T_AXI4_STREAM_MISO;
       RXB_MISO : out T_AXI4_STREAM_MISO;
       TX_MOSI : out T_AXI4_STREAM_MOSI16;
       TX_SIGNED : out STD_LOGIC
  );
end component;
component fp32_axis_divide
  port (
       ARESETN : in STD_LOGIC;
       CLK : in STD_LOGIC;
       RXA_MOSI : in T_AXI4_STREAM_MOSI32;
       RXB_MOSI : in T_AXI4_STREAM_MOSI32;
       TX_MISO : in T_AXI4_STREAM_MISO;
       ERR : out STD_LOGIC_VECTOR(4 downto 0);
       RXA_MISO : out T_AXI4_STREAM_MISO;
       RXB_MISO : out T_AXI4_STREAM_MISO;
       TX_MOSI : out T_AXI4_STREAM_MOSI32
  );
end component;
component fp32_axis_mult
  port (
       ARESETN : in STD_LOGIC;
       CLK : in STD_LOGIC;
       RXA_MOSI : in T_AXI4_STREAM_MOSI32;
       RXB_MOSI : in T_AXI4_STREAM_MOSI32;
       TX_MISO : in T_AXI4_STREAM_MISO;
       ERR : out STD_LOGIC_VECTOR(4 downto 0);
       RXA_MISO : out T_AXI4_STREAM_MISO;
       RXB_MISO : out T_AXI4_STREAM_MISO;
       TX_MOSI : out T_AXI4_STREAM_MOSI32
  );
end component;
component axis_fp32tofi16
  port (
       ARESETN : in STD_LOGIC;
       CLK : in STD_LOGIC;
       RX_MOSI : in T_AXI4_STREAM_MOSI32;
       TX_MISO : in T_AXI4_STREAM_MISO;
       ERR : out STD_LOGIC_VECTOR(4 downto 0);
       RX_MISO : out T_AXI4_STREAM_MISO;
       TX_MOSI : out T_AXI4_STREAM_MOSI16
  );
end component;

---- Signal declarations used on the diagram ----

signal axis_divide_miso : t_axi4_stream_miso;
signal axis_divide_mosi : t_axi4_stream_mosi32;
signal axis_end_miso : t_axi4_stream_miso;
signal axis_end_mosi : t_axi4_stream_mosi16;
signal axis_fi16_miso : t_axi4_stream_miso;
signal axis_fi16_mosi : t_axi4_stream_mosi16;
signal axis_fplutsize_miso : t_axi4_stream_miso;
signal axis_fplutsize_mosi : t_axi4_stream_mosi32;
signal axis_fprange_miso : t_axi4_stream_miso;
signal axis_fprange_mosi : t_axi4_stream_mosi32;
signal axis_fp_lutaddr_miso : t_axi4_stream_miso;
signal axis_fp_lutaddr_mosi : t_axi4_stream_mosi32;
signal axis_lutsize_miso : t_axi4_stream_miso;
signal axis_lutsize_mosi : t_axi4_stream_mosi32;
signal axis_mapaddr_mosi : t_axi4_stream_mosi16;
signal axis_range_miso : t_axi4_stream_miso;
signal axis_range_mosi : t_axi4_stream_mosi32;
signal axis_X_lutsize_miso : t_axi4_stream_miso;
signal axis_X_lutsize_mosi : t_axi4_stream_mosi32;
signal axis_X_max_mosi : t_axi4_stream_mosi16;

begin

---- User Signal Assignments ----
axis_X_max_mosi.TDATA <= x"0000" when (X_MIN(15 downto 0) >= X_MOSI.TDATA)
																	else X_MOSI.TDATA - X_MIN(15 downto 0);

axis_X_max_mosi.TDEST <= X_MOSI.TDEST;
axis_X_max_mosi.TID <= X_MOSI.TID;
axis_X_max_mosi.TKEEP <= X_MOSI.TKEEP;
axis_X_max_mosi.TLAST <= X_MOSI.TLAST;
axis_X_max_mosi.TSTRB <= X_MOSI.TSTRB;
axis_X_max_mosi.TUSER <= X_MOSI.TUSER;
axis_X_max_mosi.TVALID <= X_MOSI.TVALID;
axis_end_mosi.TDATA <= END_ADDR(15 downto 0);
axis_end_mosi.TDEST <= (others => '0');
axis_end_mosi.TID <= (others => '0');
axis_end_mosi.TKEEP <= (others => '0');
axis_end_mosi.TLAST <= '0';
axis_end_mosi.TSTRB <= (others => '1');
axis_end_mosi.TUSER <= (others => '0');
axis_end_mosi.TVALID <= '1';
axis_range_mosi.TDATA <= X_RANGE;
axis_range_mosi.TDEST <= (others => '0');
axis_range_mosi.TID <= (others => '0');
axis_range_mosi.TKEEP <= (others => '0');
axis_range_mosi.TLAST <= '0';
axis_range_mosi.TSTRB <= (others => '1');
axis_range_mosi.TUSER <= (others => '0');
axis_range_mosi.TVALID <= '1';
axis_lutsize_mosi.TDATA <= LUT_SIZE;
axis_lutsize_mosi.TDEST <= (others => '0');
axis_lutsize_mosi.TID <= (others => '0');
axis_lutsize_mosi.TKEEP <= (others => '0');
axis_lutsize_mosi.TLAST <= '0';
axis_lutsize_mosi.TSTRB <= (others => '1');
axis_lutsize_mosi.TUSER <= (others => '0');
axis_lutsize_mosi.TVALID <= '1';
axis_mapaddr_mosi.TDATA <= axis_fi16_mosi.TDATA + START_ADDR(15 downto 0); 
axis_mapaddr_mosi.TDEST <= axis_fi16_mosi.TDEST;
axis_mapaddr_mosi.TID <= axis_fi16_mosi.TID;
axis_mapaddr_mosi.TKEEP <= axis_fi16_mosi.TKEEP;
axis_mapaddr_mosi.TLAST <= axis_fi16_mosi.TLAST;
axis_mapaddr_mosi.TSTRB <= axis_fi16_mosi.TSTRB;
axis_mapaddr_mosi.TUSER <= axis_fi16_mosi.TUSER;
axis_mapaddr_mosi.TVALID <= axis_fi16_mosi.TVALID;

----  Component instantiations  ----

U1 : axis_fp32tofi16
  port map(
       ARESETN => ARESETN,
       CLK => CLK,
       RX_MISO => axis_fp_lutaddr_miso,
       RX_MOSI => axis_fp_lutaddr_mosi,
       TX_MISO => axis_fi16_miso,
       TX_MOSI => axis_fi16_mosi
  );

U2 : fp32_axis_mult
  port map(
       ARESETN => ARESETN,
       CLK => CLK,
       RXA_MISO => axis_X_lutsize_miso,
       RXA_MOSI => axis_X_lutsize_mosi,
       RXB_MISO => axis_fplutsize_miso,
       RXB_MOSI => axis_fplutsize_mosi,
       TX_MISO => axis_fp_lutaddr_miso,
       TX_MOSI => axis_fp_lutaddr_mosi
  );

U3 : axis_fi16tofp32
  generic map (
       input_efflen => 16,
       input_signed => false
  )
  port map(
       ARESETN => ARESETN,
       CLK => CLK,
       RX_MISO => X_MISO,
       RX_MOSI => axis_X_max_mosi,
       TX_MISO => axis_divide_miso,
       TX_MOSI => axis_divide_mosi
  );

U4 : axis_fi32tofp32
  generic map (
       input_efflen => 32
  )
  port map(
       ARESETN => ARESETN,
       CLK => CLK,
       RX_MISO => axis_range_miso,
       RX_MOSI => axis_range_mosi,
       TX_MISO => axis_fprange_miso,
       TX_MOSI => axis_fprange_mosi
  );

U5 : fp32_axis_divide
  port map(
       ARESETN => ARESETN,
       CLK => CLK,
       RXA_MISO => axis_divide_miso,
       RXA_MOSI => axis_divide_mosi,
       RXB_MISO => axis_fprange_miso,
       RXB_MOSI => axis_fprange_mosi,
       TX_MISO => axis_X_lutsize_miso,
       TX_MOSI => axis_X_lutsize_mosi
  );

U6 : fi16_axis_min
  port map(
       ARESETN => ARESETN,
       CLK => CLK,
       RXA_MISO => axis_fi16_miso,
       RXA_MOSI => axis_mapaddr_mosi,
       RXB_MISO => axis_end_miso,
       RXB_MOSI => axis_end_mosi,
       TX_MISO => TX_MISO,
       TX_MOSI => TX_MOSI
  );

U8 : axis_fi32tofp32
  generic map (
       input_efflen => 32
  )
  port map(
       ARESETN => ARESETN,
       CLK => CLK,
       RX_MISO => axis_lutsize_miso,
       RX_MOSI => axis_lutsize_mosi,
       TX_MISO => axis_fplutsize_miso,
       TX_MOSI => axis_fplutsize_mosi
  );


end X_to_Add;
