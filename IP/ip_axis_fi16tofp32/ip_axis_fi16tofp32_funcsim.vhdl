-- Copyright 1986-1999, 2001-2013 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2013.4 (win64) Build 353583 Mon Dec  9 17:49:19 MST 2013
-- Date        : Thu Jul 09 16:09:01 2015
-- Host        : TELOPSX running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode funcsim
--               D:/Telops/FIR-00251-Output/IP/ip_axis_fi16tofp32/ip_axis_fi16tofp32_funcsim.vhdl
-- Design      : ip_axis_fi16tofp32
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7k70tfbg676-1
-- --------------------------------------------------------------------------------
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity \ip_axis_fi16tofp32floating_point_v7_0_viv__parameterized0\ is
  port (
    aclk : in STD_LOGIC;
    aclken : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_a_tvalid : in STD_LOGIC;
    s_axis_a_tready : out STD_LOGIC;
    s_axis_a_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_a_tuser : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_a_tlast : in STD_LOGIC;
    s_axis_b_tvalid : in STD_LOGIC;
    s_axis_b_tready : out STD_LOGIC;
    s_axis_b_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_b_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_b_tlast : in STD_LOGIC;
    s_axis_c_tvalid : in STD_LOGIC;
    s_axis_c_tready : out STD_LOGIC;
    s_axis_c_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_c_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_c_tlast : in STD_LOGIC;
    s_axis_operation_tvalid : in STD_LOGIC;
    s_axis_operation_tready : out STD_LOGIC;
    s_axis_operation_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_operation_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_operation_tlast : in STD_LOGIC;
    m_axis_result_tvalid : out STD_LOGIC;
    m_axis_result_tready : in STD_LOGIC;
    m_axis_result_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_result_tuser : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_result_tlast : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \ip_axis_fi16tofp32floating_point_v7_0_viv__parameterized0\ : entity is "floating_point_v7_0_viv";
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of \ip_axis_fi16tofp32floating_point_v7_0_viv__parameterized0\ : entity is "kintex7";
  attribute C_HAS_ADD : integer;
  attribute C_HAS_ADD of \ip_axis_fi16tofp32floating_point_v7_0_viv__parameterized0\ : entity is 0;
  attribute C_HAS_SUBTRACT : integer;
  attribute C_HAS_SUBTRACT of \ip_axis_fi16tofp32floating_point_v7_0_viv__parameterized0\ : entity is 0;
  attribute C_HAS_MULTIPLY : integer;
  attribute C_HAS_MULTIPLY of \ip_axis_fi16tofp32floating_point_v7_0_viv__parameterized0\ : entity is 0;
  attribute C_HAS_DIVIDE : integer;
  attribute C_HAS_DIVIDE of \ip_axis_fi16tofp32floating_point_v7_0_viv__parameterized0\ : entity is 0;
  attribute C_HAS_SQRT : integer;
  attribute C_HAS_SQRT of \ip_axis_fi16tofp32floating_point_v7_0_viv__parameterized0\ : entity is 0;
  attribute C_HAS_COMPARE : integer;
  attribute C_HAS_COMPARE of \ip_axis_fi16tofp32floating_point_v7_0_viv__parameterized0\ : entity is 0;
  attribute C_HAS_FIX_TO_FLT : integer;
  attribute C_HAS_FIX_TO_FLT of \ip_axis_fi16tofp32floating_point_v7_0_viv__parameterized0\ : entity is 1;
  attribute C_HAS_FLT_TO_FIX : integer;
  attribute C_HAS_FLT_TO_FIX of \ip_axis_fi16tofp32floating_point_v7_0_viv__parameterized0\ : entity is 0;
  attribute C_HAS_FLT_TO_FLT : integer;
  attribute C_HAS_FLT_TO_FLT of \ip_axis_fi16tofp32floating_point_v7_0_viv__parameterized0\ : entity is 0;
  attribute C_HAS_RECIP : integer;
  attribute C_HAS_RECIP of \ip_axis_fi16tofp32floating_point_v7_0_viv__parameterized0\ : entity is 0;
  attribute C_HAS_RECIP_SQRT : integer;
  attribute C_HAS_RECIP_SQRT of \ip_axis_fi16tofp32floating_point_v7_0_viv__parameterized0\ : entity is 0;
  attribute C_HAS_ABSOLUTE : integer;
  attribute C_HAS_ABSOLUTE of \ip_axis_fi16tofp32floating_point_v7_0_viv__parameterized0\ : entity is 0;
  attribute C_HAS_LOGARITHM : integer;
  attribute C_HAS_LOGARITHM of \ip_axis_fi16tofp32floating_point_v7_0_viv__parameterized0\ : entity is 0;
  attribute C_HAS_EXPONENTIAL : integer;
  attribute C_HAS_EXPONENTIAL of \ip_axis_fi16tofp32floating_point_v7_0_viv__parameterized0\ : entity is 0;
  attribute C_HAS_FMA : integer;
  attribute C_HAS_FMA of \ip_axis_fi16tofp32floating_point_v7_0_viv__parameterized0\ : entity is 0;
  attribute C_HAS_FMS : integer;
  attribute C_HAS_FMS of \ip_axis_fi16tofp32floating_point_v7_0_viv__parameterized0\ : entity is 0;
  attribute C_HAS_ACCUMULATOR_A : integer;
  attribute C_HAS_ACCUMULATOR_A of \ip_axis_fi16tofp32floating_point_v7_0_viv__parameterized0\ : entity is 0;
  attribute C_HAS_ACCUMULATOR_S : integer;
  attribute C_HAS_ACCUMULATOR_S of \ip_axis_fi16tofp32floating_point_v7_0_viv__parameterized0\ : entity is 0;
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \ip_axis_fi16tofp32floating_point_v7_0_viv__parameterized0\ : entity is 17;
  attribute C_A_FRACTION_WIDTH : integer;
  attribute C_A_FRACTION_WIDTH of \ip_axis_fi16tofp32floating_point_v7_0_viv__parameterized0\ : entity is 0;
  attribute C_B_WIDTH : integer;
  attribute C_B_WIDTH of \ip_axis_fi16tofp32floating_point_v7_0_viv__parameterized0\ : entity is 17;
  attribute C_B_FRACTION_WIDTH : integer;
  attribute C_B_FRACTION_WIDTH of \ip_axis_fi16tofp32floating_point_v7_0_viv__parameterized0\ : entity is 0;
  attribute C_C_WIDTH : integer;
  attribute C_C_WIDTH of \ip_axis_fi16tofp32floating_point_v7_0_viv__parameterized0\ : entity is 17;
  attribute C_C_FRACTION_WIDTH : integer;
  attribute C_C_FRACTION_WIDTH of \ip_axis_fi16tofp32floating_point_v7_0_viv__parameterized0\ : entity is 0;
  attribute C_RESULT_WIDTH : integer;
  attribute C_RESULT_WIDTH of \ip_axis_fi16tofp32floating_point_v7_0_viv__parameterized0\ : entity is 32;
  attribute C_RESULT_FRACTION_WIDTH : integer;
  attribute C_RESULT_FRACTION_WIDTH of \ip_axis_fi16tofp32floating_point_v7_0_viv__parameterized0\ : entity is 24;
  attribute C_COMPARE_OPERATION : integer;
  attribute C_COMPARE_OPERATION of \ip_axis_fi16tofp32floating_point_v7_0_viv__parameterized0\ : entity is 8;
  attribute C_LATENCY : integer;
  attribute C_LATENCY of \ip_axis_fi16tofp32floating_point_v7_0_viv__parameterized0\ : entity is 7;
  attribute C_OPTIMIZATION : integer;
  attribute C_OPTIMIZATION of \ip_axis_fi16tofp32floating_point_v7_0_viv__parameterized0\ : entity is 1;
  attribute C_MULT_USAGE : integer;
  attribute C_MULT_USAGE of \ip_axis_fi16tofp32floating_point_v7_0_viv__parameterized0\ : entity is 0;
  attribute C_BRAM_USAGE : integer;
  attribute C_BRAM_USAGE of \ip_axis_fi16tofp32floating_point_v7_0_viv__parameterized0\ : entity is 0;
  attribute C_RATE : integer;
  attribute C_RATE of \ip_axis_fi16tofp32floating_point_v7_0_viv__parameterized0\ : entity is 1;
  attribute C_ACCUM_INPUT_MSB : integer;
  attribute C_ACCUM_INPUT_MSB of \ip_axis_fi16tofp32floating_point_v7_0_viv__parameterized0\ : entity is 32;
  attribute C_ACCUM_MSB : integer;
  attribute C_ACCUM_MSB of \ip_axis_fi16tofp32floating_point_v7_0_viv__parameterized0\ : entity is 32;
  attribute C_ACCUM_LSB : integer;
  attribute C_ACCUM_LSB of \ip_axis_fi16tofp32floating_point_v7_0_viv__parameterized0\ : entity is -31;
  attribute C_HAS_UNDERFLOW : integer;
  attribute C_HAS_UNDERFLOW of \ip_axis_fi16tofp32floating_point_v7_0_viv__parameterized0\ : entity is 0;
  attribute C_HAS_OVERFLOW : integer;
  attribute C_HAS_OVERFLOW of \ip_axis_fi16tofp32floating_point_v7_0_viv__parameterized0\ : entity is 0;
  attribute C_HAS_INVALID_OP : integer;
  attribute C_HAS_INVALID_OP of \ip_axis_fi16tofp32floating_point_v7_0_viv__parameterized0\ : entity is 0;
  attribute C_HAS_DIVIDE_BY_ZERO : integer;
  attribute C_HAS_DIVIDE_BY_ZERO of \ip_axis_fi16tofp32floating_point_v7_0_viv__parameterized0\ : entity is 0;
  attribute C_HAS_ACCUM_OVERFLOW : integer;
  attribute C_HAS_ACCUM_OVERFLOW of \ip_axis_fi16tofp32floating_point_v7_0_viv__parameterized0\ : entity is 0;
  attribute C_HAS_ACCUM_INPUT_OVERFLOW : integer;
  attribute C_HAS_ACCUM_INPUT_OVERFLOW of \ip_axis_fi16tofp32floating_point_v7_0_viv__parameterized0\ : entity is 0;
  attribute C_HAS_ACLKEN : integer;
  attribute C_HAS_ACLKEN of \ip_axis_fi16tofp32floating_point_v7_0_viv__parameterized0\ : entity is 0;
  attribute C_HAS_ARESETN : integer;
  attribute C_HAS_ARESETN of \ip_axis_fi16tofp32floating_point_v7_0_viv__parameterized0\ : entity is 1;
  attribute C_THROTTLE_SCHEME : integer;
  attribute C_THROTTLE_SCHEME of \ip_axis_fi16tofp32floating_point_v7_0_viv__parameterized0\ : entity is 1;
  attribute C_HAS_A_TUSER : integer;
  attribute C_HAS_A_TUSER of \ip_axis_fi16tofp32floating_point_v7_0_viv__parameterized0\ : entity is 1;
  attribute C_HAS_A_TLAST : integer;
  attribute C_HAS_A_TLAST of \ip_axis_fi16tofp32floating_point_v7_0_viv__parameterized0\ : entity is 1;
  attribute C_HAS_B : integer;
  attribute C_HAS_B of \ip_axis_fi16tofp32floating_point_v7_0_viv__parameterized0\ : entity is 0;
  attribute C_HAS_B_TUSER : integer;
  attribute C_HAS_B_TUSER of \ip_axis_fi16tofp32floating_point_v7_0_viv__parameterized0\ : entity is 0;
  attribute C_HAS_B_TLAST : integer;
  attribute C_HAS_B_TLAST of \ip_axis_fi16tofp32floating_point_v7_0_viv__parameterized0\ : entity is 0;
  attribute C_HAS_C : integer;
  attribute C_HAS_C of \ip_axis_fi16tofp32floating_point_v7_0_viv__parameterized0\ : entity is 0;
  attribute C_HAS_C_TUSER : integer;
  attribute C_HAS_C_TUSER of \ip_axis_fi16tofp32floating_point_v7_0_viv__parameterized0\ : entity is 0;
  attribute C_HAS_C_TLAST : integer;
  attribute C_HAS_C_TLAST of \ip_axis_fi16tofp32floating_point_v7_0_viv__parameterized0\ : entity is 0;
  attribute C_HAS_OPERATION : integer;
  attribute C_HAS_OPERATION of \ip_axis_fi16tofp32floating_point_v7_0_viv__parameterized0\ : entity is 0;
  attribute C_HAS_OPERATION_TUSER : integer;
  attribute C_HAS_OPERATION_TUSER of \ip_axis_fi16tofp32floating_point_v7_0_viv__parameterized0\ : entity is 0;
  attribute C_HAS_OPERATION_TLAST : integer;
  attribute C_HAS_OPERATION_TLAST of \ip_axis_fi16tofp32floating_point_v7_0_viv__parameterized0\ : entity is 0;
  attribute C_HAS_RESULT_TUSER : integer;
  attribute C_HAS_RESULT_TUSER of \ip_axis_fi16tofp32floating_point_v7_0_viv__parameterized0\ : entity is 1;
  attribute C_HAS_RESULT_TLAST : integer;
  attribute C_HAS_RESULT_TLAST of \ip_axis_fi16tofp32floating_point_v7_0_viv__parameterized0\ : entity is 1;
  attribute C_TLAST_RESOLUTION : integer;
  attribute C_TLAST_RESOLUTION of \ip_axis_fi16tofp32floating_point_v7_0_viv__parameterized0\ : entity is 1;
  attribute C_A_TDATA_WIDTH : integer;
  attribute C_A_TDATA_WIDTH of \ip_axis_fi16tofp32floating_point_v7_0_viv__parameterized0\ : entity is 24;
  attribute C_A_TUSER_WIDTH : integer;
  attribute C_A_TUSER_WIDTH of \ip_axis_fi16tofp32floating_point_v7_0_viv__parameterized0\ : entity is 4;
  attribute C_B_TDATA_WIDTH : integer;
  attribute C_B_TDATA_WIDTH of \ip_axis_fi16tofp32floating_point_v7_0_viv__parameterized0\ : entity is 24;
  attribute C_B_TUSER_WIDTH : integer;
  attribute C_B_TUSER_WIDTH of \ip_axis_fi16tofp32floating_point_v7_0_viv__parameterized0\ : entity is 1;
  attribute C_C_TDATA_WIDTH : integer;
  attribute C_C_TDATA_WIDTH of \ip_axis_fi16tofp32floating_point_v7_0_viv__parameterized0\ : entity is 24;
  attribute C_C_TUSER_WIDTH : integer;
  attribute C_C_TUSER_WIDTH of \ip_axis_fi16tofp32floating_point_v7_0_viv__parameterized0\ : entity is 1;
  attribute C_OPERATION_TDATA_WIDTH : integer;
  attribute C_OPERATION_TDATA_WIDTH of \ip_axis_fi16tofp32floating_point_v7_0_viv__parameterized0\ : entity is 8;
  attribute C_OPERATION_TUSER_WIDTH : integer;
  attribute C_OPERATION_TUSER_WIDTH of \ip_axis_fi16tofp32floating_point_v7_0_viv__parameterized0\ : entity is 1;
  attribute C_RESULT_TDATA_WIDTH : integer;
  attribute C_RESULT_TDATA_WIDTH of \ip_axis_fi16tofp32floating_point_v7_0_viv__parameterized0\ : entity is 32;
  attribute C_RESULT_TUSER_WIDTH : integer;
  attribute C_RESULT_TUSER_WIDTH of \ip_axis_fi16tofp32floating_point_v7_0_viv__parameterized0\ : entity is 4;
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of \ip_axis_fi16tofp32floating_point_v7_0_viv__parameterized0\ : entity is "yes";
end \ip_axis_fi16tofp32floating_point_v7_0_viv__parameterized0\;

architecture STRUCTURE of \ip_axis_fi16tofp32floating_point_v7_0_viv__parameterized0\ is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \FIX_TO_FLT_OP.SPD.OP/EXP/IP_SIGN_DELAY/i_pipe/first_q\ : STD_LOGIC;
  signal \FIX_TO_FLT_OP.SPD.OP/EXP/ZERO_DELAY/i_pipe/first_q\ : STD_LOGIC;
  signal \FIX_TO_FLT_OP.SPD.OP/LZE/A_Z_DET/i_pipe/first_q\ : STD_LOGIC;
  signal \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].DIST_DEL/i_pipe/first_q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/OP_DEL/i_pipe/first_q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/op_int\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/op_int\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].DIST_DEL/i_pipe/first_q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].MUX_0/OP_DEL/i_pipe/first_q\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].MUX_0/OP_DEL/i_pipe/first_q\ : signal is "true";
  signal \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].MUX_0/op_int\ : STD_LOGIC;
  signal \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].MUX_Z/OP_DEL/i_pipe/first_q\ : STD_LOGIC;
  attribute RTL_KEEP of \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].MUX_Z/OP_DEL/i_pipe/first_q\ : signal is "true";
  signal \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].MUX_Z/op_int\ : STD_LOGIC;
  signal \FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CI\ : STD_LOGIC;
  signal \FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/D\ : STD_LOGIC;
  signal \FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_2.CC/D\ : STD_LOGIC;
  signal \FIX_TO_FLT_OP.SPD.OP/LZE/all_bits_zero_del\ : STD_LOGIC;
  signal \FIX_TO_FLT_OP.SPD.OP/LZE/flt_all_zero\ : STD_LOGIC;
  signal \FIX_TO_FLT_OP.SPD.OP/LZE/p_0_out\ : STD_LOGIC;
  signal \FIX_TO_FLT_OP.SPD.OP/LZE/p_1_in\ : STD_LOGIC;
  signal \FIX_TO_FLT_OP.SPD.OP/M_ABS/O\ : STD_LOGIC;
  signal \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q\ : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q\ : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q\ : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \FIX_TO_FLT_OP.SPD.OP/OP/FLAGS_REG.IV_OP_REG/i_pipe/first_q\ : STD_LOGIC;
  signal \FIX_TO_FLT_OP.SPD.OP/OP/p_5_out\ : STD_LOGIC_VECTOR ( 22 to 22 );
  signal \FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_IN_DEL/i_pipe/first_q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_OFF_OP_DEL/i_pipe/first_q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/O\ : STD_LOGIC;
  signal \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/first_q\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/first_q\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CARRYS_Q_DEL.NOT_FAST_OP.CARRY_DEL/i_pipe/first_q\ : STD_LOGIC;
  signal \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CI\ : STD_LOGIC;
  signal \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/O\ : STD_LOGIC;
  signal \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \FIX_TO_FLT_OP.SPD.OP/ROUND/carry_rnd2\ : STD_LOGIC;
  signal \FIX_TO_FLT_OP.SPD.OP/ROUND/mant_shifted_rnd1\ : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal \FIX_TO_FLT_OP.SPD.OP/ROUND/round_rnd1\ : STD_LOGIC;
  signal \FIX_TO_FLT_OP.SPD.OP/ROUND/sum_rnd2\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q\ : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \FIX_TO_FLT_OP.SPD.OP/norm_dist_skew\ : STD_LOGIC_VECTOR ( 4 to 4 );
  signal \FIX_TO_FLT_OP.SPD.OP/norm_dist_skew__0\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \FIX_TO_FLT_OP.SPD.OP/op_state\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal GND_2 : STD_LOGIC;
  signal SIGN : STD_LOGIC;
  signal a_i : STD_LOGIC_VECTOR ( 16 to 16 );
  signal combiner_data_valid : STD_LOGIC;
  signal \i_nd_to_rdy/first_q\ : STD_LOGIC;
  attribute RTL_KEEP of \i_nd_to_rdy/first_q\ : signal is "true";
  signal lopt : STD_LOGIC;
  signal lopt_1 : STD_LOGIC;
  signal lopt_10 : STD_LOGIC;
  signal lopt_11 : STD_LOGIC;
  signal lopt_12 : STD_LOGIC;
  signal lopt_13 : STD_LOGIC;
  signal lopt_14 : STD_LOGIC;
  signal lopt_2 : STD_LOGIC;
  signal lopt_3 : STD_LOGIC;
  signal lopt_4 : STD_LOGIC;
  signal lopt_5 : STD_LOGIC;
  signal lopt_6 : STD_LOGIC;
  signal lopt_7 : STD_LOGIC;
  signal lopt_8 : STD_LOGIC;
  signal lopt_9 : STD_LOGIC;
  signal \^m_axis_result_tdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^m_axis_result_tvalid\ : STD_LOGIC;
  signal m_axis_z_tlast_a : STD_LOGIC;
  signal m_axis_z_tuser_a : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \n_0_CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__0\ : STD_LOGIC;
  signal \n_0_CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__2\ : STD_LOGIC;
  signal \n_0_CHAIN_GEN[10].C_MUX.CARRY_MUX_i_1__1\ : STD_LOGIC;
  signal \n_0_CHAIN_GEN[11].C_MUX.CARRY_MUX_i_1__0\ : STD_LOGIC;
  signal \n_0_CHAIN_GEN[12].C_MUX.CARRY_MUX_i_1\ : STD_LOGIC;
  signal \n_0_CHAIN_GEN[13].C_MUX.CARRY_MUX_i_1\ : STD_LOGIC;
  signal \n_0_CHAIN_GEN[14].C_MUX.CARRY_MUX_i_1\ : STD_LOGIC;
  signal \n_0_CHAIN_GEN[15].C_MUX.CARRY_MUX_i_1\ : STD_LOGIC;
  signal \n_0_CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1\ : STD_LOGIC;
  signal \n_0_CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__1\ : STD_LOGIC;
  signal \n_0_CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1\ : STD_LOGIC;
  signal \n_0_CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__1\ : STD_LOGIC;
  signal \n_0_CHAIN_GEN[3].C_MUX.CARRY_MUX_i_1\ : STD_LOGIC;
  signal \n_0_CHAIN_GEN[3].C_MUX.CARRY_MUX_i_1__1\ : STD_LOGIC;
  signal \n_0_CHAIN_GEN[4].C_MUX.CARRY_MUX_i_1\ : STD_LOGIC;
  signal \n_0_CHAIN_GEN[4].C_MUX.CARRY_MUX_i_1__1\ : STD_LOGIC;
  signal \n_0_CHAIN_GEN[5].C_MUX.CARRY_MUX_i_1\ : STD_LOGIC;
  signal \n_0_CHAIN_GEN[5].C_MUX.CARRY_MUX_i_1__1\ : STD_LOGIC;
  signal \n_0_CHAIN_GEN[6].C_MUX.CARRY_MUX_i_1\ : STD_LOGIC;
  signal \n_0_CHAIN_GEN[6].C_MUX.CARRY_MUX_i_1__1\ : STD_LOGIC;
  signal \n_0_CHAIN_GEN[7].C_MUX.CARRY_MUX_i_1\ : STD_LOGIC;
  signal \n_0_CHAIN_GEN[7].C_MUX.CARRY_MUX_i_1__1\ : STD_LOGIC;
  signal \n_0_CHAIN_GEN[7].C_MUX.CARRY_MUX_i_1__2\ : STD_LOGIC;
  signal \n_0_CHAIN_GEN[8].C_MUX.CARRY_MUX_i_1__1\ : STD_LOGIC;
  signal \n_0_CHAIN_GEN[9].C_MUX.CARRY_MUX_i_1__1\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/EXP/IP_SIGN_DELAY/i_pipe/opt_has_pipe.i_pipe[4].pipe_reg[4][0]_srl3\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].DIST_DEL/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][0]\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].DIST_DEL/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][1]\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[0].CARRYS_DEL.NEED_DEL.CARRYS_FD\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[1].CARRYS_DEL.NEED_DEL.CARRYS_FD\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[1].C_MUX.CARRY_MUX\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[2].CARRYS_DEL.NEED_DEL.CARRYS_FD\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[2].C_MUX.CARRY_MUX\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[3].C_MUX.CARRY_MUX\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[4].CARRYS_DEL.NEED_DEL.CARRYS_FD\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[4].C_MUX.CARRY_MUX\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[5].CARRYS_DEL.NEED_DEL.CARRYS_FD\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[5].C_MUX.CARRY_MUX\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[6].CARRYS_DEL.NEED_DEL.CARRYS_FD\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[6].C_MUX.CARRY_MUX\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[0].C_MUX.CARRY_MUX\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[10].C_MUX.CARRY_MUX\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[10].Q_XOR.SUM_XOR\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[11].C_MUX.CARRY_MUX\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[11].Q_XOR.SUM_XOR\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[12].C_MUX.CARRY_MUX\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[12].Q_XOR.SUM_XOR\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[13].C_MUX.CARRY_MUX\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[13].Q_XOR.SUM_XOR\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[14].C_MUX.CARRY_MUX\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[14].Q_XOR.SUM_XOR\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[15].C_MUX.CARRY_MUX\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[15].Q_XOR.SUM_XOR\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[16].Q_XOR.SUM_XOR\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[1].C_MUX.CARRY_MUX\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[1].Q_XOR.SUM_XOR\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[2].C_MUX.CARRY_MUX\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[2].Q_XOR.SUM_XOR\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[3].C_MUX.CARRY_MUX\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[3].Q_XOR.SUM_XOR\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[4].C_MUX.CARRY_MUX\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[4].Q_XOR.SUM_XOR\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[5].C_MUX.CARRY_MUX\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[5].Q_XOR.SUM_XOR\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[6].C_MUX.CARRY_MUX\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[6].Q_XOR.SUM_XOR\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[7].C_MUX.CARRY_MUX\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[7].Q_XOR.SUM_XOR\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[8].C_MUX.CARRY_MUX\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[8].Q_XOR.SUM_XOR\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[9].C_MUX.CARRY_MUX\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[9].Q_XOR.SUM_XOR\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.exp_op[0]_i_1\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.exp_op[1]_i_1\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.exp_op[2]_i_1\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.exp_op[3]_i_1\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.exp_op[4]_i_1\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.exp_op[5]_i_1\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.exp_op[6]_i_1\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.exp_op[7]_i_1\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[0]_i_1\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[10]_i_1\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[11]_i_1\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[12]_i_1\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[13]_i_1\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[14]_i_1\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[15]_i_1\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[16]_i_1\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[17]_i_1\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[18]_i_1\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[19]_i_1\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[1]_i_1\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[20]_i_1\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[21]_i_1\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[2]_i_1\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[3]_i_1\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[4]_i_1\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[5]_i_1\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[6]_i_1\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[7]_i_1\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[8]_i_1\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[9]_i_1\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.sign_op_i_1\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[0].C_MUX.CARRY_MUX\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[10].C_MUX.CARRY_MUX\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[10].Q_XOR.SUM_XOR\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[11].Q_XOR.SUM_XOR\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[1].C_MUX.CARRY_MUX\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[1].Q_XOR.SUM_XOR\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[2].C_MUX.CARRY_MUX\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[2].Q_XOR.SUM_XOR\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[3].C_MUX.CARRY_MUX\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[3].Q_XOR.SUM_XOR\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[4].C_MUX.CARRY_MUX\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[4].Q_XOR.SUM_XOR\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[5].C_MUX.CARRY_MUX\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[5].Q_XOR.SUM_XOR\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[6].C_MUX.CARRY_MUX\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[6].Q_XOR.SUM_XOR\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[7].C_MUX.CARRY_MUX\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[7].Q_XOR.SUM_XOR\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[8].C_MUX.CARRY_MUX\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[8].Q_XOR.SUM_XOR\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[9].C_MUX.CARRY_MUX\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[9].Q_XOR.SUM_XOR\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[10].C_MUX.CARRY_MUX\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[10].Q_XOR.SUM_XOR\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[11].Q_XOR.SUM_XOR\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[1].C_MUX.CARRY_MUX\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[1].Q_XOR.SUM_XOR\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[2].C_MUX.CARRY_MUX\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[2].Q_XOR.SUM_XOR\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[3].C_MUX.CARRY_MUX\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[3].Q_XOR.SUM_XOR\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[4].C_MUX.CARRY_MUX\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[4].Q_XOR.SUM_XOR\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[5].C_MUX.CARRY_MUX\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[5].Q_XOR.SUM_XOR\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[6].C_MUX.CARRY_MUX\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[6].Q_XOR.SUM_XOR\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[7].C_MUX.CARRY_MUX\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[7].Q_XOR.SUM_XOR\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[8].C_MUX.CARRY_MUX\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[8].Q_XOR.SUM_XOR\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[9].C_MUX.CARRY_MUX\ : STD_LOGIC;
  signal \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[9].Q_XOR.SUM_XOR\ : STD_LOGIC;
  signal \n_0_HAS_ARESETN.sclr_i_i_1\ : STD_LOGIC;
  signal \n_0_RESULT_REG.NORMAL.exp_op[2]_i_2\ : STD_LOGIC;
  signal \n_0_RESULT_REG.NORMAL.exp_op[3]_i_2\ : STD_LOGIC;
  signal \n_0_RESULT_REG.NORMAL.exp_op[5]_i_2\ : STD_LOGIC;
  signal \n_0_RESULT_REG.NORMAL.exp_op[7]_i_2\ : STD_LOGIC;
  signal \n_0_gen_has_z_tready.reg1_a_tlast_i_1\ : STD_LOGIC;
  signal \n_0_gen_has_z_tready.reg1_a_tuser[3]_i_1\ : STD_LOGIC;
  signal \n_0_gen_has_z_tready.reg2_a_tdata[0]_i_1\ : STD_LOGIC;
  signal \n_0_gen_has_z_tready.reg2_a_tdata[10]_i_1\ : STD_LOGIC;
  signal \n_0_gen_has_z_tready.reg2_a_tdata[11]_i_1\ : STD_LOGIC;
  signal \n_0_gen_has_z_tready.reg2_a_tdata[12]_i_1\ : STD_LOGIC;
  signal \n_0_gen_has_z_tready.reg2_a_tdata[13]_i_1\ : STD_LOGIC;
  signal \n_0_gen_has_z_tready.reg2_a_tdata[14]_i_1\ : STD_LOGIC;
  signal \n_0_gen_has_z_tready.reg2_a_tdata[15]_i_1\ : STD_LOGIC;
  signal \n_0_gen_has_z_tready.reg2_a_tdata[16]_i_2\ : STD_LOGIC;
  signal \n_0_gen_has_z_tready.reg2_a_tdata[1]_i_1\ : STD_LOGIC;
  signal \n_0_gen_has_z_tready.reg2_a_tdata[2]_i_1\ : STD_LOGIC;
  signal \n_0_gen_has_z_tready.reg2_a_tdata[3]_i_1\ : STD_LOGIC;
  signal \n_0_gen_has_z_tready.reg2_a_tdata[4]_i_1\ : STD_LOGIC;
  signal \n_0_gen_has_z_tready.reg2_a_tdata[5]_i_1\ : STD_LOGIC;
  signal \n_0_gen_has_z_tready.reg2_a_tdata[6]_i_1\ : STD_LOGIC;
  signal \n_0_gen_has_z_tready.reg2_a_tdata[7]_i_1\ : STD_LOGIC;
  signal \n_0_gen_has_z_tready.reg2_a_tdata[8]_i_1\ : STD_LOGIC;
  signal \n_0_gen_has_z_tready.reg2_a_tdata[9]_i_1\ : STD_LOGIC;
  signal \n_0_gen_has_z_tready.reg2_a_tlast_i_1\ : STD_LOGIC;
  signal \n_0_gen_has_z_tready.reg2_a_tuser[0]_i_1\ : STD_LOGIC;
  signal \n_0_gen_has_z_tready.reg2_a_tuser[1]_i_1\ : STD_LOGIC;
  signal \n_0_gen_has_z_tready.reg2_a_tuser[2]_i_1\ : STD_LOGIC;
  signal \n_0_gen_has_z_tready.reg2_a_tuser[3]_i_1\ : STD_LOGIC;
  signal \n_0_i_nd_to_rdy/opt_has_pipe.i_pipe[2].pipe_reg[2][0]\ : STD_LOGIC;
  signal \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[0]\ : STD_LOGIC;
  signal \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[10]\ : STD_LOGIC;
  signal \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[11]\ : STD_LOGIC;
  signal \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[12]\ : STD_LOGIC;
  signal \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[13]\ : STD_LOGIC;
  signal \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[14]\ : STD_LOGIC;
  signal \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[15]\ : STD_LOGIC;
  signal \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[16]\ : STD_LOGIC;
  signal \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[1]\ : STD_LOGIC;
  signal \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[2]\ : STD_LOGIC;
  signal \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[3]\ : STD_LOGIC;
  signal \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[4]\ : STD_LOGIC;
  signal \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[5]\ : STD_LOGIC;
  signal \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[6]\ : STD_LOGIC;
  signal \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[7]\ : STD_LOGIC;
  signal \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[8]\ : STD_LOGIC;
  signal \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[9]\ : STD_LOGIC;
  signal \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tlast_reg\ : STD_LOGIC;
  signal \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[0]\ : STD_LOGIC;
  signal \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[10]\ : STD_LOGIC;
  signal \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[11]\ : STD_LOGIC;
  signal \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[12]\ : STD_LOGIC;
  signal \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[13]\ : STD_LOGIC;
  signal \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[14]\ : STD_LOGIC;
  signal \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[15]\ : STD_LOGIC;
  signal \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[1]\ : STD_LOGIC;
  signal \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[2]\ : STD_LOGIC;
  signal \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[3]\ : STD_LOGIC;
  signal \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[4]\ : STD_LOGIC;
  signal \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[5]\ : STD_LOGIC;
  signal \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[6]\ : STD_LOGIC;
  signal \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[7]\ : STD_LOGIC;
  signal \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[8]\ : STD_LOGIC;
  signal \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[9]\ : STD_LOGIC;
  signal \n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][0]_srl4\ : STD_LOGIC;
  signal \n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][1]_srl4\ : STD_LOGIC;
  signal \n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][2]_srl4\ : STD_LOGIC;
  signal \n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][3]_srl4\ : STD_LOGIC;
  signal \n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][4]_srl4\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[0]_i_1__1\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[0]_i_1__10\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[0]_i_1__12\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[0]_i_1__4\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[0]_i_1__6\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[0]_i_1__7\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[0]_i_1__8\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[0]_i_1__9\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[0]_i_2\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[0]_i_2__0\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[0]_i_2__1\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[10]_i_1\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[10]_i_1__0\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[10]_i_1__1\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[10]_i_1__2\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[10]_i_1__3\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[10]_i_1__4\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[10]_i_1__5\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[10]_i_2\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[11]_i_1\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[11]_i_1__0\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[11]_i_1__1\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[11]_i_1__2\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[11]_i_1__3\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[11]_i_1__4\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[11]_i_2\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[12]_i_1\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[12]_i_1__0\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[12]_i_1__1\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[12]_i_1__2\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[12]_i_2\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[13]_i_1\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[13]_i_1__0\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[13]_i_1__1\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[13]_i_1__2\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[14]_i_1\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[14]_i_1__0\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[14]_i_1__1\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[14]_i_1__2\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[15]_i_1\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[15]_i_1__0\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[15]_i_1__1\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[15]_i_1__2\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[16]_i_1\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[16]_i_1__0\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[16]_i_1__1\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[16]_i_1__2\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[1]_i_1\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[1]_i_1__1\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[1]_i_1__10\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[1]_i_1__2\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[1]_i_1__3\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[1]_i_1__4\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[1]_i_1__5\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[1]_i_1__6\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[1]_i_1__9\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[1]_i_2\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[2]_i_1\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[2]_i_1__0\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[2]_i_1__1\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[2]_i_1__2\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[2]_i_1__3\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[2]_i_1__4\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[2]_i_1__7\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[2]_i_1__8\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[2]_i_2\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[3]_i_1\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[3]_i_1__0\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[3]_i_1__1\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[3]_i_1__2\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[3]_i_1__3\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[3]_i_1__4\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[3]_i_1__6\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[3]_i_1__7\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[3]_i_2\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[4]_i_1\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[4]_i_1__0\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[4]_i_1__1\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[4]_i_1__2\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[4]_i_1__3\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[4]_i_1__4\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[4]_i_1__5\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[4]_i_1__6\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[4]_i_2\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[5]_i_1\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[5]_i_1__0\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[5]_i_1__1\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[5]_i_1__2\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[5]_i_1__3\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[5]_i_1__4\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[5]_i_1__5\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[5]_i_1__6\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[5]_i_2\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[6]_i_1\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[6]_i_1__0\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[6]_i_1__1\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[6]_i_1__2\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[6]_i_1__3\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[6]_i_1__4\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[6]_i_1__5\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[6]_i_1__6\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[6]_i_2\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[7]_i_1\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[7]_i_1__0\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[7]_i_1__1\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[7]_i_1__2\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[7]_i_1__3\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[7]_i_1__4\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[7]_i_1__5\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[7]_i_1__6\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[7]_i_2\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[8]_i_1\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[8]_i_1__0\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[8]_i_1__1\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[8]_i_1__2\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[8]_i_1__3\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[8]_i_1__4\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[8]_i_1__5\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[8]_i_2\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[9]_i_1\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[9]_i_1__0\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[9]_i_1__1\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[9]_i_1__2\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[9]_i_1__3\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[9]_i_1__4\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[9]_i_1__5\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.first_q[9]_i_2\ : STD_LOGIC;
  signal \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\ : STD_LOGIC;
  signal \need_combiner.use_2to1.skid_buffer_combiner/a_tx\ : STD_LOGIC;
  signal \need_combiner.use_2to1.skid_buffer_combiner/b_tx\ : STD_LOGIC;
  signal \need_combiner.use_2to1.skid_buffer_combiner/p_18_in\ : STD_LOGIC;
  signal \need_combiner.use_2to1.skid_buffer_combiner/p_2_out\ : STD_LOGIC;
  signal \need_combiner.use_2to1.skid_buffer_combiner/reg1_a_ready_nxt\ : STD_LOGIC;
  signal \need_combiner.use_2to1.skid_buffer_combiner/reg1_a_tuser\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid\ : STD_LOGIC;
  signal \need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid_nxt\ : STD_LOGIC;
  signal \need_combiner.use_2to1.skid_buffer_combiner/reg1_b_ready_nxt\ : STD_LOGIC;
  signal \need_combiner.use_2to1.skid_buffer_combiner/reg1_b_valid\ : STD_LOGIC;
  signal \need_combiner.use_2to1.skid_buffer_combiner/reg1_b_valid_nxt\ : STD_LOGIC;
  signal \need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast\ : STD_LOGIC;
  signal \need_combiner.use_2to1.skid_buffer_combiner/reg2_a_valid\ : STD_LOGIC;
  signal \need_combiner.use_2to1.skid_buffer_combiner/reg2_a_valid_nxt\ : STD_LOGIC;
  signal \need_combiner.use_2to1.skid_buffer_combiner/reg2_b_valid\ : STD_LOGIC;
  signal \need_combiner.use_2to1.skid_buffer_combiner/reg2_b_valid_nxt\ : STD_LOGIC;
  signal \need_user_delay.user_pipe/i_pipe/first_q\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \pipe[3]\ : STD_LOGIC;
  signal \pipe[4]\ : STD_LOGIC;
  signal \pipe[5]\ : STD_LOGIC;
  signal \^s_axis_a_tready\ : STD_LOGIC;
  signal sclr_i : STD_LOGIC;
  signal valid_transfer_in : STD_LOGIC;
  signal \NLW_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_2.CC/CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_2.CC/CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_2.CC/CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_2.CC/CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[16].Q_XOR.SUM_XOR_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[16].Q_XOR.SUM_XOR_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[16].Q_XOR.SUM_XOR_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[16].Q_XOR.SUM_XOR_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[9].C_MUX.CARRY_MUX_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[9].C_MUX.CARRY_MUX_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[9].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[9].C_MUX.CARRY_MUX_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_FIX_TO_FLT_OP.SPD.OP/ROUND/RND_BIT_GEN/NORM_1_OR_0.STRUCT_REQ.GENERAL.RND1/CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_FIX_TO_FLT_OP.SPD.OP/ROUND/RND_BIT_GEN/NORM_1_OR_0.STRUCT_REQ.GENERAL.RND1/CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute srl_bus_name : string;
  attribute srl_bus_name of \FIX_TO_FLT_OP.SPD.OP/EXP/IP_SIGN_DELAY/i_pipe/opt_has_pipe.i_pipe[4].pipe_reg[4][0]_srl3\ : label is "U0/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/IP_SIGN_DELAY/i_pipe/opt_has_pipe.i_pipe[4].pipe_reg[4] ";
  attribute srl_name : string;
  attribute srl_name of \FIX_TO_FLT_OP.SPD.OP/EXP/IP_SIGN_DELAY/i_pipe/opt_has_pipe.i_pipe[4].pipe_reg[4][0]_srl3\ : label is "U0/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/IP_SIGN_DELAY/i_pipe/opt_has_pipe.i_pipe[4].pipe_reg[4][0]_srl3 ";
  attribute keep : string;
  attribute keep of \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/OP_DEL/i_pipe/opt_has_pipe.first_q_reg[0]\ : label is "yes";
  attribute keep of \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/OP_DEL/i_pipe/opt_has_pipe.first_q_reg[1]\ : label is "yes";
  attribute keep of \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/OP_DEL/i_pipe/opt_has_pipe.first_q_reg[2]\ : label is "yes";
  attribute keep of \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/OP_DEL/i_pipe/opt_has_pipe.first_q_reg[3]\ : label is "yes";
  attribute keep of \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/opt_has_pipe.first_q_reg[0]\ : label is "yes";
  attribute keep of \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/opt_has_pipe.first_q_reg[1]\ : label is "yes";
  attribute keep of \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/opt_has_pipe.first_q_reg[2]\ : label is "yes";
  attribute keep of \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/opt_has_pipe.first_q_reg[3]\ : label is "yes";
  attribute keep of \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].MUX_0/OP_DEL/i_pipe/opt_has_pipe.first_q_reg[0]\ : label is "yes";
  attribute keep of \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].MUX_Z/OP_DEL/i_pipe/opt_has_pipe.first_q_reg[0]\ : label is "yes";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[0].CARRYS_DEL.NEED_DEL.CARRYS_FD\ : label is "FDE";
  attribute box_type : string;
  attribute box_type of \FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[0].CARRYS_DEL.NEED_DEL.CARRYS_FD\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[1].CARRYS_DEL.NEED_DEL.CARRYS_FD\ : label is "FDE";
  attribute box_type of \FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[1].CARRYS_DEL.NEED_DEL.CARRYS_FD\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[2].CARRYS_DEL.NEED_DEL.CARRYS_FD\ : label is "FDE";
  attribute box_type of \FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[2].CARRYS_DEL.NEED_DEL.CARRYS_FD\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[3].CARRYS_DEL.NEED_DEL.CARRYS_FD\ : label is "FDE";
  attribute box_type of \FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[3].CARRYS_DEL.NEED_DEL.CARRYS_FD\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[4].CARRYS_DEL.NEED_DEL.CARRYS_FD\ : label is "FDE";
  attribute box_type of \FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[4].CARRYS_DEL.NEED_DEL.CARRYS_FD\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[5].CARRYS_DEL.NEED_DEL.CARRYS_FD\ : label is "FDE";
  attribute box_type of \FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[5].CARRYS_DEL.NEED_DEL.CARRYS_FD\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[6].CARRYS_DEL.NEED_DEL.CARRYS_FD\ : label is "FDE";
  attribute box_type of \FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[6].CARRYS_DEL.NEED_DEL.CARRYS_FD\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[7].CARRYS_DEL.NEED_DEL.CARRYS_FD\ : label is "FDE";
  attribute box_type of \FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[7].CARRYS_DEL.NEED_DEL.CARRYS_FD\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_2.CC/CHAIN_GEN[0].CARRYS_DEL.NEED_DEL.CARRYS_FD\ : label is "FDE";
  attribute box_type of \FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_2.CC/CHAIN_GEN[0].CARRYS_DEL.NEED_DEL.CARRYS_FD\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_2.CC/CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_2.CC/CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[12].C_MUX.CARRY_MUX_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[12].C_MUX.CARRY_MUX_CARRY4\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[16].Q_XOR.SUM_XOR_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[16].Q_XOR.SUM_XOR_CARRY4\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[8].C_MUX.CARRY_MUX_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[8].C_MUX.CARRY_MUX_CARRY4\ : label is "PRIMITIVE";
  attribute use_sync_reset : string;
  attribute use_sync_reset of \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.exp_op_reg[0]\ : label is "auto";
  attribute use_sync_set : string;
  attribute use_sync_set of \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.exp_op_reg[0]\ : label is "auto";
  attribute use_sync_reset of \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.exp_op_reg[1]\ : label is "auto";
  attribute use_sync_set of \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.exp_op_reg[1]\ : label is "auto";
  attribute use_sync_reset of \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.exp_op_reg[2]\ : label is "auto";
  attribute use_sync_set of \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.exp_op_reg[2]\ : label is "auto";
  attribute use_sync_reset of \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.exp_op_reg[3]\ : label is "auto";
  attribute use_sync_set of \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.exp_op_reg[3]\ : label is "auto";
  attribute use_sync_reset of \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.exp_op_reg[4]\ : label is "auto";
  attribute use_sync_set of \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.exp_op_reg[4]\ : label is "auto";
  attribute use_sync_reset of \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.exp_op_reg[5]\ : label is "auto";
  attribute use_sync_set of \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.exp_op_reg[5]\ : label is "auto";
  attribute use_sync_reset of \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.exp_op_reg[6]\ : label is "auto";
  attribute use_sync_set of \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.exp_op_reg[6]\ : label is "auto";
  attribute use_sync_reset of \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.exp_op_reg[7]\ : label is "auto";
  attribute use_sync_set of \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.exp_op_reg[7]\ : label is "auto";
  attribute use_sync_reset of \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[0]\ : label is "auto";
  attribute use_sync_set of \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[0]\ : label is "auto";
  attribute use_sync_reset of \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[10]\ : label is "auto";
  attribute use_sync_set of \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[10]\ : label is "auto";
  attribute use_sync_reset of \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[11]\ : label is "auto";
  attribute use_sync_set of \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[11]\ : label is "auto";
  attribute use_sync_reset of \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[12]\ : label is "auto";
  attribute use_sync_set of \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[12]\ : label is "auto";
  attribute use_sync_reset of \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[13]\ : label is "auto";
  attribute use_sync_set of \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[13]\ : label is "auto";
  attribute use_sync_reset of \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[14]\ : label is "auto";
  attribute use_sync_set of \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[14]\ : label is "auto";
  attribute use_sync_reset of \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[15]\ : label is "auto";
  attribute use_sync_set of \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[15]\ : label is "auto";
  attribute use_sync_reset of \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[16]\ : label is "auto";
  attribute use_sync_set of \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[16]\ : label is "auto";
  attribute use_sync_reset of \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[17]\ : label is "auto";
  attribute use_sync_set of \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[17]\ : label is "auto";
  attribute use_sync_reset of \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[18]\ : label is "auto";
  attribute use_sync_set of \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[18]\ : label is "auto";
  attribute use_sync_reset of \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[19]\ : label is "auto";
  attribute use_sync_set of \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[19]\ : label is "auto";
  attribute use_sync_reset of \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[1]\ : label is "auto";
  attribute use_sync_set of \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[1]\ : label is "auto";
  attribute use_sync_reset of \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[20]\ : label is "auto";
  attribute use_sync_set of \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[20]\ : label is "auto";
  attribute use_sync_reset of \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[21]\ : label is "auto";
  attribute use_sync_set of \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[21]\ : label is "auto";
  attribute use_sync_reset of \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[22]\ : label is "auto";
  attribute use_sync_set of \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[22]\ : label is "auto";
  attribute use_sync_reset of \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[2]\ : label is "auto";
  attribute use_sync_set of \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[2]\ : label is "auto";
  attribute use_sync_reset of \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[3]\ : label is "auto";
  attribute use_sync_set of \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[3]\ : label is "auto";
  attribute use_sync_reset of \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[4]\ : label is "auto";
  attribute use_sync_set of \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[4]\ : label is "auto";
  attribute use_sync_reset of \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[5]\ : label is "auto";
  attribute use_sync_set of \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[5]\ : label is "auto";
  attribute use_sync_reset of \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[6]\ : label is "auto";
  attribute use_sync_set of \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[6]\ : label is "auto";
  attribute use_sync_reset of \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[7]\ : label is "auto";
  attribute use_sync_set of \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[7]\ : label is "auto";
  attribute use_sync_reset of \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[8]\ : label is "auto";
  attribute use_sync_set of \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[8]\ : label is "auto";
  attribute use_sync_reset of \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[9]\ : label is "auto";
  attribute use_sync_set of \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[9]\ : label is "auto";
  attribute use_sync_reset of \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.sign_op_reg\ : label is "auto";
  attribute use_sync_set of \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.sign_op_reg\ : label is "auto";
  attribute XILINX_LEGACY_PRIM of \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[1].C_MUX.CARRY_MUX_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[1].C_MUX.CARRY_MUX_CARRY4\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[5].C_MUX.CARRY_MUX_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[5].C_MUX.CARRY_MUX_CARRY4\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[9].C_MUX.CARRY_MUX_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[9].C_MUX.CARRY_MUX_CARRY4\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[1].C_MUX.CARRY_MUX_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[1].C_MUX.CARRY_MUX_CARRY4\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[5].C_MUX.CARRY_MUX_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[5].C_MUX.CARRY_MUX_CARRY4\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[9].C_MUX.CARRY_MUX_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[9].C_MUX.CARRY_MUX_CARRY4\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \FIX_TO_FLT_OP.SPD.OP/ROUND/RND_BIT_GEN/NORM_1_OR_0.STRUCT_REQ.GENERAL.RND1/CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \FIX_TO_FLT_OP.SPD.OP/ROUND/RND_BIT_GEN/NORM_1_OR_0.STRUCT_REQ.GENERAL.RND1/CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_has_z_tready.reg1_a_tlast_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \gen_has_z_tready.reg1_b_ready_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \gen_has_z_tready.reg1_b_valid_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \gen_has_z_tready.reg2_a_tdata[0]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \gen_has_z_tready.reg2_a_tdata[10]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \gen_has_z_tready.reg2_a_tdata[11]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \gen_has_z_tready.reg2_a_tdata[12]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \gen_has_z_tready.reg2_a_tdata[13]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \gen_has_z_tready.reg2_a_tdata[14]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \gen_has_z_tready.reg2_a_tdata[15]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \gen_has_z_tready.reg2_a_tdata[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \gen_has_z_tready.reg2_a_tdata[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \gen_has_z_tready.reg2_a_tdata[3]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \gen_has_z_tready.reg2_a_tdata[4]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \gen_has_z_tready.reg2_a_tdata[5]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \gen_has_z_tready.reg2_a_tdata[6]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \gen_has_z_tready.reg2_a_tdata[7]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \gen_has_z_tready.reg2_a_tdata[8]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \gen_has_z_tready.reg2_a_tdata[9]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \gen_has_z_tready.reg2_a_tuser[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \gen_has_z_tready.reg2_a_tuser[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \gen_has_z_tready.reg2_a_tuser[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \gen_has_z_tready.reg2_a_tuser[3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \gen_has_z_tready.reg2_a_valid_i_2\ : label is "soft_lutpair1";
  attribute keep of \i_nd_to_rdy/opt_has_pipe.first_q_reg[0]\ : label is "yes";
  attribute srl_bus_name of \need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][0]_srl4\ : label is "U0/i_synth/\need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5] ";
  attribute srl_name of \need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][0]_srl4\ : label is "U0/i_synth/\need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][0]_srl4 ";
  attribute srl_bus_name of \need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][1]_srl4\ : label is "U0/i_synth/\need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5] ";
  attribute srl_name of \need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][1]_srl4\ : label is "U0/i_synth/\need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][1]_srl4 ";
  attribute srl_bus_name of \need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][2]_srl4\ : label is "U0/i_synth/\need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5] ";
  attribute srl_name of \need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][2]_srl4\ : label is "U0/i_synth/\need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][2]_srl4 ";
  attribute srl_bus_name of \need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][3]_srl4\ : label is "U0/i_synth/\need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5] ";
  attribute srl_name of \need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][3]_srl4\ : label is "U0/i_synth/\need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][3]_srl4 ";
  attribute srl_bus_name of \need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][4]_srl4\ : label is "U0/i_synth/\need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5] ";
  attribute srl_name of \need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][4]_srl4\ : label is "U0/i_synth/\need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][4]_srl4 ";
  attribute SOFT_HLUTNM of \opt_has_pipe.first_q[0]_i_1__0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \opt_has_pipe.first_q[0]_i_1__2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \opt_has_pipe.first_q[1]_i_1__10\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \opt_has_pipe.first_q[1]_i_1__8\ : label is "soft_lutpair3";
begin
  m_axis_result_tdata(31 downto 0) <= \^m_axis_result_tdata\(31 downto 0);
  m_axis_result_tvalid <= \^m_axis_result_tvalid\;
  s_axis_a_tready <= \^s_axis_a_tready\;
  s_axis_b_tready <= \<const1>\;
  s_axis_c_tready <= \<const1>\;
  s_axis_operation_tready <= \<const1>\;
\CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q\(0),
      O => \FIX_TO_FLT_OP.SPD.OP/LZE/flt_all_zero\
    );
\CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q\(16),
      I1 => \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q\(15),
      O => \n_0_CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__0\
    );
\CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q\(12),
      I1 => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q\(11),
      I2 => \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].MUX_0/OP_DEL/i_pipe/first_q\,
      O => \FIX_TO_FLT_OP.SPD.OP/ROUND/sum_rnd2\(0)
    );
\CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => a_i(16),
      I1 => \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[0]\,
      O => \n_0_CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__2\
    );
\CHAIN_GEN[10].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q\(14),
      I1 => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q\(13),
      I2 => \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].MUX_0/OP_DEL/i_pipe/first_q\,
      O => \FIX_TO_FLT_OP.SPD.OP/ROUND/mant_shifted_rnd1\(10)
    );
\CHAIN_GEN[10].C_MUX.CARRY_MUX_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q\(2),
      I1 => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q\(1),
      I2 => \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].MUX_0/OP_DEL/i_pipe/first_q\,
      O => \FIX_TO_FLT_OP.SPD.OP/ROUND/sum_rnd2\(10)
    );
\CHAIN_GEN[10].C_MUX.CARRY_MUX_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => a_i(16),
      I1 => \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[10]\,
      O => \n_0_CHAIN_GEN[10].C_MUX.CARRY_MUX_i_1__1\
    );
\CHAIN_GEN[11].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q\(13),
      I1 => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q\(12),
      I2 => \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].MUX_0/OP_DEL/i_pipe/first_q\,
      O => \FIX_TO_FLT_OP.SPD.OP/ROUND/mant_shifted_rnd1\(11)
    );
\CHAIN_GEN[11].C_MUX.CARRY_MUX_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => a_i(16),
      I1 => \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[11]\,
      O => \n_0_CHAIN_GEN[11].C_MUX.CARRY_MUX_i_1__0\
    );
\CHAIN_GEN[12].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => a_i(16),
      I1 => \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[12]\,
      O => \n_0_CHAIN_GEN[12].C_MUX.CARRY_MUX_i_1\
    );
\CHAIN_GEN[13].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => a_i(16),
      I1 => \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[13]\,
      O => \n_0_CHAIN_GEN[13].C_MUX.CARRY_MUX_i_1\
    );
\CHAIN_GEN[14].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => a_i(16),
      I1 => \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[14]\,
      O => \n_0_CHAIN_GEN[14].C_MUX.CARRY_MUX_i_1\
    );
\CHAIN_GEN[15].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => a_i(16),
      I1 => \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[15]\,
      O => \n_0_CHAIN_GEN[15].C_MUX.CARRY_MUX_i_1\
    );
\CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q\(14),
      I1 => \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q\(13),
      O => \n_0_CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1\
    );
\CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q\(11),
      I1 => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q\(10),
      I2 => \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].MUX_0/OP_DEL/i_pipe/first_q\,
      O => \FIX_TO_FLT_OP.SPD.OP/ROUND/sum_rnd2\(1)
    );
\CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => a_i(16),
      I1 => \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[1]\,
      O => \n_0_CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__1\
    );
\CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q\(12),
      I1 => \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q\(11),
      O => \n_0_CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1\
    );
\CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q\(10),
      I1 => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q\(9),
      I2 => \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].MUX_0/OP_DEL/i_pipe/first_q\,
      O => \FIX_TO_FLT_OP.SPD.OP/ROUND/sum_rnd2\(2)
    );
\CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => a_i(16),
      I1 => \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[2]\,
      O => \n_0_CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__1\
    );
\CHAIN_GEN[3].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q\(10),
      I1 => \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q\(9),
      O => \n_0_CHAIN_GEN[3].C_MUX.CARRY_MUX_i_1\
    );
\CHAIN_GEN[3].C_MUX.CARRY_MUX_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q\(9),
      I1 => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q\(8),
      I2 => \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].MUX_0/OP_DEL/i_pipe/first_q\,
      O => \FIX_TO_FLT_OP.SPD.OP/ROUND/sum_rnd2\(3)
    );
\CHAIN_GEN[3].C_MUX.CARRY_MUX_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => a_i(16),
      I1 => \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[3]\,
      O => \n_0_CHAIN_GEN[3].C_MUX.CARRY_MUX_i_1__1\
    );
\CHAIN_GEN[4].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q\(8),
      I1 => \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q\(7),
      O => \n_0_CHAIN_GEN[4].C_MUX.CARRY_MUX_i_1\
    );
\CHAIN_GEN[4].C_MUX.CARRY_MUX_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q\(8),
      I1 => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q\(7),
      I2 => \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].MUX_0/OP_DEL/i_pipe/first_q\,
      O => \FIX_TO_FLT_OP.SPD.OP/ROUND/sum_rnd2\(4)
    );
\CHAIN_GEN[4].C_MUX.CARRY_MUX_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => a_i(16),
      I1 => \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[4]\,
      O => \n_0_CHAIN_GEN[4].C_MUX.CARRY_MUX_i_1__1\
    );
\CHAIN_GEN[5].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q\(6),
      I1 => \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q\(5),
      O => \n_0_CHAIN_GEN[5].C_MUX.CARRY_MUX_i_1\
    );
\CHAIN_GEN[5].C_MUX.CARRY_MUX_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q\(7),
      I1 => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q\(6),
      I2 => \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].MUX_0/OP_DEL/i_pipe/first_q\,
      O => \FIX_TO_FLT_OP.SPD.OP/ROUND/sum_rnd2\(5)
    );
\CHAIN_GEN[5].C_MUX.CARRY_MUX_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => a_i(16),
      I1 => \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[5]\,
      O => \n_0_CHAIN_GEN[5].C_MUX.CARRY_MUX_i_1__1\
    );
\CHAIN_GEN[6].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q\(4),
      I1 => \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q\(3),
      O => \n_0_CHAIN_GEN[6].C_MUX.CARRY_MUX_i_1\
    );
\CHAIN_GEN[6].C_MUX.CARRY_MUX_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q\(6),
      I1 => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q\(5),
      I2 => \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].MUX_0/OP_DEL/i_pipe/first_q\,
      O => \FIX_TO_FLT_OP.SPD.OP/ROUND/sum_rnd2\(6)
    );
\CHAIN_GEN[6].C_MUX.CARRY_MUX_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => a_i(16),
      I1 => \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[6]\,
      O => \n_0_CHAIN_GEN[6].C_MUX.CARRY_MUX_i_1__1\
    );
\CHAIN_GEN[7].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q\(2),
      I1 => \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q\(1),
      O => \n_0_CHAIN_GEN[7].C_MUX.CARRY_MUX_i_1\
    );
\CHAIN_GEN[7].C_MUX.CARRY_MUX_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q\(5),
      I1 => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q\(4),
      I2 => \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].MUX_0/OP_DEL/i_pipe/first_q\,
      O => \FIX_TO_FLT_OP.SPD.OP/ROUND/sum_rnd2\(7)
    );
\CHAIN_GEN[7].C_MUX.CARRY_MUX_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => a_i(16),
      I1 => \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[7]\,
      O => \n_0_CHAIN_GEN[7].C_MUX.CARRY_MUX_i_1__1\
    );
\CHAIN_GEN[7].C_MUX.CARRY_MUX_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q\(16),
      I1 => \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].MUX_0/OP_DEL/i_pipe/first_q\,
      O => \n_0_CHAIN_GEN[7].C_MUX.CARRY_MUX_i_1__2\
    );
\CHAIN_GEN[8].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q\(16),
      I1 => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q\(15),
      I2 => \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].MUX_0/OP_DEL/i_pipe/first_q\,
      O => \FIX_TO_FLT_OP.SPD.OP/ROUND/mant_shifted_rnd1\(8)
    );
\CHAIN_GEN[8].C_MUX.CARRY_MUX_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q\(4),
      I1 => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q\(3),
      I2 => \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].MUX_0/OP_DEL/i_pipe/first_q\,
      O => \FIX_TO_FLT_OP.SPD.OP/ROUND/sum_rnd2\(8)
    );
\CHAIN_GEN[8].C_MUX.CARRY_MUX_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => a_i(16),
      I1 => \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[8]\,
      O => \n_0_CHAIN_GEN[8].C_MUX.CARRY_MUX_i_1__1\
    );
\CHAIN_GEN[9].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q\(15),
      I1 => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q\(14),
      I2 => \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].MUX_0/OP_DEL/i_pipe/first_q\,
      O => \FIX_TO_FLT_OP.SPD.OP/ROUND/mant_shifted_rnd1\(9)
    );
\CHAIN_GEN[9].C_MUX.CARRY_MUX_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q\(3),
      I1 => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q\(2),
      I2 => \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].MUX_0/OP_DEL/i_pipe/first_q\,
      O => \FIX_TO_FLT_OP.SPD.OP/ROUND/sum_rnd2\(9)
    );
\CHAIN_GEN[9].C_MUX.CARRY_MUX_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => a_i(16),
      I1 => \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[9]\,
      O => \n_0_CHAIN_GEN[9].C_MUX.CARRY_MUX_i_1__1\
    );
\FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_opt_has_pipe.first_q[0]_i_1__4\,
      Q => \FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q\(0),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_opt_has_pipe.first_q[1]_i_1__6\,
      Q => \FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q\(1),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_opt_has_pipe.first_q[2]_i_1__4\,
      Q => \FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q\(2),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_opt_has_pipe.first_q[3]_i_1__4\,
      Q => \FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q\(3),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_opt_has_pipe.first_q[4]_i_1__4\,
      Q => \FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q\(4),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_opt_has_pipe.first_q[5]_i_1__4\,
      Q => \FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q\(5),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_opt_has_pipe.first_q[6]_i_1__4\,
      Q => \FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q\(6),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_opt_has_pipe.first_q[7]_i_1__4\,
      Q => \FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q\(7),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/EXP/IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      D => a_i(16),
      Q => \FIX_TO_FLT_OP.SPD.OP/EXP/IP_SIGN_DELAY/i_pipe/first_q\,
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/EXP/IP_SIGN_DELAY/i_pipe/opt_has_pipe.i_pipe[4].pipe_reg[4][0]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => \<const0>\,
      A1 => \<const1>\,
      A2 => \<const0>\,
      A3 => \<const0>\,
      CE => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      CLK => aclk,
      D => \FIX_TO_FLT_OP.SPD.OP/EXP/IP_SIGN_DELAY/i_pipe/first_q\,
      Q => \n_0_FIX_TO_FLT_OP.SPD.OP/EXP/IP_SIGN_DELAY/i_pipe/opt_has_pipe.i_pipe[4].pipe_reg[4][0]_srl3\
    );
\FIX_TO_FLT_OP.SPD.OP/EXP/IP_SIGN_DELAY/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      D => \n_0_FIX_TO_FLT_OP.SPD.OP/EXP/IP_SIGN_DELAY/i_pipe/opt_has_pipe.i_pipe[4].pipe_reg[4][0]_srl3\,
      Q => SIGN,
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/EXP/ZERO_DELAY/i_pipe/opt_has_pipe.first_q_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      D => \FIX_TO_FLT_OP.SPD.OP/LZE/A_Z_DET/i_pipe/first_q\,
      Q => \FIX_TO_FLT_OP.SPD.OP/EXP/ZERO_DELAY/i_pipe/first_q\,
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/EXP/ZERO_DELAY/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      D => \FIX_TO_FLT_OP.SPD.OP/EXP/ZERO_DELAY/i_pipe/first_q\,
      Q => \FIX_TO_FLT_OP.SPD.OP/op_state\(3),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/LZE/A_Z_DET/i_pipe/opt_has_pipe.first_q_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      D => \FIX_TO_FLT_OP.SPD.OP/LZE/all_bits_zero_del\,
      Q => \FIX_TO_FLT_OP.SPD.OP/LZE/A_Z_DET/i_pipe/first_q\,
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].DIST_DEL/i_pipe/opt_has_pipe.first_q_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      D => \FIX_TO_FLT_OP.SPD.OP/norm_dist_skew\(4),
      Q => \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].DIST_DEL/i_pipe/first_q\(0),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].DIST_DEL/i_pipe/opt_has_pipe.first_q_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      D => \n_0_opt_has_pipe.first_q[1]_i_1__10\,
      Q => \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].DIST_DEL/i_pipe/first_q\(1),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].DIST_DEL/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      D => \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].DIST_DEL/i_pipe/first_q\(0),
      Q => \n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].DIST_DEL/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][0]\,
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].DIST_DEL/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      D => \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].DIST_DEL/i_pipe/first_q\(1),
      Q => \n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].DIST_DEL/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][1]\,
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/OP_DEL/i_pipe/opt_has_pipe.first_q_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      D => \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/op_int\(0),
      Q => \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/OP_DEL/i_pipe/first_q\(0),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/OP_DEL/i_pipe/opt_has_pipe.first_q_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      D => \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/op_int\(1),
      Q => \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/OP_DEL/i_pipe/first_q\(1),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/OP_DEL/i_pipe/opt_has_pipe.first_q_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      D => \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/op_int\(2),
      Q => \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/OP_DEL/i_pipe/first_q\(2),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/OP_DEL/i_pipe/opt_has_pipe.first_q_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      D => \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/op_int\(3),
      Q => \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/OP_DEL/i_pipe/first_q\(3),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/opt_has_pipe.first_q_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      D => \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/op_int\(0),
      Q => \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q\(0),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/opt_has_pipe.first_q_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      D => \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/op_int\(1),
      Q => \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q\(1),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/opt_has_pipe.first_q_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      D => \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/op_int\(2),
      Q => \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q\(2),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/opt_has_pipe.first_q_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      D => \<const0>\,
      Q => \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q\(3),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].DIST_DEL/i_pipe/opt_has_pipe.first_q_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      D => \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q\(1),
      Q => \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].DIST_DEL/i_pipe/first_q\(0),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].DIST_DEL/i_pipe/opt_has_pipe.first_q_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      D => \FIX_TO_FLT_OP.SPD.OP/norm_dist_skew__0\(1),
      Q => \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].DIST_DEL/i_pipe/first_q\(1),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].MUX_0/OP_DEL/i_pipe/opt_has_pipe.first_q_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      D => \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].MUX_0/op_int\,
      Q => \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].MUX_0/OP_DEL/i_pipe/first_q\,
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].MUX_Z/OP_DEL/i_pipe/opt_has_pipe.first_q_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      D => \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].MUX_Z/op_int\,
      Q => \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].MUX_Z/OP_DEL/i_pipe/first_q\,
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[0].CARRYS_DEL.NEED_DEL.CARRYS_FD\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      D => \FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CI\,
      Q => \n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[0].CARRYS_DEL.NEED_DEL.CARRYS_FD\,
      R => GND_2
    );
\FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4\: unisim.vcomponents.CARRY4
    port map (
      CI => lopt_4,
      CO(3) => \n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[3].C_MUX.CARRY_MUX\,
      CO(2) => \n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[2].C_MUX.CARRY_MUX\,
      CO(1) => \n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[1].C_MUX.CARRY_MUX\,
      CO(0) => \FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CI\,
      CYINIT => \<const1>\,
      DI(3) => \<const0>\,
      DI(2) => \<const0>\,
      DI(1) => \<const0>\,
      DI(0) => \<const0>\,
      O(3 downto 0) => \NLW_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3) => \n_0_CHAIN_GEN[3].C_MUX.CARRY_MUX_i_1\,
      S(2) => \n_0_CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1\,
      S(1) => \n_0_CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1\,
      S(0) => \n_0_CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__0\
    );
\FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_GND\: unisim.vcomponents.GND
    port map (
      G => lopt_4
    );
\FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[1].CARRYS_DEL.NEED_DEL.CARRYS_FD\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      D => \n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[1].C_MUX.CARRY_MUX\,
      Q => \n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[1].CARRYS_DEL.NEED_DEL.CARRYS_FD\,
      R => GND_2
    );
\FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[2].CARRYS_DEL.NEED_DEL.CARRYS_FD\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      D => \n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[2].C_MUX.CARRY_MUX\,
      Q => \n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[2].CARRYS_DEL.NEED_DEL.CARRYS_FD\,
      R => GND_2
    );
\FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[3].CARRYS_DEL.NEED_DEL.CARRYS_FD\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      D => \n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[3].C_MUX.CARRY_MUX\,
      Q => \FIX_TO_FLT_OP.SPD.OP/LZE/p_1_in\,
      R => GND_2
    );
\FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[4].CARRYS_DEL.NEED_DEL.CARRYS_FD\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      D => \n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[4].C_MUX.CARRY_MUX\,
      Q => \n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[4].CARRYS_DEL.NEED_DEL.CARRYS_FD\,
      R => GND_2
    );
\FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[3].C_MUX.CARRY_MUX\,
      CO(3) => \FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/D\,
      CO(2) => \n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[6].C_MUX.CARRY_MUX\,
      CO(1) => \n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[5].C_MUX.CARRY_MUX\,
      CO(0) => \n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[4].C_MUX.CARRY_MUX\,
      CYINIT => lopt_5,
      DI(3) => \<const0>\,
      DI(2) => \<const0>\,
      DI(1) => \<const0>\,
      DI(0) => \<const0>\,
      O(3 downto 0) => \NLW_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3) => \n_0_CHAIN_GEN[7].C_MUX.CARRY_MUX_i_1\,
      S(2) => \n_0_CHAIN_GEN[6].C_MUX.CARRY_MUX_i_1\,
      S(1) => \n_0_CHAIN_GEN[5].C_MUX.CARRY_MUX_i_1\,
      S(0) => \n_0_CHAIN_GEN[4].C_MUX.CARRY_MUX_i_1\
    );
\FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_GND\: unisim.vcomponents.GND
    port map (
      G => lopt_5
    );
\FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[5].CARRYS_DEL.NEED_DEL.CARRYS_FD\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      D => \n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[5].C_MUX.CARRY_MUX\,
      Q => \n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[5].CARRYS_DEL.NEED_DEL.CARRYS_FD\,
      R => GND_2
    );
\FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[6].CARRYS_DEL.NEED_DEL.CARRYS_FD\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      D => \n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[6].C_MUX.CARRY_MUX\,
      Q => \n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[6].CARRYS_DEL.NEED_DEL.CARRYS_FD\,
      R => GND_2
    );
\FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[7].CARRYS_DEL.NEED_DEL.CARRYS_FD\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      D => \FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/D\,
      Q => \FIX_TO_FLT_OP.SPD.OP/norm_dist_skew\(4),
      R => GND_2
    );
\FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_2.CC/CHAIN_GEN[0].CARRYS_DEL.NEED_DEL.CARRYS_FD\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      D => \FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_2.CC/D\,
      Q => \FIX_TO_FLT_OP.SPD.OP/LZE/p_0_out\,
      R => GND_2
    );
\FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_2.CC/CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4\: unisim.vcomponents.CARRY4
    port map (
      CI => lopt_6,
      CO(3 downto 1) => \NLW_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_2.CC/CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_2.CC/D\,
      CYINIT => \<const1>\,
      DI(3 downto 1) => \NLW_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_2.CC/CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_DI_UNCONNECTED\(3 downto 1),
      DI(0) => \<const0>\,
      O(3 downto 0) => \NLW_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_2.CC/CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => \NLW_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_2.CC/CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_S_UNCONNECTED\(3 downto 1),
      S(0) => \FIX_TO_FLT_OP.SPD.OP/LZE/flt_all_zero\
    );
\FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_2.CC/CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_GND\: unisim.vcomponents.GND
    port map (
      G => lopt_6
    );
\FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4\: unisim.vcomponents.CARRY4
    port map (
      CI => lopt,
      CO(3) => \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[3].C_MUX.CARRY_MUX\,
      CO(2) => \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[2].C_MUX.CARRY_MUX\,
      CO(1) => \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[1].C_MUX.CARRY_MUX\,
      CO(0) => \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[0].C_MUX.CARRY_MUX\,
      CYINIT => a_i(16),
      DI(3) => \<const0>\,
      DI(2) => \<const0>\,
      DI(1) => \<const0>\,
      DI(0) => \<const0>\,
      O(3) => \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[3].Q_XOR.SUM_XOR\,
      O(2) => \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[2].Q_XOR.SUM_XOR\,
      O(1) => \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[1].Q_XOR.SUM_XOR\,
      O(0) => \FIX_TO_FLT_OP.SPD.OP/M_ABS/O\,
      S(3) => \n_0_CHAIN_GEN[3].C_MUX.CARRY_MUX_i_1__1\,
      S(2) => \n_0_CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__1\,
      S(1) => \n_0_CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__1\,
      S(0) => \n_0_CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__2\
    );
\FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_GND\: unisim.vcomponents.GND
    port map (
      G => lopt
    );
\FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[12].C_MUX.CARRY_MUX_CARRY4\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[11].C_MUX.CARRY_MUX\,
      CO(3) => \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[15].C_MUX.CARRY_MUX\,
      CO(2) => \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[14].C_MUX.CARRY_MUX\,
      CO(1) => \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[13].C_MUX.CARRY_MUX\,
      CO(0) => \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[12].C_MUX.CARRY_MUX\,
      CYINIT => lopt_3,
      DI(3) => \<const0>\,
      DI(2) => \<const0>\,
      DI(1) => \<const0>\,
      DI(0) => \<const0>\,
      O(3) => \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[15].Q_XOR.SUM_XOR\,
      O(2) => \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[14].Q_XOR.SUM_XOR\,
      O(1) => \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[13].Q_XOR.SUM_XOR\,
      O(0) => \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[12].Q_XOR.SUM_XOR\,
      S(3) => \n_0_CHAIN_GEN[15].C_MUX.CARRY_MUX_i_1\,
      S(2) => \n_0_CHAIN_GEN[14].C_MUX.CARRY_MUX_i_1\,
      S(1) => \n_0_CHAIN_GEN[13].C_MUX.CARRY_MUX_i_1\,
      S(0) => \n_0_CHAIN_GEN[12].C_MUX.CARRY_MUX_i_1\
    );
\FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[12].C_MUX.CARRY_MUX_CARRY4_GND\: unisim.vcomponents.GND
    port map (
      G => lopt_3
    );
\FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[16].Q_XOR.SUM_XOR_CARRY4\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[15].C_MUX.CARRY_MUX\,
      CO(3 downto 0) => \NLW_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[16].Q_XOR.SUM_XOR_CARRY4_CO_UNCONNECTED\(3 downto 0),
      CYINIT => lopt_14,
      DI(3 downto 0) => \NLW_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[16].Q_XOR.SUM_XOR_CARRY4_DI_UNCONNECTED\(3 downto 0),
      O(3 downto 1) => \NLW_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[16].Q_XOR.SUM_XOR_CARRY4_O_UNCONNECTED\(3 downto 1),
      O(0) => \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[16].Q_XOR.SUM_XOR\,
      S(3 downto 1) => \NLW_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[16].Q_XOR.SUM_XOR_CARRY4_S_UNCONNECTED\(3 downto 1),
      S(0) => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[16].Q_XOR.SUM_XOR_CARRY4_GND\: unisim.vcomponents.GND
    port map (
      G => lopt_14
    );
\FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[3].C_MUX.CARRY_MUX\,
      CO(3) => \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[7].C_MUX.CARRY_MUX\,
      CO(2) => \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[6].C_MUX.CARRY_MUX\,
      CO(1) => \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[5].C_MUX.CARRY_MUX\,
      CO(0) => \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[4].C_MUX.CARRY_MUX\,
      CYINIT => lopt_1,
      DI(3) => \<const0>\,
      DI(2) => \<const0>\,
      DI(1) => \<const0>\,
      DI(0) => \<const0>\,
      O(3) => \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[7].Q_XOR.SUM_XOR\,
      O(2) => \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[6].Q_XOR.SUM_XOR\,
      O(1) => \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[5].Q_XOR.SUM_XOR\,
      O(0) => \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[4].Q_XOR.SUM_XOR\,
      S(3) => \n_0_CHAIN_GEN[7].C_MUX.CARRY_MUX_i_1__1\,
      S(2) => \n_0_CHAIN_GEN[6].C_MUX.CARRY_MUX_i_1__1\,
      S(1) => \n_0_CHAIN_GEN[5].C_MUX.CARRY_MUX_i_1__1\,
      S(0) => \n_0_CHAIN_GEN[4].C_MUX.CARRY_MUX_i_1__1\
    );
\FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_GND\: unisim.vcomponents.GND
    port map (
      G => lopt_1
    );
\FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[8].C_MUX.CARRY_MUX_CARRY4\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[7].C_MUX.CARRY_MUX\,
      CO(3) => \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[11].C_MUX.CARRY_MUX\,
      CO(2) => \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[10].C_MUX.CARRY_MUX\,
      CO(1) => \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[9].C_MUX.CARRY_MUX\,
      CO(0) => \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[8].C_MUX.CARRY_MUX\,
      CYINIT => lopt_2,
      DI(3) => \<const0>\,
      DI(2) => \<const0>\,
      DI(1) => \<const0>\,
      DI(0) => \<const0>\,
      O(3) => \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[11].Q_XOR.SUM_XOR\,
      O(2) => \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[10].Q_XOR.SUM_XOR\,
      O(1) => \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[9].Q_XOR.SUM_XOR\,
      O(0) => \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[8].Q_XOR.SUM_XOR\,
      S(3) => \n_0_CHAIN_GEN[11].C_MUX.CARRY_MUX_i_1__0\,
      S(2) => \n_0_CHAIN_GEN[10].C_MUX.CARRY_MUX_i_1__1\,
      S(1) => \n_0_CHAIN_GEN[9].C_MUX.CARRY_MUX_i_1__1\,
      S(0) => \n_0_CHAIN_GEN[8].C_MUX.CARRY_MUX_i_1__1\
    );
\FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[8].C_MUX.CARRY_MUX_CARRY4_GND\: unisim.vcomponents.GND
    port map (
      G => lopt_2
    );
\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_opt_has_pipe.first_q[0]_i_1__6\,
      Q => \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q\(0),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_opt_has_pipe.first_q[10]_i_1__4\,
      Q => \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q\(10),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_opt_has_pipe.first_q[11]_i_1__2\,
      Q => \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q\(11),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_opt_has_pipe.first_q[12]_i_1__2\,
      Q => \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q\(12),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_opt_has_pipe.first_q[13]_i_1__2\,
      Q => \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q\(13),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_opt_has_pipe.first_q[14]_i_1__2\,
      Q => \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q\(14),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_opt_has_pipe.first_q[15]_i_1__2\,
      Q => \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q\(15),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_opt_has_pipe.first_q[16]_i_1__2\,
      Q => \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q\(16),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_opt_has_pipe.first_q[1]_i_1__1\,
      Q => \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q\(1),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_opt_has_pipe.first_q[2]_i_1__7\,
      Q => \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q\(2),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_opt_has_pipe.first_q[3]_i_1__6\,
      Q => \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q\(3),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_opt_has_pipe.first_q[4]_i_1__5\,
      Q => \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q\(4),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_opt_has_pipe.first_q[5]_i_1__5\,
      Q => \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q\(5),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_opt_has_pipe.first_q[6]_i_1__5\,
      Q => \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q\(6),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_opt_has_pipe.first_q[7]_i_1__5\,
      Q => \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q\(7),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_opt_has_pipe.first_q[8]_i_1__4\,
      Q => \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q\(8),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_opt_has_pipe.first_q[9]_i_1__4\,
      Q => \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q\(9),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_opt_has_pipe.first_q[0]_i_1__8\,
      Q => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q\(0),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      D => \n_0_opt_has_pipe.first_q[10]_i_1__1\,
      Q => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q\(10),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      D => \n_0_opt_has_pipe.first_q[11]_i_1__1\,
      Q => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q\(11),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      D => \n_0_opt_has_pipe.first_q[12]_i_1__1\,
      Q => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q\(12),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      D => \n_0_opt_has_pipe.first_q[13]_i_1__0\,
      Q => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q\(13),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      D => \n_0_opt_has_pipe.first_q[14]_i_1__0\,
      Q => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q\(14),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      D => \n_0_opt_has_pipe.first_q[15]_i_1__0\,
      Q => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q\(15),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      D => \n_0_opt_has_pipe.first_q[16]_i_1__0\,
      Q => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q\(16),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      D => \n_0_opt_has_pipe.first_q[1]_i_1__3\,
      Q => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q\(1),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      D => \n_0_opt_has_pipe.first_q[2]_i_1__1\,
      Q => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q\(2),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      D => \n_0_opt_has_pipe.first_q[3]_i_1__1\,
      Q => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q\(3),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      D => \n_0_opt_has_pipe.first_q[4]_i_1__1\,
      Q => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q\(4),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      D => \n_0_opt_has_pipe.first_q[5]_i_1__1\,
      Q => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q\(5),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      D => \n_0_opt_has_pipe.first_q[6]_i_1__1\,
      Q => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q\(6),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      D => \n_0_opt_has_pipe.first_q[7]_i_1__1\,
      Q => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q\(7),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      D => \n_0_opt_has_pipe.first_q[8]_i_1__1\,
      Q => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q\(8),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      D => \n_0_opt_has_pipe.first_q[9]_i_1__1\,
      Q => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q\(9),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_opt_has_pipe.first_q[0]_i_1__1\,
      Q => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q\(0),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_opt_has_pipe.first_q[10]_i_1\,
      Q => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q\(10),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_opt_has_pipe.first_q[11]_i_1\,
      Q => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q\(11),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_opt_has_pipe.first_q[12]_i_1\,
      Q => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q\(12),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      D => \n_0_opt_has_pipe.first_q[13]_i_1__1\,
      Q => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q\(13),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      D => \n_0_opt_has_pipe.first_q[14]_i_1__1\,
      Q => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q\(14),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      D => \n_0_opt_has_pipe.first_q[15]_i_1__1\,
      Q => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q\(15),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      D => \n_0_opt_has_pipe.first_q[16]_i_1__1\,
      Q => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q\(16),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_opt_has_pipe.first_q[1]_i_1\,
      Q => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q\(1),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_opt_has_pipe.first_q[2]_i_1\,
      Q => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q\(2),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_opt_has_pipe.first_q[3]_i_1\,
      Q => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q\(3),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_opt_has_pipe.first_q[4]_i_1\,
      Q => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q\(4),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_opt_has_pipe.first_q[5]_i_1\,
      Q => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q\(5),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_opt_has_pipe.first_q[6]_i_1\,
      Q => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q\(6),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_opt_has_pipe.first_q[7]_i_1\,
      Q => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q\(7),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_opt_has_pipe.first_q[8]_i_1\,
      Q => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q\(8),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_opt_has_pipe.first_q[9]_i_1\,
      Q => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q\(9),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/OP/FLAGS_REG.IV_OP_REG/i_pipe/opt_has_pipe.first_q_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      D => \<const0>\,
      Q => \FIX_TO_FLT_OP.SPD.OP/OP/FLAGS_REG.IV_OP_REG/i_pipe/first_q\,
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.exp_op[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"09FF0900"
    )
    port map (
      I0 => \FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q\(0),
      I1 => \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q\(11),
      I2 => \FIX_TO_FLT_OP.SPD.OP/op_state\(3),
      I3 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      I4 => \^m_axis_result_tdata\(23),
      O => \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.exp_op[0]_i_1\
    );
\FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.exp_op[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0D02FFFF0D020000"
    )
    port map (
      I0 => \FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q\(0),
      I1 => \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q\(11),
      I2 => \FIX_TO_FLT_OP.SPD.OP/op_state\(3),
      I3 => \FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q\(1),
      I4 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      I5 => \^m_axis_result_tdata\(24),
      O => \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.exp_op[1]_i_1\
    );
\FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.exp_op[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9AFF9A00"
    )
    port map (
      I0 => \n_0_RESULT_REG.NORMAL.exp_op[2]_i_2\,
      I1 => \FIX_TO_FLT_OP.SPD.OP/op_state\(3),
      I2 => \FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q\(2),
      I3 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      I4 => \^m_axis_result_tdata\(25),
      O => \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.exp_op[2]_i_1\
    );
\FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.exp_op[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9AFF9A00"
    )
    port map (
      I0 => \n_0_RESULT_REG.NORMAL.exp_op[3]_i_2\,
      I1 => \FIX_TO_FLT_OP.SPD.OP/op_state\(3),
      I2 => \FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q\(3),
      I3 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      I4 => \^m_axis_result_tdata\(26),
      O => \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.exp_op[3]_i_1\
    );
\FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.exp_op[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9AFF9A00"
    )
    port map (
      I0 => \n_0_RESULT_REG.NORMAL.exp_op[5]_i_2\,
      I1 => \FIX_TO_FLT_OP.SPD.OP/op_state\(3),
      I2 => \FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q\(4),
      I3 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      I4 => \^m_axis_result_tdata\(27),
      O => \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.exp_op[4]_i_1\
    );
\FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.exp_op[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0708FFFF07080000"
    )
    port map (
      I0 => \n_0_RESULT_REG.NORMAL.exp_op[5]_i_2\,
      I1 => \FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q\(4),
      I2 => \FIX_TO_FLT_OP.SPD.OP/op_state\(3),
      I3 => \FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q\(5),
      I4 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      I5 => \^m_axis_result_tdata\(28),
      O => \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.exp_op[5]_i_1\
    );
\FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.exp_op[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9AFF9A00"
    )
    port map (
      I0 => \n_0_RESULT_REG.NORMAL.exp_op[7]_i_2\,
      I1 => \FIX_TO_FLT_OP.SPD.OP/op_state\(3),
      I2 => \FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q\(6),
      I3 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      I4 => \^m_axis_result_tdata\(29),
      O => \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.exp_op[6]_i_1\
    );
\FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.exp_op[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0708FFFF07080000"
    )
    port map (
      I0 => \n_0_RESULT_REG.NORMAL.exp_op[7]_i_2\,
      I1 => \FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q\(6),
      I2 => \FIX_TO_FLT_OP.SPD.OP/op_state\(3),
      I3 => \FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q\(7),
      I4 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      I5 => \^m_axis_result_tdata\(30),
      O => \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.exp_op[7]_i_1\
    );
\FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.exp_op_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.exp_op[0]_i_1\,
      Q => \^m_axis_result_tdata\(23),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.exp_op_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.exp_op[1]_i_1\,
      Q => \^m_axis_result_tdata\(24),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.exp_op_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.exp_op[2]_i_1\,
      Q => \^m_axis_result_tdata\(25),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.exp_op_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.exp_op[3]_i_1\,
      Q => \^m_axis_result_tdata\(26),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.exp_op_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.exp_op[4]_i_1\,
      Q => \^m_axis_result_tdata\(27),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.exp_op_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.exp_op[5]_i_1\,
      Q => \^m_axis_result_tdata\(28),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.exp_op_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.exp_op[6]_i_1\,
      Q => \^m_axis_result_tdata\(29),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.exp_op_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.exp_op[7]_i_1\,
      Q => \^m_axis_result_tdata\(30),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0ACA"
    )
    port map (
      I0 => \^m_axis_result_tdata\(0),
      I1 => \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/first_q\(0),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      I3 => \FIX_TO_FLT_OP.SPD.OP/op_state\(3),
      O => \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[0]_i_1\
    );
\FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0ACA"
    )
    port map (
      I0 => \^m_axis_result_tdata\(10),
      I1 => \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/first_q\(10),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      I3 => \FIX_TO_FLT_OP.SPD.OP/op_state\(3),
      O => \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[10]_i_1\
    );
\FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0ACA"
    )
    port map (
      I0 => \^m_axis_result_tdata\(11),
      I1 => \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/first_q\(11),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      I3 => \FIX_TO_FLT_OP.SPD.OP/op_state\(3),
      O => \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[11]_i_1\
    );
\FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0ACA"
    )
    port map (
      I0 => \^m_axis_result_tdata\(12),
      I1 => \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q\(0),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      I3 => \FIX_TO_FLT_OP.SPD.OP/op_state\(3),
      O => \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[12]_i_1\
    );
\FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0ACA"
    )
    port map (
      I0 => \^m_axis_result_tdata\(13),
      I1 => \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q\(1),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      I3 => \FIX_TO_FLT_OP.SPD.OP/op_state\(3),
      O => \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[13]_i_1\
    );
\FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0ACA"
    )
    port map (
      I0 => \^m_axis_result_tdata\(14),
      I1 => \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q\(2),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      I3 => \FIX_TO_FLT_OP.SPD.OP/op_state\(3),
      O => \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[14]_i_1\
    );
\FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0ACA"
    )
    port map (
      I0 => \^m_axis_result_tdata\(15),
      I1 => \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q\(3),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      I3 => \FIX_TO_FLT_OP.SPD.OP/op_state\(3),
      O => \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[15]_i_1\
    );
\FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0ACA"
    )
    port map (
      I0 => \^m_axis_result_tdata\(16),
      I1 => \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q\(4),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      I3 => \FIX_TO_FLT_OP.SPD.OP/op_state\(3),
      O => \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[16]_i_1\
    );
\FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0ACA"
    )
    port map (
      I0 => \^m_axis_result_tdata\(17),
      I1 => \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q\(5),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      I3 => \FIX_TO_FLT_OP.SPD.OP/op_state\(3),
      O => \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[17]_i_1\
    );
\FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0ACA"
    )
    port map (
      I0 => \^m_axis_result_tdata\(18),
      I1 => \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q\(6),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      I3 => \FIX_TO_FLT_OP.SPD.OP/op_state\(3),
      O => \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[18]_i_1\
    );
\FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0ACA"
    )
    port map (
      I0 => \^m_axis_result_tdata\(19),
      I1 => \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q\(7),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      I3 => \FIX_TO_FLT_OP.SPD.OP/op_state\(3),
      O => \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[19]_i_1\
    );
\FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0ACA"
    )
    port map (
      I0 => \^m_axis_result_tdata\(1),
      I1 => \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/first_q\(1),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      I3 => \FIX_TO_FLT_OP.SPD.OP/op_state\(3),
      O => \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[1]_i_1\
    );
\FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0ACA"
    )
    port map (
      I0 => \^m_axis_result_tdata\(20),
      I1 => \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q\(8),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      I3 => \FIX_TO_FLT_OP.SPD.OP/op_state\(3),
      O => \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[20]_i_1\
    );
\FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0ACA"
    )
    port map (
      I0 => \^m_axis_result_tdata\(21),
      I1 => \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q\(9),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      I3 => \FIX_TO_FLT_OP.SPD.OP/op_state\(3),
      O => \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[21]_i_1\
    );
\FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0ACA"
    )
    port map (
      I0 => \^m_axis_result_tdata\(2),
      I1 => \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/first_q\(2),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      I3 => \FIX_TO_FLT_OP.SPD.OP/op_state\(3),
      O => \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[2]_i_1\
    );
\FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0ACA"
    )
    port map (
      I0 => \^m_axis_result_tdata\(3),
      I1 => \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/first_q\(3),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      I3 => \FIX_TO_FLT_OP.SPD.OP/op_state\(3),
      O => \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[3]_i_1\
    );
\FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0ACA"
    )
    port map (
      I0 => \^m_axis_result_tdata\(4),
      I1 => \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/first_q\(4),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      I3 => \FIX_TO_FLT_OP.SPD.OP/op_state\(3),
      O => \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[4]_i_1\
    );
\FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0ACA"
    )
    port map (
      I0 => \^m_axis_result_tdata\(5),
      I1 => \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/first_q\(5),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      I3 => \FIX_TO_FLT_OP.SPD.OP/op_state\(3),
      O => \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[5]_i_1\
    );
\FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0ACA"
    )
    port map (
      I0 => \^m_axis_result_tdata\(6),
      I1 => \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/first_q\(6),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      I3 => \FIX_TO_FLT_OP.SPD.OP/op_state\(3),
      O => \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[6]_i_1\
    );
\FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0ACA"
    )
    port map (
      I0 => \^m_axis_result_tdata\(7),
      I1 => \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/first_q\(7),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      I3 => \FIX_TO_FLT_OP.SPD.OP/op_state\(3),
      O => \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[7]_i_1\
    );
\FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0ACA"
    )
    port map (
      I0 => \^m_axis_result_tdata\(8),
      I1 => \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/first_q\(8),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      I3 => \FIX_TO_FLT_OP.SPD.OP/op_state\(3),
      O => \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[8]_i_1\
    );
\FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0ACA"
    )
    port map (
      I0 => \^m_axis_result_tdata\(9),
      I1 => \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/first_q\(9),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      I3 => \FIX_TO_FLT_OP.SPD.OP/op_state\(3),
      O => \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[9]_i_1\
    );
\FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[0]_i_1\,
      Q => \^m_axis_result_tdata\(0),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[10]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[10]_i_1\,
      Q => \^m_axis_result_tdata\(10),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[11]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[11]_i_1\,
      Q => \^m_axis_result_tdata\(11),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[12]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[12]_i_1\,
      Q => \^m_axis_result_tdata\(12),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[13]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[13]_i_1\,
      Q => \^m_axis_result_tdata\(13),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[14]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[14]_i_1\,
      Q => \^m_axis_result_tdata\(14),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[15]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[15]_i_1\,
      Q => \^m_axis_result_tdata\(15),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[16]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[16]_i_1\,
      Q => \^m_axis_result_tdata\(16),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[17]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[17]_i_1\,
      Q => \^m_axis_result_tdata\(17),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[18]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[18]_i_1\,
      Q => \^m_axis_result_tdata\(18),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[19]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[19]_i_1\,
      Q => \^m_axis_result_tdata\(19),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[1]_i_1\,
      Q => \^m_axis_result_tdata\(1),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[20]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[20]_i_1\,
      Q => \^m_axis_result_tdata\(20),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[21]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[21]_i_1\,
      Q => \^m_axis_result_tdata\(21),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[22]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \FIX_TO_FLT_OP.SPD.OP/OP/p_5_out\(22),
      Q => \^m_axis_result_tdata\(22),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[2]_i_1\,
      Q => \^m_axis_result_tdata\(2),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[3]_i_1\,
      Q => \^m_axis_result_tdata\(3),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[4]_i_1\,
      Q => \^m_axis_result_tdata\(4),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[5]_i_1\,
      Q => \^m_axis_result_tdata\(5),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[6]_i_1\,
      Q => \^m_axis_result_tdata\(6),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[7]_i_1\,
      Q => \^m_axis_result_tdata\(7),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[8]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[8]_i_1\,
      Q => \^m_axis_result_tdata\(8),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[9]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[9]_i_1\,
      Q => \^m_axis_result_tdata\(9),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.sign_op_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => SIGN,
      I1 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      I2 => \^m_axis_result_tdata\(31),
      O => \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.sign_op_i_1\
    );
\FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.sign_op_reg\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.sign_op_i_1\,
      Q => \^m_axis_result_tdata\(31),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_IN_DEL/i_pipe/opt_has_pipe.first_q_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_IN_DEL/i_pipe/first_q\(0),
      Q => \FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_IN_DEL/i_pipe/first_q\(0),
      R => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\
    );
\FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_IN_DEL/i_pipe/opt_has_pipe.first_q_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_IN_DEL/i_pipe/first_q\(1),
      Q => \FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_IN_DEL/i_pipe/first_q\(1),
      R => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\
    );
\FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_IN_DEL/i_pipe/opt_has_pipe.first_q_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_IN_DEL/i_pipe/first_q\(2),
      Q => \FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_IN_DEL/i_pipe/first_q\(2),
      R => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\
    );
\FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_IN_DEL/i_pipe/opt_has_pipe.first_q_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_IN_DEL/i_pipe/first_q\(3),
      Q => \FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_IN_DEL/i_pipe/first_q\(3),
      R => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\
    );
\FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_IN_DEL/i_pipe/opt_has_pipe.first_q_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_IN_DEL/i_pipe/first_q\(4),
      Q => \FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_IN_DEL/i_pipe/first_q\(4),
      R => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\
    );
\FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_IN_DEL/i_pipe/opt_has_pipe.first_q_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_IN_DEL/i_pipe/first_q\(5),
      Q => \FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_IN_DEL/i_pipe/first_q\(5),
      R => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\
    );
\FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_IN_DEL/i_pipe/opt_has_pipe.first_q_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_IN_DEL/i_pipe/first_q\(6),
      Q => \FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_IN_DEL/i_pipe/first_q\(6),
      R => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\
    );
\FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_IN_DEL/i_pipe/opt_has_pipe.first_q_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_IN_DEL/i_pipe/first_q\(7),
      Q => \FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_IN_DEL/i_pipe/first_q\(7),
      R => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\
    );
\FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_OFF_OP_DEL/i_pipe/opt_has_pipe.first_q_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_OFF_OP_DEL/i_pipe/first_q\(0),
      Q => \FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_OFF_OP_DEL/i_pipe/first_q\(0),
      R => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\
    );
\FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_OFF_OP_DEL/i_pipe/opt_has_pipe.first_q_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_OFF_OP_DEL/i_pipe/first_q\(1),
      Q => \FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_OFF_OP_DEL/i_pipe/first_q\(1),
      R => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\
    );
\FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_OFF_OP_DEL/i_pipe/opt_has_pipe.first_q_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_OFF_OP_DEL/i_pipe/first_q\(2),
      Q => \FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_OFF_OP_DEL/i_pipe/first_q\(2),
      R => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\
    );
\FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_OFF_OP_DEL/i_pipe/opt_has_pipe.first_q_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_OFF_OP_DEL/i_pipe/first_q\(3),
      Q => \FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_OFF_OP_DEL/i_pipe/first_q\(3),
      R => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\
    );
\FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_OFF_OP_DEL/i_pipe/opt_has_pipe.first_q_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_OFF_OP_DEL/i_pipe/first_q\(4),
      Q => \FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_OFF_OP_DEL/i_pipe/first_q\(4),
      R => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\
    );
\FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_OFF_OP_DEL/i_pipe/opt_has_pipe.first_q_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_OFF_OP_DEL/i_pipe/first_q\(5),
      Q => \FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_OFF_OP_DEL/i_pipe/first_q\(5),
      R => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\
    );
\FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_OFF_OP_DEL/i_pipe/opt_has_pipe.first_q_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_OFF_OP_DEL/i_pipe/first_q\(6),
      Q => \FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_OFF_OP_DEL/i_pipe/first_q\(6),
      R => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\
    );
\FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_OFF_OP_DEL/i_pipe/opt_has_pipe.first_q_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_OFF_OP_DEL/i_pipe/first_q\(7),
      Q => \FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_OFF_OP_DEL/i_pipe/first_q\(7),
      R => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\
    );
\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[1].C_MUX.CARRY_MUX_CARRY4\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[0].C_MUX.CARRY_MUX\,
      CO(3) => \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[4].C_MUX.CARRY_MUX\,
      CO(2) => \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[3].C_MUX.CARRY_MUX\,
      CO(1) => \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[2].C_MUX.CARRY_MUX\,
      CO(0) => \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[1].C_MUX.CARRY_MUX\,
      CYINIT => lopt_8,
      DI(3) => \<const0>\,
      DI(2) => \<const0>\,
      DI(1) => \<const0>\,
      DI(0) => \<const0>\,
      O(3) => \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[4].Q_XOR.SUM_XOR\,
      O(2) => \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[3].Q_XOR.SUM_XOR\,
      O(1) => \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[2].Q_XOR.SUM_XOR\,
      O(0) => \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[1].Q_XOR.SUM_XOR\,
      S(3) => \<const0>\,
      S(2) => \<const0>\,
      S(1) => \<const0>\,
      S(0) => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[1].C_MUX.CARRY_MUX_CARRY4_GND\: unisim.vcomponents.GND
    port map (
      G => lopt_8
    );
\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[5].C_MUX.CARRY_MUX_CARRY4\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[4].C_MUX.CARRY_MUX\,
      CO(3) => \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[8].C_MUX.CARRY_MUX\,
      CO(2) => \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[7].C_MUX.CARRY_MUX\,
      CO(1) => \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[6].C_MUX.CARRY_MUX\,
      CO(0) => \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[5].C_MUX.CARRY_MUX\,
      CYINIT => lopt_9,
      DI(3) => \<const0>\,
      DI(2) => \<const0>\,
      DI(1) => \<const0>\,
      DI(0) => \<const0>\,
      O(3) => \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[8].Q_XOR.SUM_XOR\,
      O(2) => \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[7].Q_XOR.SUM_XOR\,
      O(1) => \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[6].Q_XOR.SUM_XOR\,
      O(0) => \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[5].Q_XOR.SUM_XOR\,
      S(3) => \FIX_TO_FLT_OP.SPD.OP/ROUND/mant_shifted_rnd1\(8),
      S(2) => \n_0_CHAIN_GEN[7].C_MUX.CARRY_MUX_i_1__2\,
      S(1) => \<const0>\,
      S(0) => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[5].C_MUX.CARRY_MUX_CARRY4_GND\: unisim.vcomponents.GND
    port map (
      G => lopt_9
    );
\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[9].C_MUX.CARRY_MUX_CARRY4\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[8].C_MUX.CARRY_MUX\,
      CO(3) => \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CI\,
      CO(2) => \FIX_TO_FLT_OP.SPD.OP/ROUND/carry_rnd2\,
      CO(1) => \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[10].C_MUX.CARRY_MUX\,
      CO(0) => \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[9].C_MUX.CARRY_MUX\,
      CYINIT => lopt_10,
      DI(3) => \<const0>\,
      DI(2) => \<const0>\,
      DI(1) => \<const0>\,
      DI(0) => \<const0>\,
      O(3) => \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/O\,
      O(2) => \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[11].Q_XOR.SUM_XOR\,
      O(1) => \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[10].Q_XOR.SUM_XOR\,
      O(0) => \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[9].Q_XOR.SUM_XOR\,
      S(3) => \FIX_TO_FLT_OP.SPD.OP/ROUND/sum_rnd2\(0),
      S(2 downto 0) => \FIX_TO_FLT_OP.SPD.OP/ROUND/mant_shifted_rnd1\(11 downto 9)
    );
\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[9].C_MUX.CARRY_MUX_CARRY4_GND\: unisim.vcomponents.GND
    port map (
      G => lopt_10
    );
\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_opt_has_pipe.first_q[0]_i_1__9\,
      Q => \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/first_q\(0),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_opt_has_pipe.first_q[10]_i_1__2\,
      Q => \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/first_q\(10),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_opt_has_pipe.first_q[11]_i_1__3\,
      Q => \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/first_q\(11),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_opt_has_pipe.first_q[1]_i_1__4\,
      Q => \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/first_q\(1),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_opt_has_pipe.first_q[2]_i_1__2\,
      Q => \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/first_q\(2),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_opt_has_pipe.first_q[3]_i_1__2\,
      Q => \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/first_q\(3),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_opt_has_pipe.first_q[4]_i_1__2\,
      Q => \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/first_q\(4),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_opt_has_pipe.first_q[5]_i_1__2\,
      Q => \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/first_q\(5),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_opt_has_pipe.first_q[6]_i_1__2\,
      Q => \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/first_q\(6),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_opt_has_pipe.first_q[7]_i_1__2\,
      Q => \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/first_q\(7),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_opt_has_pipe.first_q[8]_i_1__2\,
      Q => \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/first_q\(8),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_opt_has_pipe.first_q[9]_i_1__2\,
      Q => \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/first_q\(9),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/opt_has_pipe.first_q_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_opt_has_pipe.first_q[0]_i_1__10\,
      Q => \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/first_q\(0),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/opt_has_pipe.first_q_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_opt_has_pipe.first_q[10]_i_1__3\,
      Q => \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/first_q\(10),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/opt_has_pipe.first_q_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_opt_has_pipe.first_q[1]_i_1__5\,
      Q => \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/first_q\(1),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/opt_has_pipe.first_q_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_opt_has_pipe.first_q[2]_i_1__3\,
      Q => \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/first_q\(2),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/opt_has_pipe.first_q_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_opt_has_pipe.first_q[3]_i_1__3\,
      Q => \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/first_q\(3),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/opt_has_pipe.first_q_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_opt_has_pipe.first_q[4]_i_1__3\,
      Q => \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/first_q\(4),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/opt_has_pipe.first_q_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_opt_has_pipe.first_q[5]_i_1__3\,
      Q => \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/first_q\(5),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/opt_has_pipe.first_q_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_opt_has_pipe.first_q[6]_i_1__3\,
      Q => \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/first_q\(6),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/opt_has_pipe.first_q_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_opt_has_pipe.first_q[7]_i_1__3\,
      Q => \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/first_q\(7),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/opt_has_pipe.first_q_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_opt_has_pipe.first_q[8]_i_1__3\,
      Q => \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/first_q\(8),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/opt_has_pipe.first_q_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_opt_has_pipe.first_q[9]_i_1__3\,
      Q => \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/first_q\(9),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CARRYS_Q_DEL.NOT_FAST_OP.CARRY_DEL/i_pipe/opt_has_pipe.first_q_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      D => \<const0>\,
      Q => \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CARRYS_Q_DEL.NOT_FAST_OP.CARRY_DEL/i_pipe/first_q\,
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[1].C_MUX.CARRY_MUX_CARRY4\: unisim.vcomponents.CARRY4
    port map (
      CI => \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CI\,
      CO(3) => \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[4].C_MUX.CARRY_MUX\,
      CO(2) => \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[3].C_MUX.CARRY_MUX\,
      CO(1) => \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[2].C_MUX.CARRY_MUX\,
      CO(0) => \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[1].C_MUX.CARRY_MUX\,
      CYINIT => lopt_11,
      DI(3) => \<const0>\,
      DI(2) => \<const0>\,
      DI(1) => \<const0>\,
      DI(0) => \<const0>\,
      O(3) => \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[4].Q_XOR.SUM_XOR\,
      O(2) => \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[3].Q_XOR.SUM_XOR\,
      O(1) => \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[2].Q_XOR.SUM_XOR\,
      O(0) => \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[1].Q_XOR.SUM_XOR\,
      S(3 downto 0) => \FIX_TO_FLT_OP.SPD.OP/ROUND/sum_rnd2\(4 downto 1)
    );
\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[1].C_MUX.CARRY_MUX_CARRY4_GND\: unisim.vcomponents.GND
    port map (
      G => lopt_11
    );
\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[5].C_MUX.CARRY_MUX_CARRY4\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[4].C_MUX.CARRY_MUX\,
      CO(3) => \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[8].C_MUX.CARRY_MUX\,
      CO(2) => \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[7].C_MUX.CARRY_MUX\,
      CO(1) => \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[6].C_MUX.CARRY_MUX\,
      CO(0) => \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[5].C_MUX.CARRY_MUX\,
      CYINIT => lopt_12,
      DI(3) => \<const0>\,
      DI(2) => \<const0>\,
      DI(1) => \<const0>\,
      DI(0) => \<const0>\,
      O(3) => \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[8].Q_XOR.SUM_XOR\,
      O(2) => \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[7].Q_XOR.SUM_XOR\,
      O(1) => \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[6].Q_XOR.SUM_XOR\,
      O(0) => \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[5].Q_XOR.SUM_XOR\,
      S(3 downto 0) => \FIX_TO_FLT_OP.SPD.OP/ROUND/sum_rnd2\(8 downto 5)
    );
\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[5].C_MUX.CARRY_MUX_CARRY4_GND\: unisim.vcomponents.GND
    port map (
      G => lopt_12
    );
\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[9].C_MUX.CARRY_MUX_CARRY4\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[8].C_MUX.CARRY_MUX\,
      CO(3 downto 2) => \NLW_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[9].C_MUX.CARRY_MUX_CARRY4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[10].C_MUX.CARRY_MUX\,
      CO(0) => \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[9].C_MUX.CARRY_MUX\,
      CYINIT => lopt_13,
      DI(3 downto 2) => \NLW_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[9].C_MUX.CARRY_MUX_CARRY4_DI_UNCONNECTED\(3 downto 2),
      DI(1) => \<const0>\,
      DI(0) => \<const0>\,
      O(3) => \NLW_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[9].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED\(3),
      O(2) => \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[11].Q_XOR.SUM_XOR\,
      O(1) => \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[10].Q_XOR.SUM_XOR\,
      O(0) => \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[9].Q_XOR.SUM_XOR\,
      S(3) => \NLW_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[9].C_MUX.CARRY_MUX_CARRY4_S_UNCONNECTED\(3),
      S(2) => \<const1>\,
      S(1 downto 0) => \FIX_TO_FLT_OP.SPD.OP/ROUND/sum_rnd2\(10 downto 9)
    );
\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[9].C_MUX.CARRY_MUX_CARRY4_GND\: unisim.vcomponents.GND
    port map (
      G => lopt_13
    );
\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_opt_has_pipe.first_q[0]_i_1__12\,
      Q => \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q\(0),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_opt_has_pipe.first_q[10]_i_1__5\,
      Q => \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q\(10),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_opt_has_pipe.first_q[11]_i_1__4\,
      Q => \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q\(11),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_opt_has_pipe.first_q[1]_i_1__9\,
      Q => \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q\(1),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_opt_has_pipe.first_q[2]_i_1__8\,
      Q => \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q\(2),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_opt_has_pipe.first_q[3]_i_1__7\,
      Q => \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q\(3),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_opt_has_pipe.first_q[4]_i_1__6\,
      Q => \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q\(4),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_opt_has_pipe.first_q[5]_i_1__6\,
      Q => \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q\(5),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_opt_has_pipe.first_q[6]_i_1__6\,
      Q => \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q\(6),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_opt_has_pipe.first_q[7]_i_1__6\,
      Q => \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q\(7),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_opt_has_pipe.first_q[8]_i_1__5\,
      Q => \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q\(8),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_opt_has_pipe.first_q[9]_i_1__5\,
      Q => \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q\(9),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/ROUND/RND_BIT_GEN/NORM_1_OR_0.STRUCT_REQ.GENERAL.RND1/CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4\: unisim.vcomponents.CARRY4
    port map (
      CI => lopt_7,
      CO(3) => \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[0].C_MUX.CARRY_MUX\,
      CO(2) => \FIX_TO_FLT_OP.SPD.OP/ROUND/round_rnd1\,
      CO(1 downto 0) => \NLW_FIX_TO_FLT_OP.SPD.OP/ROUND/RND_BIT_GEN/NORM_1_OR_0.STRUCT_REQ.GENERAL.RND1/CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_CO_UNCONNECTED\(1 downto 0),
      CYINIT => \<const1>\,
      DI(3) => \<const0>\,
      DI(2) => \<const1>\,
      DI(1) => \<const0>\,
      DI(0) => \<const0>\,
      O(3) => \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/O\,
      O(2 downto 0) => \NLW_FIX_TO_FLT_OP.SPD.OP/ROUND/RND_BIT_GEN/NORM_1_OR_0.STRUCT_REQ.GENERAL.RND1/CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED\(2 downto 0),
      S(3) => \<const0>\,
      S(2) => \<const1>\,
      S(1) => \<const0>\,
      S(0) => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/ROUND/RND_BIT_GEN/NORM_1_OR_0.STRUCT_REQ.GENERAL.RND1/CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_GND\: unisim.vcomponents.GND
    port map (
      G => lopt_7
    );
\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/opt_has_pipe.first_q_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_opt_has_pipe.first_q[0]_i_1__7\,
      Q => \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q\(0),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/opt_has_pipe.first_q_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_opt_has_pipe.first_q[10]_i_1__0\,
      Q => \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q\(10),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/opt_has_pipe.first_q_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_opt_has_pipe.first_q[11]_i_1__0\,
      Q => \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q\(11),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/opt_has_pipe.first_q_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_opt_has_pipe.first_q[12]_i_1__0\,
      Q => \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q\(12),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/opt_has_pipe.first_q_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_opt_has_pipe.first_q[13]_i_1\,
      Q => \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q\(13),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/opt_has_pipe.first_q_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_opt_has_pipe.first_q[14]_i_1\,
      Q => \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q\(14),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/opt_has_pipe.first_q_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_opt_has_pipe.first_q[15]_i_1\,
      Q => \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q\(15),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/opt_has_pipe.first_q_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_opt_has_pipe.first_q[16]_i_1\,
      Q => \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q\(16),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/opt_has_pipe.first_q_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_opt_has_pipe.first_q[1]_i_1__2\,
      Q => \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q\(1),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/opt_has_pipe.first_q_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_opt_has_pipe.first_q[2]_i_1__0\,
      Q => \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q\(2),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/opt_has_pipe.first_q_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_opt_has_pipe.first_q[3]_i_1__0\,
      Q => \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q\(3),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/opt_has_pipe.first_q_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_opt_has_pipe.first_q[4]_i_1__0\,
      Q => \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q\(4),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/opt_has_pipe.first_q_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_opt_has_pipe.first_q[5]_i_1__0\,
      Q => \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q\(5),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/opt_has_pipe.first_q_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_opt_has_pipe.first_q[6]_i_1__0\,
      Q => \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q\(6),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/opt_has_pipe.first_q_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_opt_has_pipe.first_q[7]_i_1__0\,
      Q => \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q\(7),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/opt_has_pipe.first_q_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_opt_has_pipe.first_q[8]_i_1__0\,
      Q => \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q\(8),
      R => \<const0>\
    );
\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/opt_has_pipe.first_q_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_opt_has_pipe.first_q[9]_i_1__0\,
      Q => \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q\(9),
      R => \<const0>\
    );
GND: unisim.vcomponents.GND
    port map (
      G => \<const0>\
    );
GND_1: unisim.vcomponents.GND
    port map (
      G => GND_2
    );
\HAS_ARESETN.sclr_i_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => aresetn,
      O => \n_0_HAS_ARESETN.sclr_i_i_1\
    );
\HAS_ARESETN.sclr_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_HAS_ARESETN.sclr_i_i_1\,
      Q => sclr_i,
      R => \<const0>\
    );
\RESULT_REG.NORMAL.exp_op[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => \FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q\(1),
      I1 => \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q\(11),
      I2 => \FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q\(0),
      I3 => \FIX_TO_FLT_OP.SPD.OP/op_state\(3),
      O => \n_0_RESULT_REG.NORMAL.exp_op[2]_i_2\
    );
\RESULT_REG.NORMAL.exp_op[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
    port map (
      I0 => \FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q\(2),
      I1 => \FIX_TO_FLT_OP.SPD.OP/op_state\(3),
      I2 => \FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q\(0),
      I3 => \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q\(11),
      I4 => \FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q\(1),
      O => \n_0_RESULT_REG.NORMAL.exp_op[3]_i_2\
    );
\RESULT_REG.NORMAL.exp_op[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000080000000000"
    )
    port map (
      I0 => \FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q\(3),
      I1 => \FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q\(1),
      I2 => \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q\(11),
      I3 => \FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q\(0),
      I4 => \FIX_TO_FLT_OP.SPD.OP/op_state\(3),
      I5 => \FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q\(2),
      O => \n_0_RESULT_REG.NORMAL.exp_op[5]_i_2\
    );
\RESULT_REG.NORMAL.exp_op[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => \FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q\(5),
      I1 => \n_0_RESULT_REG.NORMAL.exp_op[5]_i_2\,
      I2 => \FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q\(4),
      I3 => \FIX_TO_FLT_OP.SPD.OP/op_state\(3),
      O => \n_0_RESULT_REG.NORMAL.exp_op[7]_i_2\
    );
\RESULT_REG.NORMAL.mant_op[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5C0C"
    )
    port map (
      I0 => \FIX_TO_FLT_OP.SPD.OP/op_state\(3),
      I1 => \^m_axis_result_tdata\(22),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      I3 => \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q\(10),
      O => \FIX_TO_FLT_OP.SPD.OP/OP/p_5_out\(22)
    );
VCC: unisim.vcomponents.VCC
    port map (
      P => \<const1>\
    );
\gen_has_z_tready.reg1_a_ready_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00D5000000D500D5"
    )
    port map (
      I0 => \need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid\,
      I1 => \need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast\,
      I2 => \need_combiner.use_2to1.skid_buffer_combiner/reg2_a_valid\,
      I3 => \n_0_gen_has_z_tready.reg1_a_tuser[3]_i_1\,
      I4 => \need_combiner.use_2to1.skid_buffer_combiner/reg2_b_valid_nxt\,
      I5 => \need_combiner.use_2to1.skid_buffer_combiner/reg2_a_valid_nxt\,
      O => \need_combiner.use_2to1.skid_buffer_combiner/reg1_a_ready_nxt\
    );
\gen_has_z_tready.reg1_a_tlast_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
    port map (
      I0 => s_axis_a_tlast,
      I1 => \^s_axis_a_tready\,
      I2 => s_axis_a_tvalid,
      I3 => \need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast\,
      I4 => \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tlast_reg\,
      O => \n_0_gen_has_z_tready.reg1_a_tlast_i_1\
    );
\gen_has_z_tready.reg1_a_tuser[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08880000"
    )
    port map (
      I0 => \^s_axis_a_tready\,
      I1 => s_axis_a_tvalid,
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      I3 => \need_combiner.use_2to1.skid_buffer_combiner/reg2_b_valid\,
      I4 => \need_combiner.use_2to1.skid_buffer_combiner/reg2_a_valid\,
      O => \n_0_gen_has_z_tready.reg1_a_tuser[3]_i_1\
    );
\gen_has_z_tready.reg1_a_valid_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FFFFFFF08880000"
    )
    port map (
      I0 => s_axis_a_tvalid,
      I1 => \^s_axis_a_tready\,
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      I3 => \need_combiner.use_2to1.skid_buffer_combiner/reg2_b_valid\,
      I4 => \need_combiner.use_2to1.skid_buffer_combiner/reg2_a_valid\,
      I5 => \need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid\,
      O => \need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid_nxt\
    );
\gen_has_z_tready.reg1_b_ready_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C4D50000C4D5C4D5"
    )
    port map (
      I0 => \need_combiner.use_2to1.skid_buffer_combiner/reg1_b_valid\,
      I1 => \need_combiner.use_2to1.skid_buffer_combiner/p_18_in\,
      I2 => \need_combiner.use_2to1.skid_buffer_combiner/reg2_b_valid\,
      I3 => \need_combiner.use_2to1.skid_buffer_combiner/b_tx\,
      I4 => \need_combiner.use_2to1.skid_buffer_combiner/reg2_a_valid_nxt\,
      I5 => \need_combiner.use_2to1.skid_buffer_combiner/reg2_b_valid_nxt\,
      O => \need_combiner.use_2to1.skid_buffer_combiner/reg1_b_ready_nxt\
    );
\gen_has_z_tready.reg1_b_ready_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D5"
    )
    port map (
      I0 => \need_combiner.use_2to1.skid_buffer_combiner/reg2_b_valid\,
      I1 => \need_combiner.use_2to1.skid_buffer_combiner/reg2_a_valid\,
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      O => \need_combiner.use_2to1.skid_buffer_combiner/p_18_in\
    );
\gen_has_z_tready.reg1_b_valid_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3FFF2A00"
    )
    port map (
      I0 => \need_combiner.use_2to1.skid_buffer_combiner/b_tx\,
      I1 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      I2 => \need_combiner.use_2to1.skid_buffer_combiner/reg2_a_valid\,
      I3 => \need_combiner.use_2to1.skid_buffer_combiner/reg2_b_valid\,
      I4 => \need_combiner.use_2to1.skid_buffer_combiner/reg1_b_valid\,
      O => \need_combiner.use_2to1.skid_buffer_combiner/reg1_b_valid_nxt\
    );
\gen_has_z_tready.reg2_a_tdata[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[0]\,
      I1 => s_axis_a_tdata(0),
      I2 => \need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid\,
      O => \n_0_gen_has_z_tready.reg2_a_tdata[0]_i_1\
    );
\gen_has_z_tready.reg2_a_tdata[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[10]\,
      I1 => s_axis_a_tdata(10),
      I2 => \need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid\,
      O => \n_0_gen_has_z_tready.reg2_a_tdata[10]_i_1\
    );
\gen_has_z_tready.reg2_a_tdata[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[11]\,
      I1 => s_axis_a_tdata(11),
      I2 => \need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid\,
      O => \n_0_gen_has_z_tready.reg2_a_tdata[11]_i_1\
    );
\gen_has_z_tready.reg2_a_tdata[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[12]\,
      I1 => s_axis_a_tdata(12),
      I2 => \need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid\,
      O => \n_0_gen_has_z_tready.reg2_a_tdata[12]_i_1\
    );
\gen_has_z_tready.reg2_a_tdata[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[13]\,
      I1 => s_axis_a_tdata(13),
      I2 => \need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid\,
      O => \n_0_gen_has_z_tready.reg2_a_tdata[13]_i_1\
    );
\gen_has_z_tready.reg2_a_tdata[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[14]\,
      I1 => s_axis_a_tdata(14),
      I2 => \need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid\,
      O => \n_0_gen_has_z_tready.reg2_a_tdata[14]_i_1\
    );
\gen_has_z_tready.reg2_a_tdata[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[15]\,
      I1 => s_axis_a_tdata(15),
      I2 => \need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid\,
      O => \n_0_gen_has_z_tready.reg2_a_tdata[15]_i_1\
    );
\gen_has_z_tready.reg2_a_tdata[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D5"
    )
    port map (
      I0 => \need_combiner.use_2to1.skid_buffer_combiner/reg2_a_valid\,
      I1 => \need_combiner.use_2to1.skid_buffer_combiner/reg2_b_valid\,
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      O => \need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast\
    );
\gen_has_z_tready.reg2_a_tdata[16]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[16]\,
      I1 => s_axis_a_tdata(16),
      I2 => \need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid\,
      O => \n_0_gen_has_z_tready.reg2_a_tdata[16]_i_2\
    );
\gen_has_z_tready.reg2_a_tdata[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[1]\,
      I1 => s_axis_a_tdata(1),
      I2 => \need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid\,
      O => \n_0_gen_has_z_tready.reg2_a_tdata[1]_i_1\
    );
\gen_has_z_tready.reg2_a_tdata[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[2]\,
      I1 => s_axis_a_tdata(2),
      I2 => \need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid\,
      O => \n_0_gen_has_z_tready.reg2_a_tdata[2]_i_1\
    );
\gen_has_z_tready.reg2_a_tdata[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[3]\,
      I1 => s_axis_a_tdata(3),
      I2 => \need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid\,
      O => \n_0_gen_has_z_tready.reg2_a_tdata[3]_i_1\
    );
\gen_has_z_tready.reg2_a_tdata[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[4]\,
      I1 => s_axis_a_tdata(4),
      I2 => \need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid\,
      O => \n_0_gen_has_z_tready.reg2_a_tdata[4]_i_1\
    );
\gen_has_z_tready.reg2_a_tdata[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[5]\,
      I1 => s_axis_a_tdata(5),
      I2 => \need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid\,
      O => \n_0_gen_has_z_tready.reg2_a_tdata[5]_i_1\
    );
\gen_has_z_tready.reg2_a_tdata[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[6]\,
      I1 => s_axis_a_tdata(6),
      I2 => \need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid\,
      O => \n_0_gen_has_z_tready.reg2_a_tdata[6]_i_1\
    );
\gen_has_z_tready.reg2_a_tdata[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[7]\,
      I1 => s_axis_a_tdata(7),
      I2 => \need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid\,
      O => \n_0_gen_has_z_tready.reg2_a_tdata[7]_i_1\
    );
\gen_has_z_tready.reg2_a_tdata[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[8]\,
      I1 => s_axis_a_tdata(8),
      I2 => \need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid\,
      O => \n_0_gen_has_z_tready.reg2_a_tdata[8]_i_1\
    );
\gen_has_z_tready.reg2_a_tdata[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[9]\,
      I1 => s_axis_a_tdata(9),
      I2 => \need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid\,
      O => \n_0_gen_has_z_tready.reg2_a_tdata[9]_i_1\
    );
\gen_has_z_tready.reg2_a_tlast_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
    port map (
      I0 => \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tlast_reg\,
      I1 => \need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid\,
      I2 => s_axis_a_tlast,
      I3 => \need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast\,
      I4 => m_axis_z_tlast_a,
      O => \n_0_gen_has_z_tready.reg2_a_tlast_i_1\
    );
\gen_has_z_tready.reg2_a_tuser[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => \need_combiner.use_2to1.skid_buffer_combiner/reg1_a_tuser\(0),
      I1 => \need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid\,
      I2 => s_axis_a_tuser(0),
      O => \n_0_gen_has_z_tready.reg2_a_tuser[0]_i_1\
    );
\gen_has_z_tready.reg2_a_tuser[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => \need_combiner.use_2to1.skid_buffer_combiner/reg1_a_tuser\(1),
      I1 => \need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid\,
      I2 => s_axis_a_tuser(1),
      O => \n_0_gen_has_z_tready.reg2_a_tuser[1]_i_1\
    );
\gen_has_z_tready.reg2_a_tuser[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => \need_combiner.use_2to1.skid_buffer_combiner/reg1_a_tuser\(2),
      I1 => \need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid\,
      I2 => s_axis_a_tuser(2),
      O => \n_0_gen_has_z_tready.reg2_a_tuser[2]_i_1\
    );
\gen_has_z_tready.reg2_a_tuser[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => \need_combiner.use_2to1.skid_buffer_combiner/reg1_a_tuser\(3),
      I1 => \need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid\,
      I2 => s_axis_a_tuser(3),
      O => \n_0_gen_has_z_tready.reg2_a_tuser[3]_i_1\
    );
\gen_has_z_tready.reg2_a_valid_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDFC55FCFFFCFFFC"
    )
    port map (
      I0 => combiner_data_valid,
      I1 => \need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid\,
      I2 => \need_combiner.use_2to1.skid_buffer_combiner/a_tx\,
      I3 => \need_combiner.use_2to1.skid_buffer_combiner/reg2_a_valid\,
      I4 => \need_combiner.use_2to1.skid_buffer_combiner/reg2_b_valid\,
      I5 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      O => \need_combiner.use_2to1.skid_buffer_combiner/reg2_a_valid_nxt\
    );
\gen_has_z_tready.reg2_a_valid_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => s_axis_a_tvalid,
      I1 => \^s_axis_a_tready\,
      O => \need_combiner.use_2to1.skid_buffer_combiner/a_tx\
    );
\gen_has_z_tready.reg2_b_valid_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDFC55FCFFFCFFFC"
    )
    port map (
      I0 => combiner_data_valid,
      I1 => \need_combiner.use_2to1.skid_buffer_combiner/reg1_b_valid\,
      I2 => \need_combiner.use_2to1.skid_buffer_combiner/b_tx\,
      I3 => \need_combiner.use_2to1.skid_buffer_combiner/reg2_b_valid\,
      I4 => \need_combiner.use_2to1.skid_buffer_combiner/reg2_a_valid\,
      I5 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      O => \need_combiner.use_2to1.skid_buffer_combiner/reg2_b_valid_nxt\
    );
\gen_has_z_tready.z_valid_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \need_combiner.use_2to1.skid_buffer_combiner/reg2_a_valid_nxt\,
      I1 => \need_combiner.use_2to1.skid_buffer_combiner/reg2_b_valid_nxt\,
      O => \need_combiner.use_2to1.skid_buffer_combiner/p_2_out\
    );
\i_nd_to_rdy/opt_has_pipe.first_q_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      D => valid_transfer_in,
      Q => \i_nd_to_rdy/first_q\,
      R => sclr_i
    );
\i_nd_to_rdy/opt_has_pipe.i_pipe[2].pipe_reg[2][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      D => \i_nd_to_rdy/first_q\,
      Q => \n_0_i_nd_to_rdy/opt_has_pipe.i_pipe[2].pipe_reg[2][0]\,
      R => sclr_i
    );
\i_nd_to_rdy/opt_has_pipe.i_pipe[3].pipe_reg[3][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      D => \n_0_i_nd_to_rdy/opt_has_pipe.i_pipe[2].pipe_reg[2][0]\,
      Q => \pipe[3]\,
      R => sclr_i
    );
\i_nd_to_rdy/opt_has_pipe.i_pipe[4].pipe_reg[4][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      D => \pipe[3]\,
      Q => \pipe[4]\,
      R => sclr_i
    );
\i_nd_to_rdy/opt_has_pipe.i_pipe[5].pipe_reg[5][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      D => \pipe[4]\,
      Q => \pipe[5]\,
      R => sclr_i
    );
\i_nd_to_rdy/opt_has_pipe.i_pipe[6].pipe_reg[6][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      D => \pipe[5]\,
      Q => \^m_axis_result_tvalid\,
      R => sclr_i
    );
\need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_ready_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \need_combiner.use_2to1.skid_buffer_combiner/reg1_a_ready_nxt\,
      Q => \^s_axis_a_tready\,
      R => sclr_i
    );
\need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_gen_has_z_tready.reg1_a_tuser[3]_i_1\,
      D => s_axis_a_tdata(0),
      Q => \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[0]\,
      R => \<const0>\
    );
\need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_gen_has_z_tready.reg1_a_tuser[3]_i_1\,
      D => s_axis_a_tdata(10),
      Q => \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[10]\,
      R => \<const0>\
    );
\need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_gen_has_z_tready.reg1_a_tuser[3]_i_1\,
      D => s_axis_a_tdata(11),
      Q => \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[11]\,
      R => \<const0>\
    );
\need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_gen_has_z_tready.reg1_a_tuser[3]_i_1\,
      D => s_axis_a_tdata(12),
      Q => \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[12]\,
      R => \<const0>\
    );
\need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_gen_has_z_tready.reg1_a_tuser[3]_i_1\,
      D => s_axis_a_tdata(13),
      Q => \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[13]\,
      R => \<const0>\
    );
\need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_gen_has_z_tready.reg1_a_tuser[3]_i_1\,
      D => s_axis_a_tdata(14),
      Q => \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[14]\,
      R => \<const0>\
    );
\need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_gen_has_z_tready.reg1_a_tuser[3]_i_1\,
      D => s_axis_a_tdata(15),
      Q => \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[15]\,
      R => \<const0>\
    );
\need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_gen_has_z_tready.reg1_a_tuser[3]_i_1\,
      D => s_axis_a_tdata(16),
      Q => \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[16]\,
      R => \<const0>\
    );
\need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_gen_has_z_tready.reg1_a_tuser[3]_i_1\,
      D => s_axis_a_tdata(1),
      Q => \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[1]\,
      R => \<const0>\
    );
\need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_gen_has_z_tready.reg1_a_tuser[3]_i_1\,
      D => s_axis_a_tdata(2),
      Q => \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[2]\,
      R => \<const0>\
    );
\need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_gen_has_z_tready.reg1_a_tuser[3]_i_1\,
      D => s_axis_a_tdata(3),
      Q => \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[3]\,
      R => \<const0>\
    );
\need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_gen_has_z_tready.reg1_a_tuser[3]_i_1\,
      D => s_axis_a_tdata(4),
      Q => \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[4]\,
      R => \<const0>\
    );
\need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_gen_has_z_tready.reg1_a_tuser[3]_i_1\,
      D => s_axis_a_tdata(5),
      Q => \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[5]\,
      R => \<const0>\
    );
\need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_gen_has_z_tready.reg1_a_tuser[3]_i_1\,
      D => s_axis_a_tdata(6),
      Q => \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[6]\,
      R => \<const0>\
    );
\need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_gen_has_z_tready.reg1_a_tuser[3]_i_1\,
      D => s_axis_a_tdata(7),
      Q => \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[7]\,
      R => \<const0>\
    );
\need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_gen_has_z_tready.reg1_a_tuser[3]_i_1\,
      D => s_axis_a_tdata(8),
      Q => \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[8]\,
      R => \<const0>\
    );
\need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_gen_has_z_tready.reg1_a_tuser[3]_i_1\,
      D => s_axis_a_tdata(9),
      Q => \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[9]\,
      R => \<const0>\
    );
\need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tlast_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_gen_has_z_tready.reg1_a_tlast_i_1\,
      Q => \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tlast_reg\,
      R => \<const0>\
    );
\need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tuser_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_gen_has_z_tready.reg1_a_tuser[3]_i_1\,
      D => s_axis_a_tuser(0),
      Q => \need_combiner.use_2to1.skid_buffer_combiner/reg1_a_tuser\(0),
      R => \<const0>\
    );
\need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tuser_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_gen_has_z_tready.reg1_a_tuser[3]_i_1\,
      D => s_axis_a_tuser(1),
      Q => \need_combiner.use_2to1.skid_buffer_combiner/reg1_a_tuser\(1),
      R => \<const0>\
    );
\need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tuser_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_gen_has_z_tready.reg1_a_tuser[3]_i_1\,
      D => s_axis_a_tuser(2),
      Q => \need_combiner.use_2to1.skid_buffer_combiner/reg1_a_tuser\(2),
      R => \<const0>\
    );
\need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tuser_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_gen_has_z_tready.reg1_a_tuser[3]_i_1\,
      D => s_axis_a_tuser(3),
      Q => \need_combiner.use_2to1.skid_buffer_combiner/reg1_a_tuser\(3),
      R => \<const0>\
    );
\need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_valid_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid_nxt\,
      Q => \need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid\,
      R => sclr_i
    );
\need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_b_ready_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \need_combiner.use_2to1.skid_buffer_combiner/reg1_b_ready_nxt\,
      Q => \need_combiner.use_2to1.skid_buffer_combiner/b_tx\,
      R => sclr_i
    );
\need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_b_valid_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \need_combiner.use_2to1.skid_buffer_combiner/reg1_b_valid_nxt\,
      Q => \need_combiner.use_2to1.skid_buffer_combiner/reg1_b_valid\,
      R => sclr_i
    );
\need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast\,
      D => \n_0_gen_has_z_tready.reg2_a_tdata[0]_i_1\,
      Q => \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[0]\,
      R => \<const0>\
    );
\need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast\,
      D => \n_0_gen_has_z_tready.reg2_a_tdata[10]_i_1\,
      Q => \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[10]\,
      R => \<const0>\
    );
\need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast\,
      D => \n_0_gen_has_z_tready.reg2_a_tdata[11]_i_1\,
      Q => \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[11]\,
      R => \<const0>\
    );
\need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast\,
      D => \n_0_gen_has_z_tready.reg2_a_tdata[12]_i_1\,
      Q => \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[12]\,
      R => \<const0>\
    );
\need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast\,
      D => \n_0_gen_has_z_tready.reg2_a_tdata[13]_i_1\,
      Q => \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[13]\,
      R => \<const0>\
    );
\need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast\,
      D => \n_0_gen_has_z_tready.reg2_a_tdata[14]_i_1\,
      Q => \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[14]\,
      R => \<const0>\
    );
\need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast\,
      D => \n_0_gen_has_z_tready.reg2_a_tdata[15]_i_1\,
      Q => \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[15]\,
      R => \<const0>\
    );
\need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast\,
      D => \n_0_gen_has_z_tready.reg2_a_tdata[16]_i_2\,
      Q => a_i(16),
      R => \<const0>\
    );
\need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast\,
      D => \n_0_gen_has_z_tready.reg2_a_tdata[1]_i_1\,
      Q => \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[1]\,
      R => \<const0>\
    );
\need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast\,
      D => \n_0_gen_has_z_tready.reg2_a_tdata[2]_i_1\,
      Q => \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[2]\,
      R => \<const0>\
    );
\need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast\,
      D => \n_0_gen_has_z_tready.reg2_a_tdata[3]_i_1\,
      Q => \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[3]\,
      R => \<const0>\
    );
\need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast\,
      D => \n_0_gen_has_z_tready.reg2_a_tdata[4]_i_1\,
      Q => \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[4]\,
      R => \<const0>\
    );
\need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast\,
      D => \n_0_gen_has_z_tready.reg2_a_tdata[5]_i_1\,
      Q => \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[5]\,
      R => \<const0>\
    );
\need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast\,
      D => \n_0_gen_has_z_tready.reg2_a_tdata[6]_i_1\,
      Q => \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[6]\,
      R => \<const0>\
    );
\need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast\,
      D => \n_0_gen_has_z_tready.reg2_a_tdata[7]_i_1\,
      Q => \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[7]\,
      R => \<const0>\
    );
\need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast\,
      D => \n_0_gen_has_z_tready.reg2_a_tdata[8]_i_1\,
      Q => \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[8]\,
      R => \<const0>\
    );
\need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast\,
      D => \n_0_gen_has_z_tready.reg2_a_tdata[9]_i_1\,
      Q => \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[9]\,
      R => \<const0>\
    );
\need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tlast_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_gen_has_z_tready.reg2_a_tlast_i_1\,
      Q => m_axis_z_tlast_a,
      R => \<const0>\
    );
\need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tuser_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast\,
      D => \n_0_gen_has_z_tready.reg2_a_tuser[0]_i_1\,
      Q => m_axis_z_tuser_a(0),
      R => \<const0>\
    );
\need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tuser_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast\,
      D => \n_0_gen_has_z_tready.reg2_a_tuser[1]_i_1\,
      Q => m_axis_z_tuser_a(1),
      R => \<const0>\
    );
\need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tuser_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast\,
      D => \n_0_gen_has_z_tready.reg2_a_tuser[2]_i_1\,
      Q => m_axis_z_tuser_a(2),
      R => \<const0>\
    );
\need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tuser_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast\,
      D => \n_0_gen_has_z_tready.reg2_a_tuser[3]_i_1\,
      Q => m_axis_z_tuser_a(3),
      R => \<const0>\
    );
\need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_valid_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \need_combiner.use_2to1.skid_buffer_combiner/reg2_a_valid_nxt\,
      Q => \need_combiner.use_2to1.skid_buffer_combiner/reg2_a_valid\,
      R => sclr_i
    );
\need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_b_valid_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \need_combiner.use_2to1.skid_buffer_combiner/reg2_b_valid_nxt\,
      Q => \need_combiner.use_2to1.skid_buffer_combiner/reg2_b_valid\,
      R => sclr_i
    );
\need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.z_valid_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \need_combiner.use_2to1.skid_buffer_combiner/p_2_out\,
      Q => combiner_data_valid,
      R => sclr_i
    );
\need_user_delay.user_pipe/i_pipe/opt_has_pipe.first_q_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      D => m_axis_z_tuser_a(0),
      Q => \need_user_delay.user_pipe/i_pipe/first_q\(0),
      R => \<const0>\
    );
\need_user_delay.user_pipe/i_pipe/opt_has_pipe.first_q_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      D => m_axis_z_tuser_a(1),
      Q => \need_user_delay.user_pipe/i_pipe/first_q\(1),
      R => \<const0>\
    );
\need_user_delay.user_pipe/i_pipe/opt_has_pipe.first_q_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      D => m_axis_z_tuser_a(2),
      Q => \need_user_delay.user_pipe/i_pipe/first_q\(2),
      R => \<const0>\
    );
\need_user_delay.user_pipe/i_pipe/opt_has_pipe.first_q_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      D => m_axis_z_tuser_a(3),
      Q => \need_user_delay.user_pipe/i_pipe/first_q\(3),
      R => \<const0>\
    );
\need_user_delay.user_pipe/i_pipe/opt_has_pipe.first_q_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      D => m_axis_z_tlast_a,
      Q => \need_user_delay.user_pipe/i_pipe/first_q\(4),
      R => \<const0>\
    );
\need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][0]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => \<const1>\,
      A1 => \<const1>\,
      A2 => \<const0>\,
      A3 => \<const0>\,
      CE => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      CLK => aclk,
      D => \need_user_delay.user_pipe/i_pipe/first_q\(0),
      Q => \n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][0]_srl4\
    );
\need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][1]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => \<const1>\,
      A1 => \<const1>\,
      A2 => \<const0>\,
      A3 => \<const0>\,
      CE => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      CLK => aclk,
      D => \need_user_delay.user_pipe/i_pipe/first_q\(1),
      Q => \n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][1]_srl4\
    );
\need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][2]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => \<const1>\,
      A1 => \<const1>\,
      A2 => \<const0>\,
      A3 => \<const0>\,
      CE => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      CLK => aclk,
      D => \need_user_delay.user_pipe/i_pipe/first_q\(2),
      Q => \n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][2]_srl4\
    );
\need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][3]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => \<const1>\,
      A1 => \<const1>\,
      A2 => \<const0>\,
      A3 => \<const0>\,
      CE => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      CLK => aclk,
      D => \need_user_delay.user_pipe/i_pipe/first_q\(3),
      Q => \n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][3]_srl4\
    );
\need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][4]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => \<const1>\,
      A1 => \<const1>\,
      A2 => \<const0>\,
      A3 => \<const0>\,
      CE => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      CLK => aclk,
      D => \need_user_delay.user_pipe/i_pipe/first_q\(4),
      Q => \n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][4]_srl4\
    );
\need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[6].pipe_reg[6][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      D => \n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][0]_srl4\,
      Q => m_axis_result_tuser(0),
      R => \<const0>\
    );
\need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[6].pipe_reg[6][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      D => \n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][1]_srl4\,
      Q => m_axis_result_tuser(1),
      R => \<const0>\
    );
\need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[6].pipe_reg[6][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      D => \n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][2]_srl4\,
      Q => m_axis_result_tuser(2),
      R => \<const0>\
    );
\need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[6].pipe_reg[6][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      D => \n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][3]_srl4\,
      Q => m_axis_result_tuser(3),
      R => \<const0>\
    );
\need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[6].pipe_reg[6][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      D => \n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][4]_srl4\,
      Q => m_axis_result_tlast,
      R => \<const0>\
    );
\opt_has_pipe.first_q[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
    port map (
      I0 => \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q\(0),
      I1 => \FIX_TO_FLT_OP.SPD.OP/norm_dist_skew\(4),
      I2 => \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q\(8),
      I3 => \FIX_TO_FLT_OP.SPD.OP/LZE/p_1_in\,
      I4 => \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q\(16),
      O => \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/op_int\(0)
    );
\opt_has_pipe.first_q[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
    port map (
      I0 => \FIX_TO_FLT_OP.SPD.OP/LZE/p_0_out\,
      I1 => \FIX_TO_FLT_OP.SPD.OP/norm_dist_skew\(4),
      I2 => \n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[4].CARRYS_DEL.NEED_DEL.CARRYS_FD\,
      I3 => \FIX_TO_FLT_OP.SPD.OP/LZE/p_1_in\,
      I4 => \n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[0].CARRYS_DEL.NEED_DEL.CARRYS_FD\,
      O => \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/op_int\(0)
    );
\opt_has_pipe.first_q[0]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => \n_0_opt_has_pipe.first_q[0]_i_2\,
      I1 => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q\(0),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      O => \n_0_opt_has_pipe.first_q[0]_i_1__1\
    );
\opt_has_pipe.first_q[0]_i_1__10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CI\,
      I1 => \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/first_q\(0),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      O => \n_0_opt_has_pipe.first_q[0]_i_1__10\
    );
\opt_has_pipe.first_q[0]_i_1__11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q\(3),
      I1 => \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q\(2),
      I2 => \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q\(1),
      O => \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].MUX_Z/op_int\
    );
\opt_has_pipe.first_q[0]_i_1__12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/O\,
      I1 => \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q\(0),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      O => \n_0_opt_has_pipe.first_q[0]_i_1__12\
    );
\opt_has_pipe.first_q[0]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \FIX_TO_FLT_OP.SPD.OP/norm_dist_skew\(4),
      I1 => \FIX_TO_FLT_OP.SPD.OP/LZE/p_0_out\,
      O => \FIX_TO_FLT_OP.SPD.OP/LZE/all_bits_zero_del\
    );
\opt_has_pipe.first_q[0]_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => combiner_data_valid,
      I1 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      O => valid_transfer_in
    );
\opt_has_pipe.first_q[0]_i_1__4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].MUX_0/OP_DEL/i_pipe/first_q\,
      I1 => \FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q\(0),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      O => \n_0_opt_has_pipe.first_q[0]_i_1__4\
    );
\opt_has_pipe.first_q[0]_i_1__5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
    port map (
      I0 => \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/OP_DEL/i_pipe/first_q\(3),
      I1 => \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q\(2),
      I2 => \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/OP_DEL/i_pipe/first_q\(2),
      I3 => \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q\(1),
      I4 => \n_0_opt_has_pipe.first_q[0]_i_2__0\,
      O => \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].MUX_0/op_int\
    );
\opt_has_pipe.first_q[0]_i_1__6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => \FIX_TO_FLT_OP.SPD.OP/M_ABS/O\,
      I1 => \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q\(0),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      O => \n_0_opt_has_pipe.first_q[0]_i_1__6\
    );
\opt_has_pipe.first_q[0]_i_1__7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q\(0),
      I1 => \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q\(0),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      O => \n_0_opt_has_pipe.first_q[0]_i_1__7\
    );
\opt_has_pipe.first_q[0]_i_1__8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => \n_0_opt_has_pipe.first_q[0]_i_2__1\,
      I1 => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q\(0),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      O => \n_0_opt_has_pipe.first_q[0]_i_1__8\
    );
\opt_has_pipe.first_q[0]_i_1__9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/O\,
      I1 => \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/first_q\(0),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      O => \n_0_opt_has_pipe.first_q[0]_i_1__9\
    );
\opt_has_pipe.first_q[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q\(6),
      I1 => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q\(2),
      I2 => \FIX_TO_FLT_OP.SPD.OP/norm_dist_skew__0\(1),
      I3 => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q\(4),
      I4 => \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q\(1),
      I5 => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q\(0),
      O => \n_0_opt_has_pipe.first_q[0]_i_2\
    );
\opt_has_pipe.first_q[0]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/OP_DEL/i_pipe/first_q\(1),
      I1 => \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q\(0),
      I2 => \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/OP_DEL/i_pipe/first_q\(0),
      O => \n_0_opt_has_pipe.first_q[0]_i_2__0\
    );
\opt_has_pipe.first_q[0]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB0BF808"
    )
    port map (
      I0 => \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q\(8),
      I1 => \FIX_TO_FLT_OP.SPD.OP/LZE/p_1_in\,
      I2 => \FIX_TO_FLT_OP.SPD.OP/norm_dist_skew\(4),
      I3 => \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q\(0),
      I4 => \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q\(16),
      O => \n_0_opt_has_pipe.first_q[0]_i_2__1\
    );
\opt_has_pipe.first_q[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => \n_0_opt_has_pipe.first_q[10]_i_2\,
      I1 => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q\(10),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      O => \n_0_opt_has_pipe.first_q[10]_i_1\
    );
\opt_has_pipe.first_q[10]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q\(10),
      I1 => \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q\(10),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      O => \n_0_opt_has_pipe.first_q[10]_i_1__0\
    );
\opt_has_pipe.first_q[10]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => \FIX_TO_FLT_OP.SPD.OP/LZE/p_1_in\,
      I1 => \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q\(6),
      I2 => \FIX_TO_FLT_OP.SPD.OP/norm_dist_skew\(4),
      O => \n_0_opt_has_pipe.first_q[10]_i_1__1\
    );
\opt_has_pipe.first_q[10]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[10].Q_XOR.SUM_XOR\,
      I1 => \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/first_q\(10),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      O => \n_0_opt_has_pipe.first_q[10]_i_1__2\
    );
\opt_has_pipe.first_q[10]_i_1__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[10].C_MUX.CARRY_MUX\,
      I1 => \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/first_q\(10),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      O => \n_0_opt_has_pipe.first_q[10]_i_1__3\
    );
\opt_has_pipe.first_q[10]_i_1__4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[10].Q_XOR.SUM_XOR\,
      I1 => \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q\(10),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      O => \n_0_opt_has_pipe.first_q[10]_i_1__4\
    );
\opt_has_pipe.first_q[10]_i_1__5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[10].Q_XOR.SUM_XOR\,
      I1 => \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q\(10),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      O => \n_0_opt_has_pipe.first_q[10]_i_1__5\
    );
\opt_has_pipe.first_q[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q\(16),
      I1 => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q\(12),
      I2 => \FIX_TO_FLT_OP.SPD.OP/norm_dist_skew__0\(1),
      I3 => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q\(14),
      I4 => \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q\(1),
      I5 => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q\(10),
      O => \n_0_opt_has_pipe.first_q[10]_i_2\
    );
\opt_has_pipe.first_q[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => \n_0_opt_has_pipe.first_q[11]_i_2\,
      I1 => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q\(11),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      O => \n_0_opt_has_pipe.first_q[11]_i_1\
    );
\opt_has_pipe.first_q[11]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q\(11),
      I1 => \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q\(11),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      O => \n_0_opt_has_pipe.first_q[11]_i_1__0\
    );
\opt_has_pipe.first_q[11]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => \FIX_TO_FLT_OP.SPD.OP/LZE/p_1_in\,
      I1 => \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q\(5),
      I2 => \FIX_TO_FLT_OP.SPD.OP/norm_dist_skew\(4),
      O => \n_0_opt_has_pipe.first_q[11]_i_1__1\
    );
\opt_has_pipe.first_q[11]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[11].Q_XOR.SUM_XOR\,
      I1 => \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q\(11),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      O => \n_0_opt_has_pipe.first_q[11]_i_1__2\
    );
\opt_has_pipe.first_q[11]_i_1__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[11].Q_XOR.SUM_XOR\,
      I1 => \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/first_q\(11),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      O => \n_0_opt_has_pipe.first_q[11]_i_1__3\
    );
\opt_has_pipe.first_q[11]_i_1__4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[11].Q_XOR.SUM_XOR\,
      I1 => \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q\(11),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      O => \n_0_opt_has_pipe.first_q[11]_i_1__4\
    );
\opt_has_pipe.first_q[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3A3F0A0F3A300A00"
    )
    port map (
      I0 => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q\(13),
      I1 => \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q\(2),
      I2 => \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q\(1),
      I3 => \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q\(0),
      I4 => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q\(15),
      I5 => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q\(11),
      O => \n_0_opt_has_pipe.first_q[11]_i_2\
    );
\opt_has_pipe.first_q[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => \n_0_opt_has_pipe.first_q[12]_i_2\,
      I1 => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q\(12),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      O => \n_0_opt_has_pipe.first_q[12]_i_1\
    );
\opt_has_pipe.first_q[12]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q\(12),
      I1 => \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q\(12),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      O => \n_0_opt_has_pipe.first_q[12]_i_1__0\
    );
\opt_has_pipe.first_q[12]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => \FIX_TO_FLT_OP.SPD.OP/LZE/p_1_in\,
      I1 => \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q\(4),
      I2 => \FIX_TO_FLT_OP.SPD.OP/norm_dist_skew\(4),
      O => \n_0_opt_has_pipe.first_q[12]_i_1__1\
    );
\opt_has_pipe.first_q[12]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[12].Q_XOR.SUM_XOR\,
      I1 => \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q\(12),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      O => \n_0_opt_has_pipe.first_q[12]_i_1__2\
    );
\opt_has_pipe.first_q[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3A3F0A0F3A300A00"
    )
    port map (
      I0 => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q\(14),
      I1 => \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q\(2),
      I2 => \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q\(1),
      I3 => \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q\(0),
      I4 => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q\(16),
      I5 => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q\(12),
      O => \n_0_opt_has_pipe.first_q[12]_i_2\
    );
\opt_has_pipe.first_q[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q\(13),
      I1 => \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q\(13),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      O => \n_0_opt_has_pipe.first_q[13]_i_1\
    );
\opt_has_pipe.first_q[13]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => \FIX_TO_FLT_OP.SPD.OP/LZE/p_1_in\,
      I1 => \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q\(3),
      I2 => \FIX_TO_FLT_OP.SPD.OP/norm_dist_skew\(4),
      O => \n_0_opt_has_pipe.first_q[13]_i_1__0\
    );
\opt_has_pipe.first_q[13]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E4"
    )
    port map (
      I0 => \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q\(0),
      I1 => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q\(13),
      I2 => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q\(15),
      I3 => \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q\(1),
      O => \n_0_opt_has_pipe.first_q[13]_i_1__1\
    );
\opt_has_pipe.first_q[13]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[13].Q_XOR.SUM_XOR\,
      I1 => \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q\(13),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      O => \n_0_opt_has_pipe.first_q[13]_i_1__2\
    );
\opt_has_pipe.first_q[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q\(14),
      I1 => \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q\(14),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      O => \n_0_opt_has_pipe.first_q[14]_i_1\
    );
\opt_has_pipe.first_q[14]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => \FIX_TO_FLT_OP.SPD.OP/LZE/p_1_in\,
      I1 => \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q\(2),
      I2 => \FIX_TO_FLT_OP.SPD.OP/norm_dist_skew\(4),
      O => \n_0_opt_has_pipe.first_q[14]_i_1__0\
    );
\opt_has_pipe.first_q[14]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E4"
    )
    port map (
      I0 => \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q\(0),
      I1 => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q\(14),
      I2 => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q\(16),
      I3 => \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q\(1),
      O => \n_0_opt_has_pipe.first_q[14]_i_1__1\
    );
\opt_has_pipe.first_q[14]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[14].Q_XOR.SUM_XOR\,
      I1 => \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q\(14),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      O => \n_0_opt_has_pipe.first_q[14]_i_1__2\
    );
\opt_has_pipe.first_q[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q\(15),
      I1 => \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q\(15),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      O => \n_0_opt_has_pipe.first_q[15]_i_1\
    );
\opt_has_pipe.first_q[15]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => \FIX_TO_FLT_OP.SPD.OP/LZE/p_1_in\,
      I1 => \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q\(1),
      I2 => \FIX_TO_FLT_OP.SPD.OP/norm_dist_skew\(4),
      O => \n_0_opt_has_pipe.first_q[15]_i_1__0\
    );
\opt_has_pipe.first_q[15]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q\(0),
      I1 => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q\(15),
      I2 => \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q\(1),
      O => \n_0_opt_has_pipe.first_q[15]_i_1__1\
    );
\opt_has_pipe.first_q[15]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[15].Q_XOR.SUM_XOR\,
      I1 => \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q\(15),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      O => \n_0_opt_has_pipe.first_q[15]_i_1__2\
    );
\opt_has_pipe.first_q[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q\(16),
      I1 => \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q\(16),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      O => \n_0_opt_has_pipe.first_q[16]_i_1\
    );
\opt_has_pipe.first_q[16]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => \FIX_TO_FLT_OP.SPD.OP/LZE/p_1_in\,
      I1 => \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q\(0),
      I2 => \FIX_TO_FLT_OP.SPD.OP/norm_dist_skew\(4),
      O => \n_0_opt_has_pipe.first_q[16]_i_1__0\
    );
\opt_has_pipe.first_q[16]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q\(0),
      I1 => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q\(16),
      I2 => \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q\(1),
      O => \n_0_opt_has_pipe.first_q[16]_i_1__1\
    );
\opt_has_pipe.first_q[16]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[16].Q_XOR.SUM_XOR\,
      I1 => \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q\(16),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      O => \n_0_opt_has_pipe.first_q[16]_i_1__2\
    );
\opt_has_pipe.first_q[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => \n_0_opt_has_pipe.first_q[1]_i_2\,
      I1 => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q\(1),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      O => \n_0_opt_has_pipe.first_q[1]_i_1\
    );
\opt_has_pipe.first_q[1]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q\(2),
      I1 => \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q\(1),
      I2 => \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q\(0),
      O => \FIX_TO_FLT_OP.SPD.OP/norm_dist_skew__0\(1)
    );
\opt_has_pipe.first_q[1]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[1].Q_XOR.SUM_XOR\,
      I1 => \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q\(1),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      O => \n_0_opt_has_pipe.first_q[1]_i_1__1\
    );
\opt_has_pipe.first_q[1]_i_1__10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \FIX_TO_FLT_OP.SPD.OP/LZE/p_1_in\,
      I1 => \FIX_TO_FLT_OP.SPD.OP/norm_dist_skew\(4),
      O => \n_0_opt_has_pipe.first_q[1]_i_1__10\
    );
\opt_has_pipe.first_q[1]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q\(1),
      I1 => \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q\(1),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      O => \n_0_opt_has_pipe.first_q[1]_i_1__2\
    );
\opt_has_pipe.first_q[1]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E4"
    )
    port map (
      I0 => \FIX_TO_FLT_OP.SPD.OP/LZE/p_1_in\,
      I1 => \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q\(15),
      I2 => \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q\(7),
      I3 => \FIX_TO_FLT_OP.SPD.OP/norm_dist_skew\(4),
      O => \n_0_opt_has_pipe.first_q[1]_i_1__3\
    );
\opt_has_pipe.first_q[1]_i_1__4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[1].Q_XOR.SUM_XOR\,
      I1 => \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/first_q\(1),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      O => \n_0_opt_has_pipe.first_q[1]_i_1__4\
    );
\opt_has_pipe.first_q[1]_i_1__5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[1].C_MUX.CARRY_MUX\,
      I1 => \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/first_q\(1),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      O => \n_0_opt_has_pipe.first_q[1]_i_1__5\
    );
\opt_has_pipe.first_q[1]_i_1__6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"5C"
    )
    port map (
      I0 => \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].DIST_DEL/i_pipe/first_q\(1),
      I1 => \FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q\(1),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      O => \n_0_opt_has_pipe.first_q[1]_i_1__6\
    );
\opt_has_pipe.first_q[1]_i_1__7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
    port map (
      I0 => \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q\(14),
      I1 => \FIX_TO_FLT_OP.SPD.OP/LZE/p_1_in\,
      I2 => \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q\(6),
      I3 => \FIX_TO_FLT_OP.SPD.OP/norm_dist_skew\(4),
      O => \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/op_int\(1)
    );
\opt_has_pipe.first_q[1]_i_1__8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
    port map (
      I0 => \n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[1].CARRYS_DEL.NEED_DEL.CARRYS_FD\,
      I1 => \FIX_TO_FLT_OP.SPD.OP/LZE/p_1_in\,
      I2 => \n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[5].CARRYS_DEL.NEED_DEL.CARRYS_FD\,
      I3 => \FIX_TO_FLT_OP.SPD.OP/norm_dist_skew\(4),
      O => \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/op_int\(1)
    );
\opt_has_pipe.first_q[1]_i_1__9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[1].Q_XOR.SUM_XOR\,
      I1 => \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q\(1),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      O => \n_0_opt_has_pipe.first_q[1]_i_1__9\
    );
\opt_has_pipe.first_q[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q\(7),
      I1 => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q\(3),
      I2 => \FIX_TO_FLT_OP.SPD.OP/norm_dist_skew__0\(1),
      I3 => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q\(5),
      I4 => \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q\(1),
      I5 => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q\(1),
      O => \n_0_opt_has_pipe.first_q[1]_i_2\
    );
\opt_has_pipe.first_q[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => \n_0_opt_has_pipe.first_q[2]_i_2\,
      I1 => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q\(2),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      O => \n_0_opt_has_pipe.first_q[2]_i_1\
    );
\opt_has_pipe.first_q[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q\(2),
      I1 => \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q\(2),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      O => \n_0_opt_has_pipe.first_q[2]_i_1__0\
    );
\opt_has_pipe.first_q[2]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E4"
    )
    port map (
      I0 => \FIX_TO_FLT_OP.SPD.OP/LZE/p_1_in\,
      I1 => \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q\(14),
      I2 => \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q\(6),
      I3 => \FIX_TO_FLT_OP.SPD.OP/norm_dist_skew\(4),
      O => \n_0_opt_has_pipe.first_q[2]_i_1__1\
    );
\opt_has_pipe.first_q[2]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[2].Q_XOR.SUM_XOR\,
      I1 => \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/first_q\(2),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      O => \n_0_opt_has_pipe.first_q[2]_i_1__2\
    );
\opt_has_pipe.first_q[2]_i_1__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[2].C_MUX.CARRY_MUX\,
      I1 => \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/first_q\(2),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      O => \n_0_opt_has_pipe.first_q[2]_i_1__3\
    );
\opt_has_pipe.first_q[2]_i_1__4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"5C"
    )
    port map (
      I0 => \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].DIST_DEL/i_pipe/first_q\(0),
      I1 => \FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q\(2),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      O => \n_0_opt_has_pipe.first_q[2]_i_1__4\
    );
\opt_has_pipe.first_q[2]_i_1__5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
    port map (
      I0 => \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q\(12),
      I1 => \FIX_TO_FLT_OP.SPD.OP/LZE/p_1_in\,
      I2 => \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q\(4),
      I3 => \FIX_TO_FLT_OP.SPD.OP/norm_dist_skew\(4),
      O => \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/op_int\(2)
    );
\opt_has_pipe.first_q[2]_i_1__6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
    port map (
      I0 => \n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[2].CARRYS_DEL.NEED_DEL.CARRYS_FD\,
      I1 => \FIX_TO_FLT_OP.SPD.OP/LZE/p_1_in\,
      I2 => \n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[6].CARRYS_DEL.NEED_DEL.CARRYS_FD\,
      I3 => \FIX_TO_FLT_OP.SPD.OP/norm_dist_skew\(4),
      O => \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/op_int\(2)
    );
\opt_has_pipe.first_q[2]_i_1__7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[2].Q_XOR.SUM_XOR\,
      I1 => \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q\(2),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      O => \n_0_opt_has_pipe.first_q[2]_i_1__7\
    );
\opt_has_pipe.first_q[2]_i_1__8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[2].Q_XOR.SUM_XOR\,
      I1 => \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q\(2),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      O => \n_0_opt_has_pipe.first_q[2]_i_1__8\
    );
\opt_has_pipe.first_q[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q\(8),
      I1 => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q\(4),
      I2 => \FIX_TO_FLT_OP.SPD.OP/norm_dist_skew__0\(1),
      I3 => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q\(6),
      I4 => \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q\(1),
      I5 => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q\(2),
      O => \n_0_opt_has_pipe.first_q[2]_i_2\
    );
\opt_has_pipe.first_q[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => \n_0_opt_has_pipe.first_q[3]_i_2\,
      I1 => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q\(3),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      O => \n_0_opt_has_pipe.first_q[3]_i_1\
    );
\opt_has_pipe.first_q[3]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q\(3),
      I1 => \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q\(3),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      O => \n_0_opt_has_pipe.first_q[3]_i_1__0\
    );
\opt_has_pipe.first_q[3]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E4"
    )
    port map (
      I0 => \FIX_TO_FLT_OP.SPD.OP/LZE/p_1_in\,
      I1 => \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q\(13),
      I2 => \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q\(5),
      I3 => \FIX_TO_FLT_OP.SPD.OP/norm_dist_skew\(4),
      O => \n_0_opt_has_pipe.first_q[3]_i_1__1\
    );
\opt_has_pipe.first_q[3]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[3].Q_XOR.SUM_XOR\,
      I1 => \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/first_q\(3),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      O => \n_0_opt_has_pipe.first_q[3]_i_1__2\
    );
\opt_has_pipe.first_q[3]_i_1__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[3].C_MUX.CARRY_MUX\,
      I1 => \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/first_q\(3),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      O => \n_0_opt_has_pipe.first_q[3]_i_1__3\
    );
\opt_has_pipe.first_q[3]_i_1__4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"5C"
    )
    port map (
      I0 => \n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].DIST_DEL/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][1]\,
      I1 => \FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q\(3),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      O => \n_0_opt_has_pipe.first_q[3]_i_1__4\
    );
\opt_has_pipe.first_q[3]_i_1__5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
    port map (
      I0 => \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q\(10),
      I1 => \FIX_TO_FLT_OP.SPD.OP/LZE/p_1_in\,
      I2 => \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q\(2),
      I3 => \FIX_TO_FLT_OP.SPD.OP/norm_dist_skew\(4),
      O => \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/op_int\(3)
    );
\opt_has_pipe.first_q[3]_i_1__6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[3].Q_XOR.SUM_XOR\,
      I1 => \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q\(3),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      O => \n_0_opt_has_pipe.first_q[3]_i_1__6\
    );
\opt_has_pipe.first_q[3]_i_1__7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[3].Q_XOR.SUM_XOR\,
      I1 => \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q\(3),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      O => \n_0_opt_has_pipe.first_q[3]_i_1__7\
    );
\opt_has_pipe.first_q[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q\(9),
      I1 => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q\(5),
      I2 => \FIX_TO_FLT_OP.SPD.OP/norm_dist_skew__0\(1),
      I3 => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q\(7),
      I4 => \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q\(1),
      I5 => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q\(3),
      O => \n_0_opt_has_pipe.first_q[3]_i_2\
    );
\opt_has_pipe.first_q[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => \n_0_opt_has_pipe.first_q[4]_i_2\,
      I1 => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q\(4),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      O => \n_0_opt_has_pipe.first_q[4]_i_1\
    );
\opt_has_pipe.first_q[4]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q\(4),
      I1 => \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q\(4),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      O => \n_0_opt_has_pipe.first_q[4]_i_1__0\
    );
\opt_has_pipe.first_q[4]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E4"
    )
    port map (
      I0 => \FIX_TO_FLT_OP.SPD.OP/LZE/p_1_in\,
      I1 => \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q\(12),
      I2 => \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q\(4),
      I3 => \FIX_TO_FLT_OP.SPD.OP/norm_dist_skew\(4),
      O => \n_0_opt_has_pipe.first_q[4]_i_1__1\
    );
\opt_has_pipe.first_q[4]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[4].Q_XOR.SUM_XOR\,
      I1 => \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/first_q\(4),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      O => \n_0_opt_has_pipe.first_q[4]_i_1__2\
    );
\opt_has_pipe.first_q[4]_i_1__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[4].C_MUX.CARRY_MUX\,
      I1 => \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/first_q\(4),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      O => \n_0_opt_has_pipe.first_q[4]_i_1__3\
    );
\opt_has_pipe.first_q[4]_i_1__4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => \n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].DIST_DEL/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][0]\,
      I1 => \FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q\(4),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      O => \n_0_opt_has_pipe.first_q[4]_i_1__4\
    );
\opt_has_pipe.first_q[4]_i_1__5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[4].Q_XOR.SUM_XOR\,
      I1 => \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q\(4),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      O => \n_0_opt_has_pipe.first_q[4]_i_1__5\
    );
\opt_has_pipe.first_q[4]_i_1__6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[4].Q_XOR.SUM_XOR\,
      I1 => \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q\(4),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      O => \n_0_opt_has_pipe.first_q[4]_i_1__6\
    );
\opt_has_pipe.first_q[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q\(10),
      I1 => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q\(6),
      I2 => \FIX_TO_FLT_OP.SPD.OP/norm_dist_skew__0\(1),
      I3 => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q\(8),
      I4 => \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q\(1),
      I5 => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q\(4),
      O => \n_0_opt_has_pipe.first_q[4]_i_2\
    );
\opt_has_pipe.first_q[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => \n_0_opt_has_pipe.first_q[5]_i_2\,
      I1 => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q\(5),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      O => \n_0_opt_has_pipe.first_q[5]_i_1\
    );
\opt_has_pipe.first_q[5]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q\(5),
      I1 => \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q\(5),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      O => \n_0_opt_has_pipe.first_q[5]_i_1__0\
    );
\opt_has_pipe.first_q[5]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E4"
    )
    port map (
      I0 => \FIX_TO_FLT_OP.SPD.OP/LZE/p_1_in\,
      I1 => \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q\(11),
      I2 => \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q\(3),
      I3 => \FIX_TO_FLT_OP.SPD.OP/norm_dist_skew\(4),
      O => \n_0_opt_has_pipe.first_q[5]_i_1__1\
    );
\opt_has_pipe.first_q[5]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[5].Q_XOR.SUM_XOR\,
      I1 => \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/first_q\(5),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      O => \n_0_opt_has_pipe.first_q[5]_i_1__2\
    );
\opt_has_pipe.first_q[5]_i_1__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[5].C_MUX.CARRY_MUX\,
      I1 => \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/first_q\(5),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      O => \n_0_opt_has_pipe.first_q[5]_i_1__3\
    );
\opt_has_pipe.first_q[5]_i_1__4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => \n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].DIST_DEL/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][0]\,
      I1 => \FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q\(5),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      O => \n_0_opt_has_pipe.first_q[5]_i_1__4\
    );
\opt_has_pipe.first_q[5]_i_1__5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[5].Q_XOR.SUM_XOR\,
      I1 => \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q\(5),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      O => \n_0_opt_has_pipe.first_q[5]_i_1__5\
    );
\opt_has_pipe.first_q[5]_i_1__6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[5].Q_XOR.SUM_XOR\,
      I1 => \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q\(5),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      O => \n_0_opt_has_pipe.first_q[5]_i_1__6\
    );
\opt_has_pipe.first_q[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q\(11),
      I1 => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q\(7),
      I2 => \FIX_TO_FLT_OP.SPD.OP/norm_dist_skew__0\(1),
      I3 => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q\(9),
      I4 => \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q\(1),
      I5 => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q\(5),
      O => \n_0_opt_has_pipe.first_q[5]_i_2\
    );
\opt_has_pipe.first_q[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => \n_0_opt_has_pipe.first_q[6]_i_2\,
      I1 => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q\(6),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      O => \n_0_opt_has_pipe.first_q[6]_i_1\
    );
\opt_has_pipe.first_q[6]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q\(6),
      I1 => \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q\(6),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      O => \n_0_opt_has_pipe.first_q[6]_i_1__0\
    );
\opt_has_pipe.first_q[6]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E4"
    )
    port map (
      I0 => \FIX_TO_FLT_OP.SPD.OP/LZE/p_1_in\,
      I1 => \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q\(10),
      I2 => \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q\(2),
      I3 => \FIX_TO_FLT_OP.SPD.OP/norm_dist_skew\(4),
      O => \n_0_opt_has_pipe.first_q[6]_i_1__1\
    );
\opt_has_pipe.first_q[6]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[6].Q_XOR.SUM_XOR\,
      I1 => \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/first_q\(6),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      O => \n_0_opt_has_pipe.first_q[6]_i_1__2\
    );
\opt_has_pipe.first_q[6]_i_1__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[6].C_MUX.CARRY_MUX\,
      I1 => \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/first_q\(6),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      O => \n_0_opt_has_pipe.first_q[6]_i_1__3\
    );
\opt_has_pipe.first_q[6]_i_1__4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => \n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].DIST_DEL/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][0]\,
      I1 => \FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q\(6),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      O => \n_0_opt_has_pipe.first_q[6]_i_1__4\
    );
\opt_has_pipe.first_q[6]_i_1__5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[6].Q_XOR.SUM_XOR\,
      I1 => \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q\(6),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      O => \n_0_opt_has_pipe.first_q[6]_i_1__5\
    );
\opt_has_pipe.first_q[6]_i_1__6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[6].Q_XOR.SUM_XOR\,
      I1 => \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q\(6),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      O => \n_0_opt_has_pipe.first_q[6]_i_1__6\
    );
\opt_has_pipe.first_q[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q\(12),
      I1 => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q\(8),
      I2 => \FIX_TO_FLT_OP.SPD.OP/norm_dist_skew__0\(1),
      I3 => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q\(10),
      I4 => \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q\(1),
      I5 => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q\(6),
      O => \n_0_opt_has_pipe.first_q[6]_i_2\
    );
\opt_has_pipe.first_q[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => \n_0_opt_has_pipe.first_q[7]_i_2\,
      I1 => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q\(7),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      O => \n_0_opt_has_pipe.first_q[7]_i_1\
    );
\opt_has_pipe.first_q[7]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q\(7),
      I1 => \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q\(7),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      O => \n_0_opt_has_pipe.first_q[7]_i_1__0\
    );
\opt_has_pipe.first_q[7]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E4"
    )
    port map (
      I0 => \FIX_TO_FLT_OP.SPD.OP/LZE/p_1_in\,
      I1 => \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q\(9),
      I2 => \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q\(1),
      I3 => \FIX_TO_FLT_OP.SPD.OP/norm_dist_skew\(4),
      O => \n_0_opt_has_pipe.first_q[7]_i_1__1\
    );
\opt_has_pipe.first_q[7]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[7].Q_XOR.SUM_XOR\,
      I1 => \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/first_q\(7),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      O => \n_0_opt_has_pipe.first_q[7]_i_1__2\
    );
\opt_has_pipe.first_q[7]_i_1__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[7].C_MUX.CARRY_MUX\,
      I1 => \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/first_q\(7),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      O => \n_0_opt_has_pipe.first_q[7]_i_1__3\
    );
\opt_has_pipe.first_q[7]_i_1__4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"5C"
    )
    port map (
      I0 => \n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].DIST_DEL/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][0]\,
      I1 => \FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q\(7),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      O => \n_0_opt_has_pipe.first_q[7]_i_1__4\
    );
\opt_has_pipe.first_q[7]_i_1__5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[7].Q_XOR.SUM_XOR\,
      I1 => \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q\(7),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      O => \n_0_opt_has_pipe.first_q[7]_i_1__5\
    );
\opt_has_pipe.first_q[7]_i_1__6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[7].Q_XOR.SUM_XOR\,
      I1 => \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q\(7),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      O => \n_0_opt_has_pipe.first_q[7]_i_1__6\
    );
\opt_has_pipe.first_q[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q\(13),
      I1 => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q\(9),
      I2 => \FIX_TO_FLT_OP.SPD.OP/norm_dist_skew__0\(1),
      I3 => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q\(11),
      I4 => \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q\(1),
      I5 => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q\(7),
      O => \n_0_opt_has_pipe.first_q[7]_i_2\
    );
\opt_has_pipe.first_q[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => \n_0_opt_has_pipe.first_q[8]_i_2\,
      I1 => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q\(8),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      O => \n_0_opt_has_pipe.first_q[8]_i_1\
    );
\opt_has_pipe.first_q[8]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q\(8),
      I1 => \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q\(8),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      O => \n_0_opt_has_pipe.first_q[8]_i_1__0\
    );
\opt_has_pipe.first_q[8]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E4"
    )
    port map (
      I0 => \FIX_TO_FLT_OP.SPD.OP/LZE/p_1_in\,
      I1 => \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q\(8),
      I2 => \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q\(0),
      I3 => \FIX_TO_FLT_OP.SPD.OP/norm_dist_skew\(4),
      O => \n_0_opt_has_pipe.first_q[8]_i_1__1\
    );
\opt_has_pipe.first_q[8]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[8].Q_XOR.SUM_XOR\,
      I1 => \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/first_q\(8),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      O => \n_0_opt_has_pipe.first_q[8]_i_1__2\
    );
\opt_has_pipe.first_q[8]_i_1__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[8].C_MUX.CARRY_MUX\,
      I1 => \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/first_q\(8),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      O => \n_0_opt_has_pipe.first_q[8]_i_1__3\
    );
\opt_has_pipe.first_q[8]_i_1__4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[8].Q_XOR.SUM_XOR\,
      I1 => \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q\(8),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      O => \n_0_opt_has_pipe.first_q[8]_i_1__4\
    );
\opt_has_pipe.first_q[8]_i_1__5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[8].Q_XOR.SUM_XOR\,
      I1 => \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q\(8),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      O => \n_0_opt_has_pipe.first_q[8]_i_1__5\
    );
\opt_has_pipe.first_q[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q\(14),
      I1 => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q\(10),
      I2 => \FIX_TO_FLT_OP.SPD.OP/norm_dist_skew__0\(1),
      I3 => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q\(12),
      I4 => \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q\(1),
      I5 => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q\(8),
      O => \n_0_opt_has_pipe.first_q[8]_i_2\
    );
\opt_has_pipe.first_q[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => \n_0_opt_has_pipe.first_q[9]_i_2\,
      I1 => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q\(9),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      O => \n_0_opt_has_pipe.first_q[9]_i_1\
    );
\opt_has_pipe.first_q[9]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q\(9),
      I1 => \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q\(9),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      O => \n_0_opt_has_pipe.first_q[9]_i_1__0\
    );
\opt_has_pipe.first_q[9]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => \FIX_TO_FLT_OP.SPD.OP/LZE/p_1_in\,
      I1 => \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q\(7),
      I2 => \FIX_TO_FLT_OP.SPD.OP/norm_dist_skew\(4),
      O => \n_0_opt_has_pipe.first_q[9]_i_1__1\
    );
\opt_has_pipe.first_q[9]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[9].Q_XOR.SUM_XOR\,
      I1 => \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/first_q\(9),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      O => \n_0_opt_has_pipe.first_q[9]_i_1__2\
    );
\opt_has_pipe.first_q[9]_i_1__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[9].C_MUX.CARRY_MUX\,
      I1 => \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/first_q\(9),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      O => \n_0_opt_has_pipe.first_q[9]_i_1__3\
    );
\opt_has_pipe.first_q[9]_i_1__4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[9].Q_XOR.SUM_XOR\,
      I1 => \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q\(9),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      O => \n_0_opt_has_pipe.first_q[9]_i_1__4\
    );
\opt_has_pipe.first_q[9]_i_1__5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[9].Q_XOR.SUM_XOR\,
      I1 => \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q\(9),
      I2 => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\,
      O => \n_0_opt_has_pipe.first_q[9]_i_1__5\
    );
\opt_has_pipe.first_q[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q\(15),
      I1 => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q\(11),
      I2 => \FIX_TO_FLT_OP.SPD.OP/norm_dist_skew__0\(1),
      I3 => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q\(13),
      I4 => \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q\(1),
      I5 => \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q\(9),
      O => \n_0_opt_has_pipe.first_q[9]_i_2\
    );
\opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => m_axis_result_tready,
      I1 => \^m_axis_result_tvalid\,
      O => \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1\
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity \ip_axis_fi16tofp32floating_point_v7_0__parameterized0\ is
  port (
    aclk : in STD_LOGIC;
    aclken : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_a_tvalid : in STD_LOGIC;
    s_axis_a_tready : out STD_LOGIC;
    s_axis_a_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_a_tuser : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_a_tlast : in STD_LOGIC;
    s_axis_b_tvalid : in STD_LOGIC;
    s_axis_b_tready : out STD_LOGIC;
    s_axis_b_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_b_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_b_tlast : in STD_LOGIC;
    s_axis_c_tvalid : in STD_LOGIC;
    s_axis_c_tready : out STD_LOGIC;
    s_axis_c_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_c_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_c_tlast : in STD_LOGIC;
    s_axis_operation_tvalid : in STD_LOGIC;
    s_axis_operation_tready : out STD_LOGIC;
    s_axis_operation_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_operation_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_operation_tlast : in STD_LOGIC;
    m_axis_result_tvalid : out STD_LOGIC;
    m_axis_result_tready : in STD_LOGIC;
    m_axis_result_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_result_tuser : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_result_tlast : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \ip_axis_fi16tofp32floating_point_v7_0__parameterized0\ : entity is "floating_point_v7_0";
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of \ip_axis_fi16tofp32floating_point_v7_0__parameterized0\ : entity is "kintex7";
  attribute C_HAS_ADD : integer;
  attribute C_HAS_ADD of \ip_axis_fi16tofp32floating_point_v7_0__parameterized0\ : entity is 0;
  attribute C_HAS_SUBTRACT : integer;
  attribute C_HAS_SUBTRACT of \ip_axis_fi16tofp32floating_point_v7_0__parameterized0\ : entity is 0;
  attribute C_HAS_MULTIPLY : integer;
  attribute C_HAS_MULTIPLY of \ip_axis_fi16tofp32floating_point_v7_0__parameterized0\ : entity is 0;
  attribute C_HAS_DIVIDE : integer;
  attribute C_HAS_DIVIDE of \ip_axis_fi16tofp32floating_point_v7_0__parameterized0\ : entity is 0;
  attribute C_HAS_SQRT : integer;
  attribute C_HAS_SQRT of \ip_axis_fi16tofp32floating_point_v7_0__parameterized0\ : entity is 0;
  attribute C_HAS_COMPARE : integer;
  attribute C_HAS_COMPARE of \ip_axis_fi16tofp32floating_point_v7_0__parameterized0\ : entity is 0;
  attribute C_HAS_FIX_TO_FLT : integer;
  attribute C_HAS_FIX_TO_FLT of \ip_axis_fi16tofp32floating_point_v7_0__parameterized0\ : entity is 1;
  attribute C_HAS_FLT_TO_FIX : integer;
  attribute C_HAS_FLT_TO_FIX of \ip_axis_fi16tofp32floating_point_v7_0__parameterized0\ : entity is 0;
  attribute C_HAS_FLT_TO_FLT : integer;
  attribute C_HAS_FLT_TO_FLT of \ip_axis_fi16tofp32floating_point_v7_0__parameterized0\ : entity is 0;
  attribute C_HAS_RECIP : integer;
  attribute C_HAS_RECIP of \ip_axis_fi16tofp32floating_point_v7_0__parameterized0\ : entity is 0;
  attribute C_HAS_RECIP_SQRT : integer;
  attribute C_HAS_RECIP_SQRT of \ip_axis_fi16tofp32floating_point_v7_0__parameterized0\ : entity is 0;
  attribute C_HAS_ABSOLUTE : integer;
  attribute C_HAS_ABSOLUTE of \ip_axis_fi16tofp32floating_point_v7_0__parameterized0\ : entity is 0;
  attribute C_HAS_LOGARITHM : integer;
  attribute C_HAS_LOGARITHM of \ip_axis_fi16tofp32floating_point_v7_0__parameterized0\ : entity is 0;
  attribute C_HAS_EXPONENTIAL : integer;
  attribute C_HAS_EXPONENTIAL of \ip_axis_fi16tofp32floating_point_v7_0__parameterized0\ : entity is 0;
  attribute C_HAS_FMA : integer;
  attribute C_HAS_FMA of \ip_axis_fi16tofp32floating_point_v7_0__parameterized0\ : entity is 0;
  attribute C_HAS_FMS : integer;
  attribute C_HAS_FMS of \ip_axis_fi16tofp32floating_point_v7_0__parameterized0\ : entity is 0;
  attribute C_HAS_ACCUMULATOR_A : integer;
  attribute C_HAS_ACCUMULATOR_A of \ip_axis_fi16tofp32floating_point_v7_0__parameterized0\ : entity is 0;
  attribute C_HAS_ACCUMULATOR_S : integer;
  attribute C_HAS_ACCUMULATOR_S of \ip_axis_fi16tofp32floating_point_v7_0__parameterized0\ : entity is 0;
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \ip_axis_fi16tofp32floating_point_v7_0__parameterized0\ : entity is 17;
  attribute C_A_FRACTION_WIDTH : integer;
  attribute C_A_FRACTION_WIDTH of \ip_axis_fi16tofp32floating_point_v7_0__parameterized0\ : entity is 0;
  attribute C_B_WIDTH : integer;
  attribute C_B_WIDTH of \ip_axis_fi16tofp32floating_point_v7_0__parameterized0\ : entity is 17;
  attribute C_B_FRACTION_WIDTH : integer;
  attribute C_B_FRACTION_WIDTH of \ip_axis_fi16tofp32floating_point_v7_0__parameterized0\ : entity is 0;
  attribute C_C_WIDTH : integer;
  attribute C_C_WIDTH of \ip_axis_fi16tofp32floating_point_v7_0__parameterized0\ : entity is 17;
  attribute C_C_FRACTION_WIDTH : integer;
  attribute C_C_FRACTION_WIDTH of \ip_axis_fi16tofp32floating_point_v7_0__parameterized0\ : entity is 0;
  attribute C_RESULT_WIDTH : integer;
  attribute C_RESULT_WIDTH of \ip_axis_fi16tofp32floating_point_v7_0__parameterized0\ : entity is 32;
  attribute C_RESULT_FRACTION_WIDTH : integer;
  attribute C_RESULT_FRACTION_WIDTH of \ip_axis_fi16tofp32floating_point_v7_0__parameterized0\ : entity is 24;
  attribute C_COMPARE_OPERATION : integer;
  attribute C_COMPARE_OPERATION of \ip_axis_fi16tofp32floating_point_v7_0__parameterized0\ : entity is 8;
  attribute C_LATENCY : integer;
  attribute C_LATENCY of \ip_axis_fi16tofp32floating_point_v7_0__parameterized0\ : entity is 7;
  attribute C_OPTIMIZATION : integer;
  attribute C_OPTIMIZATION of \ip_axis_fi16tofp32floating_point_v7_0__parameterized0\ : entity is 1;
  attribute C_MULT_USAGE : integer;
  attribute C_MULT_USAGE of \ip_axis_fi16tofp32floating_point_v7_0__parameterized0\ : entity is 0;
  attribute C_BRAM_USAGE : integer;
  attribute C_BRAM_USAGE of \ip_axis_fi16tofp32floating_point_v7_0__parameterized0\ : entity is 0;
  attribute C_RATE : integer;
  attribute C_RATE of \ip_axis_fi16tofp32floating_point_v7_0__parameterized0\ : entity is 1;
  attribute C_ACCUM_INPUT_MSB : integer;
  attribute C_ACCUM_INPUT_MSB of \ip_axis_fi16tofp32floating_point_v7_0__parameterized0\ : entity is 32;
  attribute C_ACCUM_MSB : integer;
  attribute C_ACCUM_MSB of \ip_axis_fi16tofp32floating_point_v7_0__parameterized0\ : entity is 32;
  attribute C_ACCUM_LSB : integer;
  attribute C_ACCUM_LSB of \ip_axis_fi16tofp32floating_point_v7_0__parameterized0\ : entity is -31;
  attribute C_HAS_UNDERFLOW : integer;
  attribute C_HAS_UNDERFLOW of \ip_axis_fi16tofp32floating_point_v7_0__parameterized0\ : entity is 0;
  attribute C_HAS_OVERFLOW : integer;
  attribute C_HAS_OVERFLOW of \ip_axis_fi16tofp32floating_point_v7_0__parameterized0\ : entity is 0;
  attribute C_HAS_INVALID_OP : integer;
  attribute C_HAS_INVALID_OP of \ip_axis_fi16tofp32floating_point_v7_0__parameterized0\ : entity is 0;
  attribute C_HAS_DIVIDE_BY_ZERO : integer;
  attribute C_HAS_DIVIDE_BY_ZERO of \ip_axis_fi16tofp32floating_point_v7_0__parameterized0\ : entity is 0;
  attribute C_HAS_ACCUM_OVERFLOW : integer;
  attribute C_HAS_ACCUM_OVERFLOW of \ip_axis_fi16tofp32floating_point_v7_0__parameterized0\ : entity is 0;
  attribute C_HAS_ACCUM_INPUT_OVERFLOW : integer;
  attribute C_HAS_ACCUM_INPUT_OVERFLOW of \ip_axis_fi16tofp32floating_point_v7_0__parameterized0\ : entity is 0;
  attribute C_HAS_ACLKEN : integer;
  attribute C_HAS_ACLKEN of \ip_axis_fi16tofp32floating_point_v7_0__parameterized0\ : entity is 0;
  attribute C_HAS_ARESETN : integer;
  attribute C_HAS_ARESETN of \ip_axis_fi16tofp32floating_point_v7_0__parameterized0\ : entity is 1;
  attribute C_THROTTLE_SCHEME : integer;
  attribute C_THROTTLE_SCHEME of \ip_axis_fi16tofp32floating_point_v7_0__parameterized0\ : entity is 1;
  attribute C_HAS_A_TUSER : integer;
  attribute C_HAS_A_TUSER of \ip_axis_fi16tofp32floating_point_v7_0__parameterized0\ : entity is 1;
  attribute C_HAS_A_TLAST : integer;
  attribute C_HAS_A_TLAST of \ip_axis_fi16tofp32floating_point_v7_0__parameterized0\ : entity is 1;
  attribute C_HAS_B : integer;
  attribute C_HAS_B of \ip_axis_fi16tofp32floating_point_v7_0__parameterized0\ : entity is 0;
  attribute C_HAS_B_TUSER : integer;
  attribute C_HAS_B_TUSER of \ip_axis_fi16tofp32floating_point_v7_0__parameterized0\ : entity is 0;
  attribute C_HAS_B_TLAST : integer;
  attribute C_HAS_B_TLAST of \ip_axis_fi16tofp32floating_point_v7_0__parameterized0\ : entity is 0;
  attribute C_HAS_C : integer;
  attribute C_HAS_C of \ip_axis_fi16tofp32floating_point_v7_0__parameterized0\ : entity is 0;
  attribute C_HAS_C_TUSER : integer;
  attribute C_HAS_C_TUSER of \ip_axis_fi16tofp32floating_point_v7_0__parameterized0\ : entity is 0;
  attribute C_HAS_C_TLAST : integer;
  attribute C_HAS_C_TLAST of \ip_axis_fi16tofp32floating_point_v7_0__parameterized0\ : entity is 0;
  attribute C_HAS_OPERATION : integer;
  attribute C_HAS_OPERATION of \ip_axis_fi16tofp32floating_point_v7_0__parameterized0\ : entity is 0;
  attribute C_HAS_OPERATION_TUSER : integer;
  attribute C_HAS_OPERATION_TUSER of \ip_axis_fi16tofp32floating_point_v7_0__parameterized0\ : entity is 0;
  attribute C_HAS_OPERATION_TLAST : integer;
  attribute C_HAS_OPERATION_TLAST of \ip_axis_fi16tofp32floating_point_v7_0__parameterized0\ : entity is 0;
  attribute C_HAS_RESULT_TUSER : integer;
  attribute C_HAS_RESULT_TUSER of \ip_axis_fi16tofp32floating_point_v7_0__parameterized0\ : entity is 1;
  attribute C_HAS_RESULT_TLAST : integer;
  attribute C_HAS_RESULT_TLAST of \ip_axis_fi16tofp32floating_point_v7_0__parameterized0\ : entity is 1;
  attribute C_TLAST_RESOLUTION : integer;
  attribute C_TLAST_RESOLUTION of \ip_axis_fi16tofp32floating_point_v7_0__parameterized0\ : entity is 1;
  attribute C_A_TDATA_WIDTH : integer;
  attribute C_A_TDATA_WIDTH of \ip_axis_fi16tofp32floating_point_v7_0__parameterized0\ : entity is 24;
  attribute C_A_TUSER_WIDTH : integer;
  attribute C_A_TUSER_WIDTH of \ip_axis_fi16tofp32floating_point_v7_0__parameterized0\ : entity is 4;
  attribute C_B_TDATA_WIDTH : integer;
  attribute C_B_TDATA_WIDTH of \ip_axis_fi16tofp32floating_point_v7_0__parameterized0\ : entity is 24;
  attribute C_B_TUSER_WIDTH : integer;
  attribute C_B_TUSER_WIDTH of \ip_axis_fi16tofp32floating_point_v7_0__parameterized0\ : entity is 1;
  attribute C_C_TDATA_WIDTH : integer;
  attribute C_C_TDATA_WIDTH of \ip_axis_fi16tofp32floating_point_v7_0__parameterized0\ : entity is 24;
  attribute C_C_TUSER_WIDTH : integer;
  attribute C_C_TUSER_WIDTH of \ip_axis_fi16tofp32floating_point_v7_0__parameterized0\ : entity is 1;
  attribute C_OPERATION_TDATA_WIDTH : integer;
  attribute C_OPERATION_TDATA_WIDTH of \ip_axis_fi16tofp32floating_point_v7_0__parameterized0\ : entity is 8;
  attribute C_OPERATION_TUSER_WIDTH : integer;
  attribute C_OPERATION_TUSER_WIDTH of \ip_axis_fi16tofp32floating_point_v7_0__parameterized0\ : entity is 1;
  attribute C_RESULT_TDATA_WIDTH : integer;
  attribute C_RESULT_TDATA_WIDTH of \ip_axis_fi16tofp32floating_point_v7_0__parameterized0\ : entity is 32;
  attribute C_RESULT_TUSER_WIDTH : integer;
  attribute C_RESULT_TUSER_WIDTH of \ip_axis_fi16tofp32floating_point_v7_0__parameterized0\ : entity is 4;
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of \ip_axis_fi16tofp32floating_point_v7_0__parameterized0\ : entity is "yes";
end \ip_axis_fi16tofp32floating_point_v7_0__parameterized0\;

architecture STRUCTURE of \ip_axis_fi16tofp32floating_point_v7_0__parameterized0\ is
  attribute C_ACCUM_INPUT_MSB of i_synth : label is 32;
  attribute C_ACCUM_LSB of i_synth : label is -31;
  attribute C_ACCUM_MSB of i_synth : label is 32;
  attribute C_A_FRACTION_WIDTH of i_synth : label is 0;
  attribute C_A_TDATA_WIDTH of i_synth : label is 24;
  attribute C_A_TUSER_WIDTH of i_synth : label is 4;
  attribute C_A_WIDTH of i_synth : label is 17;
  attribute C_BRAM_USAGE of i_synth : label is 0;
  attribute C_B_FRACTION_WIDTH of i_synth : label is 0;
  attribute C_B_TDATA_WIDTH of i_synth : label is 24;
  attribute C_B_TUSER_WIDTH of i_synth : label is 1;
  attribute C_B_WIDTH of i_synth : label is 17;
  attribute C_COMPARE_OPERATION of i_synth : label is 8;
  attribute C_C_FRACTION_WIDTH of i_synth : label is 0;
  attribute C_C_TDATA_WIDTH of i_synth : label is 24;
  attribute C_C_TUSER_WIDTH of i_synth : label is 1;
  attribute C_C_WIDTH of i_synth : label is 17;
  attribute C_HAS_ABSOLUTE of i_synth : label is 0;
  attribute C_HAS_ACCUMULATOR_A of i_synth : label is 0;
  attribute C_HAS_ACCUMULATOR_S of i_synth : label is 0;
  attribute C_HAS_ACCUM_INPUT_OVERFLOW of i_synth : label is 0;
  attribute C_HAS_ACCUM_OVERFLOW of i_synth : label is 0;
  attribute C_HAS_ACLKEN of i_synth : label is 0;
  attribute C_HAS_ADD of i_synth : label is 0;
  attribute C_HAS_ARESETN of i_synth : label is 1;
  attribute C_HAS_A_TLAST of i_synth : label is 1;
  attribute C_HAS_A_TUSER of i_synth : label is 1;
  attribute C_HAS_B of i_synth : label is 0;
  attribute C_HAS_B_TLAST of i_synth : label is 0;
  attribute C_HAS_B_TUSER of i_synth : label is 0;
  attribute C_HAS_C of i_synth : label is 0;
  attribute C_HAS_COMPARE of i_synth : label is 0;
  attribute C_HAS_C_TLAST of i_synth : label is 0;
  attribute C_HAS_C_TUSER of i_synth : label is 0;
  attribute C_HAS_DIVIDE of i_synth : label is 0;
  attribute C_HAS_DIVIDE_BY_ZERO of i_synth : label is 0;
  attribute C_HAS_EXPONENTIAL of i_synth : label is 0;
  attribute C_HAS_FIX_TO_FLT of i_synth : label is 1;
  attribute C_HAS_FLT_TO_FIX of i_synth : label is 0;
  attribute C_HAS_FLT_TO_FLT of i_synth : label is 0;
  attribute C_HAS_FMA of i_synth : label is 0;
  attribute C_HAS_FMS of i_synth : label is 0;
  attribute C_HAS_INVALID_OP of i_synth : label is 0;
  attribute C_HAS_LOGARITHM of i_synth : label is 0;
  attribute C_HAS_MULTIPLY of i_synth : label is 0;
  attribute C_HAS_OPERATION of i_synth : label is 0;
  attribute C_HAS_OPERATION_TLAST of i_synth : label is 0;
  attribute C_HAS_OPERATION_TUSER of i_synth : label is 0;
  attribute C_HAS_OVERFLOW of i_synth : label is 0;
  attribute C_HAS_RECIP of i_synth : label is 0;
  attribute C_HAS_RECIP_SQRT of i_synth : label is 0;
  attribute C_HAS_RESULT_TLAST of i_synth : label is 1;
  attribute C_HAS_RESULT_TUSER of i_synth : label is 1;
  attribute C_HAS_SQRT of i_synth : label is 0;
  attribute C_HAS_SUBTRACT of i_synth : label is 0;
  attribute C_HAS_UNDERFLOW of i_synth : label is 0;
  attribute C_LATENCY of i_synth : label is 7;
  attribute C_MULT_USAGE of i_synth : label is 0;
  attribute C_OPERATION_TDATA_WIDTH of i_synth : label is 8;
  attribute C_OPERATION_TUSER_WIDTH of i_synth : label is 1;
  attribute C_OPTIMIZATION of i_synth : label is 1;
  attribute C_RATE of i_synth : label is 1;
  attribute C_RESULT_FRACTION_WIDTH of i_synth : label is 24;
  attribute C_RESULT_TDATA_WIDTH of i_synth : label is 32;
  attribute C_RESULT_TUSER_WIDTH of i_synth : label is 4;
  attribute C_RESULT_WIDTH of i_synth : label is 32;
  attribute C_THROTTLE_SCHEME of i_synth : label is 1;
  attribute C_TLAST_RESOLUTION of i_synth : label is 1;
  attribute C_XDEVICEFAMILY of i_synth : label is "kintex7";
  attribute downgradeipidentifiedwarnings of i_synth : label is "yes";
begin
i_synth: entity work.\ip_axis_fi16tofp32floating_point_v7_0_viv__parameterized0\
    port map (
      aclk => aclk,
      aclken => aclken,
      aresetn => aresetn,
      m_axis_result_tdata(31 downto 0) => m_axis_result_tdata(31 downto 0),
      m_axis_result_tlast => m_axis_result_tlast,
      m_axis_result_tready => m_axis_result_tready,
      m_axis_result_tuser(3 downto 0) => m_axis_result_tuser(3 downto 0),
      m_axis_result_tvalid => m_axis_result_tvalid,
      s_axis_a_tdata(23 downto 0) => s_axis_a_tdata(23 downto 0),
      s_axis_a_tlast => s_axis_a_tlast,
      s_axis_a_tready => s_axis_a_tready,
      s_axis_a_tuser(3 downto 0) => s_axis_a_tuser(3 downto 0),
      s_axis_a_tvalid => s_axis_a_tvalid,
      s_axis_b_tdata(23 downto 0) => s_axis_b_tdata(23 downto 0),
      s_axis_b_tlast => s_axis_b_tlast,
      s_axis_b_tready => s_axis_b_tready,
      s_axis_b_tuser(0) => s_axis_b_tuser(0),
      s_axis_b_tvalid => s_axis_b_tvalid,
      s_axis_c_tdata(23 downto 0) => s_axis_c_tdata(23 downto 0),
      s_axis_c_tlast => s_axis_c_tlast,
      s_axis_c_tready => s_axis_c_tready,
      s_axis_c_tuser(0) => s_axis_c_tuser(0),
      s_axis_c_tvalid => s_axis_c_tvalid,
      s_axis_operation_tdata(7 downto 0) => s_axis_operation_tdata(7 downto 0),
      s_axis_operation_tlast => s_axis_operation_tlast,
      s_axis_operation_tready => s_axis_operation_tready,
      s_axis_operation_tuser(0) => s_axis_operation_tuser(0),
      s_axis_operation_tvalid => s_axis_operation_tvalid
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity ip_axis_fi16tofp32 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_a_tvalid : in STD_LOGIC;
    s_axis_a_tready : out STD_LOGIC;
    s_axis_a_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_a_tuser : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_a_tlast : in STD_LOGIC;
    m_axis_result_tvalid : out STD_LOGIC;
    m_axis_result_tready : in STD_LOGIC;
    m_axis_result_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_result_tuser : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_result_tlast : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of ip_axis_fi16tofp32 : entity is true;
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of ip_axis_fi16tofp32 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of ip_axis_fi16tofp32 : entity is "floating_point_v7_0,Vivado 2013.4";
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ip_axis_fi16tofp32 : entity is "ip_axis_fi16tofp32,floating_point_v7_0,{}";
  attribute core_generation_info : string;
  attribute core_generation_info of ip_axis_fi16tofp32 : entity is "ip_axis_fi16tofp32,floating_point_v7_0,{x_ipProduct=Vivado 2013.4,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=floating_point,x_ipVersion=7.0,x_ipCoreRevision=3,x_ipLanguage=VHDL,C_XDEVICEFAMILY=kintex7,C_HAS_ADD=0,C_HAS_SUBTRACT=0,C_HAS_MULTIPLY=0,C_HAS_DIVIDE=0,C_HAS_SQRT=0,C_HAS_COMPARE=0,C_HAS_FIX_TO_FLT=1,C_HAS_FLT_TO_FIX=0,C_HAS_FLT_TO_FLT=0,C_HAS_RECIP=0,C_HAS_RECIP_SQRT=0,C_HAS_ABSOLUTE=0,C_HAS_LOGARITHM=0,C_HAS_EXPONENTIAL=0,C_HAS_FMA=0,C_HAS_FMS=0,C_HAS_ACCUMULATOR_A=0,C_HAS_ACCUMULATOR_S=0,C_A_WIDTH=17,C_A_FRACTION_WIDTH=0,C_B_WIDTH=17,C_B_FRACTION_WIDTH=0,C_C_WIDTH=17,C_C_FRACTION_WIDTH=0,C_RESULT_WIDTH=32,C_RESULT_FRACTION_WIDTH=24,C_COMPARE_OPERATION=8,C_LATENCY=7,C_OPTIMIZATION=1,C_MULT_USAGE=0,C_BRAM_USAGE=0,C_RATE=1,C_ACCUM_INPUT_MSB=32,C_ACCUM_MSB=32,C_ACCUM_LSB=-31,C_HAS_UNDERFLOW=0,C_HAS_OVERFLOW=0,C_HAS_INVALID_OP=0,C_HAS_DIVIDE_BY_ZERO=0,C_HAS_ACCUM_OVERFLOW=0,C_HAS_ACCUM_INPUT_OVERFLOW=0,C_HAS_ACLKEN=0,C_HAS_ARESETN=1,C_THROTTLE_SCHEME=1,C_HAS_A_TUSER=1,C_HAS_A_TLAST=1,C_HAS_B=0,C_HAS_B_TUSER=0,C_HAS_B_TLAST=0,C_HAS_C=0,C_HAS_C_TUSER=0,C_HAS_C_TLAST=0,C_HAS_OPERATION=0,C_HAS_OPERATION_TUSER=0,C_HAS_OPERATION_TLAST=0,C_HAS_RESULT_TUSER=1,C_HAS_RESULT_TLAST=1,C_TLAST_RESOLUTION=1,C_A_TDATA_WIDTH=24,C_A_TUSER_WIDTH=4,C_B_TDATA_WIDTH=24,C_B_TUSER_WIDTH=1,C_C_TDATA_WIDTH=24,C_C_TUSER_WIDTH=1,C_OPERATION_TDATA_WIDTH=8,C_OPERATION_TUSER_WIDTH=1,C_RESULT_TDATA_WIDTH=32,C_RESULT_TUSER_WIDTH=4}";
end ip_axis_fi16tofp32;

architecture STRUCTURE of ip_axis_fi16tofp32 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal NLW_U0_s_axis_b_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axis_c_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axis_operation_tready_UNCONNECTED : STD_LOGIC;
  attribute C_ACCUM_INPUT_MSB : integer;
  attribute C_ACCUM_INPUT_MSB of U0 : label is 32;
  attribute C_ACCUM_LSB : integer;
  attribute C_ACCUM_LSB of U0 : label is -31;
  attribute C_ACCUM_MSB : integer;
  attribute C_ACCUM_MSB of U0 : label is 32;
  attribute C_A_FRACTION_WIDTH : integer;
  attribute C_A_FRACTION_WIDTH of U0 : label is 0;
  attribute C_A_TDATA_WIDTH : integer;
  attribute C_A_TDATA_WIDTH of U0 : label is 24;
  attribute C_A_TUSER_WIDTH : integer;
  attribute C_A_TUSER_WIDTH of U0 : label is 4;
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of U0 : label is 17;
  attribute C_BRAM_USAGE : integer;
  attribute C_BRAM_USAGE of U0 : label is 0;
  attribute C_B_FRACTION_WIDTH : integer;
  attribute C_B_FRACTION_WIDTH of U0 : label is 0;
  attribute C_B_TDATA_WIDTH : integer;
  attribute C_B_TDATA_WIDTH of U0 : label is 24;
  attribute C_B_TUSER_WIDTH : integer;
  attribute C_B_TUSER_WIDTH of U0 : label is 1;
  attribute C_B_WIDTH : integer;
  attribute C_B_WIDTH of U0 : label is 17;
  attribute C_COMPARE_OPERATION : integer;
  attribute C_COMPARE_OPERATION of U0 : label is 8;
  attribute C_C_FRACTION_WIDTH : integer;
  attribute C_C_FRACTION_WIDTH of U0 : label is 0;
  attribute C_C_TDATA_WIDTH : integer;
  attribute C_C_TDATA_WIDTH of U0 : label is 24;
  attribute C_C_TUSER_WIDTH : integer;
  attribute C_C_TUSER_WIDTH of U0 : label is 1;
  attribute C_C_WIDTH : integer;
  attribute C_C_WIDTH of U0 : label is 17;
  attribute C_HAS_ABSOLUTE : integer;
  attribute C_HAS_ABSOLUTE of U0 : label is 0;
  attribute C_HAS_ACCUMULATOR_A : integer;
  attribute C_HAS_ACCUMULATOR_A of U0 : label is 0;
  attribute C_HAS_ACCUMULATOR_S : integer;
  attribute C_HAS_ACCUMULATOR_S of U0 : label is 0;
  attribute C_HAS_ACCUM_INPUT_OVERFLOW : integer;
  attribute C_HAS_ACCUM_INPUT_OVERFLOW of U0 : label is 0;
  attribute C_HAS_ACCUM_OVERFLOW : integer;
  attribute C_HAS_ACCUM_OVERFLOW of U0 : label is 0;
  attribute C_HAS_ACLKEN : integer;
  attribute C_HAS_ACLKEN of U0 : label is 0;
  attribute C_HAS_ADD : integer;
  attribute C_HAS_ADD of U0 : label is 0;
  attribute C_HAS_ARESETN : integer;
  attribute C_HAS_ARESETN of U0 : label is 1;
  attribute C_HAS_A_TLAST : integer;
  attribute C_HAS_A_TLAST of U0 : label is 1;
  attribute C_HAS_A_TUSER : integer;
  attribute C_HAS_A_TUSER of U0 : label is 1;
  attribute C_HAS_B : integer;
  attribute C_HAS_B of U0 : label is 0;
  attribute C_HAS_B_TLAST : integer;
  attribute C_HAS_B_TLAST of U0 : label is 0;
  attribute C_HAS_B_TUSER : integer;
  attribute C_HAS_B_TUSER of U0 : label is 0;
  attribute C_HAS_C : integer;
  attribute C_HAS_C of U0 : label is 0;
  attribute C_HAS_COMPARE : integer;
  attribute C_HAS_COMPARE of U0 : label is 0;
  attribute C_HAS_C_TLAST : integer;
  attribute C_HAS_C_TLAST of U0 : label is 0;
  attribute C_HAS_C_TUSER : integer;
  attribute C_HAS_C_TUSER of U0 : label is 0;
  attribute C_HAS_DIVIDE : integer;
  attribute C_HAS_DIVIDE of U0 : label is 0;
  attribute C_HAS_DIVIDE_BY_ZERO : integer;
  attribute C_HAS_DIVIDE_BY_ZERO of U0 : label is 0;
  attribute C_HAS_EXPONENTIAL : integer;
  attribute C_HAS_EXPONENTIAL of U0 : label is 0;
  attribute C_HAS_FIX_TO_FLT : integer;
  attribute C_HAS_FIX_TO_FLT of U0 : label is 1;
  attribute C_HAS_FLT_TO_FIX : integer;
  attribute C_HAS_FLT_TO_FIX of U0 : label is 0;
  attribute C_HAS_FLT_TO_FLT : integer;
  attribute C_HAS_FLT_TO_FLT of U0 : label is 0;
  attribute C_HAS_FMA : integer;
  attribute C_HAS_FMA of U0 : label is 0;
  attribute C_HAS_FMS : integer;
  attribute C_HAS_FMS of U0 : label is 0;
  attribute C_HAS_INVALID_OP : integer;
  attribute C_HAS_INVALID_OP of U0 : label is 0;
  attribute C_HAS_LOGARITHM : integer;
  attribute C_HAS_LOGARITHM of U0 : label is 0;
  attribute C_HAS_MULTIPLY : integer;
  attribute C_HAS_MULTIPLY of U0 : label is 0;
  attribute C_HAS_OPERATION : integer;
  attribute C_HAS_OPERATION of U0 : label is 0;
  attribute C_HAS_OPERATION_TLAST : integer;
  attribute C_HAS_OPERATION_TLAST of U0 : label is 0;
  attribute C_HAS_OPERATION_TUSER : integer;
  attribute C_HAS_OPERATION_TUSER of U0 : label is 0;
  attribute C_HAS_OVERFLOW : integer;
  attribute C_HAS_OVERFLOW of U0 : label is 0;
  attribute C_HAS_RECIP : integer;
  attribute C_HAS_RECIP of U0 : label is 0;
  attribute C_HAS_RECIP_SQRT : integer;
  attribute C_HAS_RECIP_SQRT of U0 : label is 0;
  attribute C_HAS_RESULT_TLAST : integer;
  attribute C_HAS_RESULT_TLAST of U0 : label is 1;
  attribute C_HAS_RESULT_TUSER : integer;
  attribute C_HAS_RESULT_TUSER of U0 : label is 1;
  attribute C_HAS_SQRT : integer;
  attribute C_HAS_SQRT of U0 : label is 0;
  attribute C_HAS_SUBTRACT : integer;
  attribute C_HAS_SUBTRACT of U0 : label is 0;
  attribute C_HAS_UNDERFLOW : integer;
  attribute C_HAS_UNDERFLOW of U0 : label is 0;
  attribute C_LATENCY : integer;
  attribute C_LATENCY of U0 : label is 7;
  attribute C_MULT_USAGE : integer;
  attribute C_MULT_USAGE of U0 : label is 0;
  attribute C_OPERATION_TDATA_WIDTH : integer;
  attribute C_OPERATION_TDATA_WIDTH of U0 : label is 8;
  attribute C_OPERATION_TUSER_WIDTH : integer;
  attribute C_OPERATION_TUSER_WIDTH of U0 : label is 1;
  attribute C_OPTIMIZATION : integer;
  attribute C_OPTIMIZATION of U0 : label is 1;
  attribute C_RATE : integer;
  attribute C_RATE of U0 : label is 1;
  attribute C_RESULT_FRACTION_WIDTH : integer;
  attribute C_RESULT_FRACTION_WIDTH of U0 : label is 24;
  attribute C_RESULT_TDATA_WIDTH : integer;
  attribute C_RESULT_TDATA_WIDTH of U0 : label is 32;
  attribute C_RESULT_TUSER_WIDTH : integer;
  attribute C_RESULT_TUSER_WIDTH of U0 : label is 4;
  attribute C_RESULT_WIDTH : integer;
  attribute C_RESULT_WIDTH of U0 : label is 32;
  attribute C_THROTTLE_SCHEME : integer;
  attribute C_THROTTLE_SCHEME of U0 : label is 1;
  attribute C_TLAST_RESOLUTION : integer;
  attribute C_TLAST_RESOLUTION of U0 : label is 1;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of U0 : label is "kintex7";
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of U0 : label is true;
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
begin
GND: unisim.vcomponents.GND
    port map (
      G => \<const0>\
    );
U0: entity work.\ip_axis_fi16tofp32floating_point_v7_0__parameterized0\
    port map (
      aclk => aclk,
      aclken => \<const1>\,
      aresetn => aresetn,
      m_axis_result_tdata(31 downto 0) => m_axis_result_tdata(31 downto 0),
      m_axis_result_tlast => m_axis_result_tlast,
      m_axis_result_tready => m_axis_result_tready,
      m_axis_result_tuser(3 downto 0) => m_axis_result_tuser(3 downto 0),
      m_axis_result_tvalid => m_axis_result_tvalid,
      s_axis_a_tdata(23 downto 0) => s_axis_a_tdata(23 downto 0),
      s_axis_a_tlast => s_axis_a_tlast,
      s_axis_a_tready => s_axis_a_tready,
      s_axis_a_tuser(3 downto 0) => s_axis_a_tuser(3 downto 0),
      s_axis_a_tvalid => s_axis_a_tvalid,
      s_axis_b_tdata(23) => \<const0>\,
      s_axis_b_tdata(22) => \<const0>\,
      s_axis_b_tdata(21) => \<const0>\,
      s_axis_b_tdata(20) => \<const0>\,
      s_axis_b_tdata(19) => \<const0>\,
      s_axis_b_tdata(18) => \<const0>\,
      s_axis_b_tdata(17) => \<const0>\,
      s_axis_b_tdata(16) => \<const0>\,
      s_axis_b_tdata(15) => \<const0>\,
      s_axis_b_tdata(14) => \<const0>\,
      s_axis_b_tdata(13) => \<const0>\,
      s_axis_b_tdata(12) => \<const0>\,
      s_axis_b_tdata(11) => \<const0>\,
      s_axis_b_tdata(10) => \<const0>\,
      s_axis_b_tdata(9) => \<const0>\,
      s_axis_b_tdata(8) => \<const0>\,
      s_axis_b_tdata(7) => \<const0>\,
      s_axis_b_tdata(6) => \<const0>\,
      s_axis_b_tdata(5) => \<const0>\,
      s_axis_b_tdata(4) => \<const0>\,
      s_axis_b_tdata(3) => \<const0>\,
      s_axis_b_tdata(2) => \<const0>\,
      s_axis_b_tdata(1) => \<const0>\,
      s_axis_b_tdata(0) => \<const0>\,
      s_axis_b_tlast => \<const0>\,
      s_axis_b_tready => NLW_U0_s_axis_b_tready_UNCONNECTED,
      s_axis_b_tuser(0) => \<const0>\,
      s_axis_b_tvalid => \<const0>\,
      s_axis_c_tdata(23) => \<const0>\,
      s_axis_c_tdata(22) => \<const0>\,
      s_axis_c_tdata(21) => \<const0>\,
      s_axis_c_tdata(20) => \<const0>\,
      s_axis_c_tdata(19) => \<const0>\,
      s_axis_c_tdata(18) => \<const0>\,
      s_axis_c_tdata(17) => \<const0>\,
      s_axis_c_tdata(16) => \<const0>\,
      s_axis_c_tdata(15) => \<const0>\,
      s_axis_c_tdata(14) => \<const0>\,
      s_axis_c_tdata(13) => \<const0>\,
      s_axis_c_tdata(12) => \<const0>\,
      s_axis_c_tdata(11) => \<const0>\,
      s_axis_c_tdata(10) => \<const0>\,
      s_axis_c_tdata(9) => \<const0>\,
      s_axis_c_tdata(8) => \<const0>\,
      s_axis_c_tdata(7) => \<const0>\,
      s_axis_c_tdata(6) => \<const0>\,
      s_axis_c_tdata(5) => \<const0>\,
      s_axis_c_tdata(4) => \<const0>\,
      s_axis_c_tdata(3) => \<const0>\,
      s_axis_c_tdata(2) => \<const0>\,
      s_axis_c_tdata(1) => \<const0>\,
      s_axis_c_tdata(0) => \<const0>\,
      s_axis_c_tlast => \<const0>\,
      s_axis_c_tready => NLW_U0_s_axis_c_tready_UNCONNECTED,
      s_axis_c_tuser(0) => \<const0>\,
      s_axis_c_tvalid => \<const0>\,
      s_axis_operation_tdata(7) => \<const0>\,
      s_axis_operation_tdata(6) => \<const0>\,
      s_axis_operation_tdata(5) => \<const0>\,
      s_axis_operation_tdata(4) => \<const0>\,
      s_axis_operation_tdata(3) => \<const0>\,
      s_axis_operation_tdata(2) => \<const0>\,
      s_axis_operation_tdata(1) => \<const0>\,
      s_axis_operation_tdata(0) => \<const0>\,
      s_axis_operation_tlast => \<const0>\,
      s_axis_operation_tready => NLW_U0_s_axis_operation_tready_UNCONNECTED,
      s_axis_operation_tuser(0) => \<const0>\,
      s_axis_operation_tvalid => \<const0>\
    );
VCC: unisim.vcomponents.VCC
    port map (
      P => \<const1>\
    );
end STRUCTURE;
