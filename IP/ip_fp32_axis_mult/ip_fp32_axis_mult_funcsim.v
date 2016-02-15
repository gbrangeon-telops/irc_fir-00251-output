// Copyright 1986-1999, 2001-2013 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2013.4 (win64) Build 353583 Mon Dec  9 17:49:19 MST 2013
// Date        : Tue Nov 17 10:34:13 2015
// Host        : TELOPSX running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim
//               d:/Telops/fir-00251-Output/IP/ip_fp32_axis_mult/ip_fp32_axis_mult_funcsim.v
// Design      : ip_fp32_axis_mult
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k70tfbg676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "floating_point_v7_0,Vivado 2013.4" *) (* CHECK_LICENSE_TYPE = "ip_fp32_axis_mult,floating_point_v7_0,{}" *) 
(* core_generation_info = "ip_fp32_axis_mult,floating_point_v7_0,{x_ipProduct=Vivado 2013.4,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=floating_point,x_ipVersion=7.0,x_ipCoreRevision=3,x_ipLanguage=VHDL,C_XDEVICEFAMILY=kintex7,C_HAS_ADD=0,C_HAS_SUBTRACT=0,C_HAS_MULTIPLY=1,C_HAS_DIVIDE=0,C_HAS_SQRT=0,C_HAS_COMPARE=0,C_HAS_FIX_TO_FLT=0,C_HAS_FLT_TO_FIX=0,C_HAS_FLT_TO_FLT=0,C_HAS_RECIP=0,C_HAS_RECIP_SQRT=0,C_HAS_ABSOLUTE=0,C_HAS_LOGARITHM=0,C_HAS_EXPONENTIAL=0,C_HAS_FMA=0,C_HAS_FMS=0,C_HAS_ACCUMULATOR_A=0,C_HAS_ACCUMULATOR_S=0,C_A_WIDTH=32,C_A_FRACTION_WIDTH=24,C_B_WIDTH=32,C_B_FRACTION_WIDTH=24,C_C_WIDTH=32,C_C_FRACTION_WIDTH=24,C_RESULT_WIDTH=32,C_RESULT_FRACTION_WIDTH=24,C_COMPARE_OPERATION=8,C_LATENCY=11,C_OPTIMIZATION=1,C_MULT_USAGE=2,C_BRAM_USAGE=0,C_RATE=1,C_ACCUM_INPUT_MSB=32,C_ACCUM_MSB=32,C_ACCUM_LSB=-31,C_HAS_UNDERFLOW=1,C_HAS_OVERFLOW=1,C_HAS_INVALID_OP=1,C_HAS_DIVIDE_BY_ZERO=0,C_HAS_ACCUM_OVERFLOW=0,C_HAS_ACCUM_INPUT_OVERFLOW=0,C_HAS_ACLKEN=0,C_HAS_ARESETN=1,C_THROTTLE_SCHEME=2,C_HAS_A_TUSER=1,C_HAS_A_TLAST=1,C_HAS_B=1,C_HAS_B_TUSER=1,C_HAS_B_TLAST=1,C_HAS_C=0,C_HAS_C_TUSER=0,C_HAS_C_TLAST=0,C_HAS_OPERATION=0,C_HAS_OPERATION_TUSER=0,C_HAS_OPERATION_TLAST=0,C_HAS_RESULT_TUSER=1,C_HAS_RESULT_TLAST=1,C_TLAST_RESOLUTION=1,C_A_TDATA_WIDTH=32,C_A_TUSER_WIDTH=8,C_B_TDATA_WIDTH=32,C_B_TUSER_WIDTH=8,C_C_TDATA_WIDTH=32,C_C_TUSER_WIDTH=1,C_OPERATION_TDATA_WIDTH=8,C_OPERATION_TUSER_WIDTH=1,C_RESULT_TDATA_WIDTH=32,C_RESULT_TUSER_WIDTH=19}" *) 
(* NotValidForBitStream *)
module ip_fp32_axis_mult
   (aclk,
    aresetn,
    s_axis_a_tvalid,
    s_axis_a_tready,
    s_axis_a_tdata,
    s_axis_a_tuser,
    s_axis_a_tlast,
    s_axis_b_tvalid,
    s_axis_b_tready,
    s_axis_b_tdata,
    s_axis_b_tuser,
    s_axis_b_tlast,
    m_axis_result_tvalid,
    m_axis_result_tready,
    m_axis_result_tdata,
    m_axis_result_tuser,
    m_axis_result_tlast);
  input aclk;
  input aresetn;
  input s_axis_a_tvalid;
  output s_axis_a_tready;
  input [31:0]s_axis_a_tdata;
  input [7:0]s_axis_a_tuser;
  input s_axis_a_tlast;
  input s_axis_b_tvalid;
  output s_axis_b_tready;
  input [31:0]s_axis_b_tdata;
  input [7:0]s_axis_b_tuser;
  input s_axis_b_tlast;
  output m_axis_result_tvalid;
  input m_axis_result_tready;
  output [31:0]m_axis_result_tdata;
  output [18:0]m_axis_result_tuser;
  output m_axis_result_tlast;

  wire \<const0> ;
  wire \<const1> ;
  wire aclk;
  wire aresetn;
  wire [31:0]m_axis_result_tdata;
  wire m_axis_result_tlast;
  wire m_axis_result_tready;
  wire [18:0]m_axis_result_tuser;
  wire m_axis_result_tvalid;
  wire [31:0]s_axis_a_tdata;
  wire s_axis_a_tlast;
  wire s_axis_a_tready;
  wire [7:0]s_axis_a_tuser;
  wire s_axis_a_tvalid;
  wire [31:0]s_axis_b_tdata;
  wire s_axis_b_tlast;
  wire s_axis_b_tready;
  wire [7:0]s_axis_b_tuser;
  wire s_axis_b_tvalid;
  wire NLW_U0_s_axis_c_tready_UNCONNECTED;
  wire NLW_U0_s_axis_operation_tready_UNCONNECTED;

GND GND
       (.G(\<const0> ));
(* C_ACCUM_INPUT_MSB = "32" *) 
   (* C_ACCUM_LSB = "-31" *) 
   (* C_ACCUM_MSB = "32" *) 
   (* C_A_FRACTION_WIDTH = "24" *) 
   (* C_A_TDATA_WIDTH = "32" *) 
   (* C_A_TUSER_WIDTH = "8" *) 
   (* C_A_WIDTH = "32" *) 
   (* C_BRAM_USAGE = "0" *) 
   (* C_B_FRACTION_WIDTH = "24" *) 
   (* C_B_TDATA_WIDTH = "32" *) 
   (* C_B_TUSER_WIDTH = "8" *) 
   (* C_B_WIDTH = "32" *) 
   (* C_COMPARE_OPERATION = "8" *) 
   (* C_C_FRACTION_WIDTH = "24" *) 
   (* C_C_TDATA_WIDTH = "32" *) 
   (* C_C_TUSER_WIDTH = "1" *) 
   (* C_C_WIDTH = "32" *) 
   (* C_HAS_ABSOLUTE = "0" *) 
   (* C_HAS_ACCUMULATOR_A = "0" *) 
   (* C_HAS_ACCUMULATOR_S = "0" *) 
   (* C_HAS_ACCUM_INPUT_OVERFLOW = "0" *) 
   (* C_HAS_ACCUM_OVERFLOW = "0" *) 
   (* C_HAS_ACLKEN = "0" *) 
   (* C_HAS_ADD = "0" *) 
   (* C_HAS_ARESETN = "1" *) 
   (* C_HAS_A_TLAST = "1" *) 
   (* C_HAS_A_TUSER = "1" *) 
   (* C_HAS_B = "1" *) 
   (* C_HAS_B_TLAST = "1" *) 
   (* C_HAS_B_TUSER = "1" *) 
   (* C_HAS_C = "0" *) 
   (* C_HAS_COMPARE = "0" *) 
   (* C_HAS_C_TLAST = "0" *) 
   (* C_HAS_C_TUSER = "0" *) 
   (* C_HAS_DIVIDE = "0" *) 
   (* C_HAS_DIVIDE_BY_ZERO = "0" *) 
   (* C_HAS_EXPONENTIAL = "0" *) 
   (* C_HAS_FIX_TO_FLT = "0" *) 
   (* C_HAS_FLT_TO_FIX = "0" *) 
   (* C_HAS_FLT_TO_FLT = "0" *) 
   (* C_HAS_FMA = "0" *) 
   (* C_HAS_FMS = "0" *) 
   (* C_HAS_INVALID_OP = "1" *) 
   (* C_HAS_LOGARITHM = "0" *) 
   (* C_HAS_MULTIPLY = "1" *) 
   (* C_HAS_OPERATION = "0" *) 
   (* C_HAS_OPERATION_TLAST = "0" *) 
   (* C_HAS_OPERATION_TUSER = "0" *) 
   (* C_HAS_OVERFLOW = "1" *) 
   (* C_HAS_RECIP = "0" *) 
   (* C_HAS_RECIP_SQRT = "0" *) 
   (* C_HAS_RESULT_TLAST = "1" *) 
   (* C_HAS_RESULT_TUSER = "1" *) 
   (* C_HAS_SQRT = "0" *) 
   (* C_HAS_SUBTRACT = "0" *) 
   (* C_HAS_UNDERFLOW = "1" *) 
   (* C_LATENCY = "11" *) 
   (* C_MULT_USAGE = "2" *) 
   (* C_OPERATION_TDATA_WIDTH = "8" *) 
   (* C_OPERATION_TUSER_WIDTH = "1" *) 
   (* C_OPTIMIZATION = "1" *) 
   (* C_RATE = "1" *) 
   (* C_RESULT_FRACTION_WIDTH = "24" *) 
   (* C_RESULT_TDATA_WIDTH = "32" *) 
   (* C_RESULT_TUSER_WIDTH = "19" *) 
   (* C_RESULT_WIDTH = "32" *) 
   (* C_THROTTLE_SCHEME = "2" *) 
   (* C_TLAST_RESOLUTION = "1" *) 
   (* C_XDEVICEFAMILY = "kintex7" *) 
   (* DONT_TOUCH *) 
   (* downgradeipidentifiedwarnings = "yes" *) 
   ip_fp32_axis_multfloating_point_v7_0__parameterized0 U0
       (.aclk(aclk),
        .aclken(\<const1> ),
        .aresetn(aresetn),
        .m_axis_result_tdata(m_axis_result_tdata),
        .m_axis_result_tlast(m_axis_result_tlast),
        .m_axis_result_tready(m_axis_result_tready),
        .m_axis_result_tuser(m_axis_result_tuser),
        .m_axis_result_tvalid(m_axis_result_tvalid),
        .s_axis_a_tdata(s_axis_a_tdata),
        .s_axis_a_tlast(s_axis_a_tlast),
        .s_axis_a_tready(s_axis_a_tready),
        .s_axis_a_tuser(s_axis_a_tuser),
        .s_axis_a_tvalid(s_axis_a_tvalid),
        .s_axis_b_tdata(s_axis_b_tdata),
        .s_axis_b_tlast(s_axis_b_tlast),
        .s_axis_b_tready(s_axis_b_tready),
        .s_axis_b_tuser(s_axis_b_tuser),
        .s_axis_b_tvalid(s_axis_b_tvalid),
        .s_axis_c_tdata({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .s_axis_c_tlast(\<const0> ),
        .s_axis_c_tready(NLW_U0_s_axis_c_tready_UNCONNECTED),
        .s_axis_c_tuser(\<const0> ),
        .s_axis_c_tvalid(\<const0> ),
        .s_axis_operation_tdata({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .s_axis_operation_tlast(\<const0> ),
        .s_axis_operation_tready(NLW_U0_s_axis_operation_tready_UNCONNECTED),
        .s_axis_operation_tuser(\<const0> ),
        .s_axis_operation_tvalid(\<const0> ));
VCC VCC
       (.P(\<const1> ));
endmodule

(* ORIG_REF_NAME = "floating_point_v7_0" *) (* C_XDEVICEFAMILY = "kintex7" *) (* C_HAS_ADD = "0" *) 
(* C_HAS_SUBTRACT = "0" *) (* C_HAS_MULTIPLY = "1" *) (* C_HAS_DIVIDE = "0" *) 
(* C_HAS_SQRT = "0" *) (* C_HAS_COMPARE = "0" *) (* C_HAS_FIX_TO_FLT = "0" *) 
(* C_HAS_FLT_TO_FIX = "0" *) (* C_HAS_FLT_TO_FLT = "0" *) (* C_HAS_RECIP = "0" *) 
(* C_HAS_RECIP_SQRT = "0" *) (* C_HAS_ABSOLUTE = "0" *) (* C_HAS_LOGARITHM = "0" *) 
(* C_HAS_EXPONENTIAL = "0" *) (* C_HAS_FMA = "0" *) (* C_HAS_FMS = "0" *) 
(* C_HAS_ACCUMULATOR_A = "0" *) (* C_HAS_ACCUMULATOR_S = "0" *) (* C_A_WIDTH = "32" *) 
(* C_A_FRACTION_WIDTH = "24" *) (* C_B_WIDTH = "32" *) (* C_B_FRACTION_WIDTH = "24" *) 
(* C_C_WIDTH = "32" *) (* C_C_FRACTION_WIDTH = "24" *) (* C_RESULT_WIDTH = "32" *) 
(* C_RESULT_FRACTION_WIDTH = "24" *) (* C_COMPARE_OPERATION = "8" *) (* C_LATENCY = "11" *) 
(* C_OPTIMIZATION = "1" *) (* C_MULT_USAGE = "2" *) (* C_BRAM_USAGE = "0" *) 
(* C_RATE = "1" *) (* C_ACCUM_INPUT_MSB = "32" *) (* C_ACCUM_MSB = "32" *) 
(* C_ACCUM_LSB = "-31" *) (* C_HAS_UNDERFLOW = "1" *) (* C_HAS_OVERFLOW = "1" *) 
(* C_HAS_INVALID_OP = "1" *) (* C_HAS_DIVIDE_BY_ZERO = "0" *) (* C_HAS_ACCUM_OVERFLOW = "0" *) 
(* C_HAS_ACCUM_INPUT_OVERFLOW = "0" *) (* C_HAS_ACLKEN = "0" *) (* C_HAS_ARESETN = "1" *) 
(* C_THROTTLE_SCHEME = "2" *) (* C_HAS_A_TUSER = "1" *) (* C_HAS_A_TLAST = "1" *) 
(* C_HAS_B = "1" *) (* C_HAS_B_TUSER = "1" *) (* C_HAS_B_TLAST = "1" *) 
(* C_HAS_C = "0" *) (* C_HAS_C_TUSER = "0" *) (* C_HAS_C_TLAST = "0" *) 
(* C_HAS_OPERATION = "0" *) (* C_HAS_OPERATION_TUSER = "0" *) (* C_HAS_OPERATION_TLAST = "0" *) 
(* C_HAS_RESULT_TUSER = "1" *) (* C_HAS_RESULT_TLAST = "1" *) (* C_TLAST_RESOLUTION = "1" *) 
(* C_A_TDATA_WIDTH = "32" *) (* C_A_TUSER_WIDTH = "8" *) (* C_B_TDATA_WIDTH = "32" *) 
(* C_B_TUSER_WIDTH = "8" *) (* C_C_TDATA_WIDTH = "32" *) (* C_C_TUSER_WIDTH = "1" *) 
(* C_OPERATION_TDATA_WIDTH = "8" *) (* C_OPERATION_TUSER_WIDTH = "1" *) (* C_RESULT_TDATA_WIDTH = "32" *) 
(* C_RESULT_TUSER_WIDTH = "19" *) (* downgradeipidentifiedwarnings = "yes" *) 
module ip_fp32_axis_multfloating_point_v7_0__parameterized0
   (aclk,
    aclken,
    aresetn,
    s_axis_a_tvalid,
    s_axis_a_tready,
    s_axis_a_tdata,
    s_axis_a_tuser,
    s_axis_a_tlast,
    s_axis_b_tvalid,
    s_axis_b_tready,
    s_axis_b_tdata,
    s_axis_b_tuser,
    s_axis_b_tlast,
    s_axis_c_tvalid,
    s_axis_c_tready,
    s_axis_c_tdata,
    s_axis_c_tuser,
    s_axis_c_tlast,
    s_axis_operation_tvalid,
    s_axis_operation_tready,
    s_axis_operation_tdata,
    s_axis_operation_tuser,
    s_axis_operation_tlast,
    m_axis_result_tvalid,
    m_axis_result_tready,
    m_axis_result_tdata,
    m_axis_result_tuser,
    m_axis_result_tlast);
  input aclk;
  input aclken;
  input aresetn;
  input s_axis_a_tvalid;
  output s_axis_a_tready;
  input [31:0]s_axis_a_tdata;
  input [7:0]s_axis_a_tuser;
  input s_axis_a_tlast;
  input s_axis_b_tvalid;
  output s_axis_b_tready;
  input [31:0]s_axis_b_tdata;
  input [7:0]s_axis_b_tuser;
  input s_axis_b_tlast;
  input s_axis_c_tvalid;
  output s_axis_c_tready;
  input [31:0]s_axis_c_tdata;
  input [0:0]s_axis_c_tuser;
  input s_axis_c_tlast;
  input s_axis_operation_tvalid;
  output s_axis_operation_tready;
  input [7:0]s_axis_operation_tdata;
  input [0:0]s_axis_operation_tuser;
  input s_axis_operation_tlast;
  output m_axis_result_tvalid;
  input m_axis_result_tready;
  output [31:0]m_axis_result_tdata;
  output [18:0]m_axis_result_tuser;
  output m_axis_result_tlast;

  wire aclk;
  wire aclken;
  wire aresetn;
  wire [31:0]m_axis_result_tdata;
  wire m_axis_result_tlast;
  wire m_axis_result_tready;
  wire [18:0]m_axis_result_tuser;
  wire m_axis_result_tvalid;
  wire [31:0]s_axis_a_tdata;
  wire s_axis_a_tlast;
  wire s_axis_a_tready;
  wire [7:0]s_axis_a_tuser;
  wire s_axis_a_tvalid;
  wire [31:0]s_axis_b_tdata;
  wire s_axis_b_tlast;
  wire s_axis_b_tready;
  wire [7:0]s_axis_b_tuser;
  wire s_axis_b_tvalid;
  wire [31:0]s_axis_c_tdata;
  wire s_axis_c_tlast;
  wire s_axis_c_tready;
  wire [0:0]s_axis_c_tuser;
  wire s_axis_c_tvalid;
  wire [7:0]s_axis_operation_tdata;
  wire s_axis_operation_tlast;
  wire s_axis_operation_tready;
  wire [0:0]s_axis_operation_tuser;
  wire s_axis_operation_tvalid;

(* C_ACCUM_INPUT_MSB = "32" *) 
   (* C_ACCUM_LSB = "-31" *) 
   (* C_ACCUM_MSB = "32" *) 
   (* C_A_FRACTION_WIDTH = "24" *) 
   (* C_A_TDATA_WIDTH = "32" *) 
   (* C_A_TUSER_WIDTH = "8" *) 
   (* C_A_WIDTH = "32" *) 
   (* C_BRAM_USAGE = "0" *) 
   (* C_B_FRACTION_WIDTH = "24" *) 
   (* C_B_TDATA_WIDTH = "32" *) 
   (* C_B_TUSER_WIDTH = "8" *) 
   (* C_B_WIDTH = "32" *) 
   (* C_COMPARE_OPERATION = "8" *) 
   (* C_C_FRACTION_WIDTH = "24" *) 
   (* C_C_TDATA_WIDTH = "32" *) 
   (* C_C_TUSER_WIDTH = "1" *) 
   (* C_C_WIDTH = "32" *) 
   (* C_HAS_ABSOLUTE = "0" *) 
   (* C_HAS_ACCUMULATOR_A = "0" *) 
   (* C_HAS_ACCUMULATOR_S = "0" *) 
   (* C_HAS_ACCUM_INPUT_OVERFLOW = "0" *) 
   (* C_HAS_ACCUM_OVERFLOW = "0" *) 
   (* C_HAS_ACLKEN = "0" *) 
   (* C_HAS_ADD = "0" *) 
   (* C_HAS_ARESETN = "1" *) 
   (* C_HAS_A_TLAST = "1" *) 
   (* C_HAS_A_TUSER = "1" *) 
   (* C_HAS_B = "1" *) 
   (* C_HAS_B_TLAST = "1" *) 
   (* C_HAS_B_TUSER = "1" *) 
   (* C_HAS_C = "0" *) 
   (* C_HAS_COMPARE = "0" *) 
   (* C_HAS_C_TLAST = "0" *) 
   (* C_HAS_C_TUSER = "0" *) 
   (* C_HAS_DIVIDE = "0" *) 
   (* C_HAS_DIVIDE_BY_ZERO = "0" *) 
   (* C_HAS_EXPONENTIAL = "0" *) 
   (* C_HAS_FIX_TO_FLT = "0" *) 
   (* C_HAS_FLT_TO_FIX = "0" *) 
   (* C_HAS_FLT_TO_FLT = "0" *) 
   (* C_HAS_FMA = "0" *) 
   (* C_HAS_FMS = "0" *) 
   (* C_HAS_INVALID_OP = "1" *) 
   (* C_HAS_LOGARITHM = "0" *) 
   (* C_HAS_MULTIPLY = "1" *) 
   (* C_HAS_OPERATION = "0" *) 
   (* C_HAS_OPERATION_TLAST = "0" *) 
   (* C_HAS_OPERATION_TUSER = "0" *) 
   (* C_HAS_OVERFLOW = "1" *) 
   (* C_HAS_RECIP = "0" *) 
   (* C_HAS_RECIP_SQRT = "0" *) 
   (* C_HAS_RESULT_TLAST = "1" *) 
   (* C_HAS_RESULT_TUSER = "1" *) 
   (* C_HAS_SQRT = "0" *) 
   (* C_HAS_SUBTRACT = "0" *) 
   (* C_HAS_UNDERFLOW = "1" *) 
   (* C_LATENCY = "11" *) 
   (* C_MULT_USAGE = "2" *) 
   (* C_OPERATION_TDATA_WIDTH = "8" *) 
   (* C_OPERATION_TUSER_WIDTH = "1" *) 
   (* C_OPTIMIZATION = "1" *) 
   (* C_RATE = "1" *) 
   (* C_RESULT_FRACTION_WIDTH = "24" *) 
   (* C_RESULT_TDATA_WIDTH = "32" *) 
   (* C_RESULT_TUSER_WIDTH = "19" *) 
   (* C_RESULT_WIDTH = "32" *) 
   (* C_THROTTLE_SCHEME = "2" *) 
   (* C_TLAST_RESOLUTION = "1" *) 
   (* C_XDEVICEFAMILY = "kintex7" *) 
   (* downgradeipidentifiedwarnings = "yes" *) 
   ip_fp32_axis_multfloating_point_v7_0_viv__parameterized0 i_synth
       (.aclk(aclk),
        .aclken(aclken),
        .aresetn(aresetn),
        .m_axis_result_tdata(m_axis_result_tdata),
        .m_axis_result_tlast(m_axis_result_tlast),
        .m_axis_result_tready(m_axis_result_tready),
        .m_axis_result_tuser(m_axis_result_tuser),
        .m_axis_result_tvalid(m_axis_result_tvalid),
        .s_axis_a_tdata(s_axis_a_tdata),
        .s_axis_a_tlast(s_axis_a_tlast),
        .s_axis_a_tready(s_axis_a_tready),
        .s_axis_a_tuser(s_axis_a_tuser),
        .s_axis_a_tvalid(s_axis_a_tvalid),
        .s_axis_b_tdata(s_axis_b_tdata),
        .s_axis_b_tlast(s_axis_b_tlast),
        .s_axis_b_tready(s_axis_b_tready),
        .s_axis_b_tuser(s_axis_b_tuser),
        .s_axis_b_tvalid(s_axis_b_tvalid),
        .s_axis_c_tdata(s_axis_c_tdata),
        .s_axis_c_tlast(s_axis_c_tlast),
        .s_axis_c_tready(s_axis_c_tready),
        .s_axis_c_tuser(s_axis_c_tuser),
        .s_axis_c_tvalid(s_axis_c_tvalid),
        .s_axis_operation_tdata(s_axis_operation_tdata),
        .s_axis_operation_tlast(s_axis_operation_tlast),
        .s_axis_operation_tready(s_axis_operation_tready),
        .s_axis_operation_tuser(s_axis_operation_tuser),
        .s_axis_operation_tvalid(s_axis_operation_tvalid));
endmodule

(* ORIG_REF_NAME = "floating_point_v7_0_viv" *) (* C_XDEVICEFAMILY = "kintex7" *) (* C_HAS_ADD = "0" *) 
(* C_HAS_SUBTRACT = "0" *) (* C_HAS_MULTIPLY = "1" *) (* C_HAS_DIVIDE = "0" *) 
(* C_HAS_SQRT = "0" *) (* C_HAS_COMPARE = "0" *) (* C_HAS_FIX_TO_FLT = "0" *) 
(* C_HAS_FLT_TO_FIX = "0" *) (* C_HAS_FLT_TO_FLT = "0" *) (* C_HAS_RECIP = "0" *) 
(* C_HAS_RECIP_SQRT = "0" *) (* C_HAS_ABSOLUTE = "0" *) (* C_HAS_LOGARITHM = "0" *) 
(* C_HAS_EXPONENTIAL = "0" *) (* C_HAS_FMA = "0" *) (* C_HAS_FMS = "0" *) 
(* C_HAS_ACCUMULATOR_A = "0" *) (* C_HAS_ACCUMULATOR_S = "0" *) (* C_A_WIDTH = "32" *) 
(* C_A_FRACTION_WIDTH = "24" *) (* C_B_WIDTH = "32" *) (* C_B_FRACTION_WIDTH = "24" *) 
(* C_C_WIDTH = "32" *) (* C_C_FRACTION_WIDTH = "24" *) (* C_RESULT_WIDTH = "32" *) 
(* C_RESULT_FRACTION_WIDTH = "24" *) (* C_COMPARE_OPERATION = "8" *) (* C_LATENCY = "11" *) 
(* C_OPTIMIZATION = "1" *) (* C_MULT_USAGE = "2" *) (* C_BRAM_USAGE = "0" *) 
(* C_RATE = "1" *) (* C_ACCUM_INPUT_MSB = "32" *) (* C_ACCUM_MSB = "32" *) 
(* C_ACCUM_LSB = "-31" *) (* C_HAS_UNDERFLOW = "1" *) (* C_HAS_OVERFLOW = "1" *) 
(* C_HAS_INVALID_OP = "1" *) (* C_HAS_DIVIDE_BY_ZERO = "0" *) (* C_HAS_ACCUM_OVERFLOW = "0" *) 
(* C_HAS_ACCUM_INPUT_OVERFLOW = "0" *) (* C_HAS_ACLKEN = "0" *) (* C_HAS_ARESETN = "1" *) 
(* C_THROTTLE_SCHEME = "2" *) (* C_HAS_A_TUSER = "1" *) (* C_HAS_A_TLAST = "1" *) 
(* C_HAS_B = "1" *) (* C_HAS_B_TUSER = "1" *) (* C_HAS_B_TLAST = "1" *) 
(* C_HAS_C = "0" *) (* C_HAS_C_TUSER = "0" *) (* C_HAS_C_TLAST = "0" *) 
(* C_HAS_OPERATION = "0" *) (* C_HAS_OPERATION_TUSER = "0" *) (* C_HAS_OPERATION_TLAST = "0" *) 
(* C_HAS_RESULT_TUSER = "1" *) (* C_HAS_RESULT_TLAST = "1" *) (* C_TLAST_RESOLUTION = "1" *) 
(* C_A_TDATA_WIDTH = "32" *) (* C_A_TUSER_WIDTH = "8" *) (* C_B_TDATA_WIDTH = "32" *) 
(* C_B_TUSER_WIDTH = "8" *) (* C_C_TDATA_WIDTH = "32" *) (* C_C_TUSER_WIDTH = "1" *) 
(* C_OPERATION_TDATA_WIDTH = "8" *) (* C_OPERATION_TUSER_WIDTH = "1" *) (* C_RESULT_TDATA_WIDTH = "32" *) 
(* C_RESULT_TUSER_WIDTH = "19" *) (* downgradeipidentifiedwarnings = "yes" *) 
module ip_fp32_axis_multfloating_point_v7_0_viv__parameterized0
   (aclk,
    aclken,
    aresetn,
    s_axis_a_tvalid,
    s_axis_a_tready,
    s_axis_a_tdata,
    s_axis_a_tuser,
    s_axis_a_tlast,
    s_axis_b_tvalid,
    s_axis_b_tready,
    s_axis_b_tdata,
    s_axis_b_tuser,
    s_axis_b_tlast,
    s_axis_c_tvalid,
    s_axis_c_tready,
    s_axis_c_tdata,
    s_axis_c_tuser,
    s_axis_c_tlast,
    s_axis_operation_tvalid,
    s_axis_operation_tready,
    s_axis_operation_tdata,
    s_axis_operation_tuser,
    s_axis_operation_tlast,
    m_axis_result_tvalid,
    m_axis_result_tready,
    m_axis_result_tdata,
    m_axis_result_tuser,
    m_axis_result_tlast);
  input aclk;
  input aclken;
  input aresetn;
  input s_axis_a_tvalid;
  output s_axis_a_tready;
  input [31:0]s_axis_a_tdata;
  input [7:0]s_axis_a_tuser;
  input s_axis_a_tlast;
  input s_axis_b_tvalid;
  output s_axis_b_tready;
  input [31:0]s_axis_b_tdata;
  input [7:0]s_axis_b_tuser;
  input s_axis_b_tlast;
  input s_axis_c_tvalid;
  output s_axis_c_tready;
  input [31:0]s_axis_c_tdata;
  input [0:0]s_axis_c_tuser;
  input s_axis_c_tlast;
  input s_axis_operation_tvalid;
  output s_axis_operation_tready;
  input [7:0]s_axis_operation_tdata;
  input [0:0]s_axis_operation_tuser;
  input s_axis_operation_tlast;
  output m_axis_result_tvalid;
  input m_axis_result_tready;
  output [31:0]m_axis_result_tdata;
  output [18:0]m_axis_result_tuser;
  output m_axis_result_tlast;

  wire \<const0> ;
  wire \<const1> ;
  wire GND_2;
(* RTL_KEEP = "true" *)   wire \MULT.OP/EXP/COND_DET_A/EXP_DET_LUT.EXP_ALL_ONE_DEL/i_pipe/first_q ;
(* RTL_KEEP = "true" *)   wire \MULT.OP/EXP/COND_DET_A/EXP_DET_LUT.EXP_ALL_ZERO_DEL/i_pipe/first_q ;
  wire \MULT.OP/EXP/COND_DET_A/MANT_CARRY.MANT_ALL_ZERO_DET/CARRY_ZERO_DET/D ;
  wire [3:0]\MULT.OP/EXP/COND_DET_A/MANT_CARRY.MANT_ALL_ZERO_DET/chunk_det ;
  wire \MULT.OP/EXP/COND_DET_A/exp_all_one_ip ;
  wire \MULT.OP/EXP/COND_DET_A/exp_all_zero_ip ;
(* RTL_KEEP = "true" *)   wire \MULT.OP/EXP/COND_DET_B/EXP_DET_LUT.EXP_ALL_ONE_DEL/i_pipe/first_q ;
(* RTL_KEEP = "true" *)   wire \MULT.OP/EXP/COND_DET_B/EXP_DET_LUT.EXP_ALL_ZERO_DEL/i_pipe/first_q ;
  wire \MULT.OP/EXP/COND_DET_B/MANT_CARRY.MANT_ALL_ZERO_DET/CARRY_ZERO_DET/D ;
  wire [3:0]\MULT.OP/EXP/COND_DET_B/MANT_CARRY.MANT_ALL_ZERO_DET/chunk_det ;
  wire \MULT.OP/EXP/COND_DET_B/exp_all_one_ip ;
  wire \MULT.OP/EXP/COND_DET_B/exp_all_zero_ip ;
  wire [6:0]\MULT.OP/EXP/EXP_ADD.C_CHAIN/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/first_q ;
  wire \MULT.OP/EXP/EXP_ADD.C_CHAIN/CI ;
  wire \MULT.OP/EXP/EXP_ADD.C_CHAIN/D ;
  wire \MULT.OP/EXP/EXP_ADD.C_CHAIN/O ;
(* RTL_KEEP = "true" *)   wire [7:0]\MULT.OP/EXP/EXP_ADD.C_CHAIN/Q_DEL/i_pipe/first_q ;
  wire [7:0]\MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/first_q ;
(* RTL_KEEP = "true" *)   wire \MULT.OP/EXP/FLOW_DEC_DEL/i_pipe/first_q ;
(* RTL_KEEP = "true" *)   wire [3:0]\MULT.OP/EXP/FLOW_UP_DEL/i_pipe/first_q ;
(* RTL_KEEP = "true" *)   wire \MULT.OP/EXP/INV_OP_DEL/i_pipe/first_q ;
(* RTL_KEEP = "true" *)   wire \MULT.OP/EXP/IP_SIGN_DELAY/i_pipe/first_q ;
  wire \MULT.OP/EXP/PROD_DELAY/i_pipe/first_q ;
  wire \MULT.OP/EXP/SIGN_RND_DELAY/i_pipe/first_q ;
(* RTL_KEEP = "true" *)   wire \MULT.OP/EXP/SIGN_UP_DELAY/i_pipe/first_q ;
(* RTL_KEEP = "true" *)   wire [3:0]\MULT.OP/EXP/SIG_DELAY/i_pipe/first_q ;
  wire [13:0]\MULT.OP/EXP/STATE_DEC_DELAY/i_pipe/first_q ;
(* RTL_KEEP = "true" *)   wire [1:0]\MULT.OP/EXP/STATE_DELAY/i_pipe/first_q ;
(* RTL_KEEP = "true" *)   wire [2:0]\MULT.OP/EXP/STATE_UP_DELAY/i_pipe/first_q ;
  wire \MULT.OP/EXP/a_mant_is_zero_int ;
  wire [7:0]\MULT.OP/EXP/a_xor_b_ip ;
  wire \MULT.OP/EXP/b_mant_is_zero_int ;
  wire [3:0]\MULT.OP/EXP/flow_int_up ;
  wire [3:0]\MULT.OP/EXP/flow_sig ;
  wire \MULT.OP/EXP/invalid_op_det ;
  wire \MULT.OP/EXP/p_0_in2_in ;
  wire \MULT.OP/EXP/p_1_in4_in ;
  wire \MULT.OP/EXP/prod_sign_ip ;
  wire \MULT.OP/EXP/sign_det ;
  wire \MULT.OP/EXP/sign_int_up ;
  wire [1:0]\MULT.OP/EXP/state ;
  wire [1:0]\MULT.OP/EXP/state_det ;
(* RTL_KEEP = "true" *)   wire [25:0]\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/first_q ;
(* RTL_KEEP = "true" *)   wire [1:0]\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.ZERO_DET_DEL/i_pipe/first_q ;
  wire [25:0]\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/mant_mult ;
  wire [1:0]\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/zero_detect_mult ;
  wire [0:0]\MULT.OP/OP/exp_op6_out ;
  wire \MULT.OP/OP/p_10_out ;
  wire \MULT.OP/OP/p_12_out ;
  wire [22:0]\MULT.OP/OP/p_5_out ;
  wire \MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_INC_DELAY/i_pipe/first_q ;
  wire [7:0]\MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_IN_DELAY.EXP_IN_DEL/i_pipe/first_q ;
  wire [7:0]\MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_IN_DELAY.EXP_OFF_OP_DEL/i_pipe/first_q ;
  wire [7:0]\MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_RND2_DELAY.EXP_OFF_RND_DEL/i_pipe/first_q ;
  wire [7:0]\MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_RND2_DELAY.EXP_RND_DEL/i_pipe/first_q ;
  wire [10:0]\MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/first_q ;
  wire \MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/CI ;
  wire \MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/D ;
  wire \MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/O ;
(* RTL_KEEP = "true" *)   wire [11:0]\MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/Q_DEL/i_pipe/first_q ;
  wire [10:0]\MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/first_q ;
  wire \MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CI ;
  wire \MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/D ;
  wire \MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/O ;
(* RTL_KEEP = "true" *)   wire [11:0]\MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/Q_DEL/i_pipe/first_q ;
  wire [13:0]\MULT.OP/R_AND_R/LOGIC.R_AND_R/MANT_RND2_DEL/i_pipe/first_q ;
(* RTL_KEEP = "true" *)   wire [1:0]\MULT.OP/R_AND_R/LOGIC.R_AND_R/NORMALIZE_RND2_DEL/i_pipe/first_q ;
  wire [7:0]\MULT.OP/R_AND_R/LOGIC.R_AND_R/a_add_op ;
  wire \MULT.OP/R_AND_R/LOGIC.R_AND_R/carry_op ;
  wire \MULT.OP/R_AND_R/LOGIC.R_AND_R/carry_rnd2 ;
  wire [7:0]\MULT.OP/R_AND_R/LOGIC.R_AND_R/exp_off_op ;
  wire [7:0]\MULT.OP/R_AND_R/LOGIC.R_AND_R/exp_op ;
  wire [11:0]\MULT.OP/R_AND_R/LOGIC.R_AND_R/mant_shifted_rnd1 ;
  wire \MULT.OP/R_AND_R/LOGIC.R_AND_R/round_rnd1 ;
  wire [11:0]\MULT.OP/R_AND_R/LOGIC.R_AND_R/sum_rnd2 ;
  wire \MULT.OP/R_AND_R/normalize_local ;
  wire [7:0]\MULT.OP/exp_rnd ;
  wire [3:0]\MULT.OP/flow_op ;
  wire [47:0]\MULT.OP/mant_casc_rnd ;
  wire SIGN;
  wire aclk;
  wire aresetn;
  wire combiner_data_valid;
(* RTL_KEEP = "true" *)   wire \i_nd_to_rdy/first_q ;
  wire lopt;
  wire lopt_1;
  wire lopt_10;
  wire lopt_11;
  wire lopt_12;
  wire lopt_13;
  wire lopt_14;
  wire lopt_2;
  wire lopt_3;
  wire lopt_4;
  wire lopt_5;
  wire lopt_6;
  wire lopt_7;
  wire lopt_8;
  wire lopt_9;
  wire [31:0]m_axis_result_tdata;
  wire m_axis_result_tlast;
  wire m_axis_result_tready;
  wire [18:0]m_axis_result_tuser;
  wire m_axis_result_tvalid;
  wire [31:0]m_axis_z_tdata_b;
  wire \n_0_CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__0 ;
  wire \n_0_CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__0 ;
  wire \n_0_HAS_ARESETN.sclr_i_i_1 ;
  wire \n_0_MULT.OP/EXP/EXP_ADD.C_CHAIN/CHAIN_GEN[1].C_MUX.CARRY_MUX ;
  wire \n_0_MULT.OP/EXP/EXP_ADD.C_CHAIN/CHAIN_GEN[1].Q_XOR.SUM_XOR ;
  wire \n_0_MULT.OP/EXP/EXP_ADD.C_CHAIN/CHAIN_GEN[2].C_MUX.CARRY_MUX ;
  wire \n_0_MULT.OP/EXP/EXP_ADD.C_CHAIN/CHAIN_GEN[2].Q_XOR.SUM_XOR ;
  wire \n_0_MULT.OP/EXP/EXP_ADD.C_CHAIN/CHAIN_GEN[3].C_MUX.CARRY_MUX ;
  wire \n_0_MULT.OP/EXP/EXP_ADD.C_CHAIN/CHAIN_GEN[3].Q_XOR.SUM_XOR ;
  wire \n_0_MULT.OP/EXP/EXP_ADD.C_CHAIN/CHAIN_GEN[4].C_MUX.CARRY_MUX ;
  wire \n_0_MULT.OP/EXP/EXP_ADD.C_CHAIN/CHAIN_GEN[4].Q_XOR.SUM_XOR ;
  wire \n_0_MULT.OP/EXP/EXP_ADD.C_CHAIN/CHAIN_GEN[5].C_MUX.CARRY_MUX ;
  wire \n_0_MULT.OP/EXP/EXP_ADD.C_CHAIN/CHAIN_GEN[5].Q_XOR.SUM_XOR ;
  wire \n_0_MULT.OP/EXP/EXP_ADD.C_CHAIN/CHAIN_GEN[6].C_MUX.CARRY_MUX ;
  wire \n_0_MULT.OP/EXP/EXP_ADD.C_CHAIN/CHAIN_GEN[6].Q_XOR.SUM_XOR ;
  wire \n_0_MULT.OP/EXP/EXP_ADD.C_CHAIN/CHAIN_GEN[7].C_MUX.CARRY_MUX ;
  wire \n_0_MULT.OP/EXP/EXP_ADD.C_CHAIN/CHAIN_GEN[7].Q_XOR.SUM_XOR ;
  wire \n_0_MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/opt_has_pipe.i_pipe[3].pipe_reg[3][0]_srl2 ;
  wire \n_0_MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/opt_has_pipe.i_pipe[3].pipe_reg[3][1]_srl2 ;
  wire \n_0_MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/opt_has_pipe.i_pipe[3].pipe_reg[3][2]_srl2 ;
  wire \n_0_MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/opt_has_pipe.i_pipe[3].pipe_reg[3][3]_srl2 ;
  wire \n_0_MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/opt_has_pipe.i_pipe[3].pipe_reg[3][4]_srl2 ;
  wire \n_0_MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/opt_has_pipe.i_pipe[3].pipe_reg[3][5]_srl2 ;
  wire \n_0_MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/opt_has_pipe.i_pipe[3].pipe_reg[3][6]_srl2 ;
  wire \n_0_MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/opt_has_pipe.i_pipe[3].pipe_reg[3][7]_srl2 ;
  wire \n_0_MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/opt_has_pipe.i_pipe[4].pipe_reg[4][0] ;
  wire \n_0_MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/opt_has_pipe.i_pipe[4].pipe_reg[4][1] ;
  wire \n_0_MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/opt_has_pipe.i_pipe[4].pipe_reg[4][2] ;
  wire \n_0_MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/opt_has_pipe.i_pipe[4].pipe_reg[4][3] ;
  wire \n_0_MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/opt_has_pipe.i_pipe[4].pipe_reg[4][4] ;
  wire \n_0_MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/opt_has_pipe.i_pipe[4].pipe_reg[4][5] ;
  wire \n_0_MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/opt_has_pipe.i_pipe[4].pipe_reg[4][6] ;
  wire \n_0_MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/opt_has_pipe.i_pipe[4].pipe_reg[4][7] ;
  wire \n_0_MULT.OP/EXP/INV_OP_DEL/i_pipe/opt_has_pipe.i_pipe[6].pipe_reg[6][0]_srl5 ;
  wire \n_0_MULT.OP/EXP/IP_SIGN_DELAY/i_pipe/opt_has_pipe.i_pipe[3].pipe_reg[3][0]_srl2 ;
  wire \n_0_MULT.OP/EXP/SIG_DELAY/i_pipe/opt_has_pipe.i_pipe[3].pipe_reg[3][0]_srl2 ;
  wire \n_0_MULT.OP/EXP/SIG_DELAY/i_pipe/opt_has_pipe.i_pipe[3].pipe_reg[3][1]_srl2 ;
  wire \n_0_MULT.OP/EXP/SIG_DELAY/i_pipe/opt_has_pipe.i_pipe[3].pipe_reg[3][2]_srl2 ;
  wire \n_0_MULT.OP/EXP/SIG_DELAY/i_pipe/opt_has_pipe.i_pipe[3].pipe_reg[3][3]_srl2 ;
  wire \n_0_MULT.OP/EXP/SIG_DELAY/i_pipe/opt_has_pipe.i_pipe[4].pipe_reg[4][0] ;
  wire \n_0_MULT.OP/EXP/SIG_DELAY/i_pipe/opt_has_pipe.i_pipe[4].pipe_reg[4][1] ;
  wire \n_0_MULT.OP/EXP/SIG_DELAY/i_pipe/opt_has_pipe.i_pipe[4].pipe_reg[4][3] ;
  wire \n_0_MULT.OP/EXP/STATE_DELAY/i_pipe/opt_has_pipe.i_pipe[3].pipe_reg[3][0]_srl2 ;
  wire \n_0_MULT.OP/EXP/STATE_DELAY/i_pipe/opt_has_pipe.i_pipe[3].pipe_reg[3][1]_srl2 ;
  wire \n_0_MULT.OP/OP/RESULT_REG.NORMAL.mant_op[0]_i_1 ;
  wire \n_0_MULT.OP/OP/RESULT_REG.NORMAL.mant_op[10]_i_1 ;
  wire \n_0_MULT.OP/OP/RESULT_REG.NORMAL.mant_op[11]_i_1 ;
  wire \n_0_MULT.OP/OP/RESULT_REG.NORMAL.mant_op[12]_i_1 ;
  wire \n_0_MULT.OP/OP/RESULT_REG.NORMAL.mant_op[13]_i_1 ;
  wire \n_0_MULT.OP/OP/RESULT_REG.NORMAL.mant_op[14]_i_1 ;
  wire \n_0_MULT.OP/OP/RESULT_REG.NORMAL.mant_op[15]_i_1 ;
  wire \n_0_MULT.OP/OP/RESULT_REG.NORMAL.mant_op[16]_i_1 ;
  wire \n_0_MULT.OP/OP/RESULT_REG.NORMAL.mant_op[17]_i_1 ;
  wire \n_0_MULT.OP/OP/RESULT_REG.NORMAL.mant_op[18]_i_1 ;
  wire \n_0_MULT.OP/OP/RESULT_REG.NORMAL.mant_op[19]_i_1 ;
  wire \n_0_MULT.OP/OP/RESULT_REG.NORMAL.mant_op[1]_i_1 ;
  wire \n_0_MULT.OP/OP/RESULT_REG.NORMAL.mant_op[20]_i_1 ;
  wire \n_0_MULT.OP/OP/RESULT_REG.NORMAL.mant_op[21]_i_1 ;
  wire \n_0_MULT.OP/OP/RESULT_REG.NORMAL.mant_op[2]_i_1 ;
  wire \n_0_MULT.OP/OP/RESULT_REG.NORMAL.mant_op[3]_i_1 ;
  wire \n_0_MULT.OP/OP/RESULT_REG.NORMAL.mant_op[4]_i_1 ;
  wire \n_0_MULT.OP/OP/RESULT_REG.NORMAL.mant_op[5]_i_1 ;
  wire \n_0_MULT.OP/OP/RESULT_REG.NORMAL.mant_op[6]_i_1 ;
  wire \n_0_MULT.OP/OP/RESULT_REG.NORMAL.mant_op[7]_i_1 ;
  wire \n_0_MULT.OP/OP/RESULT_REG.NORMAL.mant_op[8]_i_1 ;
  wire \n_0_MULT.OP/OP/RESULT_REG.NORMAL.mant_op[9]_i_1 ;
  wire \n_0_MULT.OP/OP/RESULT_REG.NORMAL.sign_op_i_1 ;
  wire \n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_ADD.ADD/CHAIN_GEN[0].C_MUX.CARRY_MUX ;
  wire \n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_ADD.ADD/CHAIN_GEN[1].C_MUX.CARRY_MUX ;
  wire \n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_ADD.ADD/CHAIN_GEN[2].C_MUX.CARRY_MUX ;
  wire \n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_ADD.ADD/CHAIN_GEN[3].C_MUX.CARRY_MUX ;
  wire \n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_ADD.ADD/CHAIN_GEN[4].C_MUX.CARRY_MUX ;
  wire \n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_ADD.ADD/CHAIN_GEN[5].C_MUX.CARRY_MUX ;
  wire \n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/CHAIN_GEN[10].C_MUX.CARRY_MUX ;
  wire \n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/CHAIN_GEN[10].Q_XOR.SUM_XOR ;
  wire \n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/CHAIN_GEN[11].Q_XOR.SUM_XOR ;
  wire \n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/CHAIN_GEN[1].C_MUX.CARRY_MUX ;
  wire \n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/CHAIN_GEN[1].Q_XOR.SUM_XOR ;
  wire \n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/CHAIN_GEN[2].C_MUX.CARRY_MUX ;
  wire \n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/CHAIN_GEN[2].Q_XOR.SUM_XOR ;
  wire \n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/CHAIN_GEN[3].C_MUX.CARRY_MUX ;
  wire \n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/CHAIN_GEN[3].Q_XOR.SUM_XOR ;
  wire \n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/CHAIN_GEN[4].C_MUX.CARRY_MUX ;
  wire \n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/CHAIN_GEN[4].Q_XOR.SUM_XOR ;
  wire \n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/CHAIN_GEN[5].C_MUX.CARRY_MUX ;
  wire \n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/CHAIN_GEN[5].Q_XOR.SUM_XOR ;
  wire \n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/CHAIN_GEN[6].C_MUX.CARRY_MUX ;
  wire \n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/CHAIN_GEN[6].Q_XOR.SUM_XOR ;
  wire \n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/CHAIN_GEN[7].C_MUX.CARRY_MUX ;
  wire \n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/CHAIN_GEN[7].Q_XOR.SUM_XOR ;
  wire \n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/CHAIN_GEN[8].C_MUX.CARRY_MUX ;
  wire \n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/CHAIN_GEN[8].Q_XOR.SUM_XOR ;
  wire \n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/CHAIN_GEN[9].C_MUX.CARRY_MUX ;
  wire \n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/CHAIN_GEN[9].Q_XOR.SUM_XOR ;
  wire \n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CHAIN_GEN[10].C_MUX.CARRY_MUX ;
  wire \n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CHAIN_GEN[10].Q_XOR.SUM_XOR ;
  wire \n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CHAIN_GEN[11].C_MUX.CARRY_MUX ;
  wire \n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CHAIN_GEN[11].Q_XOR.SUM_XOR ;
  wire \n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CHAIN_GEN[1].C_MUX.CARRY_MUX ;
  wire \n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CHAIN_GEN[1].Q_XOR.SUM_XOR ;
  wire \n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CHAIN_GEN[2].C_MUX.CARRY_MUX ;
  wire \n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CHAIN_GEN[2].Q_XOR.SUM_XOR ;
  wire \n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CHAIN_GEN[3].C_MUX.CARRY_MUX ;
  wire \n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CHAIN_GEN[3].Q_XOR.SUM_XOR ;
  wire \n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CHAIN_GEN[4].C_MUX.CARRY_MUX ;
  wire \n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CHAIN_GEN[4].Q_XOR.SUM_XOR ;
  wire \n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CHAIN_GEN[5].C_MUX.CARRY_MUX ;
  wire \n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CHAIN_GEN[5].Q_XOR.SUM_XOR ;
  wire \n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CHAIN_GEN[6].C_MUX.CARRY_MUX ;
  wire \n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CHAIN_GEN[6].Q_XOR.SUM_XOR ;
  wire \n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CHAIN_GEN[7].C_MUX.CARRY_MUX ;
  wire \n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CHAIN_GEN[7].Q_XOR.SUM_XOR ;
  wire \n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CHAIN_GEN[8].C_MUX.CARRY_MUX ;
  wire \n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CHAIN_GEN[8].Q_XOR.SUM_XOR ;
  wire \n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CHAIN_GEN[9].C_MUX.CARRY_MUX ;
  wire \n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CHAIN_GEN[9].Q_XOR.SUM_XOR ;
  wire \n_0_RESULT_REG.NORMAL.exp_op[1]_i_1 ;
  wire \n_0_RESULT_REG.NORMAL.exp_op[2]_i_1 ;
  wire \n_0_RESULT_REG.NORMAL.exp_op[3]_i_1 ;
  wire \n_0_RESULT_REG.NORMAL.exp_op[4]_i_1 ;
  wire \n_0_RESULT_REG.NORMAL.exp_op[5]_i_1 ;
  wire \n_0_RESULT_REG.NORMAL.exp_op[6]_i_1 ;
  wire \n_0_RESULT_REG.NORMAL.exp_op[7]_i_1 ;
  wire \n_0_gen_has_z_tready.reg1_a_tlast_i_1 ;
  wire \n_0_gen_has_z_tready.reg2_a_tdata[0]_i_1 ;
  wire \n_0_gen_has_z_tready.reg2_a_tdata[10]_i_1 ;
  wire \n_0_gen_has_z_tready.reg2_a_tdata[11]_i_1 ;
  wire \n_0_gen_has_z_tready.reg2_a_tdata[12]_i_1 ;
  wire \n_0_gen_has_z_tready.reg2_a_tdata[13]_i_1 ;
  wire \n_0_gen_has_z_tready.reg2_a_tdata[14]_i_1 ;
  wire \n_0_gen_has_z_tready.reg2_a_tdata[15]_i_1 ;
  wire \n_0_gen_has_z_tready.reg2_a_tdata[16]_i_1 ;
  wire \n_0_gen_has_z_tready.reg2_a_tdata[17]_i_1 ;
  wire \n_0_gen_has_z_tready.reg2_a_tdata[18]_i_1 ;
  wire \n_0_gen_has_z_tready.reg2_a_tdata[19]_i_1 ;
  wire \n_0_gen_has_z_tready.reg2_a_tdata[1]_i_1 ;
  wire \n_0_gen_has_z_tready.reg2_a_tdata[20]_i_1 ;
  wire \n_0_gen_has_z_tready.reg2_a_tdata[21]_i_1 ;
  wire \n_0_gen_has_z_tready.reg2_a_tdata[22]_i_1 ;
  wire \n_0_gen_has_z_tready.reg2_a_tdata[23]_i_1 ;
  wire \n_0_gen_has_z_tready.reg2_a_tdata[24]_i_1 ;
  wire \n_0_gen_has_z_tready.reg2_a_tdata[25]_i_1 ;
  wire \n_0_gen_has_z_tready.reg2_a_tdata[26]_i_1 ;
  wire \n_0_gen_has_z_tready.reg2_a_tdata[27]_i_1 ;
  wire \n_0_gen_has_z_tready.reg2_a_tdata[28]_i_1 ;
  wire \n_0_gen_has_z_tready.reg2_a_tdata[29]_i_1 ;
  wire \n_0_gen_has_z_tready.reg2_a_tdata[2]_i_1 ;
  wire \n_0_gen_has_z_tready.reg2_a_tdata[30]_i_1 ;
  wire \n_0_gen_has_z_tready.reg2_a_tdata[31]_i_2 ;
  wire \n_0_gen_has_z_tready.reg2_a_tdata[3]_i_1 ;
  wire \n_0_gen_has_z_tready.reg2_a_tdata[4]_i_1 ;
  wire \n_0_gen_has_z_tready.reg2_a_tdata[5]_i_1 ;
  wire \n_0_gen_has_z_tready.reg2_a_tdata[6]_i_1 ;
  wire \n_0_gen_has_z_tready.reg2_a_tdata[7]_i_1 ;
  wire \n_0_gen_has_z_tready.reg2_a_tdata[8]_i_1 ;
  wire \n_0_gen_has_z_tready.reg2_a_tdata[9]_i_1 ;
  wire \n_0_gen_has_z_tready.reg2_a_tlast_i_1 ;
  wire \n_0_gen_has_z_tready.reg2_a_tuser[0]_i_1 ;
  wire \n_0_gen_has_z_tready.reg2_a_tuser[1]_i_1 ;
  wire \n_0_gen_has_z_tready.reg2_a_tuser[2]_i_1 ;
  wire \n_0_gen_has_z_tready.reg2_a_tuser[3]_i_1 ;
  wire \n_0_gen_has_z_tready.reg2_a_tuser[4]_i_1 ;
  wire \n_0_gen_has_z_tready.reg2_a_tuser[5]_i_1 ;
  wire \n_0_gen_has_z_tready.reg2_a_tuser[6]_i_1 ;
  wire \n_0_gen_has_z_tready.reg2_a_tuser[7]_i_1 ;
  wire \n_0_gen_has_z_tready.reg2_b_tdata[0]_i_1 ;
  wire \n_0_gen_has_z_tready.reg2_b_tdata[10]_i_1 ;
  wire \n_0_gen_has_z_tready.reg2_b_tdata[11]_i_1 ;
  wire \n_0_gen_has_z_tready.reg2_b_tdata[12]_i_1 ;
  wire \n_0_gen_has_z_tready.reg2_b_tdata[13]_i_1 ;
  wire \n_0_gen_has_z_tready.reg2_b_tdata[14]_i_1 ;
  wire \n_0_gen_has_z_tready.reg2_b_tdata[15]_i_1 ;
  wire \n_0_gen_has_z_tready.reg2_b_tdata[16]_i_1 ;
  wire \n_0_gen_has_z_tready.reg2_b_tdata[17]_i_1 ;
  wire \n_0_gen_has_z_tready.reg2_b_tdata[18]_i_1 ;
  wire \n_0_gen_has_z_tready.reg2_b_tdata[19]_i_1 ;
  wire \n_0_gen_has_z_tready.reg2_b_tdata[1]_i_1 ;
  wire \n_0_gen_has_z_tready.reg2_b_tdata[20]_i_1 ;
  wire \n_0_gen_has_z_tready.reg2_b_tdata[21]_i_1 ;
  wire \n_0_gen_has_z_tready.reg2_b_tdata[22]_i_1 ;
  wire \n_0_gen_has_z_tready.reg2_b_tdata[23]_i_1 ;
  wire \n_0_gen_has_z_tready.reg2_b_tdata[24]_i_1 ;
  wire \n_0_gen_has_z_tready.reg2_b_tdata[25]_i_1 ;
  wire \n_0_gen_has_z_tready.reg2_b_tdata[26]_i_1 ;
  wire \n_0_gen_has_z_tready.reg2_b_tdata[27]_i_1 ;
  wire \n_0_gen_has_z_tready.reg2_b_tdata[28]_i_1 ;
  wire \n_0_gen_has_z_tready.reg2_b_tdata[29]_i_1 ;
  wire \n_0_gen_has_z_tready.reg2_b_tdata[2]_i_1 ;
  wire \n_0_gen_has_z_tready.reg2_b_tdata[30]_i_1 ;
  wire \n_0_gen_has_z_tready.reg2_b_tdata[31]_i_2 ;
  wire \n_0_gen_has_z_tready.reg2_b_tdata[3]_i_1 ;
  wire \n_0_gen_has_z_tready.reg2_b_tdata[4]_i_1 ;
  wire \n_0_gen_has_z_tready.reg2_b_tdata[5]_i_1 ;
  wire \n_0_gen_has_z_tready.reg2_b_tdata[6]_i_1 ;
  wire \n_0_gen_has_z_tready.reg2_b_tdata[7]_i_1 ;
  wire \n_0_gen_has_z_tready.reg2_b_tdata[8]_i_1 ;
  wire \n_0_gen_has_z_tready.reg2_b_tdata[9]_i_1 ;
  wire \n_0_gen_has_z_tready.reg2_b_tuser[0]_i_1 ;
  wire \n_0_gen_has_z_tready.reg2_b_tuser[1]_i_1 ;
  wire \n_0_gen_has_z_tready.reg2_b_tuser[2]_i_1 ;
  wire \n_0_gen_has_z_tready.reg2_b_tuser[3]_i_1 ;
  wire \n_0_gen_has_z_tready.reg2_b_tuser[4]_i_1 ;
  wire \n_0_gen_has_z_tready.reg2_b_tuser[5]_i_1 ;
  wire \n_0_gen_has_z_tready.reg2_b_tuser[6]_i_1 ;
  wire \n_0_gen_has_z_tready.reg2_b_tuser[7]_i_1 ;
  wire \n_0_i_nd_to_rdy/opt_has_pipe.i_pipe[2].pipe_reg[2][0] ;
  wire \n_0_i_nd_to_rdy/opt_has_pipe.i_pipe[4].pipe_reg[4][0] ;
  wire \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tlast_reg ;
  wire \n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[7].pipe_reg[7][0]_srl6 ;
  wire \n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[7].pipe_reg[7][10]_srl6 ;
  wire \n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[7].pipe_reg[7][11]_srl6 ;
  wire \n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[7].pipe_reg[7][12]_srl6 ;
  wire \n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[7].pipe_reg[7][13]_srl6 ;
  wire \n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[7].pipe_reg[7][14]_srl6 ;
  wire \n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[7].pipe_reg[7][15]_srl6 ;
  wire \n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[7].pipe_reg[7][16]_srl6 ;
  wire \n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[7].pipe_reg[7][1]_srl6 ;
  wire \n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[7].pipe_reg[7][2]_srl6 ;
  wire \n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[7].pipe_reg[7][3]_srl6 ;
  wire \n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[7].pipe_reg[7][4]_srl6 ;
  wire \n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[7].pipe_reg[7][5]_srl6 ;
  wire \n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[7].pipe_reg[7][6]_srl6 ;
  wire \n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[7].pipe_reg[7][7]_srl6 ;
  wire \n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[7].pipe_reg[7][8]_srl6 ;
  wire \n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[7].pipe_reg[7][9]_srl6 ;
  wire \n_0_opt_has_pipe.first_q[0]_i_1__1 ;
  wire \n_0_opt_has_pipe.first_q[0]_i_1__2 ;
  wire \n_0_opt_has_pipe.first_q[0]_i_2 ;
  wire \n_0_opt_has_pipe.first_q[0]_i_2__0 ;
  wire \n_0_opt_has_pipe.first_q[0]_i_2__1 ;
  wire \n_0_opt_has_pipe.first_q[0]_i_2__2 ;
  wire \n_0_opt_has_pipe.first_q[0]_i_2__3 ;
  wire \n_0_opt_has_pipe.first_q[10]_i_1 ;
  wire \n_0_opt_has_pipe.first_q[11]_i_1 ;
  wire \n_0_opt_has_pipe.first_q[12]_i_1 ;
  wire \n_0_opt_has_pipe.first_q[13]_i_1 ;
  wire \n_0_opt_has_pipe.first_q[1]_i_1 ;
  wire \n_0_opt_has_pipe.first_q[1]_i_1__0 ;
  wire \n_0_opt_has_pipe.first_q[1]_i_2 ;
  wire \n_0_opt_has_pipe.first_q[2]_i_1 ;
  wire \n_0_opt_has_pipe.first_q[2]_i_2 ;
  wire \n_0_opt_has_pipe.first_q[3]_i_1 ;
  wire \n_0_opt_has_pipe.first_q[3]_i_2 ;
  wire \need_combiner.use_2to1.skid_buffer_combiner/p_20_in ;
  wire \need_combiner.use_2to1.skid_buffer_combiner/p_22_in ;
  wire \need_combiner.use_2to1.skid_buffer_combiner/p_4_out ;
  wire \need_combiner.use_2to1.skid_buffer_combiner/reg1_a_ready_nxt ;
  wire \need_combiner.use_2to1.skid_buffer_combiner/reg1_a_tlast ;
  wire \need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ;
  wire \need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid_nxt ;
  wire \need_combiner.use_2to1.skid_buffer_combiner/reg1_b_ready_nxt ;
  wire \need_combiner.use_2to1.skid_buffer_combiner/reg1_b_valid ;
  wire \need_combiner.use_2to1.skid_buffer_combiner/reg1_b_valid_nxt ;
  wire \need_combiner.use_2to1.skid_buffer_combiner/reg1_b_wr ;
  wire \need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ;
  wire \need_combiner.use_2to1.skid_buffer_combiner/reg2_a_valid ;
  wire \need_combiner.use_2to1.skid_buffer_combiner/reg2_a_valid_nxt ;
  wire \need_combiner.use_2to1.skid_buffer_combiner/reg2_b_valid ;
  wire \need_combiner.use_2to1.skid_buffer_combiner/reg2_b_valid_nxt ;
  wire [16:0]\need_user_delay.user_pipe/i_pipe/first_q ;
  wire [31:0]p_0_in;
  wire p_1_in;
  wire p_2_in;
  wire p_3_in;
  wire [16:0]p_4_in;
  wire [31:0]p_4_out;
  wire \pipe[3] ;
  wire \pipe[5] ;
  wire \pipe[6] ;
  wire \pipe[7] ;
  wire [31:0]reg1_a_tdata;
  wire [7:0]reg1_a_tuser;
  wire [31:0]reg1_b_tdata;
  wire [7:0]reg1_b_tuser;
  wire reg2_a_tlast;
  wire [7:0]reg2_a_tuser;
  wire [7:0]reg2_b_tuser;
  wire [31:0]s_axis_a_tdata;
  wire s_axis_a_tlast;
  wire s_axis_a_tready;
  wire [7:0]s_axis_a_tuser;
  wire s_axis_a_tvalid;
  wire [31:0]s_axis_b_tdata;
  wire s_axis_b_tlast;
  wire s_axis_b_tready;
  wire [7:0]s_axis_b_tuser;
  wire s_axis_b_tvalid;
  wire sclr_i;
  wire valid_transfer_in;
  wire valid_transfer_out;
  wire \NLW_HAS_OUTPUT_FIFO.i_output_fifo_afull_UNCONNECTED ;
  wire \NLW_HAS_OUTPUT_FIFO.i_output_fifo_full_UNCONNECTED ;
  wire \NLW_HAS_OUTPUT_FIFO.i_output_fifo_not_afull_UNCONNECTED ;
  wire \NLW_HAS_OUTPUT_FIFO.i_output_fifo_not_full_UNCONNECTED ;
  wire [4:0]\NLW_HAS_OUTPUT_FIFO.i_output_fifo_add_UNCONNECTED ;
  wire [2:0]\NLW_MULT.OP/EXP/COND_DET_A/MANT_CARRY.MANT_ALL_ZERO_DET/CARRY_ZERO_DET/CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_CO_UNCONNECTED ;
  wire [3:0]\NLW_MULT.OP/EXP/COND_DET_A/MANT_CARRY.MANT_ALL_ZERO_DET/CARRY_ZERO_DET/CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED ;
  wire [2:0]\NLW_MULT.OP/EXP/COND_DET_B/MANT_CARRY.MANT_ALL_ZERO_DET/CARRY_ZERO_DET/CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_CO_UNCONNECTED ;
  wire [3:0]\NLW_MULT.OP/EXP/COND_DET_B/MANT_CARRY.MANT_ALL_ZERO_DET/CARRY_ZERO_DET/CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED ;
  wire [3:0]\NLW_MULT.OP/EXP/EXP_ADD.C_CHAIN/CARRYS_Q_DEL.FAST_DEL.CARRY_EXIT_CARRY4_CO_UNCONNECTED ;
  wire [3:0]\NLW_MULT.OP/EXP/EXP_ADD.C_CHAIN/CARRYS_Q_DEL.FAST_DEL.CARRY_EXIT_CARRY4_DI_UNCONNECTED ;
  wire [3:1]\NLW_MULT.OP/EXP/EXP_ADD.C_CHAIN/CARRYS_Q_DEL.FAST_DEL.CARRY_EXIT_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_MULT.OP/EXP/EXP_ADD.C_CHAIN/CARRYS_Q_DEL.FAST_DEL.CARRY_EXIT_CARRY4_S_UNCONNECTED ;
  wire [3:2]\NLW_MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_ADD.ADD/CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_CO_UNCONNECTED ;
  wire [3:3]\NLW_MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_ADD.ADD/CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_DI_UNCONNECTED ;
  wire [3:2]\NLW_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/CHAIN_GEN[9].C_MUX.CARRY_MUX_CARRY4_CO_UNCONNECTED ;
  wire [3:3]\NLW_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/CHAIN_GEN[9].C_MUX.CARRY_MUX_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CARRYS_Q_DEL.FAST_DEL.CARRY_EXIT_CARRY4_CO_UNCONNECTED ;
  wire [3:0]\NLW_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CARRYS_Q_DEL.FAST_DEL.CARRY_EXIT_CARRY4_DI_UNCONNECTED ;
  wire [3:1]\NLW_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CARRYS_Q_DEL.FAST_DEL.CARRY_EXIT_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CARRYS_Q_DEL.FAST_DEL.CARRY_EXIT_CARRY4_S_UNCONNECTED ;
  wire [1:0]\NLW_MULT.OP/R_AND_R/LOGIC.R_AND_R/RND_BIT_GEN/NORM_1_OR_0.STRUCT_REQ.GENERAL.RND1/CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_CO_UNCONNECTED ;
  wire [2:0]\NLW_MULT.OP/R_AND_R/LOGIC.R_AND_R/RND_BIT_GEN/NORM_1_OR_0.STRUCT_REQ.GENERAL.RND1/CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED ;

  assign s_axis_c_tready = \<const1> ;
  assign s_axis_operation_tready = \<const1> ;
LUT3 #(
    .INIT(8'hB8)) 
     \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1 
       (.I0(\MULT.OP/R_AND_R/LOGIC.R_AND_R/MANT_RND2_DEL/i_pipe/first_q [2]),
        .I1(\MULT.OP/R_AND_R/LOGIC.R_AND_R/NORMALIZE_RND2_DEL/i_pipe/first_q [0]),
        .I2(\MULT.OP/R_AND_R/LOGIC.R_AND_R/MANT_RND2_DEL/i_pipe/first_q [3]),
        .O(\MULT.OP/R_AND_R/LOGIC.R_AND_R/sum_rnd2 [0]));
LUT4 #(
    .INIT(16'hFFDF)) 
     \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__0 
       (.I0(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.ZERO_DET_DEL/i_pipe/first_q [0]),
        .I1(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/first_q [1]),
        .I2(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.ZERO_DET_DEL/i_pipe/first_q [1]),
        .I3(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/first_q [0]),
        .O(\n_0_CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__0 ));
LUT3 #(
    .INIT(8'hB8)) 
     \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__1 
       (.I0(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/first_q [2]),
        .I1(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/first_q [25]),
        .I2(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/first_q [1]),
        .O(\MULT.OP/R_AND_R/LOGIC.R_AND_R/mant_shifted_rnd1 [0]));
LUT2 #(
    .INIT(4'h6)) 
     \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__2 
       (.I0(p_4_out[23]),
        .I1(m_axis_z_tdata_b[23]),
        .O(\MULT.OP/EXP/a_xor_b_ip [0]));
LUT3 #(
    .INIT(8'hB8)) 
     \CHAIN_GEN[10].C_MUX.CARRY_MUX_i_1 
       (.I0(\MULT.OP/R_AND_R/LOGIC.R_AND_R/MANT_RND2_DEL/i_pipe/first_q [12]),
        .I1(\MULT.OP/R_AND_R/LOGIC.R_AND_R/NORMALIZE_RND2_DEL/i_pipe/first_q [0]),
        .I2(\MULT.OP/R_AND_R/LOGIC.R_AND_R/MANT_RND2_DEL/i_pipe/first_q [13]),
        .O(\MULT.OP/R_AND_R/LOGIC.R_AND_R/sum_rnd2 [10]));
LUT3 #(
    .INIT(8'hB8)) 
     \CHAIN_GEN[10].C_MUX.CARRY_MUX_i_1__0 
       (.I0(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/first_q [12]),
        .I1(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/first_q [25]),
        .I2(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/first_q [11]),
        .O(\MULT.OP/R_AND_R/LOGIC.R_AND_R/mant_shifted_rnd1 [10]));
LUT1 #(
    .INIT(2'h1)) 
     \CHAIN_GEN[11].C_MUX.CARRY_MUX_i_1 
       (.I0(\MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_INC_DELAY/i_pipe/first_q ),
        .O(\MULT.OP/R_AND_R/LOGIC.R_AND_R/sum_rnd2 [11]));
LUT3 #(
    .INIT(8'hB8)) 
     \CHAIN_GEN[11].C_MUX.CARRY_MUX_i_1__0 
       (.I0(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/first_q [13]),
        .I1(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/first_q [25]),
        .I2(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/first_q [12]),
        .O(\MULT.OP/R_AND_R/LOGIC.R_AND_R/mant_shifted_rnd1 [11]));
LUT3 #(
    .INIT(8'hB8)) 
     \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1 
       (.I0(\MULT.OP/R_AND_R/LOGIC.R_AND_R/MANT_RND2_DEL/i_pipe/first_q [3]),
        .I1(\MULT.OP/R_AND_R/LOGIC.R_AND_R/NORMALIZE_RND2_DEL/i_pipe/first_q [0]),
        .I2(\MULT.OP/R_AND_R/LOGIC.R_AND_R/MANT_RND2_DEL/i_pipe/first_q [4]),
        .O(\MULT.OP/R_AND_R/LOGIC.R_AND_R/sum_rnd2 [1]));
LUT3 #(
    .INIT(8'hB8)) 
     \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__0 
       (.I0(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/first_q [3]),
        .I1(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/first_q [25]),
        .I2(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/first_q [2]),
        .O(\MULT.OP/R_AND_R/LOGIC.R_AND_R/mant_shifted_rnd1 [1]));
LUT2 #(
    .INIT(4'h6)) 
     \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__1 
       (.I0(p_4_out[24]),
        .I1(m_axis_z_tdata_b[24]),
        .O(\MULT.OP/EXP/a_xor_b_ip [1]));
LUT3 #(
    .INIT(8'hB8)) 
     \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1 
       (.I0(\MULT.OP/R_AND_R/LOGIC.R_AND_R/MANT_RND2_DEL/i_pipe/first_q [4]),
        .I1(\MULT.OP/R_AND_R/LOGIC.R_AND_R/NORMALIZE_RND2_DEL/i_pipe/first_q [0]),
        .I2(\MULT.OP/R_AND_R/LOGIC.R_AND_R/MANT_RND2_DEL/i_pipe/first_q [5]),
        .O(\MULT.OP/R_AND_R/LOGIC.R_AND_R/sum_rnd2 [2]));
LUT6 #(
    .INIT(64'h5777553355335533)) 
     \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__0 
       (.I0(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/first_q [1]),
        .I1(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/first_q [0]),
        .I2(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/first_q [2]),
        .I3(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/first_q [25]),
        .I4(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.ZERO_DET_DEL/i_pipe/first_q [1]),
        .I5(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.ZERO_DET_DEL/i_pipe/first_q [0]),
        .O(\n_0_CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__0 ));
LUT3 #(
    .INIT(8'hB8)) 
     \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__1 
       (.I0(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/first_q [4]),
        .I1(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/first_q [25]),
        .I2(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/first_q [3]),
        .O(\MULT.OP/R_AND_R/LOGIC.R_AND_R/mant_shifted_rnd1 [2]));
LUT2 #(
    .INIT(4'h6)) 
     \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__2 
       (.I0(p_4_out[25]),
        .I1(m_axis_z_tdata_b[25]),
        .O(\MULT.OP/EXP/a_xor_b_ip [2]));
LUT3 #(
    .INIT(8'hB8)) 
     \CHAIN_GEN[3].C_MUX.CARRY_MUX_i_1 
       (.I0(\MULT.OP/R_AND_R/LOGIC.R_AND_R/MANT_RND2_DEL/i_pipe/first_q [5]),
        .I1(\MULT.OP/R_AND_R/LOGIC.R_AND_R/NORMALIZE_RND2_DEL/i_pipe/first_q [0]),
        .I2(\MULT.OP/R_AND_R/LOGIC.R_AND_R/MANT_RND2_DEL/i_pipe/first_q [6]),
        .O(\MULT.OP/R_AND_R/LOGIC.R_AND_R/sum_rnd2 [3]));
LUT3 #(
    .INIT(8'hB8)) 
     \CHAIN_GEN[3].C_MUX.CARRY_MUX_i_1__0 
       (.I0(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/first_q [5]),
        .I1(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/first_q [25]),
        .I2(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/first_q [4]),
        .O(\MULT.OP/R_AND_R/LOGIC.R_AND_R/mant_shifted_rnd1 [3]));
LUT2 #(
    .INIT(4'h6)) 
     \CHAIN_GEN[3].C_MUX.CARRY_MUX_i_1__1 
       (.I0(p_4_out[26]),
        .I1(m_axis_z_tdata_b[26]),
        .O(\MULT.OP/EXP/a_xor_b_ip [3]));
LUT3 #(
    .INIT(8'hB8)) 
     \CHAIN_GEN[4].C_MUX.CARRY_MUX_i_1 
       (.I0(\MULT.OP/R_AND_R/LOGIC.R_AND_R/MANT_RND2_DEL/i_pipe/first_q [6]),
        .I1(\MULT.OP/R_AND_R/LOGIC.R_AND_R/NORMALIZE_RND2_DEL/i_pipe/first_q [0]),
        .I2(\MULT.OP/R_AND_R/LOGIC.R_AND_R/MANT_RND2_DEL/i_pipe/first_q [7]),
        .O(\MULT.OP/R_AND_R/LOGIC.R_AND_R/sum_rnd2 [4]));
LUT3 #(
    .INIT(8'hB8)) 
     \CHAIN_GEN[4].C_MUX.CARRY_MUX_i_1__0 
       (.I0(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/first_q [6]),
        .I1(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/first_q [25]),
        .I2(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/first_q [5]),
        .O(\MULT.OP/R_AND_R/LOGIC.R_AND_R/mant_shifted_rnd1 [4]));
LUT2 #(
    .INIT(4'h6)) 
     \CHAIN_GEN[4].C_MUX.CARRY_MUX_i_1__1 
       (.I0(p_4_out[27]),
        .I1(m_axis_z_tdata_b[27]),
        .O(\MULT.OP/EXP/a_xor_b_ip [4]));
LUT3 #(
    .INIT(8'hB8)) 
     \CHAIN_GEN[5].C_MUX.CARRY_MUX_i_1 
       (.I0(\MULT.OP/R_AND_R/LOGIC.R_AND_R/MANT_RND2_DEL/i_pipe/first_q [7]),
        .I1(\MULT.OP/R_AND_R/LOGIC.R_AND_R/NORMALIZE_RND2_DEL/i_pipe/first_q [0]),
        .I2(\MULT.OP/R_AND_R/LOGIC.R_AND_R/MANT_RND2_DEL/i_pipe/first_q [8]),
        .O(\MULT.OP/R_AND_R/LOGIC.R_AND_R/sum_rnd2 [5]));
LUT3 #(
    .INIT(8'hB8)) 
     \CHAIN_GEN[5].C_MUX.CARRY_MUX_i_1__0 
       (.I0(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/first_q [7]),
        .I1(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/first_q [25]),
        .I2(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/first_q [6]),
        .O(\MULT.OP/R_AND_R/LOGIC.R_AND_R/mant_shifted_rnd1 [5]));
LUT2 #(
    .INIT(4'h6)) 
     \CHAIN_GEN[5].C_MUX.CARRY_MUX_i_1__1 
       (.I0(p_4_out[28]),
        .I1(m_axis_z_tdata_b[28]),
        .O(\MULT.OP/EXP/a_xor_b_ip [5]));
LUT3 #(
    .INIT(8'hB8)) 
     \CHAIN_GEN[6].C_MUX.CARRY_MUX_i_1 
       (.I0(\MULT.OP/R_AND_R/LOGIC.R_AND_R/MANT_RND2_DEL/i_pipe/first_q [8]),
        .I1(\MULT.OP/R_AND_R/LOGIC.R_AND_R/NORMALIZE_RND2_DEL/i_pipe/first_q [0]),
        .I2(\MULT.OP/R_AND_R/LOGIC.R_AND_R/MANT_RND2_DEL/i_pipe/first_q [9]),
        .O(\MULT.OP/R_AND_R/LOGIC.R_AND_R/sum_rnd2 [6]));
LUT3 #(
    .INIT(8'hB8)) 
     \CHAIN_GEN[6].C_MUX.CARRY_MUX_i_1__0 
       (.I0(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/first_q [8]),
        .I1(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/first_q [25]),
        .I2(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/first_q [7]),
        .O(\MULT.OP/R_AND_R/LOGIC.R_AND_R/mant_shifted_rnd1 [6]));
LUT2 #(
    .INIT(4'h6)) 
     \CHAIN_GEN[6].C_MUX.CARRY_MUX_i_1__1 
       (.I0(p_4_out[29]),
        .I1(m_axis_z_tdata_b[29]),
        .O(\MULT.OP/EXP/a_xor_b_ip [6]));
LUT3 #(
    .INIT(8'hB8)) 
     \CHAIN_GEN[7].C_MUX.CARRY_MUX_i_1 
       (.I0(\MULT.OP/R_AND_R/LOGIC.R_AND_R/MANT_RND2_DEL/i_pipe/first_q [9]),
        .I1(\MULT.OP/R_AND_R/LOGIC.R_AND_R/NORMALIZE_RND2_DEL/i_pipe/first_q [0]),
        .I2(\MULT.OP/R_AND_R/LOGIC.R_AND_R/MANT_RND2_DEL/i_pipe/first_q [10]),
        .O(\MULT.OP/R_AND_R/LOGIC.R_AND_R/sum_rnd2 [7]));
LUT3 #(
    .INIT(8'hB8)) 
     \CHAIN_GEN[7].C_MUX.CARRY_MUX_i_1__0 
       (.I0(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/first_q [9]),
        .I1(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/first_q [25]),
        .I2(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/first_q [8]),
        .O(\MULT.OP/R_AND_R/LOGIC.R_AND_R/mant_shifted_rnd1 [7]));
LUT2 #(
    .INIT(4'h6)) 
     \CHAIN_GEN[7].C_MUX.CARRY_MUX_i_1__1 
       (.I0(p_4_out[30]),
        .I1(m_axis_z_tdata_b[30]),
        .O(\MULT.OP/EXP/a_xor_b_ip [7]));
LUT3 #(
    .INIT(8'hB8)) 
     \CHAIN_GEN[8].C_MUX.CARRY_MUX_i_1 
       (.I0(\MULT.OP/R_AND_R/LOGIC.R_AND_R/MANT_RND2_DEL/i_pipe/first_q [10]),
        .I1(\MULT.OP/R_AND_R/LOGIC.R_AND_R/NORMALIZE_RND2_DEL/i_pipe/first_q [0]),
        .I2(\MULT.OP/R_AND_R/LOGIC.R_AND_R/MANT_RND2_DEL/i_pipe/first_q [11]),
        .O(\MULT.OP/R_AND_R/LOGIC.R_AND_R/sum_rnd2 [8]));
LUT3 #(
    .INIT(8'hB8)) 
     \CHAIN_GEN[8].C_MUX.CARRY_MUX_i_1__0 
       (.I0(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/first_q [10]),
        .I1(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/first_q [25]),
        .I2(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/first_q [9]),
        .O(\MULT.OP/R_AND_R/LOGIC.R_AND_R/mant_shifted_rnd1 [8]));
LUT3 #(
    .INIT(8'hB8)) 
     \CHAIN_GEN[9].C_MUX.CARRY_MUX_i_1 
       (.I0(\MULT.OP/R_AND_R/LOGIC.R_AND_R/MANT_RND2_DEL/i_pipe/first_q [11]),
        .I1(\MULT.OP/R_AND_R/LOGIC.R_AND_R/NORMALIZE_RND2_DEL/i_pipe/first_q [0]),
        .I2(\MULT.OP/R_AND_R/LOGIC.R_AND_R/MANT_RND2_DEL/i_pipe/first_q [12]),
        .O(\MULT.OP/R_AND_R/LOGIC.R_AND_R/sum_rnd2 [9]));
LUT3 #(
    .INIT(8'hB8)) 
     \CHAIN_GEN[9].C_MUX.CARRY_MUX_i_1__0 
       (.I0(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/first_q [11]),
        .I1(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/first_q [25]),
        .I2(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/first_q [10]),
        .O(\MULT.OP/R_AND_R/LOGIC.R_AND_R/mant_shifted_rnd1 [9]));
LUT3 #(
    .INIT(8'hBA)) 
     \FLAGS_REG.NOT_LATE_UPDATE_GEN.OVERFLOW_i_1 
       (.I0(\MULT.OP/flow_op [0]),
        .I1(\MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/Q_DEL/i_pipe/first_q [11]),
        .I2(\MULT.OP/flow_op [2]),
        .O(\MULT.OP/OP/p_12_out ));
LUT3 #(
    .INIT(8'hEA)) 
     \FLAGS_REG.NOT_LATE_UPDATE_GEN.UNDERFLOW_i_1 
       (.I0(\MULT.OP/flow_op [1]),
        .I1(\MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/Q_DEL/i_pipe/first_q [11]),
        .I2(\MULT.OP/flow_op [3]),
        .O(\MULT.OP/OP/p_10_out ));
GND GND
       (.G(\<const0> ));
GND GND_1
       (.G(GND_2));
LUT1 #(
    .INIT(2'h1)) 
     \HAS_ARESETN.sclr_i_i_1 
       (.I0(aresetn),
        .O(\n_0_HAS_ARESETN.sclr_i_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \HAS_ARESETN.sclr_i_reg 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_HAS_ARESETN.sclr_i_i_1 ),
        .Q(sclr_i),
        .R(\<const0> ));
(* AFULL_THRESH0 = "1" *) 
   (* AFULL_THRESH1 = "1" *) 
   (* DEPTH = "16" *) 
   (* WIDTH = "52" *) 
   (* downgradeipidentifiedwarnings = "yes" *) 
   ip_fp32_axis_multglb_ifx_master \HAS_OUTPUT_FIFO.i_output_fifo 
       (.aclk(aclk),
        .aclken(\<const1> ),
        .add(\NLW_HAS_OUTPUT_FIFO.i_output_fifo_add_UNCONNECTED [4:0]),
        .afull(\NLW_HAS_OUTPUT_FIFO.i_output_fifo_afull_UNCONNECTED ),
        .areset(sclr_i),
        .full(\NLW_HAS_OUTPUT_FIFO.i_output_fifo_full_UNCONNECTED ),
        .ifx_data({m_axis_result_tlast,m_axis_result_tuser,m_axis_result_tdata}),
        .ifx_ready(m_axis_result_tready),
        .ifx_valid(m_axis_result_tvalid),
        .not_afull(\NLW_HAS_OUTPUT_FIFO.i_output_fifo_not_afull_UNCONNECTED ),
        .not_full(\NLW_HAS_OUTPUT_FIFO.i_output_fifo_not_full_UNCONNECTED ),
        .wr_data({p_4_in,p_3_in,p_2_in,p_1_in,p_0_in}),
        .wr_enable(valid_transfer_out));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/EXP/COND_DET_A/EXP_DET_LUT.EXP_ALL_ONE_DEL/i_pipe/opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/EXP/COND_DET_A/exp_all_one_ip ),
        .Q(\MULT.OP/EXP/COND_DET_A/EXP_DET_LUT.EXP_ALL_ONE_DEL/i_pipe/first_q ),
        .R(\<const0> ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/EXP/COND_DET_A/EXP_DET_LUT.EXP_ALL_ZERO_DEL/i_pipe/opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/EXP/COND_DET_A/exp_all_zero_ip ),
        .Q(\MULT.OP/EXP/COND_DET_A/EXP_DET_LUT.EXP_ALL_ZERO_DEL/i_pipe/first_q ),
        .R(\<const0> ));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* box_type = "PRIMITIVE" *) 
   CARRY4 \MULT.OP/EXP/COND_DET_A/MANT_CARRY.MANT_ALL_ZERO_DET/CARRY_ZERO_DET/CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4 
       (.CI(lopt),
        .CO({\MULT.OP/EXP/COND_DET_A/MANT_CARRY.MANT_ALL_ZERO_DET/CARRY_ZERO_DET/D ,\NLW_MULT.OP/EXP/COND_DET_A/MANT_CARRY.MANT_ALL_ZERO_DET/CARRY_ZERO_DET/CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const1> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(\NLW_MULT.OP/EXP/COND_DET_A/MANT_CARRY.MANT_ALL_ZERO_DET/CARRY_ZERO_DET/CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED [3:0]),
        .S(\MULT.OP/EXP/COND_DET_A/MANT_CARRY.MANT_ALL_ZERO_DET/chunk_det ));
GND \MULT.OP/EXP/COND_DET_A/MANT_CARRY.MANT_ALL_ZERO_DET/CARRY_ZERO_DET/CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_GND 
       (.G(lopt));
(* XILINX_LEGACY_PRIM = "FDE" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/EXP/COND_DET_A/MANT_CARRY.MANT_ALL_ZERO_DET/CARRY_ZERO_DET/CHAIN_GEN[3].CARRYS_DEL.NEED_DEL.CARRYS_FD 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/EXP/COND_DET_A/MANT_CARRY.MANT_ALL_ZERO_DET/CARRY_ZERO_DET/D ),
        .Q(\MULT.OP/EXP/a_mant_is_zero_int ),
        .R(GND_2));
LUT6 #(
    .INIT(64'h0000000000000001)) 
     \MULT.OP/EXP/COND_DET_A/MANT_CARRY.MANT_ALL_ZERO_DET/CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1 
       (.I0(p_4_out[4]),
        .I1(p_4_out[3]),
        .I2(p_4_out[0]),
        .I3(p_4_out[5]),
        .I4(p_4_out[2]),
        .I5(p_4_out[1]),
        .O(\MULT.OP/EXP/COND_DET_A/MANT_CARRY.MANT_ALL_ZERO_DET/chunk_det [0]));
LUT6 #(
    .INIT(64'h0000000000000001)) 
     \MULT.OP/EXP/COND_DET_A/MANT_CARRY.MANT_ALL_ZERO_DET/CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1 
       (.I0(p_4_out[10]),
        .I1(p_4_out[9]),
        .I2(p_4_out[6]),
        .I3(p_4_out[11]),
        .I4(p_4_out[8]),
        .I5(p_4_out[7]),
        .O(\MULT.OP/EXP/COND_DET_A/MANT_CARRY.MANT_ALL_ZERO_DET/chunk_det [1]));
LUT6 #(
    .INIT(64'h0000000000000001)) 
     \MULT.OP/EXP/COND_DET_A/MANT_CARRY.MANT_ALL_ZERO_DET/CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1 
       (.I0(p_4_out[16]),
        .I1(p_4_out[15]),
        .I2(p_4_out[12]),
        .I3(p_4_out[17]),
        .I4(p_4_out[14]),
        .I5(p_4_out[13]),
        .O(\MULT.OP/EXP/COND_DET_A/MANT_CARRY.MANT_ALL_ZERO_DET/chunk_det [2]));
LUT5 #(
    .INIT(32'h00000001)) 
     \MULT.OP/EXP/COND_DET_A/MANT_CARRY.MANT_ALL_ZERO_DET/CHAIN_GEN[3].C_MUX.CARRY_MUX_i_1 
       (.I0(p_4_out[20]),
        .I1(p_4_out[18]),
        .I2(p_4_out[22]),
        .I3(p_4_out[21]),
        .I4(p_4_out[19]),
        .O(\MULT.OP/EXP/COND_DET_A/MANT_CARRY.MANT_ALL_ZERO_DET/chunk_det [3]));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/EXP/COND_DET_B/EXP_DET_LUT.EXP_ALL_ONE_DEL/i_pipe/opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/EXP/COND_DET_B/exp_all_one_ip ),
        .Q(\MULT.OP/EXP/COND_DET_B/EXP_DET_LUT.EXP_ALL_ONE_DEL/i_pipe/first_q ),
        .R(\<const0> ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/EXP/COND_DET_B/EXP_DET_LUT.EXP_ALL_ZERO_DEL/i_pipe/opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/EXP/COND_DET_B/exp_all_zero_ip ),
        .Q(\MULT.OP/EXP/COND_DET_B/EXP_DET_LUT.EXP_ALL_ZERO_DEL/i_pipe/first_q ),
        .R(\<const0> ));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* box_type = "PRIMITIVE" *) 
   CARRY4 \MULT.OP/EXP/COND_DET_B/MANT_CARRY.MANT_ALL_ZERO_DET/CARRY_ZERO_DET/CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4 
       (.CI(lopt_1),
        .CO({\MULT.OP/EXP/COND_DET_B/MANT_CARRY.MANT_ALL_ZERO_DET/CARRY_ZERO_DET/D ,\NLW_MULT.OP/EXP/COND_DET_B/MANT_CARRY.MANT_ALL_ZERO_DET/CARRY_ZERO_DET/CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const1> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(\NLW_MULT.OP/EXP/COND_DET_B/MANT_CARRY.MANT_ALL_ZERO_DET/CARRY_ZERO_DET/CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED [3:0]),
        .S(\MULT.OP/EXP/COND_DET_B/MANT_CARRY.MANT_ALL_ZERO_DET/chunk_det ));
GND \MULT.OP/EXP/COND_DET_B/MANT_CARRY.MANT_ALL_ZERO_DET/CARRY_ZERO_DET/CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_GND 
       (.G(lopt_1));
(* XILINX_LEGACY_PRIM = "FDE" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/EXP/COND_DET_B/MANT_CARRY.MANT_ALL_ZERO_DET/CARRY_ZERO_DET/CHAIN_GEN[3].CARRYS_DEL.NEED_DEL.CARRYS_FD 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/EXP/COND_DET_B/MANT_CARRY.MANT_ALL_ZERO_DET/CARRY_ZERO_DET/D ),
        .Q(\MULT.OP/EXP/b_mant_is_zero_int ),
        .R(GND_2));
LUT6 #(
    .INIT(64'h0000000000000001)) 
     \MULT.OP/EXP/COND_DET_B/MANT_CARRY.MANT_ALL_ZERO_DET/CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1 
       (.I0(m_axis_z_tdata_b[4]),
        .I1(m_axis_z_tdata_b[3]),
        .I2(m_axis_z_tdata_b[0]),
        .I3(m_axis_z_tdata_b[5]),
        .I4(m_axis_z_tdata_b[2]),
        .I5(m_axis_z_tdata_b[1]),
        .O(\MULT.OP/EXP/COND_DET_B/MANT_CARRY.MANT_ALL_ZERO_DET/chunk_det [0]));
LUT6 #(
    .INIT(64'h0000000000000001)) 
     \MULT.OP/EXP/COND_DET_B/MANT_CARRY.MANT_ALL_ZERO_DET/CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1 
       (.I0(m_axis_z_tdata_b[10]),
        .I1(m_axis_z_tdata_b[9]),
        .I2(m_axis_z_tdata_b[6]),
        .I3(m_axis_z_tdata_b[11]),
        .I4(m_axis_z_tdata_b[8]),
        .I5(m_axis_z_tdata_b[7]),
        .O(\MULT.OP/EXP/COND_DET_B/MANT_CARRY.MANT_ALL_ZERO_DET/chunk_det [1]));
LUT6 #(
    .INIT(64'h0000000000000001)) 
     \MULT.OP/EXP/COND_DET_B/MANT_CARRY.MANT_ALL_ZERO_DET/CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1 
       (.I0(m_axis_z_tdata_b[16]),
        .I1(m_axis_z_tdata_b[15]),
        .I2(m_axis_z_tdata_b[12]),
        .I3(m_axis_z_tdata_b[17]),
        .I4(m_axis_z_tdata_b[14]),
        .I5(m_axis_z_tdata_b[13]),
        .O(\MULT.OP/EXP/COND_DET_B/MANT_CARRY.MANT_ALL_ZERO_DET/chunk_det [2]));
LUT5 #(
    .INIT(32'h00000001)) 
     \MULT.OP/EXP/COND_DET_B/MANT_CARRY.MANT_ALL_ZERO_DET/CHAIN_GEN[3].C_MUX.CARRY_MUX_i_1 
       (.I0(m_axis_z_tdata_b[20]),
        .I1(m_axis_z_tdata_b[18]),
        .I2(m_axis_z_tdata_b[22]),
        .I3(m_axis_z_tdata_b[21]),
        .I4(m_axis_z_tdata_b[19]),
        .O(\MULT.OP/EXP/COND_DET_B/MANT_CARRY.MANT_ALL_ZERO_DET/chunk_det [3]));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/EXP/EXP_ADD.C_CHAIN/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/EXP/EXP_ADD.C_CHAIN/CI ),
        .Q(\MULT.OP/EXP/EXP_ADD.C_CHAIN/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/first_q [0]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/EXP/EXP_ADD.C_CHAIN/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/opt_has_pipe.first_q_reg[1] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/EXP/EXP_ADD.C_CHAIN/CHAIN_GEN[1].C_MUX.CARRY_MUX ),
        .Q(\MULT.OP/EXP/EXP_ADD.C_CHAIN/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/first_q [1]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/EXP/EXP_ADD.C_CHAIN/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/opt_has_pipe.first_q_reg[2] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/EXP/EXP_ADD.C_CHAIN/CHAIN_GEN[2].C_MUX.CARRY_MUX ),
        .Q(\MULT.OP/EXP/EXP_ADD.C_CHAIN/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/first_q [2]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/EXP/EXP_ADD.C_CHAIN/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/opt_has_pipe.first_q_reg[3] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/EXP/EXP_ADD.C_CHAIN/CHAIN_GEN[3].C_MUX.CARRY_MUX ),
        .Q(\MULT.OP/EXP/EXP_ADD.C_CHAIN/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/first_q [3]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/EXP/EXP_ADD.C_CHAIN/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/opt_has_pipe.first_q_reg[4] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/EXP/EXP_ADD.C_CHAIN/CHAIN_GEN[4].C_MUX.CARRY_MUX ),
        .Q(\MULT.OP/EXP/EXP_ADD.C_CHAIN/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/first_q [4]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/EXP/EXP_ADD.C_CHAIN/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/opt_has_pipe.first_q_reg[5] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/EXP/EXP_ADD.C_CHAIN/CHAIN_GEN[5].C_MUX.CARRY_MUX ),
        .Q(\MULT.OP/EXP/EXP_ADD.C_CHAIN/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/first_q [5]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/EXP/EXP_ADD.C_CHAIN/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/opt_has_pipe.first_q_reg[6] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/EXP/EXP_ADD.C_CHAIN/CHAIN_GEN[6].C_MUX.CARRY_MUX ),
        .Q(\MULT.OP/EXP/EXP_ADD.C_CHAIN/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/first_q [6]),
        .R(\<const0> ));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* box_type = "PRIMITIVE" *) 
   CARRY4 \MULT.OP/EXP/EXP_ADD.C_CHAIN/CARRYS_Q_DEL.FAST_DEL.CARRY_EXIT_CARRY4 
       (.CI(\n_0_MULT.OP/EXP/EXP_ADD.C_CHAIN/CHAIN_GEN[7].C_MUX.CARRY_MUX ),
        .CO(\NLW_MULT.OP/EXP/EXP_ADD.C_CHAIN/CARRYS_Q_DEL.FAST_DEL.CARRY_EXIT_CARRY4_CO_UNCONNECTED [3:0]),
        .CYINIT(lopt_13),
        .DI(\NLW_MULT.OP/EXP/EXP_ADD.C_CHAIN/CARRYS_Q_DEL.FAST_DEL.CARRY_EXIT_CARRY4_DI_UNCONNECTED [3:0]),
        .O({\NLW_MULT.OP/EXP/EXP_ADD.C_CHAIN/CARRYS_Q_DEL.FAST_DEL.CARRY_EXIT_CARRY4_O_UNCONNECTED [3:1],\MULT.OP/EXP/EXP_ADD.C_CHAIN/D }),
        .S({\NLW_MULT.OP/EXP/EXP_ADD.C_CHAIN/CARRYS_Q_DEL.FAST_DEL.CARRY_EXIT_CARRY4_S_UNCONNECTED [3:1],\<const0> }));
GND \MULT.OP/EXP/EXP_ADD.C_CHAIN/CARRYS_Q_DEL.FAST_DEL.CARRY_EXIT_CARRY4_GND 
       (.G(lopt_13));
(* XILINX_LEGACY_PRIM = "FDE" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/EXP/EXP_ADD.C_CHAIN/CARRYS_Q_DEL.FAST_DEL.CARRY_FD 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/EXP/EXP_ADD.C_CHAIN/D ),
        .Q(\MULT.OP/EXP/p_1_in4_in ),
        .R(GND_2));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* box_type = "PRIMITIVE" *) 
   CARRY4 \MULT.OP/EXP/EXP_ADD.C_CHAIN/CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4 
       (.CI(lopt_2),
        .CO({\n_0_MULT.OP/EXP/EXP_ADD.C_CHAIN/CHAIN_GEN[3].C_MUX.CARRY_MUX ,\n_0_MULT.OP/EXP/EXP_ADD.C_CHAIN/CHAIN_GEN[2].C_MUX.CARRY_MUX ,\n_0_MULT.OP/EXP/EXP_ADD.C_CHAIN/CHAIN_GEN[1].C_MUX.CARRY_MUX ,\MULT.OP/EXP/EXP_ADD.C_CHAIN/CI }),
        .CYINIT(\<const1> ),
        .DI(m_axis_z_tdata_b[26:23]),
        .O({\n_0_MULT.OP/EXP/EXP_ADD.C_CHAIN/CHAIN_GEN[3].Q_XOR.SUM_XOR ,\n_0_MULT.OP/EXP/EXP_ADD.C_CHAIN/CHAIN_GEN[2].Q_XOR.SUM_XOR ,\n_0_MULT.OP/EXP/EXP_ADD.C_CHAIN/CHAIN_GEN[1].Q_XOR.SUM_XOR ,\MULT.OP/EXP/EXP_ADD.C_CHAIN/O }),
        .S(\MULT.OP/EXP/a_xor_b_ip [3:0]));
GND \MULT.OP/EXP/EXP_ADD.C_CHAIN/CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_GND 
       (.G(lopt_2));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* box_type = "PRIMITIVE" *) 
   CARRY4 \MULT.OP/EXP/EXP_ADD.C_CHAIN/CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4 
       (.CI(\n_0_MULT.OP/EXP/EXP_ADD.C_CHAIN/CHAIN_GEN[3].C_MUX.CARRY_MUX ),
        .CO({\n_0_MULT.OP/EXP/EXP_ADD.C_CHAIN/CHAIN_GEN[7].C_MUX.CARRY_MUX ,\n_0_MULT.OP/EXP/EXP_ADD.C_CHAIN/CHAIN_GEN[6].C_MUX.CARRY_MUX ,\n_0_MULT.OP/EXP/EXP_ADD.C_CHAIN/CHAIN_GEN[5].C_MUX.CARRY_MUX ,\n_0_MULT.OP/EXP/EXP_ADD.C_CHAIN/CHAIN_GEN[4].C_MUX.CARRY_MUX }),
        .CYINIT(lopt_3),
        .DI(m_axis_z_tdata_b[30:27]),
        .O({\n_0_MULT.OP/EXP/EXP_ADD.C_CHAIN/CHAIN_GEN[7].Q_XOR.SUM_XOR ,\n_0_MULT.OP/EXP/EXP_ADD.C_CHAIN/CHAIN_GEN[6].Q_XOR.SUM_XOR ,\n_0_MULT.OP/EXP/EXP_ADD.C_CHAIN/CHAIN_GEN[5].Q_XOR.SUM_XOR ,\n_0_MULT.OP/EXP/EXP_ADD.C_CHAIN/CHAIN_GEN[4].Q_XOR.SUM_XOR }),
        .S(\MULT.OP/EXP/a_xor_b_ip [7:4]));
GND \MULT.OP/EXP/EXP_ADD.C_CHAIN/CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_GND 
       (.G(lopt_3));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/EXP/EXP_ADD.C_CHAIN/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/EXP/EXP_ADD.C_CHAIN/O ),
        .Q(\MULT.OP/EXP/EXP_ADD.C_CHAIN/Q_DEL/i_pipe/first_q [0]),
        .R(\<const0> ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/EXP/EXP_ADD.C_CHAIN/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[1] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/EXP/EXP_ADD.C_CHAIN/CHAIN_GEN[1].Q_XOR.SUM_XOR ),
        .Q(\MULT.OP/EXP/EXP_ADD.C_CHAIN/Q_DEL/i_pipe/first_q [1]),
        .R(\<const0> ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/EXP/EXP_ADD.C_CHAIN/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[2] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/EXP/EXP_ADD.C_CHAIN/CHAIN_GEN[2].Q_XOR.SUM_XOR ),
        .Q(\MULT.OP/EXP/EXP_ADD.C_CHAIN/Q_DEL/i_pipe/first_q [2]),
        .R(\<const0> ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/EXP/EXP_ADD.C_CHAIN/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[3] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/EXP/EXP_ADD.C_CHAIN/CHAIN_GEN[3].Q_XOR.SUM_XOR ),
        .Q(\MULT.OP/EXP/EXP_ADD.C_CHAIN/Q_DEL/i_pipe/first_q [3]),
        .R(\<const0> ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/EXP/EXP_ADD.C_CHAIN/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[4] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/EXP/EXP_ADD.C_CHAIN/CHAIN_GEN[4].Q_XOR.SUM_XOR ),
        .Q(\MULT.OP/EXP/EXP_ADD.C_CHAIN/Q_DEL/i_pipe/first_q [4]),
        .R(\<const0> ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/EXP/EXP_ADD.C_CHAIN/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[5] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/EXP/EXP_ADD.C_CHAIN/CHAIN_GEN[5].Q_XOR.SUM_XOR ),
        .Q(\MULT.OP/EXP/EXP_ADD.C_CHAIN/Q_DEL/i_pipe/first_q [5]),
        .R(\<const0> ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/EXP/EXP_ADD.C_CHAIN/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[6] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/EXP/EXP_ADD.C_CHAIN/CHAIN_GEN[6].Q_XOR.SUM_XOR ),
        .Q(\MULT.OP/EXP/EXP_ADD.C_CHAIN/Q_DEL/i_pipe/first_q [6]),
        .R(\<const0> ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/EXP/EXP_ADD.C_CHAIN/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[7] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/EXP/EXP_ADD.C_CHAIN/CHAIN_GEN[7].Q_XOR.SUM_XOR ),
        .Q(\MULT.OP/EXP/EXP_ADD.C_CHAIN/Q_DEL/i_pipe/first_q [7]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/EXP/EXP_ADD.C_CHAIN/Q_DEL/i_pipe/first_q [0]),
        .Q(\MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/first_q [0]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/opt_has_pipe.first_q_reg[1] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/EXP/EXP_ADD.C_CHAIN/Q_DEL/i_pipe/first_q [1]),
        .Q(\MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/first_q [1]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/opt_has_pipe.first_q_reg[2] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/EXP/EXP_ADD.C_CHAIN/Q_DEL/i_pipe/first_q [2]),
        .Q(\MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/first_q [2]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/opt_has_pipe.first_q_reg[3] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/EXP/EXP_ADD.C_CHAIN/Q_DEL/i_pipe/first_q [3]),
        .Q(\MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/first_q [3]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/opt_has_pipe.first_q_reg[4] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/EXP/EXP_ADD.C_CHAIN/Q_DEL/i_pipe/first_q [4]),
        .Q(\MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/first_q [4]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/opt_has_pipe.first_q_reg[5] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/EXP/EXP_ADD.C_CHAIN/Q_DEL/i_pipe/first_q [5]),
        .Q(\MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/first_q [5]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/opt_has_pipe.first_q_reg[6] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/EXP/EXP_ADD.C_CHAIN/Q_DEL/i_pipe/first_q [6]),
        .Q(\MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/first_q [6]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/opt_has_pipe.first_q_reg[7] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/EXP/EXP_ADD.C_CHAIN/Q_DEL/i_pipe/first_q [7]),
        .Q(\MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/first_q [7]),
        .R(\<const0> ));
(* srl_bus_name = "U0/i_synth/\MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/opt_has_pipe.i_pipe[3].pipe_reg[3] " *) 
   (* srl_name = "U0/i_synth/\MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/opt_has_pipe.i_pipe[3].pipe_reg[3][0]_srl2 " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     \MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/opt_has_pipe.i_pipe[3].pipe_reg[3][0]_srl2 
       (.A0(\<const1> ),
        .A1(\<const0> ),
        .A2(\<const0> ),
        .A3(\<const0> ),
        .CE(\<const1> ),
        .CLK(aclk),
        .D(\MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/first_q [0]),
        .Q(\n_0_MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/opt_has_pipe.i_pipe[3].pipe_reg[3][0]_srl2 ));
(* srl_bus_name = "U0/i_synth/\MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/opt_has_pipe.i_pipe[3].pipe_reg[3] " *) 
   (* srl_name = "U0/i_synth/\MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/opt_has_pipe.i_pipe[3].pipe_reg[3][1]_srl2 " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     \MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/opt_has_pipe.i_pipe[3].pipe_reg[3][1]_srl2 
       (.A0(\<const1> ),
        .A1(\<const0> ),
        .A2(\<const0> ),
        .A3(\<const0> ),
        .CE(\<const1> ),
        .CLK(aclk),
        .D(\MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/first_q [1]),
        .Q(\n_0_MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/opt_has_pipe.i_pipe[3].pipe_reg[3][1]_srl2 ));
(* srl_bus_name = "U0/i_synth/\MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/opt_has_pipe.i_pipe[3].pipe_reg[3] " *) 
   (* srl_name = "U0/i_synth/\MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/opt_has_pipe.i_pipe[3].pipe_reg[3][2]_srl2 " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     \MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/opt_has_pipe.i_pipe[3].pipe_reg[3][2]_srl2 
       (.A0(\<const1> ),
        .A1(\<const0> ),
        .A2(\<const0> ),
        .A3(\<const0> ),
        .CE(\<const1> ),
        .CLK(aclk),
        .D(\MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/first_q [2]),
        .Q(\n_0_MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/opt_has_pipe.i_pipe[3].pipe_reg[3][2]_srl2 ));
(* srl_bus_name = "U0/i_synth/\MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/opt_has_pipe.i_pipe[3].pipe_reg[3] " *) 
   (* srl_name = "U0/i_synth/\MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/opt_has_pipe.i_pipe[3].pipe_reg[3][3]_srl2 " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     \MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/opt_has_pipe.i_pipe[3].pipe_reg[3][3]_srl2 
       (.A0(\<const1> ),
        .A1(\<const0> ),
        .A2(\<const0> ),
        .A3(\<const0> ),
        .CE(\<const1> ),
        .CLK(aclk),
        .D(\MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/first_q [3]),
        .Q(\n_0_MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/opt_has_pipe.i_pipe[3].pipe_reg[3][3]_srl2 ));
(* srl_bus_name = "U0/i_synth/\MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/opt_has_pipe.i_pipe[3].pipe_reg[3] " *) 
   (* srl_name = "U0/i_synth/\MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/opt_has_pipe.i_pipe[3].pipe_reg[3][4]_srl2 " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     \MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/opt_has_pipe.i_pipe[3].pipe_reg[3][4]_srl2 
       (.A0(\<const1> ),
        .A1(\<const0> ),
        .A2(\<const0> ),
        .A3(\<const0> ),
        .CE(\<const1> ),
        .CLK(aclk),
        .D(\MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/first_q [4]),
        .Q(\n_0_MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/opt_has_pipe.i_pipe[3].pipe_reg[3][4]_srl2 ));
(* srl_bus_name = "U0/i_synth/\MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/opt_has_pipe.i_pipe[3].pipe_reg[3] " *) 
   (* srl_name = "U0/i_synth/\MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/opt_has_pipe.i_pipe[3].pipe_reg[3][5]_srl2 " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     \MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/opt_has_pipe.i_pipe[3].pipe_reg[3][5]_srl2 
       (.A0(\<const1> ),
        .A1(\<const0> ),
        .A2(\<const0> ),
        .A3(\<const0> ),
        .CE(\<const1> ),
        .CLK(aclk),
        .D(\MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/first_q [5]),
        .Q(\n_0_MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/opt_has_pipe.i_pipe[3].pipe_reg[3][5]_srl2 ));
(* srl_bus_name = "U0/i_synth/\MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/opt_has_pipe.i_pipe[3].pipe_reg[3] " *) 
   (* srl_name = "U0/i_synth/\MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/opt_has_pipe.i_pipe[3].pipe_reg[3][6]_srl2 " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     \MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/opt_has_pipe.i_pipe[3].pipe_reg[3][6]_srl2 
       (.A0(\<const1> ),
        .A1(\<const0> ),
        .A2(\<const0> ),
        .A3(\<const0> ),
        .CE(\<const1> ),
        .CLK(aclk),
        .D(\MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/first_q [6]),
        .Q(\n_0_MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/opt_has_pipe.i_pipe[3].pipe_reg[3][6]_srl2 ));
(* srl_bus_name = "U0/i_synth/\MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/opt_has_pipe.i_pipe[3].pipe_reg[3] " *) 
   (* srl_name = "U0/i_synth/\MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/opt_has_pipe.i_pipe[3].pipe_reg[3][7]_srl2 " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     \MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/opt_has_pipe.i_pipe[3].pipe_reg[3][7]_srl2 
       (.A0(\<const1> ),
        .A1(\<const0> ),
        .A2(\<const0> ),
        .A3(\<const0> ),
        .CE(\<const1> ),
        .CLK(aclk),
        .D(\MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/first_q [7]),
        .Q(\n_0_MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/opt_has_pipe.i_pipe[3].pipe_reg[3][7]_srl2 ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/opt_has_pipe.i_pipe[4].pipe_reg[4][0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/opt_has_pipe.i_pipe[3].pipe_reg[3][0]_srl2 ),
        .Q(\n_0_MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/opt_has_pipe.i_pipe[4].pipe_reg[4][0] ),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/opt_has_pipe.i_pipe[4].pipe_reg[4][1] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/opt_has_pipe.i_pipe[3].pipe_reg[3][1]_srl2 ),
        .Q(\n_0_MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/opt_has_pipe.i_pipe[4].pipe_reg[4][1] ),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/opt_has_pipe.i_pipe[4].pipe_reg[4][2] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/opt_has_pipe.i_pipe[3].pipe_reg[3][2]_srl2 ),
        .Q(\n_0_MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/opt_has_pipe.i_pipe[4].pipe_reg[4][2] ),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/opt_has_pipe.i_pipe[4].pipe_reg[4][3] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/opt_has_pipe.i_pipe[3].pipe_reg[3][3]_srl2 ),
        .Q(\n_0_MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/opt_has_pipe.i_pipe[4].pipe_reg[4][3] ),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/opt_has_pipe.i_pipe[4].pipe_reg[4][4] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/opt_has_pipe.i_pipe[3].pipe_reg[3][4]_srl2 ),
        .Q(\n_0_MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/opt_has_pipe.i_pipe[4].pipe_reg[4][4] ),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/opt_has_pipe.i_pipe[4].pipe_reg[4][5] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/opt_has_pipe.i_pipe[3].pipe_reg[3][5]_srl2 ),
        .Q(\n_0_MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/opt_has_pipe.i_pipe[4].pipe_reg[4][5] ),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/opt_has_pipe.i_pipe[4].pipe_reg[4][6] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/opt_has_pipe.i_pipe[3].pipe_reg[3][6]_srl2 ),
        .Q(\n_0_MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/opt_has_pipe.i_pipe[4].pipe_reg[4][6] ),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/opt_has_pipe.i_pipe[4].pipe_reg[4][7] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/opt_has_pipe.i_pipe[3].pipe_reg[3][7]_srl2 ),
        .Q(\n_0_MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/opt_has_pipe.i_pipe[4].pipe_reg[4][7] ),
        .R(\<const0> ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/EXP/FLOW_DEC_DEL/i_pipe/opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/EXP/flow_int_up [3]),
        .Q(\MULT.OP/EXP/FLOW_DEC_DEL/i_pipe/first_q ),
        .R(\<const0> ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/EXP/FLOW_UP_DEL/i_pipe/opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/EXP/flow_int_up [0]),
        .Q(\MULT.OP/EXP/FLOW_UP_DEL/i_pipe/first_q [0]),
        .R(\<const0> ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/EXP/FLOW_UP_DEL/i_pipe/opt_has_pipe.first_q_reg[1] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/EXP/flow_int_up [1]),
        .Q(\MULT.OP/EXP/FLOW_UP_DEL/i_pipe/first_q [1]),
        .R(\<const0> ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/EXP/FLOW_UP_DEL/i_pipe/opt_has_pipe.first_q_reg[2] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/EXP/flow_int_up [2]),
        .Q(\MULT.OP/EXP/FLOW_UP_DEL/i_pipe/first_q [2]),
        .R(\<const0> ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/EXP/FLOW_UP_DEL/i_pipe/opt_has_pipe.first_q_reg[3] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/EXP/flow_int_up [3]),
        .Q(\MULT.OP/EXP/FLOW_UP_DEL/i_pipe/first_q [3]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/EXP/FLOW_UP_DEL/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/EXP/FLOW_UP_DEL/i_pipe/first_q [0]),
        .Q(\MULT.OP/flow_op [0]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/EXP/FLOW_UP_DEL/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][1] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/EXP/FLOW_UP_DEL/i_pipe/first_q [1]),
        .Q(\MULT.OP/flow_op [1]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/EXP/FLOW_UP_DEL/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][2] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/EXP/FLOW_UP_DEL/i_pipe/first_q [2]),
        .Q(\MULT.OP/flow_op [2]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/EXP/FLOW_UP_DEL/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][3] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/EXP/FLOW_UP_DEL/i_pipe/first_q [3]),
        .Q(\MULT.OP/flow_op [3]),
        .R(\<const0> ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/EXP/INV_OP_DEL/i_pipe/opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/EXP/invalid_op_det ),
        .Q(\MULT.OP/EXP/INV_OP_DEL/i_pipe/first_q ),
        .R(\<const0> ));
(* srl_bus_name = "U0/i_synth/\MULT.OP/EXP/INV_OP_DEL/i_pipe/opt_has_pipe.i_pipe[6].pipe_reg[6] " *) 
   (* srl_name = "U0/i_synth/\MULT.OP/EXP/INV_OP_DEL/i_pipe/opt_has_pipe.i_pipe[6].pipe_reg[6][0]_srl5 " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     \MULT.OP/EXP/INV_OP_DEL/i_pipe/opt_has_pipe.i_pipe[6].pipe_reg[6][0]_srl5 
       (.A0(\<const0> ),
        .A1(\<const0> ),
        .A2(\<const1> ),
        .A3(\<const0> ),
        .CE(\<const1> ),
        .CLK(aclk),
        .D(\MULT.OP/EXP/INV_OP_DEL/i_pipe/first_q ),
        .Q(\n_0_MULT.OP/EXP/INV_OP_DEL/i_pipe/opt_has_pipe.i_pipe[6].pipe_reg[6][0]_srl5 ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/EXP/IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/EXP/sign_det ),
        .Q(\MULT.OP/EXP/IP_SIGN_DELAY/i_pipe/first_q ),
        .R(\<const0> ));
(* srl_bus_name = "U0/i_synth/\MULT.OP/EXP/IP_SIGN_DELAY/i_pipe/opt_has_pipe.i_pipe[3].pipe_reg[3] " *) 
   (* srl_name = "U0/i_synth/\MULT.OP/EXP/IP_SIGN_DELAY/i_pipe/opt_has_pipe.i_pipe[3].pipe_reg[3][0]_srl2 " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     \MULT.OP/EXP/IP_SIGN_DELAY/i_pipe/opt_has_pipe.i_pipe[3].pipe_reg[3][0]_srl2 
       (.A0(\<const1> ),
        .A1(\<const0> ),
        .A2(\<const0> ),
        .A3(\<const0> ),
        .CE(\<const1> ),
        .CLK(aclk),
        .D(\MULT.OP/EXP/IP_SIGN_DELAY/i_pipe/first_q ),
        .Q(\n_0_MULT.OP/EXP/IP_SIGN_DELAY/i_pipe/opt_has_pipe.i_pipe[3].pipe_reg[3][0]_srl2 ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/EXP/IP_SIGN_DELAY/i_pipe/opt_has_pipe.i_pipe[4].pipe_reg[4][0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/EXP/IP_SIGN_DELAY/i_pipe/opt_has_pipe.i_pipe[3].pipe_reg[3][0]_srl2 ),
        .Q(\MULT.OP/EXP/sign_int_up ),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/EXP/PROD_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/EXP/prod_sign_ip ),
        .Q(\MULT.OP/EXP/PROD_DELAY/i_pipe/first_q ),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/EXP/SIGN_RND_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/EXP/PROD_DELAY/i_pipe/first_q ),
        .Q(\MULT.OP/EXP/SIGN_RND_DELAY/i_pipe/first_q ),
        .R(\<const0> ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/EXP/SIGN_UP_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/EXP/sign_int_up ),
        .Q(\MULT.OP/EXP/SIGN_UP_DELAY/i_pipe/first_q ),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/EXP/SIGN_UP_DELAY/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/EXP/SIGN_UP_DELAY/i_pipe/first_q ),
        .Q(SIGN),
        .R(\<const0> ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/EXP/SIG_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/EXP/flow_sig [0]),
        .Q(\MULT.OP/EXP/SIG_DELAY/i_pipe/first_q [0]),
        .R(\<const0> ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/EXP/SIG_DELAY/i_pipe/opt_has_pipe.first_q_reg[1] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/EXP/flow_sig [1]),
        .Q(\MULT.OP/EXP/SIG_DELAY/i_pipe/first_q [1]),
        .R(\<const0> ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/EXP/SIG_DELAY/i_pipe/opt_has_pipe.first_q_reg[2] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/EXP/flow_sig [2]),
        .Q(\MULT.OP/EXP/SIG_DELAY/i_pipe/first_q [2]),
        .R(\<const0> ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/EXP/SIG_DELAY/i_pipe/opt_has_pipe.first_q_reg[3] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/EXP/flow_sig [3]),
        .Q(\MULT.OP/EXP/SIG_DELAY/i_pipe/first_q [3]),
        .R(\<const0> ));
(* srl_bus_name = "U0/i_synth/\MULT.OP/EXP/SIG_DELAY/i_pipe/opt_has_pipe.i_pipe[3].pipe_reg[3] " *) 
   (* srl_name = "U0/i_synth/\MULT.OP/EXP/SIG_DELAY/i_pipe/opt_has_pipe.i_pipe[3].pipe_reg[3][0]_srl2 " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     \MULT.OP/EXP/SIG_DELAY/i_pipe/opt_has_pipe.i_pipe[3].pipe_reg[3][0]_srl2 
       (.A0(\<const1> ),
        .A1(\<const0> ),
        .A2(\<const0> ),
        .A3(\<const0> ),
        .CE(\<const1> ),
        .CLK(aclk),
        .D(\MULT.OP/EXP/SIG_DELAY/i_pipe/first_q [0]),
        .Q(\n_0_MULT.OP/EXP/SIG_DELAY/i_pipe/opt_has_pipe.i_pipe[3].pipe_reg[3][0]_srl2 ));
(* srl_bus_name = "U0/i_synth/\MULT.OP/EXP/SIG_DELAY/i_pipe/opt_has_pipe.i_pipe[3].pipe_reg[3] " *) 
   (* srl_name = "U0/i_synth/\MULT.OP/EXP/SIG_DELAY/i_pipe/opt_has_pipe.i_pipe[3].pipe_reg[3][1]_srl2 " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     \MULT.OP/EXP/SIG_DELAY/i_pipe/opt_has_pipe.i_pipe[3].pipe_reg[3][1]_srl2 
       (.A0(\<const1> ),
        .A1(\<const0> ),
        .A2(\<const0> ),
        .A3(\<const0> ),
        .CE(\<const1> ),
        .CLK(aclk),
        .D(\MULT.OP/EXP/SIG_DELAY/i_pipe/first_q [1]),
        .Q(\n_0_MULT.OP/EXP/SIG_DELAY/i_pipe/opt_has_pipe.i_pipe[3].pipe_reg[3][1]_srl2 ));
(* srl_bus_name = "U0/i_synth/\MULT.OP/EXP/SIG_DELAY/i_pipe/opt_has_pipe.i_pipe[3].pipe_reg[3] " *) 
   (* srl_name = "U0/i_synth/\MULT.OP/EXP/SIG_DELAY/i_pipe/opt_has_pipe.i_pipe[3].pipe_reg[3][2]_srl2 " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     \MULT.OP/EXP/SIG_DELAY/i_pipe/opt_has_pipe.i_pipe[3].pipe_reg[3][2]_srl2 
       (.A0(\<const1> ),
        .A1(\<const0> ),
        .A2(\<const0> ),
        .A3(\<const0> ),
        .CE(\<const1> ),
        .CLK(aclk),
        .D(\MULT.OP/EXP/SIG_DELAY/i_pipe/first_q [2]),
        .Q(\n_0_MULT.OP/EXP/SIG_DELAY/i_pipe/opt_has_pipe.i_pipe[3].pipe_reg[3][2]_srl2 ));
(* srl_bus_name = "U0/i_synth/\MULT.OP/EXP/SIG_DELAY/i_pipe/opt_has_pipe.i_pipe[3].pipe_reg[3] " *) 
   (* srl_name = "U0/i_synth/\MULT.OP/EXP/SIG_DELAY/i_pipe/opt_has_pipe.i_pipe[3].pipe_reg[3][3]_srl2 " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     \MULT.OP/EXP/SIG_DELAY/i_pipe/opt_has_pipe.i_pipe[3].pipe_reg[3][3]_srl2 
       (.A0(\<const1> ),
        .A1(\<const0> ),
        .A2(\<const0> ),
        .A3(\<const0> ),
        .CE(\<const1> ),
        .CLK(aclk),
        .D(\MULT.OP/EXP/SIG_DELAY/i_pipe/first_q [3]),
        .Q(\n_0_MULT.OP/EXP/SIG_DELAY/i_pipe/opt_has_pipe.i_pipe[3].pipe_reg[3][3]_srl2 ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/EXP/SIG_DELAY/i_pipe/opt_has_pipe.i_pipe[4].pipe_reg[4][0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/EXP/SIG_DELAY/i_pipe/opt_has_pipe.i_pipe[3].pipe_reg[3][0]_srl2 ),
        .Q(\n_0_MULT.OP/EXP/SIG_DELAY/i_pipe/opt_has_pipe.i_pipe[4].pipe_reg[4][0] ),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/EXP/SIG_DELAY/i_pipe/opt_has_pipe.i_pipe[4].pipe_reg[4][1] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/EXP/SIG_DELAY/i_pipe/opt_has_pipe.i_pipe[3].pipe_reg[3][1]_srl2 ),
        .Q(\n_0_MULT.OP/EXP/SIG_DELAY/i_pipe/opt_has_pipe.i_pipe[4].pipe_reg[4][1] ),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/EXP/SIG_DELAY/i_pipe/opt_has_pipe.i_pipe[4].pipe_reg[4][2] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/EXP/SIG_DELAY/i_pipe/opt_has_pipe.i_pipe[3].pipe_reg[3][2]_srl2 ),
        .Q(\MULT.OP/EXP/p_0_in2_in ),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/EXP/SIG_DELAY/i_pipe/opt_has_pipe.i_pipe[4].pipe_reg[4][3] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/EXP/SIG_DELAY/i_pipe/opt_has_pipe.i_pipe[3].pipe_reg[3][3]_srl2 ),
        .Q(\n_0_MULT.OP/EXP/SIG_DELAY/i_pipe/opt_has_pipe.i_pipe[4].pipe_reg[4][3] ),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/EXP/STATE_DEC_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[0]_i_1__2 ),
        .Q(\MULT.OP/EXP/STATE_DEC_DELAY/i_pipe/first_q [0]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/EXP/STATE_DEC_DELAY/i_pipe/opt_has_pipe.first_q_reg[10] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[10]_i_1 ),
        .Q(\MULT.OP/EXP/STATE_DEC_DELAY/i_pipe/first_q [10]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/EXP/STATE_DEC_DELAY/i_pipe/opt_has_pipe.first_q_reg[11] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[11]_i_1 ),
        .Q(\MULT.OP/EXP/STATE_DEC_DELAY/i_pipe/first_q [11]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/EXP/STATE_DEC_DELAY/i_pipe/opt_has_pipe.first_q_reg[12] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[12]_i_1 ),
        .Q(\MULT.OP/EXP/STATE_DEC_DELAY/i_pipe/first_q [12]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/EXP/STATE_DEC_DELAY/i_pipe/opt_has_pipe.first_q_reg[13] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[13]_i_1 ),
        .Q(\MULT.OP/EXP/STATE_DEC_DELAY/i_pipe/first_q [13]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/EXP/STATE_DEC_DELAY/i_pipe/opt_has_pipe.first_q_reg[1] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[1]_i_1__0 ),
        .Q(\MULT.OP/EXP/STATE_DEC_DELAY/i_pipe/first_q [1]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/EXP/STATE_DEC_DELAY/i_pipe/opt_has_pipe.first_q_reg[2] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[2]_i_1 ),
        .Q(\MULT.OP/EXP/STATE_DEC_DELAY/i_pipe/first_q [2]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/EXP/STATE_DEC_DELAY/i_pipe/opt_has_pipe.first_q_reg[3] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[3]_i_1 ),
        .Q(\MULT.OP/EXP/STATE_DEC_DELAY/i_pipe/first_q [3]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/EXP/STATE_DEC_DELAY/i_pipe/opt_has_pipe.first_q_reg[4] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[10]_i_1 ),
        .Q(\MULT.OP/EXP/STATE_DEC_DELAY/i_pipe/first_q [4]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/EXP/STATE_DEC_DELAY/i_pipe/opt_has_pipe.first_q_reg[5] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[11]_i_1 ),
        .Q(\MULT.OP/EXP/STATE_DEC_DELAY/i_pipe/first_q [5]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/EXP/STATE_DEC_DELAY/i_pipe/opt_has_pipe.first_q_reg[6] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\<const0> ),
        .Q(\MULT.OP/EXP/STATE_DEC_DELAY/i_pipe/first_q [6]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/EXP/STATE_DEC_DELAY/i_pipe/opt_has_pipe.first_q_reg[7] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\<const0> ),
        .Q(\MULT.OP/EXP/STATE_DEC_DELAY/i_pipe/first_q [7]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/EXP/STATE_DEC_DELAY/i_pipe/opt_has_pipe.first_q_reg[8] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[10]_i_1 ),
        .Q(\MULT.OP/EXP/STATE_DEC_DELAY/i_pipe/first_q [8]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/EXP/STATE_DEC_DELAY/i_pipe/opt_has_pipe.first_q_reg[9] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[11]_i_1 ),
        .Q(\MULT.OP/EXP/STATE_DEC_DELAY/i_pipe/first_q [9]),
        .R(\<const0> ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/EXP/STATE_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/EXP/state_det [0]),
        .Q(\MULT.OP/EXP/STATE_DELAY/i_pipe/first_q [0]),
        .R(\<const0> ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/EXP/STATE_DELAY/i_pipe/opt_has_pipe.first_q_reg[1] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/EXP/state_det [1]),
        .Q(\MULT.OP/EXP/STATE_DELAY/i_pipe/first_q [1]),
        .R(\<const0> ));
(* srl_bus_name = "U0/i_synth/\MULT.OP/EXP/STATE_DELAY/i_pipe/opt_has_pipe.i_pipe[3].pipe_reg[3] " *) 
   (* srl_name = "U0/i_synth/\MULT.OP/EXP/STATE_DELAY/i_pipe/opt_has_pipe.i_pipe[3].pipe_reg[3][0]_srl2 " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     \MULT.OP/EXP/STATE_DELAY/i_pipe/opt_has_pipe.i_pipe[3].pipe_reg[3][0]_srl2 
       (.A0(\<const1> ),
        .A1(\<const0> ),
        .A2(\<const0> ),
        .A3(\<const0> ),
        .CE(\<const1> ),
        .CLK(aclk),
        .D(\MULT.OP/EXP/STATE_DELAY/i_pipe/first_q [0]),
        .Q(\n_0_MULT.OP/EXP/STATE_DELAY/i_pipe/opt_has_pipe.i_pipe[3].pipe_reg[3][0]_srl2 ));
(* srl_bus_name = "U0/i_synth/\MULT.OP/EXP/STATE_DELAY/i_pipe/opt_has_pipe.i_pipe[3].pipe_reg[3] " *) 
   (* srl_name = "U0/i_synth/\MULT.OP/EXP/STATE_DELAY/i_pipe/opt_has_pipe.i_pipe[3].pipe_reg[3][1]_srl2 " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     \MULT.OP/EXP/STATE_DELAY/i_pipe/opt_has_pipe.i_pipe[3].pipe_reg[3][1]_srl2 
       (.A0(\<const1> ),
        .A1(\<const0> ),
        .A2(\<const0> ),
        .A3(\<const0> ),
        .CE(\<const1> ),
        .CLK(aclk),
        .D(\MULT.OP/EXP/STATE_DELAY/i_pipe/first_q [1]),
        .Q(\n_0_MULT.OP/EXP/STATE_DELAY/i_pipe/opt_has_pipe.i_pipe[3].pipe_reg[3][1]_srl2 ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/EXP/STATE_DELAY/i_pipe/opt_has_pipe.i_pipe[4].pipe_reg[4][0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/EXP/STATE_DELAY/i_pipe/opt_has_pipe.i_pipe[3].pipe_reg[3][0]_srl2 ),
        .Q(\MULT.OP/EXP/state [0]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/EXP/STATE_DELAY/i_pipe/opt_has_pipe.i_pipe[4].pipe_reg[4][1] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/EXP/STATE_DELAY/i_pipe/opt_has_pipe.i_pipe[3].pipe_reg[3][1]_srl2 ),
        .Q(\MULT.OP/EXP/state [1]),
        .R(\<const0> ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/EXP/STATE_UP_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[0]_i_1__1 ),
        .Q(\MULT.OP/EXP/STATE_UP_DELAY/i_pipe/first_q [0]),
        .R(\<const0> ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/EXP/STATE_UP_DELAY/i_pipe/opt_has_pipe.first_q_reg[1] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[1]_i_1 ),
        .Q(\MULT.OP/EXP/STATE_UP_DELAY/i_pipe/first_q [1]),
        .R(\<const0> ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/EXP/STATE_UP_DELAY/i_pipe/opt_has_pipe.first_q_reg[2] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\<const0> ),
        .Q(\MULT.OP/EXP/STATE_UP_DELAY/i_pipe/first_q [2]),
        .R(\<const0> ));
(* C_A_TYPE = "1" *) 
   (* C_A_WIDTH = "24" *) 
   (* C_B_TYPE = "1" *) 
   (* C_B_VALUE = "111111111111111111" *) 
   (* C_B_WIDTH = "24" *) 
   (* C_CCM_IMP = "0" *) 
   (* C_CE_OVERRIDES_SCLR = "0" *) 
   (* C_HAS_CE = "1" *) 
   (* C_HAS_SCLR = "0" *) 
   (* C_HAS_ZERO_DETECT = "1" *) 
   (* C_LATENCY = "1000000015" *) 
   (* C_MODEL_TYPE = "1" *) 
   (* C_MULT_TYPE = "1" *) 
   (* C_OPTIMIZE_GOAL = "1" *) 
   (* C_OUT_HIGH = "47" *) 
   (* C_OUT_LOW = "22" *) 
   (* C_ROUND_OUTPUT = "0" *) 
   (* C_ROUND_PT = "0" *) 
   (* C_VERBOSITY = "0" *) 
   (* C_XDEVICEFAMILY = "kintex7" *) 
   (* downgradeipidentifiedwarnings = "yes" *) 
   ip_fp32_axis_multmult_gen_v12_0_viv \MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/MULT 
       (.A({\<const1> ,p_4_out[22:0]}),
        .B({\<const1> ,m_axis_z_tdata_b[22:0]}),
        .CE(\<const1> ),
        .CLK(aclk),
        .P(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/mant_mult ),
        .PCASC(\MULT.OP/mant_casc_rnd ),
        .SCLR(\<const0> ),
        .ZERO_DETECT(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/zero_detect_mult ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/mant_mult [0]),
        .Q(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/first_q [0]),
        .R(\<const0> ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/opt_has_pipe.first_q_reg[10] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/mant_mult [10]),
        .Q(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/first_q [10]),
        .R(\<const0> ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/opt_has_pipe.first_q_reg[11] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/mant_mult [11]),
        .Q(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/first_q [11]),
        .R(\<const0> ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/opt_has_pipe.first_q_reg[12] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/mant_mult [12]),
        .Q(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/first_q [12]),
        .R(\<const0> ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/opt_has_pipe.first_q_reg[13] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/mant_mult [13]),
        .Q(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/first_q [13]),
        .R(\<const0> ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/opt_has_pipe.first_q_reg[14] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/mant_mult [14]),
        .Q(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/first_q [14]),
        .R(\<const0> ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/opt_has_pipe.first_q_reg[15] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/mant_mult [15]),
        .Q(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/first_q [15]),
        .R(\<const0> ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/opt_has_pipe.first_q_reg[16] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/mant_mult [16]),
        .Q(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/first_q [16]),
        .R(\<const0> ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/opt_has_pipe.first_q_reg[17] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/mant_mult [17]),
        .Q(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/first_q [17]),
        .R(\<const0> ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/opt_has_pipe.first_q_reg[18] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/mant_mult [18]),
        .Q(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/first_q [18]),
        .R(\<const0> ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/opt_has_pipe.first_q_reg[19] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/mant_mult [19]),
        .Q(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/first_q [19]),
        .R(\<const0> ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/opt_has_pipe.first_q_reg[1] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/mant_mult [1]),
        .Q(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/first_q [1]),
        .R(\<const0> ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/opt_has_pipe.first_q_reg[20] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/mant_mult [20]),
        .Q(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/first_q [20]),
        .R(\<const0> ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/opt_has_pipe.first_q_reg[21] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/mant_mult [21]),
        .Q(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/first_q [21]),
        .R(\<const0> ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/opt_has_pipe.first_q_reg[22] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/mant_mult [22]),
        .Q(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/first_q [22]),
        .R(\<const0> ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/opt_has_pipe.first_q_reg[23] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/mant_mult [23]),
        .Q(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/first_q [23]),
        .R(\<const0> ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/opt_has_pipe.first_q_reg[24] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/mant_mult [24]),
        .Q(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/first_q [24]),
        .R(\<const0> ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/opt_has_pipe.first_q_reg[25] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/mant_mult [25]),
        .Q(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/first_q [25]),
        .R(\<const0> ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/opt_has_pipe.first_q_reg[2] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/mant_mult [2]),
        .Q(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/first_q [2]),
        .R(\<const0> ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/opt_has_pipe.first_q_reg[3] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/mant_mult [3]),
        .Q(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/first_q [3]),
        .R(\<const0> ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/opt_has_pipe.first_q_reg[4] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/mant_mult [4]),
        .Q(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/first_q [4]),
        .R(\<const0> ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/opt_has_pipe.first_q_reg[5] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/mant_mult [5]),
        .Q(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/first_q [5]),
        .R(\<const0> ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/opt_has_pipe.first_q_reg[6] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/mant_mult [6]),
        .Q(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/first_q [6]),
        .R(\<const0> ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/opt_has_pipe.first_q_reg[7] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/mant_mult [7]),
        .Q(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/first_q [7]),
        .R(\<const0> ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/opt_has_pipe.first_q_reg[8] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/mant_mult [8]),
        .Q(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/first_q [8]),
        .R(\<const0> ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/opt_has_pipe.first_q_reg[9] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/mant_mult [9]),
        .Q(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/first_q [9]),
        .R(\<const0> ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.ZERO_DET_DEL/i_pipe/opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/zero_detect_mult [0]),
        .Q(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.ZERO_DET_DEL/i_pipe/first_q [0]),
        .R(\<const0> ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.ZERO_DET_DEL/i_pipe/opt_has_pipe.first_q_reg[1] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/zero_detect_mult [1]),
        .Q(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.ZERO_DET_DEL/i_pipe/first_q [1]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/OP/FLAGS_REG.NOT_LATE_UPDATE_GEN.INVALID_OP_reg 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/EXP/INV_OP_DEL/i_pipe/opt_has_pipe.i_pipe[6].pipe_reg[6][0]_srl5 ),
        .Q(p_3_in),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/OP/FLAGS_REG.NOT_LATE_UPDATE_GEN.OVERFLOW_reg 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/OP/p_12_out ),
        .Q(p_2_in),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/OP/FLAGS_REG.NOT_LATE_UPDATE_GEN.UNDERFLOW_reg 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/OP/p_10_out ),
        .Q(p_1_in),
        .R(\<const0> ));
(* use_sync_reset = "auto" *) 
   (* use_sync_set = "auto" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/OP/RESULT_REG.NORMAL.exp_op_reg[0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/OP/exp_op6_out ),
        .Q(p_0_in[23]),
        .R(\<const0> ));
(* use_sync_reset = "auto" *) 
   (* use_sync_set = "auto" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/OP/RESULT_REG.NORMAL.exp_op_reg[1] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_RESULT_REG.NORMAL.exp_op[1]_i_1 ),
        .Q(p_0_in[24]),
        .R(\MULT.OP/EXP/STATE_DEC_DELAY/i_pipe/first_q [1]));
(* use_sync_reset = "auto" *) 
   (* use_sync_set = "auto" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/OP/RESULT_REG.NORMAL.exp_op_reg[2] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_RESULT_REG.NORMAL.exp_op[2]_i_1 ),
        .Q(p_0_in[25]),
        .R(\MULT.OP/EXP/STATE_DEC_DELAY/i_pipe/first_q [1]));
(* use_sync_reset = "auto" *) 
   (* use_sync_set = "auto" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/OP/RESULT_REG.NORMAL.exp_op_reg[3] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_RESULT_REG.NORMAL.exp_op[3]_i_1 ),
        .Q(p_0_in[26]),
        .R(\MULT.OP/EXP/STATE_DEC_DELAY/i_pipe/first_q [1]));
(* use_sync_reset = "auto" *) 
   (* use_sync_set = "auto" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/OP/RESULT_REG.NORMAL.exp_op_reg[4] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_RESULT_REG.NORMAL.exp_op[4]_i_1 ),
        .Q(p_0_in[27]),
        .R(\MULT.OP/EXP/STATE_DEC_DELAY/i_pipe/first_q [1]));
(* use_sync_reset = "auto" *) 
   (* use_sync_set = "auto" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/OP/RESULT_REG.NORMAL.exp_op_reg[5] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_RESULT_REG.NORMAL.exp_op[5]_i_1 ),
        .Q(p_0_in[28]),
        .R(\MULT.OP/EXP/STATE_DEC_DELAY/i_pipe/first_q [1]));
(* use_sync_reset = "auto" *) 
   (* use_sync_set = "auto" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/OP/RESULT_REG.NORMAL.exp_op_reg[6] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_RESULT_REG.NORMAL.exp_op[6]_i_1 ),
        .Q(p_0_in[29]),
        .R(\MULT.OP/EXP/STATE_DEC_DELAY/i_pipe/first_q [1]));
(* use_sync_reset = "auto" *) 
   (* use_sync_set = "auto" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/OP/RESULT_REG.NORMAL.exp_op_reg[7] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_RESULT_REG.NORMAL.exp_op[7]_i_1 ),
        .Q(p_0_in[30]),
        .R(\MULT.OP/EXP/STATE_DEC_DELAY/i_pipe/first_q [1]));
LUT2 #(
    .INIT(4'hE)) 
     \MULT.OP/OP/RESULT_REG.NORMAL.mant_op[0]_i_1 
       (.I0(\MULT.OP/OP/p_5_out [0]),
        .I1(\MULT.OP/EXP/STATE_DEC_DELAY/i_pipe/first_q [4]),
        .O(\n_0_MULT.OP/OP/RESULT_REG.NORMAL.mant_op[0]_i_1 ));
LUT2 #(
    .INIT(4'hE)) 
     \MULT.OP/OP/RESULT_REG.NORMAL.mant_op[10]_i_1 
       (.I0(\MULT.OP/OP/p_5_out [10]),
        .I1(\MULT.OP/EXP/STATE_DEC_DELAY/i_pipe/first_q [4]),
        .O(\n_0_MULT.OP/OP/RESULT_REG.NORMAL.mant_op[10]_i_1 ));
LUT2 #(
    .INIT(4'hE)) 
     \MULT.OP/OP/RESULT_REG.NORMAL.mant_op[11]_i_1 
       (.I0(\MULT.OP/OP/p_5_out [11]),
        .I1(\MULT.OP/EXP/STATE_DEC_DELAY/i_pipe/first_q [4]),
        .O(\n_0_MULT.OP/OP/RESULT_REG.NORMAL.mant_op[11]_i_1 ));
LUT2 #(
    .INIT(4'hE)) 
     \MULT.OP/OP/RESULT_REG.NORMAL.mant_op[12]_i_1 
       (.I0(\MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/Q_DEL/i_pipe/first_q [0]),
        .I1(\MULT.OP/EXP/STATE_DEC_DELAY/i_pipe/first_q [4]),
        .O(\n_0_MULT.OP/OP/RESULT_REG.NORMAL.mant_op[12]_i_1 ));
LUT2 #(
    .INIT(4'hE)) 
     \MULT.OP/OP/RESULT_REG.NORMAL.mant_op[13]_i_1 
       (.I0(\MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/Q_DEL/i_pipe/first_q [1]),
        .I1(\MULT.OP/EXP/STATE_DEC_DELAY/i_pipe/first_q [4]),
        .O(\n_0_MULT.OP/OP/RESULT_REG.NORMAL.mant_op[13]_i_1 ));
LUT2 #(
    .INIT(4'hE)) 
     \MULT.OP/OP/RESULT_REG.NORMAL.mant_op[14]_i_1 
       (.I0(\MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/Q_DEL/i_pipe/first_q [2]),
        .I1(\MULT.OP/EXP/STATE_DEC_DELAY/i_pipe/first_q [4]),
        .O(\n_0_MULT.OP/OP/RESULT_REG.NORMAL.mant_op[14]_i_1 ));
LUT2 #(
    .INIT(4'hE)) 
     \MULT.OP/OP/RESULT_REG.NORMAL.mant_op[15]_i_1 
       (.I0(\MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/Q_DEL/i_pipe/first_q [3]),
        .I1(\MULT.OP/EXP/STATE_DEC_DELAY/i_pipe/first_q [4]),
        .O(\n_0_MULT.OP/OP/RESULT_REG.NORMAL.mant_op[15]_i_1 ));
LUT2 #(
    .INIT(4'hE)) 
     \MULT.OP/OP/RESULT_REG.NORMAL.mant_op[16]_i_1 
       (.I0(\MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/Q_DEL/i_pipe/first_q [4]),
        .I1(\MULT.OP/EXP/STATE_DEC_DELAY/i_pipe/first_q [4]),
        .O(\n_0_MULT.OP/OP/RESULT_REG.NORMAL.mant_op[16]_i_1 ));
LUT2 #(
    .INIT(4'hE)) 
     \MULT.OP/OP/RESULT_REG.NORMAL.mant_op[17]_i_1 
       (.I0(\MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/Q_DEL/i_pipe/first_q [5]),
        .I1(\MULT.OP/EXP/STATE_DEC_DELAY/i_pipe/first_q [4]),
        .O(\n_0_MULT.OP/OP/RESULT_REG.NORMAL.mant_op[17]_i_1 ));
LUT2 #(
    .INIT(4'hE)) 
     \MULT.OP/OP/RESULT_REG.NORMAL.mant_op[18]_i_1 
       (.I0(\MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/Q_DEL/i_pipe/first_q [6]),
        .I1(\MULT.OP/EXP/STATE_DEC_DELAY/i_pipe/first_q [4]),
        .O(\n_0_MULT.OP/OP/RESULT_REG.NORMAL.mant_op[18]_i_1 ));
LUT2 #(
    .INIT(4'hE)) 
     \MULT.OP/OP/RESULT_REG.NORMAL.mant_op[19]_i_1 
       (.I0(\MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/Q_DEL/i_pipe/first_q [7]),
        .I1(\MULT.OP/EXP/STATE_DEC_DELAY/i_pipe/first_q [4]),
        .O(\n_0_MULT.OP/OP/RESULT_REG.NORMAL.mant_op[19]_i_1 ));
LUT2 #(
    .INIT(4'hE)) 
     \MULT.OP/OP/RESULT_REG.NORMAL.mant_op[1]_i_1 
       (.I0(\MULT.OP/OP/p_5_out [1]),
        .I1(\MULT.OP/EXP/STATE_DEC_DELAY/i_pipe/first_q [4]),
        .O(\n_0_MULT.OP/OP/RESULT_REG.NORMAL.mant_op[1]_i_1 ));
LUT2 #(
    .INIT(4'hE)) 
     \MULT.OP/OP/RESULT_REG.NORMAL.mant_op[20]_i_1 
       (.I0(\MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/Q_DEL/i_pipe/first_q [8]),
        .I1(\MULT.OP/EXP/STATE_DEC_DELAY/i_pipe/first_q [4]),
        .O(\n_0_MULT.OP/OP/RESULT_REG.NORMAL.mant_op[20]_i_1 ));
LUT2 #(
    .INIT(4'hE)) 
     \MULT.OP/OP/RESULT_REG.NORMAL.mant_op[21]_i_1 
       (.I0(\MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/Q_DEL/i_pipe/first_q [9]),
        .I1(\MULT.OP/EXP/STATE_DEC_DELAY/i_pipe/first_q [4]),
        .O(\n_0_MULT.OP/OP/RESULT_REG.NORMAL.mant_op[21]_i_1 ));
LUT2 #(
    .INIT(4'hE)) 
     \MULT.OP/OP/RESULT_REG.NORMAL.mant_op[2]_i_1 
       (.I0(\MULT.OP/OP/p_5_out [2]),
        .I1(\MULT.OP/EXP/STATE_DEC_DELAY/i_pipe/first_q [4]),
        .O(\n_0_MULT.OP/OP/RESULT_REG.NORMAL.mant_op[2]_i_1 ));
LUT2 #(
    .INIT(4'hE)) 
     \MULT.OP/OP/RESULT_REG.NORMAL.mant_op[3]_i_1 
       (.I0(\MULT.OP/OP/p_5_out [3]),
        .I1(\MULT.OP/EXP/STATE_DEC_DELAY/i_pipe/first_q [4]),
        .O(\n_0_MULT.OP/OP/RESULT_REG.NORMAL.mant_op[3]_i_1 ));
LUT2 #(
    .INIT(4'hE)) 
     \MULT.OP/OP/RESULT_REG.NORMAL.mant_op[4]_i_1 
       (.I0(\MULT.OP/OP/p_5_out [4]),
        .I1(\MULT.OP/EXP/STATE_DEC_DELAY/i_pipe/first_q [4]),
        .O(\n_0_MULT.OP/OP/RESULT_REG.NORMAL.mant_op[4]_i_1 ));
LUT2 #(
    .INIT(4'hE)) 
     \MULT.OP/OP/RESULT_REG.NORMAL.mant_op[5]_i_1 
       (.I0(\MULT.OP/OP/p_5_out [5]),
        .I1(\MULT.OP/EXP/STATE_DEC_DELAY/i_pipe/first_q [4]),
        .O(\n_0_MULT.OP/OP/RESULT_REG.NORMAL.mant_op[5]_i_1 ));
LUT2 #(
    .INIT(4'hE)) 
     \MULT.OP/OP/RESULT_REG.NORMAL.mant_op[6]_i_1 
       (.I0(\MULT.OP/OP/p_5_out [6]),
        .I1(\MULT.OP/EXP/STATE_DEC_DELAY/i_pipe/first_q [4]),
        .O(\n_0_MULT.OP/OP/RESULT_REG.NORMAL.mant_op[6]_i_1 ));
LUT2 #(
    .INIT(4'hE)) 
     \MULT.OP/OP/RESULT_REG.NORMAL.mant_op[7]_i_1 
       (.I0(\MULT.OP/OP/p_5_out [7]),
        .I1(\MULT.OP/EXP/STATE_DEC_DELAY/i_pipe/first_q [4]),
        .O(\n_0_MULT.OP/OP/RESULT_REG.NORMAL.mant_op[7]_i_1 ));
LUT2 #(
    .INIT(4'hE)) 
     \MULT.OP/OP/RESULT_REG.NORMAL.mant_op[8]_i_1 
       (.I0(\MULT.OP/OP/p_5_out [8]),
        .I1(\MULT.OP/EXP/STATE_DEC_DELAY/i_pipe/first_q [4]),
        .O(\n_0_MULT.OP/OP/RESULT_REG.NORMAL.mant_op[8]_i_1 ));
LUT2 #(
    .INIT(4'hE)) 
     \MULT.OP/OP/RESULT_REG.NORMAL.mant_op[9]_i_1 
       (.I0(\MULT.OP/OP/p_5_out [9]),
        .I1(\MULT.OP/EXP/STATE_DEC_DELAY/i_pipe/first_q [4]),
        .O(\n_0_MULT.OP/OP/RESULT_REG.NORMAL.mant_op[9]_i_1 ));
(* use_sync_reset = "auto" *) 
   (* use_sync_set = "auto" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/OP/RESULT_REG.NORMAL.mant_op_reg[0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/OP/RESULT_REG.NORMAL.mant_op[0]_i_1 ),
        .Q(p_0_in[0]),
        .R(\MULT.OP/EXP/STATE_DEC_DELAY/i_pipe/first_q [5]));
(* use_sync_reset = "auto" *) 
   (* use_sync_set = "auto" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/OP/RESULT_REG.NORMAL.mant_op_reg[10] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/OP/RESULT_REG.NORMAL.mant_op[10]_i_1 ),
        .Q(p_0_in[10]),
        .R(\MULT.OP/EXP/STATE_DEC_DELAY/i_pipe/first_q [5]));
(* use_sync_reset = "auto" *) 
   (* use_sync_set = "auto" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/OP/RESULT_REG.NORMAL.mant_op_reg[11] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/OP/RESULT_REG.NORMAL.mant_op[11]_i_1 ),
        .Q(p_0_in[11]),
        .R(\MULT.OP/EXP/STATE_DEC_DELAY/i_pipe/first_q [5]));
(* use_sync_reset = "auto" *) 
   (* use_sync_set = "auto" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/OP/RESULT_REG.NORMAL.mant_op_reg[12] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/OP/RESULT_REG.NORMAL.mant_op[12]_i_1 ),
        .Q(p_0_in[12]),
        .R(\MULT.OP/EXP/STATE_DEC_DELAY/i_pipe/first_q [5]));
(* use_sync_reset = "auto" *) 
   (* use_sync_set = "auto" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/OP/RESULT_REG.NORMAL.mant_op_reg[13] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/OP/RESULT_REG.NORMAL.mant_op[13]_i_1 ),
        .Q(p_0_in[13]),
        .R(\MULT.OP/EXP/STATE_DEC_DELAY/i_pipe/first_q [5]));
(* use_sync_reset = "auto" *) 
   (* use_sync_set = "auto" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/OP/RESULT_REG.NORMAL.mant_op_reg[14] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/OP/RESULT_REG.NORMAL.mant_op[14]_i_1 ),
        .Q(p_0_in[14]),
        .R(\MULT.OP/EXP/STATE_DEC_DELAY/i_pipe/first_q [5]));
(* use_sync_reset = "auto" *) 
   (* use_sync_set = "auto" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/OP/RESULT_REG.NORMAL.mant_op_reg[15] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/OP/RESULT_REG.NORMAL.mant_op[15]_i_1 ),
        .Q(p_0_in[15]),
        .R(\MULT.OP/EXP/STATE_DEC_DELAY/i_pipe/first_q [5]));
(* use_sync_reset = "auto" *) 
   (* use_sync_set = "auto" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/OP/RESULT_REG.NORMAL.mant_op_reg[16] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/OP/RESULT_REG.NORMAL.mant_op[16]_i_1 ),
        .Q(p_0_in[16]),
        .R(\MULT.OP/EXP/STATE_DEC_DELAY/i_pipe/first_q [5]));
(* use_sync_reset = "auto" *) 
   (* use_sync_set = "auto" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/OP/RESULT_REG.NORMAL.mant_op_reg[17] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/OP/RESULT_REG.NORMAL.mant_op[17]_i_1 ),
        .Q(p_0_in[17]),
        .R(\MULT.OP/EXP/STATE_DEC_DELAY/i_pipe/first_q [5]));
(* use_sync_reset = "auto" *) 
   (* use_sync_set = "auto" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/OP/RESULT_REG.NORMAL.mant_op_reg[18] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/OP/RESULT_REG.NORMAL.mant_op[18]_i_1 ),
        .Q(p_0_in[18]),
        .R(\MULT.OP/EXP/STATE_DEC_DELAY/i_pipe/first_q [5]));
(* use_sync_reset = "auto" *) 
   (* use_sync_set = "auto" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/OP/RESULT_REG.NORMAL.mant_op_reg[19] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/OP/RESULT_REG.NORMAL.mant_op[19]_i_1 ),
        .Q(p_0_in[19]),
        .R(\MULT.OP/EXP/STATE_DEC_DELAY/i_pipe/first_q [5]));
(* use_sync_reset = "auto" *) 
   (* use_sync_set = "auto" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/OP/RESULT_REG.NORMAL.mant_op_reg[1] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/OP/RESULT_REG.NORMAL.mant_op[1]_i_1 ),
        .Q(p_0_in[1]),
        .R(\MULT.OP/EXP/STATE_DEC_DELAY/i_pipe/first_q [5]));
(* use_sync_reset = "auto" *) 
   (* use_sync_set = "auto" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/OP/RESULT_REG.NORMAL.mant_op_reg[20] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/OP/RESULT_REG.NORMAL.mant_op[20]_i_1 ),
        .Q(p_0_in[20]),
        .R(\MULT.OP/EXP/STATE_DEC_DELAY/i_pipe/first_q [5]));
(* use_sync_reset = "auto" *) 
   (* use_sync_set = "auto" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/OP/RESULT_REG.NORMAL.mant_op_reg[21] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/OP/RESULT_REG.NORMAL.mant_op[21]_i_1 ),
        .Q(p_0_in[21]),
        .R(\MULT.OP/EXP/STATE_DEC_DELAY/i_pipe/first_q [5]));
(* use_sync_reset = "auto" *) 
   (* use_sync_set = "auto" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/OP/RESULT_REG.NORMAL.mant_op_reg[22] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/OP/p_5_out [22]),
        .Q(p_0_in[22]),
        .R(\<const0> ));
(* use_sync_reset = "auto" *) 
   (* use_sync_set = "auto" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/OP/RESULT_REG.NORMAL.mant_op_reg[2] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/OP/RESULT_REG.NORMAL.mant_op[2]_i_1 ),
        .Q(p_0_in[2]),
        .R(\MULT.OP/EXP/STATE_DEC_DELAY/i_pipe/first_q [5]));
(* use_sync_reset = "auto" *) 
   (* use_sync_set = "auto" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/OP/RESULT_REG.NORMAL.mant_op_reg[3] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/OP/RESULT_REG.NORMAL.mant_op[3]_i_1 ),
        .Q(p_0_in[3]),
        .R(\MULT.OP/EXP/STATE_DEC_DELAY/i_pipe/first_q [5]));
(* use_sync_reset = "auto" *) 
   (* use_sync_set = "auto" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/OP/RESULT_REG.NORMAL.mant_op_reg[4] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/OP/RESULT_REG.NORMAL.mant_op[4]_i_1 ),
        .Q(p_0_in[4]),
        .R(\MULT.OP/EXP/STATE_DEC_DELAY/i_pipe/first_q [5]));
(* use_sync_reset = "auto" *) 
   (* use_sync_set = "auto" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/OP/RESULT_REG.NORMAL.mant_op_reg[5] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/OP/RESULT_REG.NORMAL.mant_op[5]_i_1 ),
        .Q(p_0_in[5]),
        .R(\MULT.OP/EXP/STATE_DEC_DELAY/i_pipe/first_q [5]));
(* use_sync_reset = "auto" *) 
   (* use_sync_set = "auto" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/OP/RESULT_REG.NORMAL.mant_op_reg[6] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/OP/RESULT_REG.NORMAL.mant_op[6]_i_1 ),
        .Q(p_0_in[6]),
        .R(\MULT.OP/EXP/STATE_DEC_DELAY/i_pipe/first_q [5]));
(* use_sync_reset = "auto" *) 
   (* use_sync_set = "auto" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/OP/RESULT_REG.NORMAL.mant_op_reg[7] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/OP/RESULT_REG.NORMAL.mant_op[7]_i_1 ),
        .Q(p_0_in[7]),
        .R(\MULT.OP/EXP/STATE_DEC_DELAY/i_pipe/first_q [5]));
(* use_sync_reset = "auto" *) 
   (* use_sync_set = "auto" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/OP/RESULT_REG.NORMAL.mant_op_reg[8] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/OP/RESULT_REG.NORMAL.mant_op[8]_i_1 ),
        .Q(p_0_in[8]),
        .R(\MULT.OP/EXP/STATE_DEC_DELAY/i_pipe/first_q [5]));
(* use_sync_reset = "auto" *) 
   (* use_sync_set = "auto" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/OP/RESULT_REG.NORMAL.mant_op_reg[9] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/OP/RESULT_REG.NORMAL.mant_op[9]_i_1 ),
        .Q(p_0_in[9]),
        .R(\MULT.OP/EXP/STATE_DEC_DELAY/i_pipe/first_q [5]));
LUT3 #(
    .INIT(8'h0E)) 
     \MULT.OP/OP/RESULT_REG.NORMAL.sign_op_i_1 
       (.I0(\MULT.OP/EXP/STATE_DEC_DELAY/i_pipe/first_q [6]),
        .I1(SIGN),
        .I2(\MULT.OP/EXP/STATE_DEC_DELAY/i_pipe/first_q [7]),
        .O(\n_0_MULT.OP/OP/RESULT_REG.NORMAL.sign_op_i_1 ));
(* use_sync_reset = "auto" *) 
   (* use_sync_set = "auto" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/OP/RESULT_REG.NORMAL.sign_op_reg 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/OP/RESULT_REG.NORMAL.sign_op_i_1 ),
        .Q(p_0_in[31]),
        .R(\<const0> ));
LUT2 #(
    .INIT(4'h6)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1 
       (.I0(\MULT.OP/R_AND_R/LOGIC.R_AND_R/exp_op [0]),
        .I1(\MULT.OP/R_AND_R/LOGIC.R_AND_R/exp_off_op [0]),
        .O(\MULT.OP/R_AND_R/LOGIC.R_AND_R/a_add_op [0]));
LUT2 #(
    .INIT(4'h6)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1 
       (.I0(\MULT.OP/R_AND_R/LOGIC.R_AND_R/exp_op [1]),
        .I1(\MULT.OP/R_AND_R/LOGIC.R_AND_R/exp_off_op [1]),
        .O(\MULT.OP/R_AND_R/LOGIC.R_AND_R/a_add_op [1]));
LUT2 #(
    .INIT(4'h6)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1 
       (.I0(\MULT.OP/R_AND_R/LOGIC.R_AND_R/exp_op [2]),
        .I1(\MULT.OP/R_AND_R/LOGIC.R_AND_R/exp_off_op [2]),
        .O(\MULT.OP/R_AND_R/LOGIC.R_AND_R/a_add_op [2]));
LUT2 #(
    .INIT(4'h6)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/CHAIN_GEN[3].C_MUX.CARRY_MUX_i_1 
       (.I0(\MULT.OP/R_AND_R/LOGIC.R_AND_R/exp_op [3]),
        .I1(\MULT.OP/R_AND_R/LOGIC.R_AND_R/exp_off_op [3]),
        .O(\MULT.OP/R_AND_R/LOGIC.R_AND_R/a_add_op [3]));
LUT2 #(
    .INIT(4'h6)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/CHAIN_GEN[4].C_MUX.CARRY_MUX_i_1 
       (.I0(\MULT.OP/R_AND_R/LOGIC.R_AND_R/exp_op [4]),
        .I1(\MULT.OP/R_AND_R/LOGIC.R_AND_R/exp_off_op [4]),
        .O(\MULT.OP/R_AND_R/LOGIC.R_AND_R/a_add_op [4]));
LUT2 #(
    .INIT(4'h6)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/CHAIN_GEN[5].C_MUX.CARRY_MUX_i_1 
       (.I0(\MULT.OP/R_AND_R/LOGIC.R_AND_R/exp_op [5]),
        .I1(\MULT.OP/R_AND_R/LOGIC.R_AND_R/exp_off_op [5]),
        .O(\MULT.OP/R_AND_R/LOGIC.R_AND_R/a_add_op [5]));
LUT2 #(
    .INIT(4'h6)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/CHAIN_GEN[6].C_MUX.CARRY_MUX_i_1 
       (.I0(\MULT.OP/R_AND_R/LOGIC.R_AND_R/exp_op [6]),
        .I1(\MULT.OP/R_AND_R/LOGIC.R_AND_R/exp_off_op [6]),
        .O(\MULT.OP/R_AND_R/LOGIC.R_AND_R/a_add_op [6]));
LUT2 #(
    .INIT(4'h6)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/CHAIN_GEN[7].Q_XOR.SUM_XOR_i_1 
       (.I0(\MULT.OP/R_AND_R/LOGIC.R_AND_R/exp_op [7]),
        .I1(\MULT.OP/R_AND_R/LOGIC.R_AND_R/exp_off_op [7]),
        .O(\MULT.OP/R_AND_R/LOGIC.R_AND_R/a_add_op [7]));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* box_type = "PRIMITIVE" *) 
   CARRY4 \MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_ADD.ADD/CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4 
       (.CI(lopt_11),
        .CO({\n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_ADD.ADD/CHAIN_GEN[3].C_MUX.CARRY_MUX ,\n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_ADD.ADD/CHAIN_GEN[2].C_MUX.CARRY_MUX ,\n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_ADD.ADD/CHAIN_GEN[1].C_MUX.CARRY_MUX ,\n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_ADD.ADD/CHAIN_GEN[0].C_MUX.CARRY_MUX }),
        .CYINIT(\MULT.OP/R_AND_R/LOGIC.R_AND_R/carry_op ),
        .DI(\MULT.OP/R_AND_R/LOGIC.R_AND_R/exp_off_op [3:0]),
        .O(\MULT.OP/exp_rnd [3:0]),
        .S(\MULT.OP/R_AND_R/LOGIC.R_AND_R/a_add_op [3:0]));
GND \MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_ADD.ADD/CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_GND 
       (.G(lopt_11));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* box_type = "PRIMITIVE" *) 
   CARRY4 \MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_ADD.ADD/CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4 
       (.CI(\n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_ADD.ADD/CHAIN_GEN[3].C_MUX.CARRY_MUX ),
        .CO({\NLW_MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_ADD.ADD/CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_CO_UNCONNECTED [3:2],\n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_ADD.ADD/CHAIN_GEN[5].C_MUX.CARRY_MUX ,\n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_ADD.ADD/CHAIN_GEN[4].C_MUX.CARRY_MUX }),
        .CYINIT(lopt_12),
        .DI({\NLW_MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_ADD.ADD/CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_DI_UNCONNECTED [3],\MULT.OP/R_AND_R/LOGIC.R_AND_R/exp_off_op [6:4]}),
        .O(\MULT.OP/exp_rnd [7:4]),
        .S(\MULT.OP/R_AND_R/LOGIC.R_AND_R/a_add_op [7:4]));
GND \MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_ADD.ADD/CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_GND 
       (.G(lopt_12));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_INC_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/first_q [25]),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_INC_DELAY/i_pipe/first_q ),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_IN_DELAY.EXP_IN_DEL/i_pipe/opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/opt_has_pipe.i_pipe[4].pipe_reg[4][0] ),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_IN_DELAY.EXP_IN_DEL/i_pipe/first_q [0]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_IN_DELAY.EXP_IN_DEL/i_pipe/opt_has_pipe.first_q_reg[1] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/opt_has_pipe.i_pipe[4].pipe_reg[4][1] ),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_IN_DELAY.EXP_IN_DEL/i_pipe/first_q [1]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_IN_DELAY.EXP_IN_DEL/i_pipe/opt_has_pipe.first_q_reg[2] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/opt_has_pipe.i_pipe[4].pipe_reg[4][2] ),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_IN_DELAY.EXP_IN_DEL/i_pipe/first_q [2]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_IN_DELAY.EXP_IN_DEL/i_pipe/opt_has_pipe.first_q_reg[3] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/opt_has_pipe.i_pipe[4].pipe_reg[4][3] ),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_IN_DELAY.EXP_IN_DEL/i_pipe/first_q [3]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_IN_DELAY.EXP_IN_DEL/i_pipe/opt_has_pipe.first_q_reg[4] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/opt_has_pipe.i_pipe[4].pipe_reg[4][4] ),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_IN_DELAY.EXP_IN_DEL/i_pipe/first_q [4]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_IN_DELAY.EXP_IN_DEL/i_pipe/opt_has_pipe.first_q_reg[5] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/opt_has_pipe.i_pipe[4].pipe_reg[4][5] ),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_IN_DELAY.EXP_IN_DEL/i_pipe/first_q [5]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_IN_DELAY.EXP_IN_DEL/i_pipe/opt_has_pipe.first_q_reg[6] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/opt_has_pipe.i_pipe[4].pipe_reg[4][6] ),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_IN_DELAY.EXP_IN_DEL/i_pipe/first_q [6]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_IN_DELAY.EXP_IN_DEL/i_pipe/opt_has_pipe.first_q_reg[7] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/opt_has_pipe.i_pipe[4].pipe_reg[4][7] ),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_IN_DELAY.EXP_IN_DEL/i_pipe/first_q [7]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_IN_DELAY.EXP_IN_DEL/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_IN_DELAY.EXP_IN_DEL/i_pipe/first_q [0]),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/exp_op [0]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_IN_DELAY.EXP_IN_DEL/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][1] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_IN_DELAY.EXP_IN_DEL/i_pipe/first_q [1]),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/exp_op [1]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_IN_DELAY.EXP_IN_DEL/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][2] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_IN_DELAY.EXP_IN_DEL/i_pipe/first_q [2]),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/exp_op [2]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_IN_DELAY.EXP_IN_DEL/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][3] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_IN_DELAY.EXP_IN_DEL/i_pipe/first_q [3]),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/exp_op [3]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_IN_DELAY.EXP_IN_DEL/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][4] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_IN_DELAY.EXP_IN_DEL/i_pipe/first_q [4]),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/exp_op [4]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_IN_DELAY.EXP_IN_DEL/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][5] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_IN_DELAY.EXP_IN_DEL/i_pipe/first_q [5]),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/exp_op [5]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_IN_DELAY.EXP_IN_DEL/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][6] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_IN_DELAY.EXP_IN_DEL/i_pipe/first_q [6]),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/exp_op [6]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_IN_DELAY.EXP_IN_DEL/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][7] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_IN_DELAY.EXP_IN_DEL/i_pipe/first_q [7]),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/exp_op [7]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_IN_DELAY.EXP_OFF_OP_DEL/i_pipe/opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\<const0> ),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_IN_DELAY.EXP_OFF_OP_DEL/i_pipe/first_q [0]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_IN_DELAY.EXP_OFF_OP_DEL/i_pipe/opt_has_pipe.first_q_reg[1] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\<const0> ),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_IN_DELAY.EXP_OFF_OP_DEL/i_pipe/first_q [1]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_IN_DELAY.EXP_OFF_OP_DEL/i_pipe/opt_has_pipe.first_q_reg[2] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\<const0> ),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_IN_DELAY.EXP_OFF_OP_DEL/i_pipe/first_q [2]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_IN_DELAY.EXP_OFF_OP_DEL/i_pipe/opt_has_pipe.first_q_reg[3] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\<const0> ),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_IN_DELAY.EXP_OFF_OP_DEL/i_pipe/first_q [3]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_IN_DELAY.EXP_OFF_OP_DEL/i_pipe/opt_has_pipe.first_q_reg[4] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\<const0> ),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_IN_DELAY.EXP_OFF_OP_DEL/i_pipe/first_q [4]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_IN_DELAY.EXP_OFF_OP_DEL/i_pipe/opt_has_pipe.first_q_reg[5] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\<const0> ),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_IN_DELAY.EXP_OFF_OP_DEL/i_pipe/first_q [5]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_IN_DELAY.EXP_OFF_OP_DEL/i_pipe/opt_has_pipe.first_q_reg[6] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\<const0> ),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_IN_DELAY.EXP_OFF_OP_DEL/i_pipe/first_q [6]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_IN_DELAY.EXP_OFF_OP_DEL/i_pipe/opt_has_pipe.first_q_reg[7] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\<const1> ),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_IN_DELAY.EXP_OFF_OP_DEL/i_pipe/first_q [7]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_IN_DELAY.EXP_OFF_OP_DEL/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_IN_DELAY.EXP_OFF_OP_DEL/i_pipe/first_q [0]),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/exp_off_op [0]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_IN_DELAY.EXP_OFF_OP_DEL/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][1] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_IN_DELAY.EXP_OFF_OP_DEL/i_pipe/first_q [1]),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/exp_off_op [1]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_IN_DELAY.EXP_OFF_OP_DEL/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][2] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_IN_DELAY.EXP_OFF_OP_DEL/i_pipe/first_q [2]),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/exp_off_op [2]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_IN_DELAY.EXP_OFF_OP_DEL/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][3] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_IN_DELAY.EXP_OFF_OP_DEL/i_pipe/first_q [3]),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/exp_off_op [3]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_IN_DELAY.EXP_OFF_OP_DEL/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][4] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_IN_DELAY.EXP_OFF_OP_DEL/i_pipe/first_q [4]),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/exp_off_op [4]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_IN_DELAY.EXP_OFF_OP_DEL/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][5] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_IN_DELAY.EXP_OFF_OP_DEL/i_pipe/first_q [5]),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/exp_off_op [5]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_IN_DELAY.EXP_OFF_OP_DEL/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][6] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_IN_DELAY.EXP_OFF_OP_DEL/i_pipe/first_q [6]),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/exp_off_op [6]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_IN_DELAY.EXP_OFF_OP_DEL/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][7] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_IN_DELAY.EXP_OFF_OP_DEL/i_pipe/first_q [7]),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/exp_off_op [7]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_RND2_DELAY.EXP_OFF_RND_DEL/i_pipe/opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\<const0> ),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_RND2_DELAY.EXP_OFF_RND_DEL/i_pipe/first_q [0]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_RND2_DELAY.EXP_OFF_RND_DEL/i_pipe/opt_has_pipe.first_q_reg[1] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\<const0> ),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_RND2_DELAY.EXP_OFF_RND_DEL/i_pipe/first_q [1]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_RND2_DELAY.EXP_OFF_RND_DEL/i_pipe/opt_has_pipe.first_q_reg[2] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\<const0> ),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_RND2_DELAY.EXP_OFF_RND_DEL/i_pipe/first_q [2]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_RND2_DELAY.EXP_OFF_RND_DEL/i_pipe/opt_has_pipe.first_q_reg[3] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\<const0> ),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_RND2_DELAY.EXP_OFF_RND_DEL/i_pipe/first_q [3]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_RND2_DELAY.EXP_OFF_RND_DEL/i_pipe/opt_has_pipe.first_q_reg[4] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\<const0> ),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_RND2_DELAY.EXP_OFF_RND_DEL/i_pipe/first_q [4]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_RND2_DELAY.EXP_OFF_RND_DEL/i_pipe/opt_has_pipe.first_q_reg[5] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\<const0> ),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_RND2_DELAY.EXP_OFF_RND_DEL/i_pipe/first_q [5]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_RND2_DELAY.EXP_OFF_RND_DEL/i_pipe/opt_has_pipe.first_q_reg[6] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\<const0> ),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_RND2_DELAY.EXP_OFF_RND_DEL/i_pipe/first_q [6]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_RND2_DELAY.EXP_OFF_RND_DEL/i_pipe/opt_has_pipe.first_q_reg[7] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\<const1> ),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_RND2_DELAY.EXP_OFF_RND_DEL/i_pipe/first_q [7]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_RND2_DELAY.EXP_RND_DEL/i_pipe/opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/opt_has_pipe.i_pipe[4].pipe_reg[4][0] ),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_RND2_DELAY.EXP_RND_DEL/i_pipe/first_q [0]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_RND2_DELAY.EXP_RND_DEL/i_pipe/opt_has_pipe.first_q_reg[1] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/opt_has_pipe.i_pipe[4].pipe_reg[4][1] ),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_RND2_DELAY.EXP_RND_DEL/i_pipe/first_q [1]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_RND2_DELAY.EXP_RND_DEL/i_pipe/opt_has_pipe.first_q_reg[2] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/opt_has_pipe.i_pipe[4].pipe_reg[4][2] ),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_RND2_DELAY.EXP_RND_DEL/i_pipe/first_q [2]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_RND2_DELAY.EXP_RND_DEL/i_pipe/opt_has_pipe.first_q_reg[3] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/opt_has_pipe.i_pipe[4].pipe_reg[4][3] ),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_RND2_DELAY.EXP_RND_DEL/i_pipe/first_q [3]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_RND2_DELAY.EXP_RND_DEL/i_pipe/opt_has_pipe.first_q_reg[4] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/opt_has_pipe.i_pipe[4].pipe_reg[4][4] ),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_RND2_DELAY.EXP_RND_DEL/i_pipe/first_q [4]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_RND2_DELAY.EXP_RND_DEL/i_pipe/opt_has_pipe.first_q_reg[5] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/opt_has_pipe.i_pipe[4].pipe_reg[4][5] ),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_RND2_DELAY.EXP_RND_DEL/i_pipe/first_q [5]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_RND2_DELAY.EXP_RND_DEL/i_pipe/opt_has_pipe.first_q_reg[6] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/opt_has_pipe.i_pipe[4].pipe_reg[4][6] ),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_RND2_DELAY.EXP_RND_DEL/i_pipe/first_q [6]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_RND2_DELAY.EXP_RND_DEL/i_pipe/opt_has_pipe.first_q_reg[7] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/EXP/EXP_PRE_RND_DEL/i_pipe/opt_has_pipe.i_pipe[4].pipe_reg[4][7] ),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/EXP_RND2_DELAY.EXP_RND_DEL/i_pipe/first_q [7]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/CI ),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/first_q [0]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/opt_has_pipe.first_q_reg[10] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/CHAIN_GEN[10].C_MUX.CARRY_MUX ),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/first_q [10]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/opt_has_pipe.first_q_reg[1] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/CHAIN_GEN[1].C_MUX.CARRY_MUX ),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/first_q [1]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/opt_has_pipe.first_q_reg[2] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/CHAIN_GEN[2].C_MUX.CARRY_MUX ),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/first_q [2]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/opt_has_pipe.first_q_reg[3] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/CHAIN_GEN[3].C_MUX.CARRY_MUX ),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/first_q [3]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/opt_has_pipe.first_q_reg[4] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/CHAIN_GEN[4].C_MUX.CARRY_MUX ),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/first_q [4]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/opt_has_pipe.first_q_reg[5] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/CHAIN_GEN[5].C_MUX.CARRY_MUX ),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/first_q [5]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/opt_has_pipe.first_q_reg[6] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/CHAIN_GEN[6].C_MUX.CARRY_MUX ),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/first_q [6]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/opt_has_pipe.first_q_reg[7] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/CHAIN_GEN[7].C_MUX.CARRY_MUX ),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/first_q [7]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/opt_has_pipe.first_q_reg[8] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/CHAIN_GEN[8].C_MUX.CARRY_MUX ),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/first_q [8]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/opt_has_pipe.first_q_reg[9] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/CHAIN_GEN[9].C_MUX.CARRY_MUX ),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/first_q [9]),
        .R(\<const0> ));
(* XILINX_LEGACY_PRIM = "FDE" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/CARRYS_Q_DEL.FAST_DEL.CARRY_FD 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/D ),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/carry_rnd2 ),
        .R(GND_2));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* box_type = "PRIMITIVE" *) 
   CARRY4 \MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/CHAIN_GEN[1].C_MUX.CARRY_MUX_CARRY4 
       (.CI(\MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/CI ),
        .CO({\n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/CHAIN_GEN[4].C_MUX.CARRY_MUX ,\n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/CHAIN_GEN[3].C_MUX.CARRY_MUX ,\n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/CHAIN_GEN[2].C_MUX.CARRY_MUX ,\n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/CHAIN_GEN[1].C_MUX.CARRY_MUX }),
        .CYINIT(lopt_5),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/CHAIN_GEN[4].Q_XOR.SUM_XOR ,\n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/CHAIN_GEN[3].Q_XOR.SUM_XOR ,\n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/CHAIN_GEN[2].Q_XOR.SUM_XOR ,\n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/CHAIN_GEN[1].Q_XOR.SUM_XOR }),
        .S(\MULT.OP/R_AND_R/LOGIC.R_AND_R/mant_shifted_rnd1 [4:1]));
GND \MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/CHAIN_GEN[1].C_MUX.CARRY_MUX_CARRY4_GND 
       (.G(lopt_5));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* box_type = "PRIMITIVE" *) 
   CARRY4 \MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/CHAIN_GEN[5].C_MUX.CARRY_MUX_CARRY4 
       (.CI(\n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/CHAIN_GEN[4].C_MUX.CARRY_MUX ),
        .CO({\n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/CHAIN_GEN[8].C_MUX.CARRY_MUX ,\n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/CHAIN_GEN[7].C_MUX.CARRY_MUX ,\n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/CHAIN_GEN[6].C_MUX.CARRY_MUX ,\n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/CHAIN_GEN[5].C_MUX.CARRY_MUX }),
        .CYINIT(lopt_6),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/CHAIN_GEN[8].Q_XOR.SUM_XOR ,\n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/CHAIN_GEN[7].Q_XOR.SUM_XOR ,\n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/CHAIN_GEN[6].Q_XOR.SUM_XOR ,\n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/CHAIN_GEN[5].Q_XOR.SUM_XOR }),
        .S(\MULT.OP/R_AND_R/LOGIC.R_AND_R/mant_shifted_rnd1 [8:5]));
GND \MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/CHAIN_GEN[5].C_MUX.CARRY_MUX_CARRY4_GND 
       (.G(lopt_6));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* box_type = "PRIMITIVE" *) 
   CARRY4 \MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/CHAIN_GEN[9].C_MUX.CARRY_MUX_CARRY4 
       (.CI(\n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/CHAIN_GEN[8].C_MUX.CARRY_MUX ),
        .CO({\NLW_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/CHAIN_GEN[9].C_MUX.CARRY_MUX_CARRY4_CO_UNCONNECTED [3:2],\n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/CHAIN_GEN[10].C_MUX.CARRY_MUX ,\n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/CHAIN_GEN[9].C_MUX.CARRY_MUX }),
        .CYINIT(lopt_7),
        .DI({\NLW_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/CHAIN_GEN[9].C_MUX.CARRY_MUX_CARRY4_DI_UNCONNECTED [3],\<const0> ,\<const0> ,\<const0> }),
        .O({\MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/D ,\n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/CHAIN_GEN[11].Q_XOR.SUM_XOR ,\n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/CHAIN_GEN[10].Q_XOR.SUM_XOR ,\n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/CHAIN_GEN[9].Q_XOR.SUM_XOR }),
        .S({\<const0> ,\MULT.OP/R_AND_R/LOGIC.R_AND_R/mant_shifted_rnd1 [11:9]}));
GND \MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/CHAIN_GEN[9].C_MUX.CARRY_MUX_CARRY4_GND 
       (.G(lopt_7));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/O ),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/Q_DEL/i_pipe/first_q [0]),
        .R(\<const0> ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[10] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/CHAIN_GEN[10].Q_XOR.SUM_XOR ),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/Q_DEL/i_pipe/first_q [10]),
        .R(\<const0> ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[11] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/CHAIN_GEN[11].Q_XOR.SUM_XOR ),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/Q_DEL/i_pipe/first_q [11]),
        .R(\<const0> ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[1] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/CHAIN_GEN[1].Q_XOR.SUM_XOR ),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/Q_DEL/i_pipe/first_q [1]),
        .R(\<const0> ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[2] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/CHAIN_GEN[2].Q_XOR.SUM_XOR ),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/Q_DEL/i_pipe/first_q [2]),
        .R(\<const0> ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[3] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/CHAIN_GEN[3].Q_XOR.SUM_XOR ),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/Q_DEL/i_pipe/first_q [3]),
        .R(\<const0> ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[4] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/CHAIN_GEN[4].Q_XOR.SUM_XOR ),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/Q_DEL/i_pipe/first_q [4]),
        .R(\<const0> ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[5] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/CHAIN_GEN[5].Q_XOR.SUM_XOR ),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/Q_DEL/i_pipe/first_q [5]),
        .R(\<const0> ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[6] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/CHAIN_GEN[6].Q_XOR.SUM_XOR ),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/Q_DEL/i_pipe/first_q [6]),
        .R(\<const0> ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[7] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/CHAIN_GEN[7].Q_XOR.SUM_XOR ),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/Q_DEL/i_pipe/first_q [7]),
        .R(\<const0> ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[8] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/CHAIN_GEN[8].Q_XOR.SUM_XOR ),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/Q_DEL/i_pipe/first_q [8]),
        .R(\<const0> ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[9] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/CHAIN_GEN[9].Q_XOR.SUM_XOR ),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/Q_DEL/i_pipe/first_q [9]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/Q_DEL/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/Q_DEL/i_pipe/first_q [0]),
        .Q(\MULT.OP/OP/p_5_out [0]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/Q_DEL/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][10] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/Q_DEL/i_pipe/first_q [10]),
        .Q(\MULT.OP/OP/p_5_out [10]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/Q_DEL/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][11] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/Q_DEL/i_pipe/first_q [11]),
        .Q(\MULT.OP/OP/p_5_out [11]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/Q_DEL/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][1] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/Q_DEL/i_pipe/first_q [1]),
        .Q(\MULT.OP/OP/p_5_out [1]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/Q_DEL/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][2] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/Q_DEL/i_pipe/first_q [2]),
        .Q(\MULT.OP/OP/p_5_out [2]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/Q_DEL/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][3] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/Q_DEL/i_pipe/first_q [3]),
        .Q(\MULT.OP/OP/p_5_out [3]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/Q_DEL/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][4] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/Q_DEL/i_pipe/first_q [4]),
        .Q(\MULT.OP/OP/p_5_out [4]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/Q_DEL/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][5] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/Q_DEL/i_pipe/first_q [5]),
        .Q(\MULT.OP/OP/p_5_out [5]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/Q_DEL/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][6] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/Q_DEL/i_pipe/first_q [6]),
        .Q(\MULT.OP/OP/p_5_out [6]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/Q_DEL/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][7] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/Q_DEL/i_pipe/first_q [7]),
        .Q(\MULT.OP/OP/p_5_out [7]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/Q_DEL/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][8] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/Q_DEL/i_pipe/first_q [8]),
        .Q(\MULT.OP/OP/p_5_out [8]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/Q_DEL/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][9] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/Q_DEL/i_pipe/first_q [9]),
        .Q(\MULT.OP/OP/p_5_out [9]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CI ),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/first_q [0]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/opt_has_pipe.first_q_reg[10] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CHAIN_GEN[10].C_MUX.CARRY_MUX ),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/first_q [10]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/opt_has_pipe.first_q_reg[1] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CHAIN_GEN[1].C_MUX.CARRY_MUX ),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/first_q [1]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/opt_has_pipe.first_q_reg[2] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CHAIN_GEN[2].C_MUX.CARRY_MUX ),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/first_q [2]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/opt_has_pipe.first_q_reg[3] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CHAIN_GEN[3].C_MUX.CARRY_MUX ),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/first_q [3]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/opt_has_pipe.first_q_reg[4] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CHAIN_GEN[4].C_MUX.CARRY_MUX ),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/first_q [4]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/opt_has_pipe.first_q_reg[5] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CHAIN_GEN[5].C_MUX.CARRY_MUX ),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/first_q [5]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/opt_has_pipe.first_q_reg[6] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CHAIN_GEN[6].C_MUX.CARRY_MUX ),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/first_q [6]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/opt_has_pipe.first_q_reg[7] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CHAIN_GEN[7].C_MUX.CARRY_MUX ),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/first_q [7]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/opt_has_pipe.first_q_reg[8] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CHAIN_GEN[8].C_MUX.CARRY_MUX ),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/first_q [8]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/opt_has_pipe.first_q_reg[9] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CHAIN_GEN[9].C_MUX.CARRY_MUX ),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/first_q [9]),
        .R(\<const0> ));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* box_type = "PRIMITIVE" *) 
   CARRY4 \MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CARRYS_Q_DEL.FAST_DEL.CARRY_EXIT_CARRY4 
       (.CI(\n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CHAIN_GEN[11].C_MUX.CARRY_MUX ),
        .CO(\NLW_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CARRYS_Q_DEL.FAST_DEL.CARRY_EXIT_CARRY4_CO_UNCONNECTED [3:0]),
        .CYINIT(lopt_14),
        .DI(\NLW_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CARRYS_Q_DEL.FAST_DEL.CARRY_EXIT_CARRY4_DI_UNCONNECTED [3:0]),
        .O({\NLW_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CARRYS_Q_DEL.FAST_DEL.CARRY_EXIT_CARRY4_O_UNCONNECTED [3:1],\MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/D }),
        .S({\NLW_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CARRYS_Q_DEL.FAST_DEL.CARRY_EXIT_CARRY4_S_UNCONNECTED [3:1],\<const0> }));
GND \MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CARRYS_Q_DEL.FAST_DEL.CARRY_EXIT_CARRY4_GND 
       (.G(lopt_14));
(* XILINX_LEGACY_PRIM = "FDE" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CARRYS_Q_DEL.FAST_DEL.CARRY_FD 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/D ),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/carry_op ),
        .R(GND_2));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* box_type = "PRIMITIVE" *) 
   CARRY4 \MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4 
       (.CI(lopt_8),
        .CO({\n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CHAIN_GEN[3].C_MUX.CARRY_MUX ,\n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CHAIN_GEN[2].C_MUX.CARRY_MUX ,\n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CHAIN_GEN[1].C_MUX.CARRY_MUX ,\MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CI }),
        .CYINIT(\MULT.OP/R_AND_R/LOGIC.R_AND_R/carry_rnd2 ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CHAIN_GEN[3].Q_XOR.SUM_XOR ,\n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CHAIN_GEN[2].Q_XOR.SUM_XOR ,\n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CHAIN_GEN[1].Q_XOR.SUM_XOR ,\MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/O }),
        .S(\MULT.OP/R_AND_R/LOGIC.R_AND_R/sum_rnd2 [3:0]));
GND \MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_GND 
       (.G(lopt_8));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* box_type = "PRIMITIVE" *) 
   CARRY4 \MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4 
       (.CI(\n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CHAIN_GEN[3].C_MUX.CARRY_MUX ),
        .CO({\n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CHAIN_GEN[7].C_MUX.CARRY_MUX ,\n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CHAIN_GEN[6].C_MUX.CARRY_MUX ,\n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CHAIN_GEN[5].C_MUX.CARRY_MUX ,\n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CHAIN_GEN[4].C_MUX.CARRY_MUX }),
        .CYINIT(lopt_9),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CHAIN_GEN[7].Q_XOR.SUM_XOR ,\n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CHAIN_GEN[6].Q_XOR.SUM_XOR ,\n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CHAIN_GEN[5].Q_XOR.SUM_XOR ,\n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CHAIN_GEN[4].Q_XOR.SUM_XOR }),
        .S(\MULT.OP/R_AND_R/LOGIC.R_AND_R/sum_rnd2 [7:4]));
GND \MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_GND 
       (.G(lopt_9));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* box_type = "PRIMITIVE" *) 
   CARRY4 \MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CHAIN_GEN[8].C_MUX.CARRY_MUX_CARRY4 
       (.CI(\n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CHAIN_GEN[7].C_MUX.CARRY_MUX ),
        .CO({\n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CHAIN_GEN[11].C_MUX.CARRY_MUX ,\n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CHAIN_GEN[10].C_MUX.CARRY_MUX ,\n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CHAIN_GEN[9].C_MUX.CARRY_MUX ,\n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CHAIN_GEN[8].C_MUX.CARRY_MUX }),
        .CYINIT(lopt_10),
        .DI({\<const1> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CHAIN_GEN[11].Q_XOR.SUM_XOR ,\n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CHAIN_GEN[10].Q_XOR.SUM_XOR ,\n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CHAIN_GEN[9].Q_XOR.SUM_XOR ,\n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CHAIN_GEN[8].Q_XOR.SUM_XOR }),
        .S(\MULT.OP/R_AND_R/LOGIC.R_AND_R/sum_rnd2 [11:8]));
GND \MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CHAIN_GEN[8].C_MUX.CARRY_MUX_CARRY4_GND 
       (.G(lopt_10));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/O ),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/Q_DEL/i_pipe/first_q [0]),
        .R(\<const0> ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[10] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CHAIN_GEN[10].Q_XOR.SUM_XOR ),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/Q_DEL/i_pipe/first_q [10]),
        .R(\<const0> ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[11] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CHAIN_GEN[11].Q_XOR.SUM_XOR ),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/Q_DEL/i_pipe/first_q [11]),
        .R(\<const0> ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[1] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CHAIN_GEN[1].Q_XOR.SUM_XOR ),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/Q_DEL/i_pipe/first_q [1]),
        .R(\<const0> ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[2] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CHAIN_GEN[2].Q_XOR.SUM_XOR ),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/Q_DEL/i_pipe/first_q [2]),
        .R(\<const0> ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[3] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CHAIN_GEN[3].Q_XOR.SUM_XOR ),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/Q_DEL/i_pipe/first_q [3]),
        .R(\<const0> ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[4] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CHAIN_GEN[4].Q_XOR.SUM_XOR ),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/Q_DEL/i_pipe/first_q [4]),
        .R(\<const0> ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[5] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CHAIN_GEN[5].Q_XOR.SUM_XOR ),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/Q_DEL/i_pipe/first_q [5]),
        .R(\<const0> ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[6] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CHAIN_GEN[6].Q_XOR.SUM_XOR ),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/Q_DEL/i_pipe/first_q [6]),
        .R(\<const0> ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[7] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CHAIN_GEN[7].Q_XOR.SUM_XOR ),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/Q_DEL/i_pipe/first_q [7]),
        .R(\<const0> ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[8] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CHAIN_GEN[8].Q_XOR.SUM_XOR ),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/Q_DEL/i_pipe/first_q [8]),
        .R(\<const0> ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[9] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/CHAIN_GEN[9].Q_XOR.SUM_XOR ),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/Q_DEL/i_pipe/first_q [9]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/MANT_RND2_DEL/i_pipe/opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/first_q [11]),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/MANT_RND2_DEL/i_pipe/first_q [0]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/MANT_RND2_DEL/i_pipe/opt_has_pipe.first_q_reg[10] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/first_q [21]),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/MANT_RND2_DEL/i_pipe/first_q [10]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/MANT_RND2_DEL/i_pipe/opt_has_pipe.first_q_reg[11] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/first_q [22]),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/MANT_RND2_DEL/i_pipe/first_q [11]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/MANT_RND2_DEL/i_pipe/opt_has_pipe.first_q_reg[12] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/first_q [23]),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/MANT_RND2_DEL/i_pipe/first_q [12]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/MANT_RND2_DEL/i_pipe/opt_has_pipe.first_q_reg[13] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/first_q [24]),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/MANT_RND2_DEL/i_pipe/first_q [13]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/MANT_RND2_DEL/i_pipe/opt_has_pipe.first_q_reg[1] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/first_q [12]),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/MANT_RND2_DEL/i_pipe/first_q [1]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/MANT_RND2_DEL/i_pipe/opt_has_pipe.first_q_reg[2] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/first_q [13]),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/MANT_RND2_DEL/i_pipe/first_q [2]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/MANT_RND2_DEL/i_pipe/opt_has_pipe.first_q_reg[3] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/first_q [14]),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/MANT_RND2_DEL/i_pipe/first_q [3]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/MANT_RND2_DEL/i_pipe/opt_has_pipe.first_q_reg[4] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/first_q [15]),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/MANT_RND2_DEL/i_pipe/first_q [4]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/MANT_RND2_DEL/i_pipe/opt_has_pipe.first_q_reg[5] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/first_q [16]),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/MANT_RND2_DEL/i_pipe/first_q [5]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/MANT_RND2_DEL/i_pipe/opt_has_pipe.first_q_reg[6] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/first_q [17]),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/MANT_RND2_DEL/i_pipe/first_q [6]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/MANT_RND2_DEL/i_pipe/opt_has_pipe.first_q_reg[7] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/first_q [18]),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/MANT_RND2_DEL/i_pipe/first_q [7]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/MANT_RND2_DEL/i_pipe/opt_has_pipe.first_q_reg[8] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/first_q [19]),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/MANT_RND2_DEL/i_pipe/first_q [8]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/MANT_RND2_DEL/i_pipe/opt_has_pipe.first_q_reg[9] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/first_q [20]),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/MANT_RND2_DEL/i_pipe/first_q [9]),
        .R(\<const0> ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/NORMALIZE_RND2_DEL/i_pipe/opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\MULT.OP/R_AND_R/normalize_local ),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/NORMALIZE_RND2_DEL/i_pipe/first_q [0]),
        .R(\<const0> ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \MULT.OP/R_AND_R/LOGIC.R_AND_R/NORMALIZE_RND2_DEL/i_pipe/opt_has_pipe.first_q_reg[1] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\<const0> ),
        .Q(\MULT.OP/R_AND_R/LOGIC.R_AND_R/NORMALIZE_RND2_DEL/i_pipe/first_q [1]),
        .R(\<const0> ));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* box_type = "PRIMITIVE" *) 
   CARRY4 \MULT.OP/R_AND_R/LOGIC.R_AND_R/RND_BIT_GEN/NORM_1_OR_0.STRUCT_REQ.GENERAL.RND1/CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4 
       (.CI(lopt_4),
        .CO({\MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/CI ,\MULT.OP/R_AND_R/LOGIC.R_AND_R/round_rnd1 ,\NLW_MULT.OP/R_AND_R/LOGIC.R_AND_R/RND_BIT_GEN/NORM_1_OR_0.STRUCT_REQ.GENERAL.RND1/CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_CO_UNCONNECTED [1:0]}),
        .CYINIT(\<const1> ),
        .DI({\<const0> ,\<const1> ,\<const0> ,\<const0> }),
        .O({\MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND1/O ,\NLW_MULT.OP/R_AND_R/LOGIC.R_AND_R/RND_BIT_GEN/NORM_1_OR_0.STRUCT_REQ.GENERAL.RND1/CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED [2:0]}),
        .S({\MULT.OP/R_AND_R/LOGIC.R_AND_R/mant_shifted_rnd1 [0],\n_0_CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__0 ,\<const0> ,\n_0_CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__0 }));
GND \MULT.OP/R_AND_R/LOGIC.R_AND_R/RND_BIT_GEN/NORM_1_OR_0.STRUCT_REQ.GENERAL.RND1/CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_GND 
       (.G(lopt_4));
LUT3 #(
    .INIT(8'h0E)) 
     \RESULT_REG.NORMAL.exp_op[0]_i_1 
       (.I0(\MULT.OP/exp_rnd [0]),
        .I1(\MULT.OP/EXP/STATE_DEC_DELAY/i_pipe/first_q [12]),
        .I2(\MULT.OP/EXP/STATE_DEC_DELAY/i_pipe/first_q [13]),
        .O(\MULT.OP/OP/exp_op6_out ));
LUT2 #(
    .INIT(4'hE)) 
     \RESULT_REG.NORMAL.exp_op[1]_i_1 
       (.I0(\MULT.OP/EXP/STATE_DEC_DELAY/i_pipe/first_q [0]),
        .I1(\MULT.OP/exp_rnd [1]),
        .O(\n_0_RESULT_REG.NORMAL.exp_op[1]_i_1 ));
LUT2 #(
    .INIT(4'hE)) 
     \RESULT_REG.NORMAL.exp_op[2]_i_1 
       (.I0(\MULT.OP/EXP/STATE_DEC_DELAY/i_pipe/first_q [0]),
        .I1(\MULT.OP/exp_rnd [2]),
        .O(\n_0_RESULT_REG.NORMAL.exp_op[2]_i_1 ));
LUT2 #(
    .INIT(4'hE)) 
     \RESULT_REG.NORMAL.exp_op[3]_i_1 
       (.I0(\MULT.OP/EXP/STATE_DEC_DELAY/i_pipe/first_q [0]),
        .I1(\MULT.OP/exp_rnd [3]),
        .O(\n_0_RESULT_REG.NORMAL.exp_op[3]_i_1 ));
LUT2 #(
    .INIT(4'hE)) 
     \RESULT_REG.NORMAL.exp_op[4]_i_1 
       (.I0(\MULT.OP/EXP/STATE_DEC_DELAY/i_pipe/first_q [0]),
        .I1(\MULT.OP/exp_rnd [4]),
        .O(\n_0_RESULT_REG.NORMAL.exp_op[4]_i_1 ));
LUT2 #(
    .INIT(4'hE)) 
     \RESULT_REG.NORMAL.exp_op[5]_i_1 
       (.I0(\MULT.OP/EXP/STATE_DEC_DELAY/i_pipe/first_q [0]),
        .I1(\MULT.OP/exp_rnd [5]),
        .O(\n_0_RESULT_REG.NORMAL.exp_op[5]_i_1 ));
LUT2 #(
    .INIT(4'hE)) 
     \RESULT_REG.NORMAL.exp_op[6]_i_1 
       (.I0(\MULT.OP/EXP/STATE_DEC_DELAY/i_pipe/first_q [0]),
        .I1(\MULT.OP/exp_rnd [6]),
        .O(\n_0_RESULT_REG.NORMAL.exp_op[6]_i_1 ));
LUT2 #(
    .INIT(4'hE)) 
     \RESULT_REG.NORMAL.exp_op[7]_i_1 
       (.I0(\MULT.OP/EXP/STATE_DEC_DELAY/i_pipe/first_q [0]),
        .I1(\MULT.OP/exp_rnd [7]),
        .O(\n_0_RESULT_REG.NORMAL.exp_op[7]_i_1 ));
LUT3 #(
    .INIT(8'h0E)) 
     \RESULT_REG.NORMAL.mant_op[22]_i_1 
       (.I0(\MULT.OP/R_AND_R/LOGIC.R_AND_R/LOGIC.RND2/Q_DEL/i_pipe/first_q [10]),
        .I1(\MULT.OP/EXP/STATE_DEC_DELAY/i_pipe/first_q [2]),
        .I2(\MULT.OP/EXP/STATE_DEC_DELAY/i_pipe/first_q [3]),
        .O(\MULT.OP/OP/p_5_out [22]));
VCC VCC
       (.P(\<const1> ));
LUT6 #(
    .INIT(64'h0B0000000B0B0B0B)) 
     \gen_has_z_tready.reg1_a_ready_i_1 
       (.I0(\need_combiner.use_2to1.skid_buffer_combiner/reg2_b_valid_nxt ),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_valid_nxt ),
        .I2(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_tlast ),
        .I3(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .I4(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_valid ),
        .I5(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .O(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_ready_nxt ));
LUT6 #(
    .INIT(64'h0000800080808080)) 
     \gen_has_z_tready.reg1_a_tdata[31]_i_1 
       (.I0(s_axis_a_tvalid),
        .I1(s_axis_a_tready),
        .I2(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_valid ),
        .I3(m_axis_result_tvalid),
        .I4(m_axis_result_tready),
        .I5(\need_combiner.use_2to1.skid_buffer_combiner/reg2_b_valid ),
        .O(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_tlast ));
LUT5 #(
    .INIT(32'hFFBF0080)) 
     \gen_has_z_tready.reg1_a_tlast_i_1 
       (.I0(s_axis_a_tlast),
        .I1(s_axis_a_tvalid),
        .I2(s_axis_a_tready),
        .I3(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .I4(\n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tlast_reg ),
        .O(\n_0_gen_has_z_tready.reg1_a_tlast_i_1 ));
LUT5 #(
    .INIT(32'h0FFF0808)) 
     \gen_has_z_tready.reg1_a_valid_i_1 
       (.I0(s_axis_a_tvalid),
        .I1(s_axis_a_tready),
        .I2(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .I3(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_valid ),
        .I4(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .O(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid_nxt ));
LUT6 #(
    .INIT(64'h0B0000000B0B0B0B)) 
     \gen_has_z_tready.reg1_b_ready_i_1 
       (.I0(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_valid_nxt ),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg2_b_valid_nxt ),
        .I2(\need_combiner.use_2to1.skid_buffer_combiner/reg1_b_wr ),
        .I3(\need_combiner.use_2to1.skid_buffer_combiner/p_20_in ),
        .I4(\need_combiner.use_2to1.skid_buffer_combiner/reg2_b_valid ),
        .I5(\need_combiner.use_2to1.skid_buffer_combiner/reg1_b_valid ),
        .O(\need_combiner.use_2to1.skid_buffer_combiner/reg1_b_ready_nxt ));
LUT6 #(
    .INIT(64'h0000800080808080)) 
     \gen_has_z_tready.reg1_b_tdata[31]_i_1 
       (.I0(s_axis_b_tvalid),
        .I1(s_axis_b_tready),
        .I2(\need_combiner.use_2to1.skid_buffer_combiner/reg2_b_valid ),
        .I3(m_axis_result_tvalid),
        .I4(m_axis_result_tready),
        .I5(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_valid ),
        .O(\need_combiner.use_2to1.skid_buffer_combiner/reg1_b_wr ));
LUT5 #(
    .INIT(32'h0FFF0808)) 
     \gen_has_z_tready.reg1_b_valid_i_1 
       (.I0(s_axis_b_tvalid),
        .I1(s_axis_b_tready),
        .I2(\need_combiner.use_2to1.skid_buffer_combiner/p_20_in ),
        .I3(\need_combiner.use_2to1.skid_buffer_combiner/reg2_b_valid ),
        .I4(\need_combiner.use_2to1.skid_buffer_combiner/reg1_b_valid ),
        .O(\need_combiner.use_2to1.skid_buffer_combiner/reg1_b_valid_nxt ));
(* SOFT_HLUTNM = "soft_lutpair18" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tdata[0]_i_1 
       (.I0(reg1_a_tdata[0]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tdata[0]),
        .O(\n_0_gen_has_z_tready.reg2_a_tdata[0]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair13" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tdata[10]_i_1 
       (.I0(reg1_a_tdata[10]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tdata[10]),
        .O(\n_0_gen_has_z_tready.reg2_a_tdata[10]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair13" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tdata[11]_i_1 
       (.I0(reg1_a_tdata[11]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tdata[11]),
        .O(\n_0_gen_has_z_tready.reg2_a_tdata[11]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair12" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tdata[12]_i_1 
       (.I0(reg1_a_tdata[12]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tdata[12]),
        .O(\n_0_gen_has_z_tready.reg2_a_tdata[12]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair12" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tdata[13]_i_1 
       (.I0(reg1_a_tdata[13]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tdata[13]),
        .O(\n_0_gen_has_z_tready.reg2_a_tdata[13]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair11" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tdata[14]_i_1 
       (.I0(reg1_a_tdata[14]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tdata[14]),
        .O(\n_0_gen_has_z_tready.reg2_a_tdata[14]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair11" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tdata[15]_i_1 
       (.I0(reg1_a_tdata[15]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tdata[15]),
        .O(\n_0_gen_has_z_tready.reg2_a_tdata[15]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair10" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tdata[16]_i_1 
       (.I0(reg1_a_tdata[16]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tdata[16]),
        .O(\n_0_gen_has_z_tready.reg2_a_tdata[16]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair10" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tdata[17]_i_1 
       (.I0(reg1_a_tdata[17]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tdata[17]),
        .O(\n_0_gen_has_z_tready.reg2_a_tdata[17]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair9" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tdata[18]_i_1 
       (.I0(reg1_a_tdata[18]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tdata[18]),
        .O(\n_0_gen_has_z_tready.reg2_a_tdata[18]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair9" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tdata[19]_i_1 
       (.I0(reg1_a_tdata[19]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tdata[19]),
        .O(\n_0_gen_has_z_tready.reg2_a_tdata[19]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair18" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tdata[1]_i_1 
       (.I0(reg1_a_tdata[1]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tdata[1]),
        .O(\n_0_gen_has_z_tready.reg2_a_tdata[1]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair8" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tdata[20]_i_1 
       (.I0(reg1_a_tdata[20]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tdata[20]),
        .O(\n_0_gen_has_z_tready.reg2_a_tdata[20]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair8" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tdata[21]_i_1 
       (.I0(reg1_a_tdata[21]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tdata[21]),
        .O(\n_0_gen_has_z_tready.reg2_a_tdata[21]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair7" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tdata[22]_i_1 
       (.I0(reg1_a_tdata[22]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tdata[22]),
        .O(\n_0_gen_has_z_tready.reg2_a_tdata[22]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair7" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tdata[23]_i_1 
       (.I0(reg1_a_tdata[23]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tdata[23]),
        .O(\n_0_gen_has_z_tready.reg2_a_tdata[23]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair6" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tdata[24]_i_1 
       (.I0(reg1_a_tdata[24]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tdata[24]),
        .O(\n_0_gen_has_z_tready.reg2_a_tdata[24]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair6" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tdata[25]_i_1 
       (.I0(reg1_a_tdata[25]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tdata[25]),
        .O(\n_0_gen_has_z_tready.reg2_a_tdata[25]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair5" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tdata[26]_i_1 
       (.I0(reg1_a_tdata[26]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tdata[26]),
        .O(\n_0_gen_has_z_tready.reg2_a_tdata[26]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair4" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tdata[27]_i_1 
       (.I0(reg1_a_tdata[27]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tdata[27]),
        .O(\n_0_gen_has_z_tready.reg2_a_tdata[27]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair3" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tdata[28]_i_1 
       (.I0(reg1_a_tdata[28]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tdata[28]),
        .O(\n_0_gen_has_z_tready.reg2_a_tdata[28]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair5" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tdata[29]_i_1 
       (.I0(reg1_a_tdata[29]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tdata[29]),
        .O(\n_0_gen_has_z_tready.reg2_a_tdata[29]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair17" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tdata[2]_i_1 
       (.I0(reg1_a_tdata[2]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tdata[2]),
        .O(\n_0_gen_has_z_tready.reg2_a_tdata[2]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair4" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tdata[30]_i_1 
       (.I0(reg1_a_tdata[30]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tdata[30]),
        .O(\n_0_gen_has_z_tready.reg2_a_tdata[30]_i_1 ));
LUT4 #(
    .INIT(16'h8AFF)) 
     \gen_has_z_tready.reg2_a_tdata[31]_i_1 
       (.I0(\need_combiner.use_2to1.skid_buffer_combiner/reg2_b_valid ),
        .I1(m_axis_result_tready),
        .I2(m_axis_result_tvalid),
        .I3(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_valid ),
        .O(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ));
(* SOFT_HLUTNM = "soft_lutpair3" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tdata[31]_i_2 
       (.I0(reg1_a_tdata[31]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tdata[31]),
        .O(\n_0_gen_has_z_tready.reg2_a_tdata[31]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair17" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tdata[3]_i_1 
       (.I0(reg1_a_tdata[3]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tdata[3]),
        .O(\n_0_gen_has_z_tready.reg2_a_tdata[3]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair16" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tdata[4]_i_1 
       (.I0(reg1_a_tdata[4]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tdata[4]),
        .O(\n_0_gen_has_z_tready.reg2_a_tdata[4]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair16" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tdata[5]_i_1 
       (.I0(reg1_a_tdata[5]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tdata[5]),
        .O(\n_0_gen_has_z_tready.reg2_a_tdata[5]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair15" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tdata[6]_i_1 
       (.I0(reg1_a_tdata[6]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tdata[6]),
        .O(\n_0_gen_has_z_tready.reg2_a_tdata[6]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair15" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tdata[7]_i_1 
       (.I0(reg1_a_tdata[7]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tdata[7]),
        .O(\n_0_gen_has_z_tready.reg2_a_tdata[7]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair14" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tdata[8]_i_1 
       (.I0(reg1_a_tdata[8]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tdata[8]),
        .O(\n_0_gen_has_z_tready.reg2_a_tdata[8]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair14" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tdata[9]_i_1 
       (.I0(reg1_a_tdata[9]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tdata[9]),
        .O(\n_0_gen_has_z_tready.reg2_a_tdata[9]_i_1 ));
LUT5 #(
    .INIT(32'hB8FFB800)) 
     \gen_has_z_tready.reg2_a_tlast_i_1 
       (.I0(\n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tlast_reg ),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tlast),
        .I3(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .I4(reg2_a_tlast),
        .O(\n_0_gen_has_z_tready.reg2_a_tlast_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair38" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tuser[0]_i_1 
       (.I0(reg1_a_tuser[0]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tuser[0]),
        .O(\n_0_gen_has_z_tready.reg2_a_tuser[0]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair38" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tuser[1]_i_1 
       (.I0(reg1_a_tuser[1]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tuser[1]),
        .O(\n_0_gen_has_z_tready.reg2_a_tuser[1]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair37" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tuser[2]_i_1 
       (.I0(reg1_a_tuser[2]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tuser[2]),
        .O(\n_0_gen_has_z_tready.reg2_a_tuser[2]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair37" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tuser[3]_i_1 
       (.I0(reg1_a_tuser[3]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tuser[3]),
        .O(\n_0_gen_has_z_tready.reg2_a_tuser[3]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair36" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tuser[4]_i_1 
       (.I0(reg1_a_tuser[4]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tuser[4]),
        .O(\n_0_gen_has_z_tready.reg2_a_tuser[4]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair36" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tuser[5]_i_1 
       (.I0(reg1_a_tuser[5]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tuser[5]),
        .O(\n_0_gen_has_z_tready.reg2_a_tuser[5]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair35" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tuser[6]_i_1 
       (.I0(reg1_a_tuser[6]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tuser[6]),
        .O(\n_0_gen_has_z_tready.reg2_a_tuser[6]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair35" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tuser[7]_i_1 
       (.I0(reg1_a_tuser[7]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tuser[7]),
        .O(\n_0_gen_has_z_tready.reg2_a_tuser[7]_i_1 ));
LUT6 #(
    .INIT(64'hFF88F888F888F888)) 
     \gen_has_z_tready.reg2_a_valid_i_1 
       (.I0(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_valid ),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/p_22_in ),
        .I2(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I3(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .I4(s_axis_a_tready),
        .I5(s_axis_a_tvalid),
        .O(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_valid_nxt ));
(* SOFT_HLUTNM = "soft_lutpair34" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_b_tdata[0]_i_1 
       (.I0(reg1_b_tdata[0]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_b_valid ),
        .I2(s_axis_b_tdata[0]),
        .O(\n_0_gen_has_z_tready.reg2_b_tdata[0]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair29" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_b_tdata[10]_i_1 
       (.I0(reg1_b_tdata[10]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_b_valid ),
        .I2(s_axis_b_tdata[10]),
        .O(\n_0_gen_has_z_tready.reg2_b_tdata[10]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair29" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_b_tdata[11]_i_1 
       (.I0(reg1_b_tdata[11]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_b_valid ),
        .I2(s_axis_b_tdata[11]),
        .O(\n_0_gen_has_z_tready.reg2_b_tdata[11]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair28" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_b_tdata[12]_i_1 
       (.I0(reg1_b_tdata[12]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_b_valid ),
        .I2(s_axis_b_tdata[12]),
        .O(\n_0_gen_has_z_tready.reg2_b_tdata[12]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair28" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_b_tdata[13]_i_1 
       (.I0(reg1_b_tdata[13]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_b_valid ),
        .I2(s_axis_b_tdata[13]),
        .O(\n_0_gen_has_z_tready.reg2_b_tdata[13]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair27" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_b_tdata[14]_i_1 
       (.I0(reg1_b_tdata[14]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_b_valid ),
        .I2(s_axis_b_tdata[14]),
        .O(\n_0_gen_has_z_tready.reg2_b_tdata[14]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair27" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_b_tdata[15]_i_1 
       (.I0(reg1_b_tdata[15]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_b_valid ),
        .I2(s_axis_b_tdata[15]),
        .O(\n_0_gen_has_z_tready.reg2_b_tdata[15]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair26" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_b_tdata[16]_i_1 
       (.I0(reg1_b_tdata[16]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_b_valid ),
        .I2(s_axis_b_tdata[16]),
        .O(\n_0_gen_has_z_tready.reg2_b_tdata[16]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair26" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_b_tdata[17]_i_1 
       (.I0(reg1_b_tdata[17]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_b_valid ),
        .I2(s_axis_b_tdata[17]),
        .O(\n_0_gen_has_z_tready.reg2_b_tdata[17]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair25" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_b_tdata[18]_i_1 
       (.I0(reg1_b_tdata[18]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_b_valid ),
        .I2(s_axis_b_tdata[18]),
        .O(\n_0_gen_has_z_tready.reg2_b_tdata[18]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair25" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_b_tdata[19]_i_1 
       (.I0(reg1_b_tdata[19]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_b_valid ),
        .I2(s_axis_b_tdata[19]),
        .O(\n_0_gen_has_z_tready.reg2_b_tdata[19]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair34" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_b_tdata[1]_i_1 
       (.I0(reg1_b_tdata[1]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_b_valid ),
        .I2(s_axis_b_tdata[1]),
        .O(\n_0_gen_has_z_tready.reg2_b_tdata[1]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair24" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_b_tdata[20]_i_1 
       (.I0(reg1_b_tdata[20]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_b_valid ),
        .I2(s_axis_b_tdata[20]),
        .O(\n_0_gen_has_z_tready.reg2_b_tdata[20]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair24" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_b_tdata[21]_i_1 
       (.I0(reg1_b_tdata[21]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_b_valid ),
        .I2(s_axis_b_tdata[21]),
        .O(\n_0_gen_has_z_tready.reg2_b_tdata[21]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair23" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_b_tdata[22]_i_1 
       (.I0(reg1_b_tdata[22]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_b_valid ),
        .I2(s_axis_b_tdata[22]),
        .O(\n_0_gen_has_z_tready.reg2_b_tdata[22]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair23" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_b_tdata[23]_i_1 
       (.I0(reg1_b_tdata[23]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_b_valid ),
        .I2(s_axis_b_tdata[23]),
        .O(\n_0_gen_has_z_tready.reg2_b_tdata[23]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair22" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_b_tdata[24]_i_1 
       (.I0(reg1_b_tdata[24]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_b_valid ),
        .I2(s_axis_b_tdata[24]),
        .O(\n_0_gen_has_z_tready.reg2_b_tdata[24]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair22" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_b_tdata[25]_i_1 
       (.I0(reg1_b_tdata[25]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_b_valid ),
        .I2(s_axis_b_tdata[25]),
        .O(\n_0_gen_has_z_tready.reg2_b_tdata[25]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair21" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_b_tdata[26]_i_1 
       (.I0(reg1_b_tdata[26]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_b_valid ),
        .I2(s_axis_b_tdata[26]),
        .O(\n_0_gen_has_z_tready.reg2_b_tdata[26]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair21" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_b_tdata[27]_i_1 
       (.I0(reg1_b_tdata[27]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_b_valid ),
        .I2(s_axis_b_tdata[27]),
        .O(\n_0_gen_has_z_tready.reg2_b_tdata[27]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair20" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_b_tdata[28]_i_1 
       (.I0(reg1_b_tdata[28]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_b_valid ),
        .I2(s_axis_b_tdata[28]),
        .O(\n_0_gen_has_z_tready.reg2_b_tdata[28]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair20" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_b_tdata[29]_i_1 
       (.I0(reg1_b_tdata[29]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_b_valid ),
        .I2(s_axis_b_tdata[29]),
        .O(\n_0_gen_has_z_tready.reg2_b_tdata[29]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair33" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_b_tdata[2]_i_1 
       (.I0(reg1_b_tdata[2]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_b_valid ),
        .I2(s_axis_b_tdata[2]),
        .O(\n_0_gen_has_z_tready.reg2_b_tdata[2]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair19" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_b_tdata[30]_i_1 
       (.I0(reg1_b_tdata[30]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_b_valid ),
        .I2(s_axis_b_tdata[30]),
        .O(\n_0_gen_has_z_tready.reg2_b_tdata[30]_i_1 ));
LUT4 #(
    .INIT(16'h8AFF)) 
     \gen_has_z_tready.reg2_b_tdata[31]_i_1 
       (.I0(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_valid ),
        .I1(m_axis_result_tready),
        .I2(m_axis_result_tvalid),
        .I3(\need_combiner.use_2to1.skid_buffer_combiner/reg2_b_valid ),
        .O(\need_combiner.use_2to1.skid_buffer_combiner/p_20_in ));
(* SOFT_HLUTNM = "soft_lutpair19" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_b_tdata[31]_i_2 
       (.I0(reg1_b_tdata[31]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_b_valid ),
        .I2(s_axis_b_tdata[31]),
        .O(\n_0_gen_has_z_tready.reg2_b_tdata[31]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair33" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_b_tdata[3]_i_1 
       (.I0(reg1_b_tdata[3]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_b_valid ),
        .I2(s_axis_b_tdata[3]),
        .O(\n_0_gen_has_z_tready.reg2_b_tdata[3]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair32" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_b_tdata[4]_i_1 
       (.I0(reg1_b_tdata[4]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_b_valid ),
        .I2(s_axis_b_tdata[4]),
        .O(\n_0_gen_has_z_tready.reg2_b_tdata[4]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair32" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_b_tdata[5]_i_1 
       (.I0(reg1_b_tdata[5]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_b_valid ),
        .I2(s_axis_b_tdata[5]),
        .O(\n_0_gen_has_z_tready.reg2_b_tdata[5]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair31" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_b_tdata[6]_i_1 
       (.I0(reg1_b_tdata[6]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_b_valid ),
        .I2(s_axis_b_tdata[6]),
        .O(\n_0_gen_has_z_tready.reg2_b_tdata[6]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair31" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_b_tdata[7]_i_1 
       (.I0(reg1_b_tdata[7]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_b_valid ),
        .I2(s_axis_b_tdata[7]),
        .O(\n_0_gen_has_z_tready.reg2_b_tdata[7]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair30" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_b_tdata[8]_i_1 
       (.I0(reg1_b_tdata[8]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_b_valid ),
        .I2(s_axis_b_tdata[8]),
        .O(\n_0_gen_has_z_tready.reg2_b_tdata[8]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair30" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_b_tdata[9]_i_1 
       (.I0(reg1_b_tdata[9]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_b_valid ),
        .I2(s_axis_b_tdata[9]),
        .O(\n_0_gen_has_z_tready.reg2_b_tdata[9]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair42" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_b_tuser[0]_i_1 
       (.I0(reg1_b_tuser[0]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_b_valid ),
        .I2(s_axis_b_tuser[0]),
        .O(\n_0_gen_has_z_tready.reg2_b_tuser[0]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair42" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_b_tuser[1]_i_1 
       (.I0(reg1_b_tuser[1]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_b_valid ),
        .I2(s_axis_b_tuser[1]),
        .O(\n_0_gen_has_z_tready.reg2_b_tuser[1]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair41" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_b_tuser[2]_i_1 
       (.I0(reg1_b_tuser[2]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_b_valid ),
        .I2(s_axis_b_tuser[2]),
        .O(\n_0_gen_has_z_tready.reg2_b_tuser[2]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair41" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_b_tuser[3]_i_1 
       (.I0(reg1_b_tuser[3]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_b_valid ),
        .I2(s_axis_b_tuser[3]),
        .O(\n_0_gen_has_z_tready.reg2_b_tuser[3]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair40" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_b_tuser[4]_i_1 
       (.I0(reg1_b_tuser[4]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_b_valid ),
        .I2(s_axis_b_tuser[4]),
        .O(\n_0_gen_has_z_tready.reg2_b_tuser[4]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair40" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_b_tuser[5]_i_1 
       (.I0(reg1_b_tuser[5]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_b_valid ),
        .I2(s_axis_b_tuser[5]),
        .O(\n_0_gen_has_z_tready.reg2_b_tuser[5]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair39" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_b_tuser[6]_i_1 
       (.I0(reg1_b_tuser[6]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_b_valid ),
        .I2(s_axis_b_tuser[6]),
        .O(\n_0_gen_has_z_tready.reg2_b_tuser[6]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair39" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_b_tuser[7]_i_1 
       (.I0(reg1_b_tuser[7]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_b_valid ),
        .I2(s_axis_b_tuser[7]),
        .O(\n_0_gen_has_z_tready.reg2_b_tuser[7]_i_1 ));
LUT6 #(
    .INIT(64'hFF88F888F888F888)) 
     \gen_has_z_tready.reg2_b_valid_i_1 
       (.I0(\need_combiner.use_2to1.skid_buffer_combiner/reg2_b_valid ),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/p_22_in ),
        .I2(\need_combiner.use_2to1.skid_buffer_combiner/reg1_b_valid ),
        .I3(\need_combiner.use_2to1.skid_buffer_combiner/p_20_in ),
        .I4(s_axis_b_tready),
        .I5(s_axis_b_tvalid),
        .O(\need_combiner.use_2to1.skid_buffer_combiner/reg2_b_valid_nxt ));
(* SOFT_HLUTNM = "soft_lutpair43" *) 
   LUT3 #(
    .INIT(8'h5D)) 
     \gen_has_z_tready.reg2_b_valid_i_2 
       (.I0(combiner_data_valid),
        .I1(m_axis_result_tvalid),
        .I2(m_axis_result_tready),
        .O(\need_combiner.use_2to1.skid_buffer_combiner/p_22_in ));
LUT2 #(
    .INIT(4'h8)) 
     \gen_has_z_tready.z_valid_i_1 
       (.I0(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_valid_nxt ),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg2_b_valid_nxt ),
        .O(\need_combiner.use_2to1.skid_buffer_combiner/p_4_out ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \i_nd_to_rdy/opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(valid_transfer_in),
        .Q(\i_nd_to_rdy/first_q ),
        .R(sclr_i));
FDRE #(
    .INIT(1'b0)) 
     \i_nd_to_rdy/opt_has_pipe.i_pipe[2].pipe_reg[2][0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\i_nd_to_rdy/first_q ),
        .Q(\n_0_i_nd_to_rdy/opt_has_pipe.i_pipe[2].pipe_reg[2][0] ),
        .R(sclr_i));
FDRE #(
    .INIT(1'b0)) 
     \i_nd_to_rdy/opt_has_pipe.i_pipe[3].pipe_reg[3][0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_i_nd_to_rdy/opt_has_pipe.i_pipe[2].pipe_reg[2][0] ),
        .Q(\pipe[3] ),
        .R(sclr_i));
FDRE #(
    .INIT(1'b0)) 
     \i_nd_to_rdy/opt_has_pipe.i_pipe[4].pipe_reg[4][0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\pipe[3] ),
        .Q(\n_0_i_nd_to_rdy/opt_has_pipe.i_pipe[4].pipe_reg[4][0] ),
        .R(sclr_i));
FDRE #(
    .INIT(1'b0)) 
     \i_nd_to_rdy/opt_has_pipe.i_pipe[5].pipe_reg[5][0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_i_nd_to_rdy/opt_has_pipe.i_pipe[4].pipe_reg[4][0] ),
        .Q(\pipe[5] ),
        .R(sclr_i));
FDRE #(
    .INIT(1'b0)) 
     \i_nd_to_rdy/opt_has_pipe.i_pipe[6].pipe_reg[6][0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\pipe[5] ),
        .Q(\pipe[6] ),
        .R(sclr_i));
FDRE #(
    .INIT(1'b0)) 
     \i_nd_to_rdy/opt_has_pipe.i_pipe[7].pipe_reg[7][0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\pipe[6] ),
        .Q(\pipe[7] ),
        .R(sclr_i));
FDRE #(
    .INIT(1'b0)) 
     \i_nd_to_rdy/opt_has_pipe.i_pipe[8].pipe_reg[8][0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\pipe[7] ),
        .Q(valid_transfer_out),
        .R(sclr_i));
FDRE #(
    .INIT(1'b1)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_ready_reg 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_ready_nxt ),
        .Q(s_axis_a_tready),
        .R(sclr_i));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[0] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_tlast ),
        .D(s_axis_a_tdata[0]),
        .Q(reg1_a_tdata[0]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[10] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_tlast ),
        .D(s_axis_a_tdata[10]),
        .Q(reg1_a_tdata[10]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[11] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_tlast ),
        .D(s_axis_a_tdata[11]),
        .Q(reg1_a_tdata[11]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[12] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_tlast ),
        .D(s_axis_a_tdata[12]),
        .Q(reg1_a_tdata[12]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[13] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_tlast ),
        .D(s_axis_a_tdata[13]),
        .Q(reg1_a_tdata[13]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[14] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_tlast ),
        .D(s_axis_a_tdata[14]),
        .Q(reg1_a_tdata[14]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[15] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_tlast ),
        .D(s_axis_a_tdata[15]),
        .Q(reg1_a_tdata[15]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[16] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_tlast ),
        .D(s_axis_a_tdata[16]),
        .Q(reg1_a_tdata[16]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[17] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_tlast ),
        .D(s_axis_a_tdata[17]),
        .Q(reg1_a_tdata[17]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[18] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_tlast ),
        .D(s_axis_a_tdata[18]),
        .Q(reg1_a_tdata[18]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[19] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_tlast ),
        .D(s_axis_a_tdata[19]),
        .Q(reg1_a_tdata[19]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[1] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_tlast ),
        .D(s_axis_a_tdata[1]),
        .Q(reg1_a_tdata[1]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[20] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_tlast ),
        .D(s_axis_a_tdata[20]),
        .Q(reg1_a_tdata[20]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[21] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_tlast ),
        .D(s_axis_a_tdata[21]),
        .Q(reg1_a_tdata[21]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[22] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_tlast ),
        .D(s_axis_a_tdata[22]),
        .Q(reg1_a_tdata[22]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[23] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_tlast ),
        .D(s_axis_a_tdata[23]),
        .Q(reg1_a_tdata[23]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[24] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_tlast ),
        .D(s_axis_a_tdata[24]),
        .Q(reg1_a_tdata[24]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[25] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_tlast ),
        .D(s_axis_a_tdata[25]),
        .Q(reg1_a_tdata[25]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[26] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_tlast ),
        .D(s_axis_a_tdata[26]),
        .Q(reg1_a_tdata[26]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[27] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_tlast ),
        .D(s_axis_a_tdata[27]),
        .Q(reg1_a_tdata[27]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[28] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_tlast ),
        .D(s_axis_a_tdata[28]),
        .Q(reg1_a_tdata[28]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[29] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_tlast ),
        .D(s_axis_a_tdata[29]),
        .Q(reg1_a_tdata[29]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[2] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_tlast ),
        .D(s_axis_a_tdata[2]),
        .Q(reg1_a_tdata[2]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[30] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_tlast ),
        .D(s_axis_a_tdata[30]),
        .Q(reg1_a_tdata[30]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[31] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_tlast ),
        .D(s_axis_a_tdata[31]),
        .Q(reg1_a_tdata[31]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[3] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_tlast ),
        .D(s_axis_a_tdata[3]),
        .Q(reg1_a_tdata[3]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[4] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_tlast ),
        .D(s_axis_a_tdata[4]),
        .Q(reg1_a_tdata[4]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[5] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_tlast ),
        .D(s_axis_a_tdata[5]),
        .Q(reg1_a_tdata[5]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[6] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_tlast ),
        .D(s_axis_a_tdata[6]),
        .Q(reg1_a_tdata[6]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[7] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_tlast ),
        .D(s_axis_a_tdata[7]),
        .Q(reg1_a_tdata[7]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[8] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_tlast ),
        .D(s_axis_a_tdata[8]),
        .Q(reg1_a_tdata[8]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[9] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_tlast ),
        .D(s_axis_a_tdata[9]),
        .Q(reg1_a_tdata[9]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tlast_reg 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_gen_has_z_tready.reg1_a_tlast_i_1 ),
        .Q(\n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tlast_reg ),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tuser_reg[0] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_tlast ),
        .D(s_axis_a_tuser[0]),
        .Q(reg1_a_tuser[0]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tuser_reg[1] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_tlast ),
        .D(s_axis_a_tuser[1]),
        .Q(reg1_a_tuser[1]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tuser_reg[2] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_tlast ),
        .D(s_axis_a_tuser[2]),
        .Q(reg1_a_tuser[2]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tuser_reg[3] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_tlast ),
        .D(s_axis_a_tuser[3]),
        .Q(reg1_a_tuser[3]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tuser_reg[4] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_tlast ),
        .D(s_axis_a_tuser[4]),
        .Q(reg1_a_tuser[4]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tuser_reg[5] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_tlast ),
        .D(s_axis_a_tuser[5]),
        .Q(reg1_a_tuser[5]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tuser_reg[6] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_tlast ),
        .D(s_axis_a_tuser[6]),
        .Q(reg1_a_tuser[6]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tuser_reg[7] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_tlast ),
        .D(s_axis_a_tuser[7]),
        .Q(reg1_a_tuser[7]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_valid_reg 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid_nxt ),
        .Q(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .R(sclr_i));
FDRE #(
    .INIT(1'b1)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_b_ready_reg 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\need_combiner.use_2to1.skid_buffer_combiner/reg1_b_ready_nxt ),
        .Q(s_axis_b_tready),
        .R(sclr_i));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_b_tdata_reg[0] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg1_b_wr ),
        .D(s_axis_b_tdata[0]),
        .Q(reg1_b_tdata[0]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_b_tdata_reg[10] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg1_b_wr ),
        .D(s_axis_b_tdata[10]),
        .Q(reg1_b_tdata[10]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_b_tdata_reg[11] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg1_b_wr ),
        .D(s_axis_b_tdata[11]),
        .Q(reg1_b_tdata[11]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_b_tdata_reg[12] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg1_b_wr ),
        .D(s_axis_b_tdata[12]),
        .Q(reg1_b_tdata[12]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_b_tdata_reg[13] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg1_b_wr ),
        .D(s_axis_b_tdata[13]),
        .Q(reg1_b_tdata[13]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_b_tdata_reg[14] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg1_b_wr ),
        .D(s_axis_b_tdata[14]),
        .Q(reg1_b_tdata[14]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_b_tdata_reg[15] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg1_b_wr ),
        .D(s_axis_b_tdata[15]),
        .Q(reg1_b_tdata[15]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_b_tdata_reg[16] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg1_b_wr ),
        .D(s_axis_b_tdata[16]),
        .Q(reg1_b_tdata[16]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_b_tdata_reg[17] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg1_b_wr ),
        .D(s_axis_b_tdata[17]),
        .Q(reg1_b_tdata[17]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_b_tdata_reg[18] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg1_b_wr ),
        .D(s_axis_b_tdata[18]),
        .Q(reg1_b_tdata[18]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_b_tdata_reg[19] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg1_b_wr ),
        .D(s_axis_b_tdata[19]),
        .Q(reg1_b_tdata[19]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_b_tdata_reg[1] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg1_b_wr ),
        .D(s_axis_b_tdata[1]),
        .Q(reg1_b_tdata[1]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_b_tdata_reg[20] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg1_b_wr ),
        .D(s_axis_b_tdata[20]),
        .Q(reg1_b_tdata[20]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_b_tdata_reg[21] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg1_b_wr ),
        .D(s_axis_b_tdata[21]),
        .Q(reg1_b_tdata[21]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_b_tdata_reg[22] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg1_b_wr ),
        .D(s_axis_b_tdata[22]),
        .Q(reg1_b_tdata[22]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_b_tdata_reg[23] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg1_b_wr ),
        .D(s_axis_b_tdata[23]),
        .Q(reg1_b_tdata[23]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_b_tdata_reg[24] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg1_b_wr ),
        .D(s_axis_b_tdata[24]),
        .Q(reg1_b_tdata[24]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_b_tdata_reg[25] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg1_b_wr ),
        .D(s_axis_b_tdata[25]),
        .Q(reg1_b_tdata[25]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_b_tdata_reg[26] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg1_b_wr ),
        .D(s_axis_b_tdata[26]),
        .Q(reg1_b_tdata[26]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_b_tdata_reg[27] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg1_b_wr ),
        .D(s_axis_b_tdata[27]),
        .Q(reg1_b_tdata[27]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_b_tdata_reg[28] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg1_b_wr ),
        .D(s_axis_b_tdata[28]),
        .Q(reg1_b_tdata[28]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_b_tdata_reg[29] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg1_b_wr ),
        .D(s_axis_b_tdata[29]),
        .Q(reg1_b_tdata[29]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_b_tdata_reg[2] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg1_b_wr ),
        .D(s_axis_b_tdata[2]),
        .Q(reg1_b_tdata[2]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_b_tdata_reg[30] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg1_b_wr ),
        .D(s_axis_b_tdata[30]),
        .Q(reg1_b_tdata[30]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_b_tdata_reg[31] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg1_b_wr ),
        .D(s_axis_b_tdata[31]),
        .Q(reg1_b_tdata[31]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_b_tdata_reg[3] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg1_b_wr ),
        .D(s_axis_b_tdata[3]),
        .Q(reg1_b_tdata[3]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_b_tdata_reg[4] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg1_b_wr ),
        .D(s_axis_b_tdata[4]),
        .Q(reg1_b_tdata[4]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_b_tdata_reg[5] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg1_b_wr ),
        .D(s_axis_b_tdata[5]),
        .Q(reg1_b_tdata[5]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_b_tdata_reg[6] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg1_b_wr ),
        .D(s_axis_b_tdata[6]),
        .Q(reg1_b_tdata[6]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_b_tdata_reg[7] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg1_b_wr ),
        .D(s_axis_b_tdata[7]),
        .Q(reg1_b_tdata[7]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_b_tdata_reg[8] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg1_b_wr ),
        .D(s_axis_b_tdata[8]),
        .Q(reg1_b_tdata[8]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_b_tdata_reg[9] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg1_b_wr ),
        .D(s_axis_b_tdata[9]),
        .Q(reg1_b_tdata[9]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_b_tuser_reg[0] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg1_b_wr ),
        .D(s_axis_b_tuser[0]),
        .Q(reg1_b_tuser[0]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_b_tuser_reg[1] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg1_b_wr ),
        .D(s_axis_b_tuser[1]),
        .Q(reg1_b_tuser[1]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_b_tuser_reg[2] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg1_b_wr ),
        .D(s_axis_b_tuser[2]),
        .Q(reg1_b_tuser[2]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_b_tuser_reg[3] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg1_b_wr ),
        .D(s_axis_b_tuser[3]),
        .Q(reg1_b_tuser[3]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_b_tuser_reg[4] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg1_b_wr ),
        .D(s_axis_b_tuser[4]),
        .Q(reg1_b_tuser[4]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_b_tuser_reg[5] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg1_b_wr ),
        .D(s_axis_b_tuser[5]),
        .Q(reg1_b_tuser[5]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_b_tuser_reg[6] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg1_b_wr ),
        .D(s_axis_b_tuser[6]),
        .Q(reg1_b_tuser[6]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_b_tuser_reg[7] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg1_b_wr ),
        .D(s_axis_b_tuser[7]),
        .Q(reg1_b_tuser[7]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_b_valid_reg 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\need_combiner.use_2to1.skid_buffer_combiner/reg1_b_valid_nxt ),
        .Q(\need_combiner.use_2to1.skid_buffer_combiner/reg1_b_valid ),
        .R(sclr_i));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[0] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[0]_i_1 ),
        .Q(p_4_out[0]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[10] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[10]_i_1 ),
        .Q(p_4_out[10]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[11] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[11]_i_1 ),
        .Q(p_4_out[11]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[12] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[12]_i_1 ),
        .Q(p_4_out[12]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[13] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[13]_i_1 ),
        .Q(p_4_out[13]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[14] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[14]_i_1 ),
        .Q(p_4_out[14]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[15] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[15]_i_1 ),
        .Q(p_4_out[15]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[16] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[16]_i_1 ),
        .Q(p_4_out[16]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[17] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[17]_i_1 ),
        .Q(p_4_out[17]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[18] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[18]_i_1 ),
        .Q(p_4_out[18]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[19] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[19]_i_1 ),
        .Q(p_4_out[19]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[1] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[1]_i_1 ),
        .Q(p_4_out[1]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[20] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[20]_i_1 ),
        .Q(p_4_out[20]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[21] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[21]_i_1 ),
        .Q(p_4_out[21]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[22] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[22]_i_1 ),
        .Q(p_4_out[22]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[23] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[23]_i_1 ),
        .Q(p_4_out[23]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[24] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[24]_i_1 ),
        .Q(p_4_out[24]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[25] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[25]_i_1 ),
        .Q(p_4_out[25]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[26] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[26]_i_1 ),
        .Q(p_4_out[26]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[27] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[27]_i_1 ),
        .Q(p_4_out[27]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[28] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[28]_i_1 ),
        .Q(p_4_out[28]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[29] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[29]_i_1 ),
        .Q(p_4_out[29]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[2] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[2]_i_1 ),
        .Q(p_4_out[2]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[30] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[30]_i_1 ),
        .Q(p_4_out[30]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[31] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[31]_i_2 ),
        .Q(p_4_out[31]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[3] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[3]_i_1 ),
        .Q(p_4_out[3]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[4] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[4]_i_1 ),
        .Q(p_4_out[4]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[5] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[5]_i_1 ),
        .Q(p_4_out[5]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[6] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[6]_i_1 ),
        .Q(p_4_out[6]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[7] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[7]_i_1 ),
        .Q(p_4_out[7]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[8] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[8]_i_1 ),
        .Q(p_4_out[8]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[9] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[9]_i_1 ),
        .Q(p_4_out[9]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tlast_reg 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_gen_has_z_tready.reg2_a_tlast_i_1 ),
        .Q(reg2_a_tlast),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tuser_reg[0] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tuser[0]_i_1 ),
        .Q(reg2_a_tuser[0]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tuser_reg[1] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tuser[1]_i_1 ),
        .Q(reg2_a_tuser[1]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tuser_reg[2] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tuser[2]_i_1 ),
        .Q(reg2_a_tuser[2]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tuser_reg[3] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tuser[3]_i_1 ),
        .Q(reg2_a_tuser[3]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tuser_reg[4] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tuser[4]_i_1 ),
        .Q(reg2_a_tuser[4]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tuser_reg[5] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tuser[5]_i_1 ),
        .Q(reg2_a_tuser[5]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tuser_reg[6] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tuser[6]_i_1 ),
        .Q(reg2_a_tuser[6]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tuser_reg[7] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tuser[7]_i_1 ),
        .Q(reg2_a_tuser[7]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_valid_reg 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_valid_nxt ),
        .Q(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_valid ),
        .R(sclr_i));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_b_tdata_reg[0] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/p_20_in ),
        .D(\n_0_gen_has_z_tready.reg2_b_tdata[0]_i_1 ),
        .Q(m_axis_z_tdata_b[0]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_b_tdata_reg[10] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/p_20_in ),
        .D(\n_0_gen_has_z_tready.reg2_b_tdata[10]_i_1 ),
        .Q(m_axis_z_tdata_b[10]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_b_tdata_reg[11] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/p_20_in ),
        .D(\n_0_gen_has_z_tready.reg2_b_tdata[11]_i_1 ),
        .Q(m_axis_z_tdata_b[11]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_b_tdata_reg[12] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/p_20_in ),
        .D(\n_0_gen_has_z_tready.reg2_b_tdata[12]_i_1 ),
        .Q(m_axis_z_tdata_b[12]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_b_tdata_reg[13] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/p_20_in ),
        .D(\n_0_gen_has_z_tready.reg2_b_tdata[13]_i_1 ),
        .Q(m_axis_z_tdata_b[13]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_b_tdata_reg[14] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/p_20_in ),
        .D(\n_0_gen_has_z_tready.reg2_b_tdata[14]_i_1 ),
        .Q(m_axis_z_tdata_b[14]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_b_tdata_reg[15] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/p_20_in ),
        .D(\n_0_gen_has_z_tready.reg2_b_tdata[15]_i_1 ),
        .Q(m_axis_z_tdata_b[15]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_b_tdata_reg[16] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/p_20_in ),
        .D(\n_0_gen_has_z_tready.reg2_b_tdata[16]_i_1 ),
        .Q(m_axis_z_tdata_b[16]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_b_tdata_reg[17] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/p_20_in ),
        .D(\n_0_gen_has_z_tready.reg2_b_tdata[17]_i_1 ),
        .Q(m_axis_z_tdata_b[17]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_b_tdata_reg[18] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/p_20_in ),
        .D(\n_0_gen_has_z_tready.reg2_b_tdata[18]_i_1 ),
        .Q(m_axis_z_tdata_b[18]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_b_tdata_reg[19] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/p_20_in ),
        .D(\n_0_gen_has_z_tready.reg2_b_tdata[19]_i_1 ),
        .Q(m_axis_z_tdata_b[19]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_b_tdata_reg[1] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/p_20_in ),
        .D(\n_0_gen_has_z_tready.reg2_b_tdata[1]_i_1 ),
        .Q(m_axis_z_tdata_b[1]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_b_tdata_reg[20] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/p_20_in ),
        .D(\n_0_gen_has_z_tready.reg2_b_tdata[20]_i_1 ),
        .Q(m_axis_z_tdata_b[20]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_b_tdata_reg[21] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/p_20_in ),
        .D(\n_0_gen_has_z_tready.reg2_b_tdata[21]_i_1 ),
        .Q(m_axis_z_tdata_b[21]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_b_tdata_reg[22] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/p_20_in ),
        .D(\n_0_gen_has_z_tready.reg2_b_tdata[22]_i_1 ),
        .Q(m_axis_z_tdata_b[22]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_b_tdata_reg[23] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/p_20_in ),
        .D(\n_0_gen_has_z_tready.reg2_b_tdata[23]_i_1 ),
        .Q(m_axis_z_tdata_b[23]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_b_tdata_reg[24] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/p_20_in ),
        .D(\n_0_gen_has_z_tready.reg2_b_tdata[24]_i_1 ),
        .Q(m_axis_z_tdata_b[24]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_b_tdata_reg[25] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/p_20_in ),
        .D(\n_0_gen_has_z_tready.reg2_b_tdata[25]_i_1 ),
        .Q(m_axis_z_tdata_b[25]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_b_tdata_reg[26] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/p_20_in ),
        .D(\n_0_gen_has_z_tready.reg2_b_tdata[26]_i_1 ),
        .Q(m_axis_z_tdata_b[26]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_b_tdata_reg[27] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/p_20_in ),
        .D(\n_0_gen_has_z_tready.reg2_b_tdata[27]_i_1 ),
        .Q(m_axis_z_tdata_b[27]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_b_tdata_reg[28] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/p_20_in ),
        .D(\n_0_gen_has_z_tready.reg2_b_tdata[28]_i_1 ),
        .Q(m_axis_z_tdata_b[28]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_b_tdata_reg[29] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/p_20_in ),
        .D(\n_0_gen_has_z_tready.reg2_b_tdata[29]_i_1 ),
        .Q(m_axis_z_tdata_b[29]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_b_tdata_reg[2] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/p_20_in ),
        .D(\n_0_gen_has_z_tready.reg2_b_tdata[2]_i_1 ),
        .Q(m_axis_z_tdata_b[2]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_b_tdata_reg[30] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/p_20_in ),
        .D(\n_0_gen_has_z_tready.reg2_b_tdata[30]_i_1 ),
        .Q(m_axis_z_tdata_b[30]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_b_tdata_reg[31] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/p_20_in ),
        .D(\n_0_gen_has_z_tready.reg2_b_tdata[31]_i_2 ),
        .Q(m_axis_z_tdata_b[31]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_b_tdata_reg[3] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/p_20_in ),
        .D(\n_0_gen_has_z_tready.reg2_b_tdata[3]_i_1 ),
        .Q(m_axis_z_tdata_b[3]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_b_tdata_reg[4] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/p_20_in ),
        .D(\n_0_gen_has_z_tready.reg2_b_tdata[4]_i_1 ),
        .Q(m_axis_z_tdata_b[4]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_b_tdata_reg[5] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/p_20_in ),
        .D(\n_0_gen_has_z_tready.reg2_b_tdata[5]_i_1 ),
        .Q(m_axis_z_tdata_b[5]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_b_tdata_reg[6] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/p_20_in ),
        .D(\n_0_gen_has_z_tready.reg2_b_tdata[6]_i_1 ),
        .Q(m_axis_z_tdata_b[6]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_b_tdata_reg[7] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/p_20_in ),
        .D(\n_0_gen_has_z_tready.reg2_b_tdata[7]_i_1 ),
        .Q(m_axis_z_tdata_b[7]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_b_tdata_reg[8] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/p_20_in ),
        .D(\n_0_gen_has_z_tready.reg2_b_tdata[8]_i_1 ),
        .Q(m_axis_z_tdata_b[8]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_b_tdata_reg[9] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/p_20_in ),
        .D(\n_0_gen_has_z_tready.reg2_b_tdata[9]_i_1 ),
        .Q(m_axis_z_tdata_b[9]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_b_tuser_reg[0] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/p_20_in ),
        .D(\n_0_gen_has_z_tready.reg2_b_tuser[0]_i_1 ),
        .Q(reg2_b_tuser[0]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_b_tuser_reg[1] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/p_20_in ),
        .D(\n_0_gen_has_z_tready.reg2_b_tuser[1]_i_1 ),
        .Q(reg2_b_tuser[1]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_b_tuser_reg[2] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/p_20_in ),
        .D(\n_0_gen_has_z_tready.reg2_b_tuser[2]_i_1 ),
        .Q(reg2_b_tuser[2]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_b_tuser_reg[3] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/p_20_in ),
        .D(\n_0_gen_has_z_tready.reg2_b_tuser[3]_i_1 ),
        .Q(reg2_b_tuser[3]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_b_tuser_reg[4] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/p_20_in ),
        .D(\n_0_gen_has_z_tready.reg2_b_tuser[4]_i_1 ),
        .Q(reg2_b_tuser[4]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_b_tuser_reg[5] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/p_20_in ),
        .D(\n_0_gen_has_z_tready.reg2_b_tuser[5]_i_1 ),
        .Q(reg2_b_tuser[5]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_b_tuser_reg[6] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/p_20_in ),
        .D(\n_0_gen_has_z_tready.reg2_b_tuser[6]_i_1 ),
        .Q(reg2_b_tuser[6]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_b_tuser_reg[7] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/p_20_in ),
        .D(\n_0_gen_has_z_tready.reg2_b_tuser[7]_i_1 ),
        .Q(reg2_b_tuser[7]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_b_valid_reg 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\need_combiner.use_2to1.skid_buffer_combiner/reg2_b_valid_nxt ),
        .Q(\need_combiner.use_2to1.skid_buffer_combiner/reg2_b_valid ),
        .R(sclr_i));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.z_valid_reg 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\need_combiner.use_2to1.skid_buffer_combiner/p_4_out ),
        .Q(combiner_data_valid),
        .R(sclr_i));
FDRE #(
    .INIT(1'b0)) 
     \need_user_delay.user_pipe/i_pipe/opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(reg2_a_tuser[0]),
        .Q(\need_user_delay.user_pipe/i_pipe/first_q [0]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_user_delay.user_pipe/i_pipe/opt_has_pipe.first_q_reg[10] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(reg2_b_tuser[2]),
        .Q(\need_user_delay.user_pipe/i_pipe/first_q [10]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_user_delay.user_pipe/i_pipe/opt_has_pipe.first_q_reg[11] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(reg2_b_tuser[3]),
        .Q(\need_user_delay.user_pipe/i_pipe/first_q [11]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_user_delay.user_pipe/i_pipe/opt_has_pipe.first_q_reg[12] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(reg2_b_tuser[4]),
        .Q(\need_user_delay.user_pipe/i_pipe/first_q [12]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_user_delay.user_pipe/i_pipe/opt_has_pipe.first_q_reg[13] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(reg2_b_tuser[5]),
        .Q(\need_user_delay.user_pipe/i_pipe/first_q [13]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_user_delay.user_pipe/i_pipe/opt_has_pipe.first_q_reg[14] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(reg2_b_tuser[6]),
        .Q(\need_user_delay.user_pipe/i_pipe/first_q [14]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_user_delay.user_pipe/i_pipe/opt_has_pipe.first_q_reg[15] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(reg2_b_tuser[7]),
        .Q(\need_user_delay.user_pipe/i_pipe/first_q [15]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_user_delay.user_pipe/i_pipe/opt_has_pipe.first_q_reg[16] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(reg2_a_tlast),
        .Q(\need_user_delay.user_pipe/i_pipe/first_q [16]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_user_delay.user_pipe/i_pipe/opt_has_pipe.first_q_reg[1] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(reg2_a_tuser[1]),
        .Q(\need_user_delay.user_pipe/i_pipe/first_q [1]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_user_delay.user_pipe/i_pipe/opt_has_pipe.first_q_reg[2] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(reg2_a_tuser[2]),
        .Q(\need_user_delay.user_pipe/i_pipe/first_q [2]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_user_delay.user_pipe/i_pipe/opt_has_pipe.first_q_reg[3] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(reg2_a_tuser[3]),
        .Q(\need_user_delay.user_pipe/i_pipe/first_q [3]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_user_delay.user_pipe/i_pipe/opt_has_pipe.first_q_reg[4] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(reg2_a_tuser[4]),
        .Q(\need_user_delay.user_pipe/i_pipe/first_q [4]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_user_delay.user_pipe/i_pipe/opt_has_pipe.first_q_reg[5] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(reg2_a_tuser[5]),
        .Q(\need_user_delay.user_pipe/i_pipe/first_q [5]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_user_delay.user_pipe/i_pipe/opt_has_pipe.first_q_reg[6] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(reg2_a_tuser[6]),
        .Q(\need_user_delay.user_pipe/i_pipe/first_q [6]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_user_delay.user_pipe/i_pipe/opt_has_pipe.first_q_reg[7] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(reg2_a_tuser[7]),
        .Q(\need_user_delay.user_pipe/i_pipe/first_q [7]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_user_delay.user_pipe/i_pipe/opt_has_pipe.first_q_reg[8] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(reg2_b_tuser[0]),
        .Q(\need_user_delay.user_pipe/i_pipe/first_q [8]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_user_delay.user_pipe/i_pipe/opt_has_pipe.first_q_reg[9] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(reg2_b_tuser[1]),
        .Q(\need_user_delay.user_pipe/i_pipe/first_q [9]),
        .R(\<const0> ));
(* srl_bus_name = "U0/i_synth/\need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[7].pipe_reg[7] " *) 
   (* srl_name = "U0/i_synth/\need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[7].pipe_reg[7][0]_srl6 " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     \need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[7].pipe_reg[7][0]_srl6 
       (.A0(\<const1> ),
        .A1(\<const0> ),
        .A2(\<const1> ),
        .A3(\<const0> ),
        .CE(\<const1> ),
        .CLK(aclk),
        .D(\need_user_delay.user_pipe/i_pipe/first_q [0]),
        .Q(\n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[7].pipe_reg[7][0]_srl6 ));
(* srl_bus_name = "U0/i_synth/\need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[7].pipe_reg[7] " *) 
   (* srl_name = "U0/i_synth/\need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[7].pipe_reg[7][10]_srl6 " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     \need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[7].pipe_reg[7][10]_srl6 
       (.A0(\<const1> ),
        .A1(\<const0> ),
        .A2(\<const1> ),
        .A3(\<const0> ),
        .CE(\<const1> ),
        .CLK(aclk),
        .D(\need_user_delay.user_pipe/i_pipe/first_q [10]),
        .Q(\n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[7].pipe_reg[7][10]_srl6 ));
(* srl_bus_name = "U0/i_synth/\need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[7].pipe_reg[7] " *) 
   (* srl_name = "U0/i_synth/\need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[7].pipe_reg[7][11]_srl6 " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     \need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[7].pipe_reg[7][11]_srl6 
       (.A0(\<const1> ),
        .A1(\<const0> ),
        .A2(\<const1> ),
        .A3(\<const0> ),
        .CE(\<const1> ),
        .CLK(aclk),
        .D(\need_user_delay.user_pipe/i_pipe/first_q [11]),
        .Q(\n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[7].pipe_reg[7][11]_srl6 ));
(* srl_bus_name = "U0/i_synth/\need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[7].pipe_reg[7] " *) 
   (* srl_name = "U0/i_synth/\need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[7].pipe_reg[7][12]_srl6 " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     \need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[7].pipe_reg[7][12]_srl6 
       (.A0(\<const1> ),
        .A1(\<const0> ),
        .A2(\<const1> ),
        .A3(\<const0> ),
        .CE(\<const1> ),
        .CLK(aclk),
        .D(\need_user_delay.user_pipe/i_pipe/first_q [12]),
        .Q(\n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[7].pipe_reg[7][12]_srl6 ));
(* srl_bus_name = "U0/i_synth/\need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[7].pipe_reg[7] " *) 
   (* srl_name = "U0/i_synth/\need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[7].pipe_reg[7][13]_srl6 " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     \need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[7].pipe_reg[7][13]_srl6 
       (.A0(\<const1> ),
        .A1(\<const0> ),
        .A2(\<const1> ),
        .A3(\<const0> ),
        .CE(\<const1> ),
        .CLK(aclk),
        .D(\need_user_delay.user_pipe/i_pipe/first_q [13]),
        .Q(\n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[7].pipe_reg[7][13]_srl6 ));
(* srl_bus_name = "U0/i_synth/\need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[7].pipe_reg[7] " *) 
   (* srl_name = "U0/i_synth/\need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[7].pipe_reg[7][14]_srl6 " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     \need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[7].pipe_reg[7][14]_srl6 
       (.A0(\<const1> ),
        .A1(\<const0> ),
        .A2(\<const1> ),
        .A3(\<const0> ),
        .CE(\<const1> ),
        .CLK(aclk),
        .D(\need_user_delay.user_pipe/i_pipe/first_q [14]),
        .Q(\n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[7].pipe_reg[7][14]_srl6 ));
(* srl_bus_name = "U0/i_synth/\need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[7].pipe_reg[7] " *) 
   (* srl_name = "U0/i_synth/\need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[7].pipe_reg[7][15]_srl6 " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     \need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[7].pipe_reg[7][15]_srl6 
       (.A0(\<const1> ),
        .A1(\<const0> ),
        .A2(\<const1> ),
        .A3(\<const0> ),
        .CE(\<const1> ),
        .CLK(aclk),
        .D(\need_user_delay.user_pipe/i_pipe/first_q [15]),
        .Q(\n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[7].pipe_reg[7][15]_srl6 ));
(* srl_bus_name = "U0/i_synth/\need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[7].pipe_reg[7] " *) 
   (* srl_name = "U0/i_synth/\need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[7].pipe_reg[7][16]_srl6 " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     \need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[7].pipe_reg[7][16]_srl6 
       (.A0(\<const1> ),
        .A1(\<const0> ),
        .A2(\<const1> ),
        .A3(\<const0> ),
        .CE(\<const1> ),
        .CLK(aclk),
        .D(\need_user_delay.user_pipe/i_pipe/first_q [16]),
        .Q(\n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[7].pipe_reg[7][16]_srl6 ));
(* srl_bus_name = "U0/i_synth/\need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[7].pipe_reg[7] " *) 
   (* srl_name = "U0/i_synth/\need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[7].pipe_reg[7][1]_srl6 " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     \need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[7].pipe_reg[7][1]_srl6 
       (.A0(\<const1> ),
        .A1(\<const0> ),
        .A2(\<const1> ),
        .A3(\<const0> ),
        .CE(\<const1> ),
        .CLK(aclk),
        .D(\need_user_delay.user_pipe/i_pipe/first_q [1]),
        .Q(\n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[7].pipe_reg[7][1]_srl6 ));
(* srl_bus_name = "U0/i_synth/\need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[7].pipe_reg[7] " *) 
   (* srl_name = "U0/i_synth/\need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[7].pipe_reg[7][2]_srl6 " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     \need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[7].pipe_reg[7][2]_srl6 
       (.A0(\<const1> ),
        .A1(\<const0> ),
        .A2(\<const1> ),
        .A3(\<const0> ),
        .CE(\<const1> ),
        .CLK(aclk),
        .D(\need_user_delay.user_pipe/i_pipe/first_q [2]),
        .Q(\n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[7].pipe_reg[7][2]_srl6 ));
(* srl_bus_name = "U0/i_synth/\need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[7].pipe_reg[7] " *) 
   (* srl_name = "U0/i_synth/\need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[7].pipe_reg[7][3]_srl6 " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     \need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[7].pipe_reg[7][3]_srl6 
       (.A0(\<const1> ),
        .A1(\<const0> ),
        .A2(\<const1> ),
        .A3(\<const0> ),
        .CE(\<const1> ),
        .CLK(aclk),
        .D(\need_user_delay.user_pipe/i_pipe/first_q [3]),
        .Q(\n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[7].pipe_reg[7][3]_srl6 ));
(* srl_bus_name = "U0/i_synth/\need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[7].pipe_reg[7] " *) 
   (* srl_name = "U0/i_synth/\need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[7].pipe_reg[7][4]_srl6 " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     \need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[7].pipe_reg[7][4]_srl6 
       (.A0(\<const1> ),
        .A1(\<const0> ),
        .A2(\<const1> ),
        .A3(\<const0> ),
        .CE(\<const1> ),
        .CLK(aclk),
        .D(\need_user_delay.user_pipe/i_pipe/first_q [4]),
        .Q(\n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[7].pipe_reg[7][4]_srl6 ));
(* srl_bus_name = "U0/i_synth/\need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[7].pipe_reg[7] " *) 
   (* srl_name = "U0/i_synth/\need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[7].pipe_reg[7][5]_srl6 " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     \need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[7].pipe_reg[7][5]_srl6 
       (.A0(\<const1> ),
        .A1(\<const0> ),
        .A2(\<const1> ),
        .A3(\<const0> ),
        .CE(\<const1> ),
        .CLK(aclk),
        .D(\need_user_delay.user_pipe/i_pipe/first_q [5]),
        .Q(\n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[7].pipe_reg[7][5]_srl6 ));
(* srl_bus_name = "U0/i_synth/\need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[7].pipe_reg[7] " *) 
   (* srl_name = "U0/i_synth/\need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[7].pipe_reg[7][6]_srl6 " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     \need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[7].pipe_reg[7][6]_srl6 
       (.A0(\<const1> ),
        .A1(\<const0> ),
        .A2(\<const1> ),
        .A3(\<const0> ),
        .CE(\<const1> ),
        .CLK(aclk),
        .D(\need_user_delay.user_pipe/i_pipe/first_q [6]),
        .Q(\n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[7].pipe_reg[7][6]_srl6 ));
(* srl_bus_name = "U0/i_synth/\need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[7].pipe_reg[7] " *) 
   (* srl_name = "U0/i_synth/\need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[7].pipe_reg[7][7]_srl6 " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     \need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[7].pipe_reg[7][7]_srl6 
       (.A0(\<const1> ),
        .A1(\<const0> ),
        .A2(\<const1> ),
        .A3(\<const0> ),
        .CE(\<const1> ),
        .CLK(aclk),
        .D(\need_user_delay.user_pipe/i_pipe/first_q [7]),
        .Q(\n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[7].pipe_reg[7][7]_srl6 ));
(* srl_bus_name = "U0/i_synth/\need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[7].pipe_reg[7] " *) 
   (* srl_name = "U0/i_synth/\need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[7].pipe_reg[7][8]_srl6 " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     \need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[7].pipe_reg[7][8]_srl6 
       (.A0(\<const1> ),
        .A1(\<const0> ),
        .A2(\<const1> ),
        .A3(\<const0> ),
        .CE(\<const1> ),
        .CLK(aclk),
        .D(\need_user_delay.user_pipe/i_pipe/first_q [8]),
        .Q(\n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[7].pipe_reg[7][8]_srl6 ));
(* srl_bus_name = "U0/i_synth/\need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[7].pipe_reg[7] " *) 
   (* srl_name = "U0/i_synth/\need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[7].pipe_reg[7][9]_srl6 " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     \need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[7].pipe_reg[7][9]_srl6 
       (.A0(\<const1> ),
        .A1(\<const0> ),
        .A2(\<const1> ),
        .A3(\<const0> ),
        .CE(\<const1> ),
        .CLK(aclk),
        .D(\need_user_delay.user_pipe/i_pipe/first_q [9]),
        .Q(\n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[7].pipe_reg[7][9]_srl6 ));
FDRE #(
    .INIT(1'b0)) 
     \need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[8].pipe_reg[8][0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[7].pipe_reg[7][0]_srl6 ),
        .Q(p_4_in[0]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[8].pipe_reg[8][10] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[7].pipe_reg[7][10]_srl6 ),
        .Q(p_4_in[10]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[8].pipe_reg[8][11] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[7].pipe_reg[7][11]_srl6 ),
        .Q(p_4_in[11]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[8].pipe_reg[8][12] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[7].pipe_reg[7][12]_srl6 ),
        .Q(p_4_in[12]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[8].pipe_reg[8][13] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[7].pipe_reg[7][13]_srl6 ),
        .Q(p_4_in[13]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[8].pipe_reg[8][14] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[7].pipe_reg[7][14]_srl6 ),
        .Q(p_4_in[14]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[8].pipe_reg[8][15] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[7].pipe_reg[7][15]_srl6 ),
        .Q(p_4_in[15]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[8].pipe_reg[8][16] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[7].pipe_reg[7][16]_srl6 ),
        .Q(p_4_in[16]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[8].pipe_reg[8][1] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[7].pipe_reg[7][1]_srl6 ),
        .Q(p_4_in[1]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[8].pipe_reg[8][2] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[7].pipe_reg[7][2]_srl6 ),
        .Q(p_4_in[2]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[8].pipe_reg[8][3] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[7].pipe_reg[7][3]_srl6 ),
        .Q(p_4_in[3]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[8].pipe_reg[8][4] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[7].pipe_reg[7][4]_srl6 ),
        .Q(p_4_in[4]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[8].pipe_reg[8][5] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[7].pipe_reg[7][5]_srl6 ),
        .Q(p_4_in[5]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[8].pipe_reg[8][6] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[7].pipe_reg[7][6]_srl6 ),
        .Q(p_4_in[6]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[8].pipe_reg[8][7] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[7].pipe_reg[7][7]_srl6 ),
        .Q(p_4_in[7]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[8].pipe_reg[8][8] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[7].pipe_reg[7][8]_srl6 ),
        .Q(p_4_in[8]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[8].pipe_reg[8][9] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[7].pipe_reg[7][9]_srl6 ),
        .Q(p_4_in[9]),
        .R(\<const0> ));
(* SOFT_HLUTNM = "soft_lutpair43" *) 
   LUT3 #(
    .INIT(8'hA2)) 
     \opt_has_pipe.first_q[0]_i_1 
       (.I0(combiner_data_valid),
        .I1(m_axis_result_tvalid),
        .I2(m_axis_result_tready),
        .O(valid_transfer_in));
LUT1 #(
    .INIT(2'h1)) 
     \opt_has_pipe.first_q[0]_i_1__0 
       (.I0(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/first_q [25]),
        .O(\MULT.OP/R_AND_R/normalize_local ));
LUT6 #(
    .INIT(64'hF1F1F1F0F1F0F1F0)) 
     \opt_has_pipe.first_q[0]_i_1__1 
       (.I0(\n_0_MULT.OP/EXP/SIG_DELAY/i_pipe/opt_has_pipe.i_pipe[4].pipe_reg[4][1] ),
        .I1(\MULT.OP/EXP/state [1]),
        .I2(\MULT.OP/EXP/state [0]),
        .I3(\n_0_MULT.OP/EXP/SIG_DELAY/i_pipe/opt_has_pipe.i_pipe[4].pipe_reg[4][0] ),
        .I4(\MULT.OP/EXP/p_0_in2_in ),
        .I5(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/first_q [25]),
        .O(\n_0_opt_has_pipe.first_q[0]_i_1__1 ));
(* SOFT_HLUTNM = "soft_lutpair45" *) 
   LUT3 #(
    .INIT(8'h10)) 
     \opt_has_pipe.first_q[0]_i_1__10 
       (.I0(m_axis_z_tdata_b[24]),
        .I1(m_axis_z_tdata_b[23]),
        .I2(\n_0_opt_has_pipe.first_q[0]_i_2__2 ),
        .O(\MULT.OP/EXP/COND_DET_B/exp_all_zero_ip ));
(* SOFT_HLUTNM = "soft_lutpair45" *) 
   LUT3 #(
    .INIT(8'h80)) 
     \opt_has_pipe.first_q[0]_i_1__11 
       (.I0(m_axis_z_tdata_b[24]),
        .I1(m_axis_z_tdata_b[23]),
        .I2(\n_0_opt_has_pipe.first_q[0]_i_2__3 ),
        .O(\MULT.OP/EXP/COND_DET_B/exp_all_one_ip ));
LUT6 #(
    .INIT(64'h1111000011111000)) 
     \opt_has_pipe.first_q[0]_i_1__12 
       (.I0(\MULT.OP/EXP/state [0]),
        .I1(\MULT.OP/EXP/state [1]),
        .I2(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/first_q [25]),
        .I3(\MULT.OP/EXP/p_0_in2_in ),
        .I4(\n_0_MULT.OP/EXP/SIG_DELAY/i_pipe/opt_has_pipe.i_pipe[4].pipe_reg[4][0] ),
        .I5(\n_0_MULT.OP/EXP/SIG_DELAY/i_pipe/opt_has_pipe.i_pipe[4].pipe_reg[4][1] ),
        .O(\MULT.OP/EXP/flow_int_up [0]));
LUT3 #(
    .INIT(8'h34)) 
     \opt_has_pipe.first_q[0]_i_1__2 
       (.I0(\MULT.OP/EXP/STATE_UP_DELAY/i_pipe/first_q [1]),
        .I1(\MULT.OP/EXP/STATE_UP_DELAY/i_pipe/first_q [2]),
        .I2(\MULT.OP/EXP/STATE_UP_DELAY/i_pipe/first_q [0]),
        .O(\n_0_opt_has_pipe.first_q[0]_i_1__2 ));
LUT2 #(
    .INIT(4'h8)) 
     \opt_has_pipe.first_q[0]_i_1__3 
       (.I0(\MULT.OP/EXP/PROD_DELAY/i_pipe/first_q ),
        .I1(\n_0_opt_has_pipe.first_q[0]_i_2 ),
        .O(\MULT.OP/EXP/sign_det ));
LUT6 #(
    .INIT(64'hEC0CA0000000A000)) 
     \opt_has_pipe.first_q[0]_i_1__4 
       (.I0(\MULT.OP/EXP/COND_DET_B/EXP_DET_LUT.EXP_ALL_ZERO_DEL/i_pipe/first_q ),
        .I1(\MULT.OP/EXP/COND_DET_A/EXP_DET_LUT.EXP_ALL_ZERO_DEL/i_pipe/first_q ),
        .I2(\MULT.OP/EXP/COND_DET_A/EXP_DET_LUT.EXP_ALL_ONE_DEL/i_pipe/first_q ),
        .I3(\MULT.OP/EXP/a_mant_is_zero_int ),
        .I4(\MULT.OP/EXP/COND_DET_B/EXP_DET_LUT.EXP_ALL_ONE_DEL/i_pipe/first_q ),
        .I5(\MULT.OP/EXP/b_mant_is_zero_int ),
        .O(\MULT.OP/EXP/invalid_op_det ));
LUT2 #(
    .INIT(4'h6)) 
     \opt_has_pipe.first_q[0]_i_1__5 
       (.I0(m_axis_z_tdata_b[31]),
        .I1(p_4_out[31]),
        .O(\MULT.OP/EXP/prod_sign_ip ));
LUT2 #(
    .INIT(4'hE)) 
     \opt_has_pipe.first_q[0]_i_1__6 
       (.I0(\MULT.OP/EXP/COND_DET_B/EXP_DET_LUT.EXP_ALL_ONE_DEL/i_pipe/first_q ),
        .I1(\MULT.OP/EXP/COND_DET_A/EXP_DET_LUT.EXP_ALL_ONE_DEL/i_pipe/first_q ),
        .O(\MULT.OP/EXP/state_det [0]));
LUT6 #(
    .INIT(64'hA888888888888888)) 
     \opt_has_pipe.first_q[0]_i_1__7 
       (.I0(\MULT.OP/EXP/p_1_in4_in ),
        .I1(\MULT.OP/EXP/EXP_ADD.C_CHAIN/Q_DEL/i_pipe/first_q [7]),
        .I2(\MULT.OP/EXP/EXP_ADD.C_CHAIN/Q_DEL/i_pipe/first_q [0]),
        .I3(\MULT.OP/EXP/EXP_ADD.C_CHAIN/Q_DEL/i_pipe/first_q [1]),
        .I4(\MULT.OP/EXP/EXP_ADD.C_CHAIN/Q_DEL/i_pipe/first_q [6]),
        .I5(\n_0_opt_has_pipe.first_q[2]_i_2 ),
        .O(\MULT.OP/EXP/flow_sig [0]));
(* SOFT_HLUTNM = "soft_lutpair44" *) 
   LUT3 #(
    .INIT(8'h10)) 
     \opt_has_pipe.first_q[0]_i_1__8 
       (.I0(p_4_out[24]),
        .I1(p_4_out[23]),
        .I2(\n_0_opt_has_pipe.first_q[0]_i_2__0 ),
        .O(\MULT.OP/EXP/COND_DET_A/exp_all_zero_ip ));
(* SOFT_HLUTNM = "soft_lutpair44" *) 
   LUT3 #(
    .INIT(8'h80)) 
     \opt_has_pipe.first_q[0]_i_1__9 
       (.I0(p_4_out[24]),
        .I1(p_4_out[23]),
        .I2(\n_0_opt_has_pipe.first_q[0]_i_2__1 ),
        .O(\MULT.OP/EXP/COND_DET_A/exp_all_one_ip ));
LUT6 #(
    .INIT(64'h13035F0F00005F0F)) 
     \opt_has_pipe.first_q[0]_i_2 
       (.I0(\MULT.OP/EXP/COND_DET_B/EXP_DET_LUT.EXP_ALL_ZERO_DEL/i_pipe/first_q ),
        .I1(\MULT.OP/EXP/COND_DET_A/EXP_DET_LUT.EXP_ALL_ZERO_DEL/i_pipe/first_q ),
        .I2(\MULT.OP/EXP/COND_DET_A/EXP_DET_LUT.EXP_ALL_ONE_DEL/i_pipe/first_q ),
        .I3(\MULT.OP/EXP/a_mant_is_zero_int ),
        .I4(\MULT.OP/EXP/COND_DET_B/EXP_DET_LUT.EXP_ALL_ONE_DEL/i_pipe/first_q ),
        .I5(\MULT.OP/EXP/b_mant_is_zero_int ),
        .O(\n_0_opt_has_pipe.first_q[0]_i_2 ));
LUT6 #(
    .INIT(64'h0000000000000001)) 
     \opt_has_pipe.first_q[0]_i_2__0 
       (.I0(p_4_out[26]),
        .I1(p_4_out[25]),
        .I2(p_4_out[29]),
        .I3(p_4_out[30]),
        .I4(p_4_out[27]),
        .I5(p_4_out[28]),
        .O(\n_0_opt_has_pipe.first_q[0]_i_2__0 ));
LUT6 #(
    .INIT(64'h8000000000000000)) 
     \opt_has_pipe.first_q[0]_i_2__1 
       (.I0(p_4_out[26]),
        .I1(p_4_out[25]),
        .I2(p_4_out[29]),
        .I3(p_4_out[30]),
        .I4(p_4_out[27]),
        .I5(p_4_out[28]),
        .O(\n_0_opt_has_pipe.first_q[0]_i_2__1 ));
LUT6 #(
    .INIT(64'h0000000000000001)) 
     \opt_has_pipe.first_q[0]_i_2__2 
       (.I0(m_axis_z_tdata_b[26]),
        .I1(m_axis_z_tdata_b[25]),
        .I2(m_axis_z_tdata_b[29]),
        .I3(m_axis_z_tdata_b[30]),
        .I4(m_axis_z_tdata_b[27]),
        .I5(m_axis_z_tdata_b[28]),
        .O(\n_0_opt_has_pipe.first_q[0]_i_2__2 ));
LUT6 #(
    .INIT(64'h8000000000000000)) 
     \opt_has_pipe.first_q[0]_i_2__3 
       (.I0(m_axis_z_tdata_b[26]),
        .I1(m_axis_z_tdata_b[25]),
        .I2(m_axis_z_tdata_b[29]),
        .I3(m_axis_z_tdata_b[30]),
        .I4(m_axis_z_tdata_b[27]),
        .I5(m_axis_z_tdata_b[28]),
        .O(\n_0_opt_has_pipe.first_q[0]_i_2__3 ));
LUT3 #(
    .INIT(8'h10)) 
     \opt_has_pipe.first_q[10]_i_1 
       (.I0(\MULT.OP/EXP/STATE_UP_DELAY/i_pipe/first_q [0]),
        .I1(\MULT.OP/EXP/STATE_UP_DELAY/i_pipe/first_q [1]),
        .I2(\MULT.OP/EXP/STATE_UP_DELAY/i_pipe/first_q [2]),
        .O(\n_0_opt_has_pipe.first_q[10]_i_1 ));
LUT3 #(
    .INIT(8'h54)) 
     \opt_has_pipe.first_q[11]_i_1 
       (.I0(\MULT.OP/EXP/STATE_UP_DELAY/i_pipe/first_q [2]),
        .I1(\MULT.OP/EXP/STATE_UP_DELAY/i_pipe/first_q [0]),
        .I2(\MULT.OP/EXP/STATE_UP_DELAY/i_pipe/first_q [1]),
        .O(\n_0_opt_has_pipe.first_q[11]_i_1 ));
LUT2 #(
    .INIT(4'h2)) 
     \opt_has_pipe.first_q[12]_i_1 
       (.I0(\MULT.OP/EXP/STATE_UP_DELAY/i_pipe/first_q [0]),
        .I1(\MULT.OP/EXP/STATE_UP_DELAY/i_pipe/first_q [2]),
        .O(\n_0_opt_has_pipe.first_q[12]_i_1 ));
LUT4 #(
    .INIT(16'h001C)) 
     \opt_has_pipe.first_q[13]_i_1 
       (.I0(\MULT.OP/EXP/FLOW_DEC_DEL/i_pipe/first_q ),
        .I1(\MULT.OP/EXP/STATE_UP_DELAY/i_pipe/first_q [2]),
        .I2(\MULT.OP/EXP/STATE_UP_DELAY/i_pipe/first_q [1]),
        .I3(\MULT.OP/EXP/STATE_UP_DELAY/i_pipe/first_q [0]),
        .O(\n_0_opt_has_pipe.first_q[13]_i_1 ));
LUT6 #(
    .INIT(64'hBBBBBBBBBABABBBA)) 
     \opt_has_pipe.first_q[1]_i_1 
       (.I0(\MULT.OP/EXP/state [1]),
        .I1(\MULT.OP/EXP/state [0]),
        .I2(\n_0_opt_has_pipe.first_q[1]_i_2 ),
        .I3(\n_0_MULT.OP/EXP/SIG_DELAY/i_pipe/opt_has_pipe.i_pipe[4].pipe_reg[4][3] ),
        .I4(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/first_q [25]),
        .I5(\n_0_MULT.OP/EXP/SIG_DELAY/i_pipe/opt_has_pipe.i_pipe[4].pipe_reg[4][1] ),
        .O(\n_0_opt_has_pipe.first_q[1]_i_1 ));
LUT4 #(
    .INIT(16'h0004)) 
     \opt_has_pipe.first_q[1]_i_1__0 
       (.I0(\MULT.OP/EXP/STATE_UP_DELAY/i_pipe/first_q [2]),
        .I1(\MULT.OP/EXP/STATE_UP_DELAY/i_pipe/first_q [1]),
        .I2(\MULT.OP/EXP/FLOW_DEC_DEL/i_pipe/first_q ),
        .I3(\MULT.OP/EXP/STATE_UP_DELAY/i_pipe/first_q [0]),
        .O(\n_0_opt_has_pipe.first_q[1]_i_1__0 ));
LUT6 #(
    .INIT(64'h05050D0D5505D808)) 
     \opt_has_pipe.first_q[1]_i_1__1 
       (.I0(\MULT.OP/EXP/COND_DET_A/EXP_DET_LUT.EXP_ALL_ONE_DEL/i_pipe/first_q ),
        .I1(\MULT.OP/EXP/a_mant_is_zero_int ),
        .I2(\MULT.OP/EXP/COND_DET_B/EXP_DET_LUT.EXP_ALL_ONE_DEL/i_pipe/first_q ),
        .I3(\MULT.OP/EXP/b_mant_is_zero_int ),
        .I4(\MULT.OP/EXP/COND_DET_B/EXP_DET_LUT.EXP_ALL_ZERO_DEL/i_pipe/first_q ),
        .I5(\MULT.OP/EXP/COND_DET_A/EXP_DET_LUT.EXP_ALL_ZERO_DEL/i_pipe/first_q ),
        .O(\MULT.OP/EXP/state_det [1]));
LUT2 #(
    .INIT(4'h1)) 
     \opt_has_pipe.first_q[1]_i_1__2 
       (.I0(\MULT.OP/EXP/EXP_ADD.C_CHAIN/Q_DEL/i_pipe/first_q [7]),
        .I1(\MULT.OP/EXP/p_1_in4_in ),
        .O(\MULT.OP/EXP/flow_sig [1]));
LUT3 #(
    .INIT(8'h10)) 
     \opt_has_pipe.first_q[1]_i_1__3 
       (.I0(\MULT.OP/EXP/state [0]),
        .I1(\MULT.OP/EXP/state [1]),
        .I2(\n_0_MULT.OP/EXP/SIG_DELAY/i_pipe/opt_has_pipe.i_pipe[4].pipe_reg[4][1] ),
        .O(\MULT.OP/EXP/flow_int_up [1]));
LUT3 #(
    .INIT(8'hEA)) 
     \opt_has_pipe.first_q[1]_i_2 
       (.I0(\n_0_MULT.OP/EXP/SIG_DELAY/i_pipe/opt_has_pipe.i_pipe[4].pipe_reg[4][0] ),
        .I1(\MULT.OP/EXP/p_0_in2_in ),
        .I2(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/first_q [25]),
        .O(\n_0_opt_has_pipe.first_q[1]_i_2 ));
LUT3 #(
    .INIT(8'h06)) 
     \opt_has_pipe.first_q[2]_i_1 
       (.I0(\MULT.OP/EXP/STATE_UP_DELAY/i_pipe/first_q [0]),
        .I1(\MULT.OP/EXP/STATE_UP_DELAY/i_pipe/first_q [2]),
        .I2(\MULT.OP/EXP/STATE_UP_DELAY/i_pipe/first_q [1]),
        .O(\n_0_opt_has_pipe.first_q[2]_i_1 ));
LUT6 #(
    .INIT(64'h0020000000000000)) 
     \opt_has_pipe.first_q[2]_i_1__0 
       (.I0(\n_0_opt_has_pipe.first_q[2]_i_2 ),
        .I1(\MULT.OP/EXP/EXP_ADD.C_CHAIN/Q_DEL/i_pipe/first_q [0]),
        .I2(\MULT.OP/EXP/p_1_in4_in ),
        .I3(\MULT.OP/EXP/EXP_ADD.C_CHAIN/Q_DEL/i_pipe/first_q [7]),
        .I4(\MULT.OP/EXP/EXP_ADD.C_CHAIN/Q_DEL/i_pipe/first_q [1]),
        .I5(\MULT.OP/EXP/EXP_ADD.C_CHAIN/Q_DEL/i_pipe/first_q [6]),
        .O(\MULT.OP/EXP/flow_sig [2]));
LUT6 #(
    .INIT(64'h1110111100000000)) 
     \opt_has_pipe.first_q[2]_i_1__1 
       (.I0(\MULT.OP/EXP/state [0]),
        .I1(\MULT.OP/EXP/state [1]),
        .I2(\n_0_MULT.OP/EXP/SIG_DELAY/i_pipe/opt_has_pipe.i_pipe[4].pipe_reg[4][0] ),
        .I3(\n_0_MULT.OP/EXP/SIG_DELAY/i_pipe/opt_has_pipe.i_pipe[4].pipe_reg[4][1] ),
        .I4(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/first_q [25]),
        .I5(\MULT.OP/EXP/p_0_in2_in ),
        .O(\MULT.OP/EXP/flow_int_up [2]));
LUT4 #(
    .INIT(16'h8000)) 
     \opt_has_pipe.first_q[2]_i_2 
       (.I0(\MULT.OP/EXP/EXP_ADD.C_CHAIN/Q_DEL/i_pipe/first_q [3]),
        .I1(\MULT.OP/EXP/EXP_ADD.C_CHAIN/Q_DEL/i_pipe/first_q [2]),
        .I2(\MULT.OP/EXP/EXP_ADD.C_CHAIN/Q_DEL/i_pipe/first_q [5]),
        .I3(\MULT.OP/EXP/EXP_ADD.C_CHAIN/Q_DEL/i_pipe/first_q [4]),
        .O(\n_0_opt_has_pipe.first_q[2]_i_2 ));
LUT2 #(
    .INIT(4'h2)) 
     \opt_has_pipe.first_q[3]_i_1 
       (.I0(\MULT.OP/EXP/STATE_UP_DELAY/i_pipe/first_q [1]),
        .I1(\MULT.OP/EXP/STATE_UP_DELAY/i_pipe/first_q [2]),
        .O(\n_0_opt_has_pipe.first_q[3]_i_1 ));
LUT4 #(
    .INIT(16'h0400)) 
     \opt_has_pipe.first_q[3]_i_1__0 
       (.I0(\MULT.OP/EXP/p_1_in4_in ),
        .I1(\MULT.OP/EXP/EXP_ADD.C_CHAIN/Q_DEL/i_pipe/first_q [7]),
        .I2(\MULT.OP/EXP/EXP_ADD.C_CHAIN/Q_DEL/i_pipe/first_q [0]),
        .I3(\n_0_opt_has_pipe.first_q[3]_i_2 ),
        .O(\MULT.OP/EXP/flow_sig [3]));
LUT6 #(
    .INIT(64'h1111110100000000)) 
     \opt_has_pipe.first_q[3]_i_1__1 
       (.I0(\MULT.OP/EXP/state [0]),
        .I1(\MULT.OP/EXP/state [1]),
        .I2(\MULT.OP/MULT/MULT_GEN_VARIANT.FIX_MULT/OP_REG.MANT_DEL/i_pipe/first_q [25]),
        .I3(\n_0_MULT.OP/EXP/SIG_DELAY/i_pipe/opt_has_pipe.i_pipe[4].pipe_reg[4][0] ),
        .I4(\n_0_MULT.OP/EXP/SIG_DELAY/i_pipe/opt_has_pipe.i_pipe[4].pipe_reg[4][1] ),
        .I5(\n_0_MULT.OP/EXP/SIG_DELAY/i_pipe/opt_has_pipe.i_pipe[4].pipe_reg[4][3] ),
        .O(\MULT.OP/EXP/flow_int_up [3]));
LUT6 #(
    .INIT(64'h0000000000000001)) 
     \opt_has_pipe.first_q[3]_i_2 
       (.I0(\MULT.OP/EXP/EXP_ADD.C_CHAIN/Q_DEL/i_pipe/first_q [1]),
        .I1(\MULT.OP/EXP/EXP_ADD.C_CHAIN/Q_DEL/i_pipe/first_q [2]),
        .I2(\MULT.OP/EXP/EXP_ADD.C_CHAIN/Q_DEL/i_pipe/first_q [4]),
        .I3(\MULT.OP/EXP/EXP_ADD.C_CHAIN/Q_DEL/i_pipe/first_q [3]),
        .I4(\MULT.OP/EXP/EXP_ADD.C_CHAIN/Q_DEL/i_pipe/first_q [6]),
        .I5(\MULT.OP/EXP/EXP_ADD.C_CHAIN/Q_DEL/i_pipe/first_q [5]),
        .O(\n_0_opt_has_pipe.first_q[3]_i_2 ));
endmodule

(* WIDTH = "52" *) (* DEPTH = "16" *) (* AFULL_THRESH1 = "1" *) 
(* AFULL_THRESH0 = "1" *) (* downgradeipidentifiedwarnings = "yes" *) 
module ip_fp32_axis_multglb_ifx_master
   (aclk,
    aclken,
    areset,
    wr_enable,
    wr_data,
    ifx_valid,
    ifx_ready,
    ifx_data,
    full,
    afull,
    not_full,
    not_afull,
    add);
  input aclk;
  input aclken;
  input areset;
  input wr_enable;
  input [51:0]wr_data;
  output ifx_valid;
  input ifx_ready;
  output [51:0]ifx_data;
  output full;
  output afull;
  output not_full;
  output not_afull;
  output [4:0]add;

  wire \<const0> ;
  wire \<const1> ;
  wire aclk;
  wire aclken;
  wire areset;
  wire [51:0]ifx_data;
  wire ifx_ready;
  wire ifx_valid;
  wire \n_0_add_1[0]_i_1 ;
  wire \n_0_add_1[1]_i_1 ;
  wire \n_0_add_1[2]_i_1 ;
  wire \n_0_add_1[2]_i_2 ;
  wire \n_0_add_1[3]_i_1 ;
  wire \n_0_add_1[3]_i_2 ;
  wire \n_0_add_1[3]_i_3 ;
  wire \n_0_add_1[4]_i_1 ;
  wire \n_0_add_1[4]_i_2 ;
  wire \n_0_add_1[4]_i_3 ;
  wire \n_0_add_1[4]_i_4 ;
  wire \n_0_add_1[4]_i_5 ;
  wire \n_0_fifo0/add_1_reg[0] ;
  wire \n_0_fifo0/add_1_reg[1] ;
  wire \n_0_fifo0/add_1_reg[2] ;
  wire \n_0_fifo0/add_1_reg[3] ;
  wire \n_0_fifo0/add_1_reg[4] ;
  wire \n_0_fifo0/fifo_1_reg[15][0]_srl16 ;
  wire \n_0_fifo0/fifo_1_reg[15][10]_srl16 ;
  wire \n_0_fifo0/fifo_1_reg[15][11]_srl16 ;
  wire \n_0_fifo0/fifo_1_reg[15][12]_srl16 ;
  wire \n_0_fifo0/fifo_1_reg[15][13]_srl16 ;
  wire \n_0_fifo0/fifo_1_reg[15][14]_srl16 ;
  wire \n_0_fifo0/fifo_1_reg[15][15]_srl16 ;
  wire \n_0_fifo0/fifo_1_reg[15][16]_srl16 ;
  wire \n_0_fifo0/fifo_1_reg[15][17]_srl16 ;
  wire \n_0_fifo0/fifo_1_reg[15][18]_srl16 ;
  wire \n_0_fifo0/fifo_1_reg[15][19]_srl16 ;
  wire \n_0_fifo0/fifo_1_reg[15][1]_srl16 ;
  wire \n_0_fifo0/fifo_1_reg[15][20]_srl16 ;
  wire \n_0_fifo0/fifo_1_reg[15][21]_srl16 ;
  wire \n_0_fifo0/fifo_1_reg[15][22]_srl16 ;
  wire \n_0_fifo0/fifo_1_reg[15][23]_srl16 ;
  wire \n_0_fifo0/fifo_1_reg[15][24]_srl16 ;
  wire \n_0_fifo0/fifo_1_reg[15][25]_srl16 ;
  wire \n_0_fifo0/fifo_1_reg[15][26]_srl16 ;
  wire \n_0_fifo0/fifo_1_reg[15][27]_srl16 ;
  wire \n_0_fifo0/fifo_1_reg[15][28]_srl16 ;
  wire \n_0_fifo0/fifo_1_reg[15][29]_srl16 ;
  wire \n_0_fifo0/fifo_1_reg[15][2]_srl16 ;
  wire \n_0_fifo0/fifo_1_reg[15][30]_srl16 ;
  wire \n_0_fifo0/fifo_1_reg[15][31]_srl16 ;
  wire \n_0_fifo0/fifo_1_reg[15][32]_srl16 ;
  wire \n_0_fifo0/fifo_1_reg[15][33]_srl16 ;
  wire \n_0_fifo0/fifo_1_reg[15][34]_srl16 ;
  wire \n_0_fifo0/fifo_1_reg[15][35]_srl16 ;
  wire \n_0_fifo0/fifo_1_reg[15][36]_srl16 ;
  wire \n_0_fifo0/fifo_1_reg[15][37]_srl16 ;
  wire \n_0_fifo0/fifo_1_reg[15][38]_srl16 ;
  wire \n_0_fifo0/fifo_1_reg[15][39]_srl16 ;
  wire \n_0_fifo0/fifo_1_reg[15][3]_srl16 ;
  wire \n_0_fifo0/fifo_1_reg[15][40]_srl16 ;
  wire \n_0_fifo0/fifo_1_reg[15][41]_srl16 ;
  wire \n_0_fifo0/fifo_1_reg[15][42]_srl16 ;
  wire \n_0_fifo0/fifo_1_reg[15][43]_srl16 ;
  wire \n_0_fifo0/fifo_1_reg[15][44]_srl16 ;
  wire \n_0_fifo0/fifo_1_reg[15][45]_srl16 ;
  wire \n_0_fifo0/fifo_1_reg[15][46]_srl16 ;
  wire \n_0_fifo0/fifo_1_reg[15][47]_srl16 ;
  wire \n_0_fifo0/fifo_1_reg[15][48]_srl16 ;
  wire \n_0_fifo0/fifo_1_reg[15][49]_srl16 ;
  wire \n_0_fifo0/fifo_1_reg[15][4]_srl16 ;
  wire \n_0_fifo0/fifo_1_reg[15][50]_srl16 ;
  wire \n_0_fifo0/fifo_1_reg[15][51]_srl16 ;
  wire \n_0_fifo0/fifo_1_reg[15][5]_srl16 ;
  wire \n_0_fifo0/fifo_1_reg[15][6]_srl16 ;
  wire \n_0_fifo0/fifo_1_reg[15][7]_srl16 ;
  wire \n_0_fifo0/fifo_1_reg[15][8]_srl16 ;
  wire \n_0_fifo0/fifo_1_reg[15][9]_srl16 ;
  wire n_0_rd_valid_2_i_1;
  wire rd_enable;
  wire [51:0]wr_data;
  wire wr_enable;

  assign add[4] = \<const0> ;
  assign add[3] = \<const0> ;
  assign add[2] = \<const0> ;
  assign add[1] = \<const0> ;
  assign add[0] = \<const0> ;
  assign afull = \<const0> ;
  assign full = \<const0> ;
  assign not_afull = \<const0> ;
  assign not_full = \<const0> ;
GND GND
       (.G(\<const0> ));
VCC VCC
       (.P(\<const1> ));
LUT6 #(
    .INIT(64'h4044BFBBBFBB4044)) 
     \add_1[0]_i_1 
       (.I0(\n_0_fifo0/add_1_reg[4] ),
        .I1(aclken),
        .I2(ifx_ready),
        .I3(ifx_valid),
        .I4(\n_0_fifo0/add_1_reg[0] ),
        .I5(wr_enable),
        .O(\n_0_add_1[0]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair1" *) 
   LUT4 #(
    .INIT(16'hBD42)) 
     \add_1[1]_i_1 
       (.I0(\n_0_add_1[2]_i_2 ),
        .I1(wr_enable),
        .I2(\n_0_fifo0/add_1_reg[0] ),
        .I3(\n_0_fifo0/add_1_reg[1] ),
        .O(\n_0_add_1[1]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair0" *) 
   LUT5 #(
    .INIT(32'hF708EF10)) 
     \add_1[2]_i_1 
       (.I0(wr_enable),
        .I1(\n_0_fifo0/add_1_reg[0] ),
        .I2(\n_0_add_1[2]_i_2 ),
        .I3(\n_0_fifo0/add_1_reg[2] ),
        .I4(\n_0_fifo0/add_1_reg[1] ),
        .O(\n_0_add_1[2]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair2" *) 
   LUT4 #(
    .INIT(16'h00D0)) 
     \add_1[2]_i_2 
       (.I0(ifx_valid),
        .I1(ifx_ready),
        .I2(aclken),
        .I3(\n_0_fifo0/add_1_reg[4] ),
        .O(\n_0_add_1[2]_i_2 ));
LUT6 #(
    .INIT(64'h87A5A5A5A5A5A5A5)) 
     \add_1[3]_i_1 
       (.I0(\n_0_add_1[4]_i_3 ),
        .I1(\n_0_add_1[3]_i_2 ),
        .I2(\n_0_fifo0/add_1_reg[3] ),
        .I3(\n_0_fifo0/add_1_reg[1] ),
        .I4(\n_0_fifo0/add_1_reg[2] ),
        .I5(\n_0_add_1[3]_i_3 ),
        .O(\n_0_add_1[3]_i_1 ));
LUT6 #(
    .INIT(64'h0000000000004044)) 
     \add_1[3]_i_2 
       (.I0(\n_0_fifo0/add_1_reg[4] ),
        .I1(aclken),
        .I2(ifx_ready),
        .I3(ifx_valid),
        .I4(\n_0_fifo0/add_1_reg[0] ),
        .I5(wr_enable),
        .O(\n_0_add_1[3]_i_2 ));
LUT6 #(
    .INIT(64'hBFBB000000000000)) 
     \add_1[3]_i_3 
       (.I0(\n_0_fifo0/add_1_reg[4] ),
        .I1(aclken),
        .I2(ifx_ready),
        .I3(ifx_valid),
        .I4(\n_0_fifo0/add_1_reg[0] ),
        .I5(wr_enable),
        .O(\n_0_add_1[3]_i_3 ));
LUT4 #(
    .INIT(16'hB4C3)) 
     \add_1[4]_i_1 
       (.I0(\n_0_add_1[4]_i_2 ),
        .I1(\n_0_fifo0/add_1_reg[3] ),
        .I2(\n_0_fifo0/add_1_reg[4] ),
        .I3(\n_0_add_1[4]_i_3 ),
        .O(\n_0_add_1[4]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair0" *) 
   LUT5 #(
    .INIT(32'hF7FFFFFF)) 
     \add_1[4]_i_2 
       (.I0(\n_0_fifo0/add_1_reg[1] ),
        .I1(\n_0_fifo0/add_1_reg[2] ),
        .I2(\n_0_add_1[2]_i_2 ),
        .I3(\n_0_fifo0/add_1_reg[0] ),
        .I4(wr_enable),
        .O(\n_0_add_1[4]_i_2 ));
LUT6 #(
    .INIT(64'hFFFFFDFFFFFFFFFF)) 
     \add_1[4]_i_3 
       (.I0(\n_0_add_1[4]_i_4 ),
        .I1(\n_0_fifo0/add_1_reg[1] ),
        .I2(\n_0_fifo0/add_1_reg[2] ),
        .I3(\n_0_add_1[4]_i_5 ),
        .I4(\n_0_fifo0/add_1_reg[4] ),
        .I5(aclken),
        .O(\n_0_add_1[4]_i_3 ));
(* SOFT_HLUTNM = "soft_lutpair1" *) 
   LUT2 #(
    .INIT(4'h1)) 
     \add_1[4]_i_4 
       (.I0(wr_enable),
        .I1(\n_0_fifo0/add_1_reg[0] ),
        .O(\n_0_add_1[4]_i_4 ));
LUT2 #(
    .INIT(4'hB)) 
     \add_1[4]_i_5 
       (.I0(ifx_ready),
        .I1(ifx_valid),
        .O(\n_0_add_1[4]_i_5 ));
(* register_duplication = "no" *) 
   (* use_carry_chain = "yes" *) 
   (* use_clock_enable = "no" *) 
   (* use_sync_reset = "no" *) 
   FDSE #(
    .INIT(1'b1)) 
     \fifo0/add_1_reg[0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_add_1[0]_i_1 ),
        .Q(\n_0_fifo0/add_1_reg[0] ),
        .S(areset));
(* register_duplication = "no" *) 
   (* use_carry_chain = "yes" *) 
   (* use_clock_enable = "no" *) 
   (* use_sync_reset = "no" *) 
   FDSE #(
    .INIT(1'b1)) 
     \fifo0/add_1_reg[1] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_add_1[1]_i_1 ),
        .Q(\n_0_fifo0/add_1_reg[1] ),
        .S(areset));
(* register_duplication = "no" *) 
   (* use_carry_chain = "yes" *) 
   (* use_clock_enable = "no" *) 
   (* use_sync_reset = "no" *) 
   FDSE #(
    .INIT(1'b1)) 
     \fifo0/add_1_reg[2] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_add_1[2]_i_1 ),
        .Q(\n_0_fifo0/add_1_reg[2] ),
        .S(areset));
(* register_duplication = "no" *) 
   (* use_carry_chain = "yes" *) 
   (* use_clock_enable = "no" *) 
   (* use_sync_reset = "no" *) 
   FDSE #(
    .INIT(1'b1)) 
     \fifo0/add_1_reg[3] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_add_1[3]_i_1 ),
        .Q(\n_0_fifo0/add_1_reg[3] ),
        .S(areset));
(* register_duplication = "no" *) 
   (* use_carry_chain = "yes" *) 
   (* use_clock_enable = "no" *) 
   (* use_sync_reset = "no" *) 
   FDSE #(
    .INIT(1'b1)) 
     \fifo0/add_1_reg[4] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_add_1[4]_i_1 ),
        .Q(\n_0_fifo0/add_1_reg[4] ),
        .S(areset));
(* srl_bus_name = "U0/i_synth/\HAS_OUTPUT_FIFO.i_output_fifo /\fifo0/fifo_1_reg[15] " *) 
   (* srl_name = "U0/i_synth/\HAS_OUTPUT_FIFO.i_output_fifo /\fifo0/fifo_1_reg[15][0]_srl16 " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     \fifo0/fifo_1_reg[15][0]_srl16 
       (.A0(\n_0_fifo0/add_1_reg[0] ),
        .A1(\n_0_fifo0/add_1_reg[1] ),
        .A2(\n_0_fifo0/add_1_reg[2] ),
        .A3(\n_0_fifo0/add_1_reg[3] ),
        .CE(wr_enable),
        .CLK(aclk),
        .D(wr_data[0]),
        .Q(\n_0_fifo0/fifo_1_reg[15][0]_srl16 ));
(* srl_bus_name = "U0/i_synth/\HAS_OUTPUT_FIFO.i_output_fifo /\fifo0/fifo_1_reg[15] " *) 
   (* srl_name = "U0/i_synth/\HAS_OUTPUT_FIFO.i_output_fifo /\fifo0/fifo_1_reg[15][10]_srl16 " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     \fifo0/fifo_1_reg[15][10]_srl16 
       (.A0(\n_0_fifo0/add_1_reg[0] ),
        .A1(\n_0_fifo0/add_1_reg[1] ),
        .A2(\n_0_fifo0/add_1_reg[2] ),
        .A3(\n_0_fifo0/add_1_reg[3] ),
        .CE(wr_enable),
        .CLK(aclk),
        .D(wr_data[10]),
        .Q(\n_0_fifo0/fifo_1_reg[15][10]_srl16 ));
(* srl_bus_name = "U0/i_synth/\HAS_OUTPUT_FIFO.i_output_fifo /\fifo0/fifo_1_reg[15] " *) 
   (* srl_name = "U0/i_synth/\HAS_OUTPUT_FIFO.i_output_fifo /\fifo0/fifo_1_reg[15][11]_srl16 " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     \fifo0/fifo_1_reg[15][11]_srl16 
       (.A0(\n_0_fifo0/add_1_reg[0] ),
        .A1(\n_0_fifo0/add_1_reg[1] ),
        .A2(\n_0_fifo0/add_1_reg[2] ),
        .A3(\n_0_fifo0/add_1_reg[3] ),
        .CE(wr_enable),
        .CLK(aclk),
        .D(wr_data[11]),
        .Q(\n_0_fifo0/fifo_1_reg[15][11]_srl16 ));
(* srl_bus_name = "U0/i_synth/\HAS_OUTPUT_FIFO.i_output_fifo /\fifo0/fifo_1_reg[15] " *) 
   (* srl_name = "U0/i_synth/\HAS_OUTPUT_FIFO.i_output_fifo /\fifo0/fifo_1_reg[15][12]_srl16 " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     \fifo0/fifo_1_reg[15][12]_srl16 
       (.A0(\n_0_fifo0/add_1_reg[0] ),
        .A1(\n_0_fifo0/add_1_reg[1] ),
        .A2(\n_0_fifo0/add_1_reg[2] ),
        .A3(\n_0_fifo0/add_1_reg[3] ),
        .CE(wr_enable),
        .CLK(aclk),
        .D(wr_data[12]),
        .Q(\n_0_fifo0/fifo_1_reg[15][12]_srl16 ));
(* srl_bus_name = "U0/i_synth/\HAS_OUTPUT_FIFO.i_output_fifo /\fifo0/fifo_1_reg[15] " *) 
   (* srl_name = "U0/i_synth/\HAS_OUTPUT_FIFO.i_output_fifo /\fifo0/fifo_1_reg[15][13]_srl16 " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     \fifo0/fifo_1_reg[15][13]_srl16 
       (.A0(\n_0_fifo0/add_1_reg[0] ),
        .A1(\n_0_fifo0/add_1_reg[1] ),
        .A2(\n_0_fifo0/add_1_reg[2] ),
        .A3(\n_0_fifo0/add_1_reg[3] ),
        .CE(wr_enable),
        .CLK(aclk),
        .D(wr_data[13]),
        .Q(\n_0_fifo0/fifo_1_reg[15][13]_srl16 ));
(* srl_bus_name = "U0/i_synth/\HAS_OUTPUT_FIFO.i_output_fifo /\fifo0/fifo_1_reg[15] " *) 
   (* srl_name = "U0/i_synth/\HAS_OUTPUT_FIFO.i_output_fifo /\fifo0/fifo_1_reg[15][14]_srl16 " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     \fifo0/fifo_1_reg[15][14]_srl16 
       (.A0(\n_0_fifo0/add_1_reg[0] ),
        .A1(\n_0_fifo0/add_1_reg[1] ),
        .A2(\n_0_fifo0/add_1_reg[2] ),
        .A3(\n_0_fifo0/add_1_reg[3] ),
        .CE(wr_enable),
        .CLK(aclk),
        .D(wr_data[14]),
        .Q(\n_0_fifo0/fifo_1_reg[15][14]_srl16 ));
(* srl_bus_name = "U0/i_synth/\HAS_OUTPUT_FIFO.i_output_fifo /\fifo0/fifo_1_reg[15] " *) 
   (* srl_name = "U0/i_synth/\HAS_OUTPUT_FIFO.i_output_fifo /\fifo0/fifo_1_reg[15][15]_srl16 " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     \fifo0/fifo_1_reg[15][15]_srl16 
       (.A0(\n_0_fifo0/add_1_reg[0] ),
        .A1(\n_0_fifo0/add_1_reg[1] ),
        .A2(\n_0_fifo0/add_1_reg[2] ),
        .A3(\n_0_fifo0/add_1_reg[3] ),
        .CE(wr_enable),
        .CLK(aclk),
        .D(wr_data[15]),
        .Q(\n_0_fifo0/fifo_1_reg[15][15]_srl16 ));
(* srl_bus_name = "U0/i_synth/\HAS_OUTPUT_FIFO.i_output_fifo /\fifo0/fifo_1_reg[15] " *) 
   (* srl_name = "U0/i_synth/\HAS_OUTPUT_FIFO.i_output_fifo /\fifo0/fifo_1_reg[15][16]_srl16 " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     \fifo0/fifo_1_reg[15][16]_srl16 
       (.A0(\n_0_fifo0/add_1_reg[0] ),
        .A1(\n_0_fifo0/add_1_reg[1] ),
        .A2(\n_0_fifo0/add_1_reg[2] ),
        .A3(\n_0_fifo0/add_1_reg[3] ),
        .CE(wr_enable),
        .CLK(aclk),
        .D(wr_data[16]),
        .Q(\n_0_fifo0/fifo_1_reg[15][16]_srl16 ));
(* srl_bus_name = "U0/i_synth/\HAS_OUTPUT_FIFO.i_output_fifo /\fifo0/fifo_1_reg[15] " *) 
   (* srl_name = "U0/i_synth/\HAS_OUTPUT_FIFO.i_output_fifo /\fifo0/fifo_1_reg[15][17]_srl16 " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     \fifo0/fifo_1_reg[15][17]_srl16 
       (.A0(\n_0_fifo0/add_1_reg[0] ),
        .A1(\n_0_fifo0/add_1_reg[1] ),
        .A2(\n_0_fifo0/add_1_reg[2] ),
        .A3(\n_0_fifo0/add_1_reg[3] ),
        .CE(wr_enable),
        .CLK(aclk),
        .D(wr_data[17]),
        .Q(\n_0_fifo0/fifo_1_reg[15][17]_srl16 ));
(* srl_bus_name = "U0/i_synth/\HAS_OUTPUT_FIFO.i_output_fifo /\fifo0/fifo_1_reg[15] " *) 
   (* srl_name = "U0/i_synth/\HAS_OUTPUT_FIFO.i_output_fifo /\fifo0/fifo_1_reg[15][18]_srl16 " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     \fifo0/fifo_1_reg[15][18]_srl16 
       (.A0(\n_0_fifo0/add_1_reg[0] ),
        .A1(\n_0_fifo0/add_1_reg[1] ),
        .A2(\n_0_fifo0/add_1_reg[2] ),
        .A3(\n_0_fifo0/add_1_reg[3] ),
        .CE(wr_enable),
        .CLK(aclk),
        .D(wr_data[18]),
        .Q(\n_0_fifo0/fifo_1_reg[15][18]_srl16 ));
(* srl_bus_name = "U0/i_synth/\HAS_OUTPUT_FIFO.i_output_fifo /\fifo0/fifo_1_reg[15] " *) 
   (* srl_name = "U0/i_synth/\HAS_OUTPUT_FIFO.i_output_fifo /\fifo0/fifo_1_reg[15][19]_srl16 " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     \fifo0/fifo_1_reg[15][19]_srl16 
       (.A0(\n_0_fifo0/add_1_reg[0] ),
        .A1(\n_0_fifo0/add_1_reg[1] ),
        .A2(\n_0_fifo0/add_1_reg[2] ),
        .A3(\n_0_fifo0/add_1_reg[3] ),
        .CE(wr_enable),
        .CLK(aclk),
        .D(wr_data[19]),
        .Q(\n_0_fifo0/fifo_1_reg[15][19]_srl16 ));
(* srl_bus_name = "U0/i_synth/\HAS_OUTPUT_FIFO.i_output_fifo /\fifo0/fifo_1_reg[15] " *) 
   (* srl_name = "U0/i_synth/\HAS_OUTPUT_FIFO.i_output_fifo /\fifo0/fifo_1_reg[15][1]_srl16 " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     \fifo0/fifo_1_reg[15][1]_srl16 
       (.A0(\n_0_fifo0/add_1_reg[0] ),
        .A1(\n_0_fifo0/add_1_reg[1] ),
        .A2(\n_0_fifo0/add_1_reg[2] ),
        .A3(\n_0_fifo0/add_1_reg[3] ),
        .CE(wr_enable),
        .CLK(aclk),
        .D(wr_data[1]),
        .Q(\n_0_fifo0/fifo_1_reg[15][1]_srl16 ));
(* srl_bus_name = "U0/i_synth/\HAS_OUTPUT_FIFO.i_output_fifo /\fifo0/fifo_1_reg[15] " *) 
   (* srl_name = "U0/i_synth/\HAS_OUTPUT_FIFO.i_output_fifo /\fifo0/fifo_1_reg[15][20]_srl16 " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     \fifo0/fifo_1_reg[15][20]_srl16 
       (.A0(\n_0_fifo0/add_1_reg[0] ),
        .A1(\n_0_fifo0/add_1_reg[1] ),
        .A2(\n_0_fifo0/add_1_reg[2] ),
        .A3(\n_0_fifo0/add_1_reg[3] ),
        .CE(wr_enable),
        .CLK(aclk),
        .D(wr_data[20]),
        .Q(\n_0_fifo0/fifo_1_reg[15][20]_srl16 ));
(* srl_bus_name = "U0/i_synth/\HAS_OUTPUT_FIFO.i_output_fifo /\fifo0/fifo_1_reg[15] " *) 
   (* srl_name = "U0/i_synth/\HAS_OUTPUT_FIFO.i_output_fifo /\fifo0/fifo_1_reg[15][21]_srl16 " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     \fifo0/fifo_1_reg[15][21]_srl16 
       (.A0(\n_0_fifo0/add_1_reg[0] ),
        .A1(\n_0_fifo0/add_1_reg[1] ),
        .A2(\n_0_fifo0/add_1_reg[2] ),
        .A3(\n_0_fifo0/add_1_reg[3] ),
        .CE(wr_enable),
        .CLK(aclk),
        .D(wr_data[21]),
        .Q(\n_0_fifo0/fifo_1_reg[15][21]_srl16 ));
(* srl_bus_name = "U0/i_synth/\HAS_OUTPUT_FIFO.i_output_fifo /\fifo0/fifo_1_reg[15] " *) 
   (* srl_name = "U0/i_synth/\HAS_OUTPUT_FIFO.i_output_fifo /\fifo0/fifo_1_reg[15][22]_srl16 " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     \fifo0/fifo_1_reg[15][22]_srl16 
       (.A0(\n_0_fifo0/add_1_reg[0] ),
        .A1(\n_0_fifo0/add_1_reg[1] ),
        .A2(\n_0_fifo0/add_1_reg[2] ),
        .A3(\n_0_fifo0/add_1_reg[3] ),
        .CE(wr_enable),
        .CLK(aclk),
        .D(wr_data[22]),
        .Q(\n_0_fifo0/fifo_1_reg[15][22]_srl16 ));
(* srl_bus_name = "U0/i_synth/\HAS_OUTPUT_FIFO.i_output_fifo /\fifo0/fifo_1_reg[15] " *) 
   (* srl_name = "U0/i_synth/\HAS_OUTPUT_FIFO.i_output_fifo /\fifo0/fifo_1_reg[15][23]_srl16 " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     \fifo0/fifo_1_reg[15][23]_srl16 
       (.A0(\n_0_fifo0/add_1_reg[0] ),
        .A1(\n_0_fifo0/add_1_reg[1] ),
        .A2(\n_0_fifo0/add_1_reg[2] ),
        .A3(\n_0_fifo0/add_1_reg[3] ),
        .CE(wr_enable),
        .CLK(aclk),
        .D(wr_data[23]),
        .Q(\n_0_fifo0/fifo_1_reg[15][23]_srl16 ));
(* srl_bus_name = "U0/i_synth/\HAS_OUTPUT_FIFO.i_output_fifo /\fifo0/fifo_1_reg[15] " *) 
   (* srl_name = "U0/i_synth/\HAS_OUTPUT_FIFO.i_output_fifo /\fifo0/fifo_1_reg[15][24]_srl16 " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     \fifo0/fifo_1_reg[15][24]_srl16 
       (.A0(\n_0_fifo0/add_1_reg[0] ),
        .A1(\n_0_fifo0/add_1_reg[1] ),
        .A2(\n_0_fifo0/add_1_reg[2] ),
        .A3(\n_0_fifo0/add_1_reg[3] ),
        .CE(wr_enable),
        .CLK(aclk),
        .D(wr_data[24]),
        .Q(\n_0_fifo0/fifo_1_reg[15][24]_srl16 ));
(* srl_bus_name = "U0/i_synth/\HAS_OUTPUT_FIFO.i_output_fifo /\fifo0/fifo_1_reg[15] " *) 
   (* srl_name = "U0/i_synth/\HAS_OUTPUT_FIFO.i_output_fifo /\fifo0/fifo_1_reg[15][25]_srl16 " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     \fifo0/fifo_1_reg[15][25]_srl16 
       (.A0(\n_0_fifo0/add_1_reg[0] ),
        .A1(\n_0_fifo0/add_1_reg[1] ),
        .A2(\n_0_fifo0/add_1_reg[2] ),
        .A3(\n_0_fifo0/add_1_reg[3] ),
        .CE(wr_enable),
        .CLK(aclk),
        .D(wr_data[25]),
        .Q(\n_0_fifo0/fifo_1_reg[15][25]_srl16 ));
(* srl_bus_name = "U0/i_synth/\HAS_OUTPUT_FIFO.i_output_fifo /\fifo0/fifo_1_reg[15] " *) 
   (* srl_name = "U0/i_synth/\HAS_OUTPUT_FIFO.i_output_fifo /\fifo0/fifo_1_reg[15][26]_srl16 " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     \fifo0/fifo_1_reg[15][26]_srl16 
       (.A0(\n_0_fifo0/add_1_reg[0] ),
        .A1(\n_0_fifo0/add_1_reg[1] ),
        .A2(\n_0_fifo0/add_1_reg[2] ),
        .A3(\n_0_fifo0/add_1_reg[3] ),
        .CE(wr_enable),
        .CLK(aclk),
        .D(wr_data[26]),
        .Q(\n_0_fifo0/fifo_1_reg[15][26]_srl16 ));
(* srl_bus_name = "U0/i_synth/\HAS_OUTPUT_FIFO.i_output_fifo /\fifo0/fifo_1_reg[15] " *) 
   (* srl_name = "U0/i_synth/\HAS_OUTPUT_FIFO.i_output_fifo /\fifo0/fifo_1_reg[15][27]_srl16 " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     \fifo0/fifo_1_reg[15][27]_srl16 
       (.A0(\n_0_fifo0/add_1_reg[0] ),
        .A1(\n_0_fifo0/add_1_reg[1] ),
        .A2(\n_0_fifo0/add_1_reg[2] ),
        .A3(\n_0_fifo0/add_1_reg[3] ),
        .CE(wr_enable),
        .CLK(aclk),
        .D(wr_data[27]),
        .Q(\n_0_fifo0/fifo_1_reg[15][27]_srl16 ));
(* srl_bus_name = "U0/i_synth/\HAS_OUTPUT_FIFO.i_output_fifo /\fifo0/fifo_1_reg[15] " *) 
   (* srl_name = "U0/i_synth/\HAS_OUTPUT_FIFO.i_output_fifo /\fifo0/fifo_1_reg[15][28]_srl16 " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     \fifo0/fifo_1_reg[15][28]_srl16 
       (.A0(\n_0_fifo0/add_1_reg[0] ),
        .A1(\n_0_fifo0/add_1_reg[1] ),
        .A2(\n_0_fifo0/add_1_reg[2] ),
        .A3(\n_0_fifo0/add_1_reg[3] ),
        .CE(wr_enable),
        .CLK(aclk),
        .D(wr_data[28]),
        .Q(\n_0_fifo0/fifo_1_reg[15][28]_srl16 ));
(* srl_bus_name = "U0/i_synth/\HAS_OUTPUT_FIFO.i_output_fifo /\fifo0/fifo_1_reg[15] " *) 
   (* srl_name = "U0/i_synth/\HAS_OUTPUT_FIFO.i_output_fifo /\fifo0/fifo_1_reg[15][29]_srl16 " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     \fifo0/fifo_1_reg[15][29]_srl16 
       (.A0(\n_0_fifo0/add_1_reg[0] ),
        .A1(\n_0_fifo0/add_1_reg[1] ),
        .A2(\n_0_fifo0/add_1_reg[2] ),
        .A3(\n_0_fifo0/add_1_reg[3] ),
        .CE(wr_enable),
        .CLK(aclk),
        .D(wr_data[29]),
        .Q(\n_0_fifo0/fifo_1_reg[15][29]_srl16 ));
(* srl_bus_name = "U0/i_synth/\HAS_OUTPUT_FIFO.i_output_fifo /\fifo0/fifo_1_reg[15] " *) 
   (* srl_name = "U0/i_synth/\HAS_OUTPUT_FIFO.i_output_fifo /\fifo0/fifo_1_reg[15][2]_srl16 " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     \fifo0/fifo_1_reg[15][2]_srl16 
       (.A0(\n_0_fifo0/add_1_reg[0] ),
        .A1(\n_0_fifo0/add_1_reg[1] ),
        .A2(\n_0_fifo0/add_1_reg[2] ),
        .A3(\n_0_fifo0/add_1_reg[3] ),
        .CE(wr_enable),
        .CLK(aclk),
        .D(wr_data[2]),
        .Q(\n_0_fifo0/fifo_1_reg[15][2]_srl16 ));
(* srl_bus_name = "U0/i_synth/\HAS_OUTPUT_FIFO.i_output_fifo /\fifo0/fifo_1_reg[15] " *) 
   (* srl_name = "U0/i_synth/\HAS_OUTPUT_FIFO.i_output_fifo /\fifo0/fifo_1_reg[15][30]_srl16 " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     \fifo0/fifo_1_reg[15][30]_srl16 
       (.A0(\n_0_fifo0/add_1_reg[0] ),
        .A1(\n_0_fifo0/add_1_reg[1] ),
        .A2(\n_0_fifo0/add_1_reg[2] ),
        .A3(\n_0_fifo0/add_1_reg[3] ),
        .CE(wr_enable),
        .CLK(aclk),
        .D(wr_data[30]),
        .Q(\n_0_fifo0/fifo_1_reg[15][30]_srl16 ));
(* srl_bus_name = "U0/i_synth/\HAS_OUTPUT_FIFO.i_output_fifo /\fifo0/fifo_1_reg[15] " *) 
   (* srl_name = "U0/i_synth/\HAS_OUTPUT_FIFO.i_output_fifo /\fifo0/fifo_1_reg[15][31]_srl16 " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     \fifo0/fifo_1_reg[15][31]_srl16 
       (.A0(\n_0_fifo0/add_1_reg[0] ),
        .A1(\n_0_fifo0/add_1_reg[1] ),
        .A2(\n_0_fifo0/add_1_reg[2] ),
        .A3(\n_0_fifo0/add_1_reg[3] ),
        .CE(wr_enable),
        .CLK(aclk),
        .D(wr_data[31]),
        .Q(\n_0_fifo0/fifo_1_reg[15][31]_srl16 ));
(* srl_bus_name = "U0/i_synth/\HAS_OUTPUT_FIFO.i_output_fifo /\fifo0/fifo_1_reg[15] " *) 
   (* srl_name = "U0/i_synth/\HAS_OUTPUT_FIFO.i_output_fifo /\fifo0/fifo_1_reg[15][32]_srl16 " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     \fifo0/fifo_1_reg[15][32]_srl16 
       (.A0(\n_0_fifo0/add_1_reg[0] ),
        .A1(\n_0_fifo0/add_1_reg[1] ),
        .A2(\n_0_fifo0/add_1_reg[2] ),
        .A3(\n_0_fifo0/add_1_reg[3] ),
        .CE(wr_enable),
        .CLK(aclk),
        .D(wr_data[32]),
        .Q(\n_0_fifo0/fifo_1_reg[15][32]_srl16 ));
(* srl_bus_name = "U0/i_synth/\HAS_OUTPUT_FIFO.i_output_fifo /\fifo0/fifo_1_reg[15] " *) 
   (* srl_name = "U0/i_synth/\HAS_OUTPUT_FIFO.i_output_fifo /\fifo0/fifo_1_reg[15][33]_srl16 " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     \fifo0/fifo_1_reg[15][33]_srl16 
       (.A0(\n_0_fifo0/add_1_reg[0] ),
        .A1(\n_0_fifo0/add_1_reg[1] ),
        .A2(\n_0_fifo0/add_1_reg[2] ),
        .A3(\n_0_fifo0/add_1_reg[3] ),
        .CE(wr_enable),
        .CLK(aclk),
        .D(wr_data[33]),
        .Q(\n_0_fifo0/fifo_1_reg[15][33]_srl16 ));
(* srl_bus_name = "U0/i_synth/\HAS_OUTPUT_FIFO.i_output_fifo /\fifo0/fifo_1_reg[15] " *) 
   (* srl_name = "U0/i_synth/\HAS_OUTPUT_FIFO.i_output_fifo /\fifo0/fifo_1_reg[15][34]_srl16 " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     \fifo0/fifo_1_reg[15][34]_srl16 
       (.A0(\n_0_fifo0/add_1_reg[0] ),
        .A1(\n_0_fifo0/add_1_reg[1] ),
        .A2(\n_0_fifo0/add_1_reg[2] ),
        .A3(\n_0_fifo0/add_1_reg[3] ),
        .CE(wr_enable),
        .CLK(aclk),
        .D(wr_data[34]),
        .Q(\n_0_fifo0/fifo_1_reg[15][34]_srl16 ));
(* srl_bus_name = "U0/i_synth/\HAS_OUTPUT_FIFO.i_output_fifo /\fifo0/fifo_1_reg[15] " *) 
   (* srl_name = "U0/i_synth/\HAS_OUTPUT_FIFO.i_output_fifo /\fifo0/fifo_1_reg[15][35]_srl16 " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     \fifo0/fifo_1_reg[15][35]_srl16 
       (.A0(\n_0_fifo0/add_1_reg[0] ),
        .A1(\n_0_fifo0/add_1_reg[1] ),
        .A2(\n_0_fifo0/add_1_reg[2] ),
        .A3(\n_0_fifo0/add_1_reg[3] ),
        .CE(wr_enable),
        .CLK(aclk),
        .D(wr_data[35]),
        .Q(\n_0_fifo0/fifo_1_reg[15][35]_srl16 ));
(* srl_bus_name = "U0/i_synth/\HAS_OUTPUT_FIFO.i_output_fifo /\fifo0/fifo_1_reg[15] " *) 
   (* srl_name = "U0/i_synth/\HAS_OUTPUT_FIFO.i_output_fifo /\fifo0/fifo_1_reg[15][36]_srl16 " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     \fifo0/fifo_1_reg[15][36]_srl16 
       (.A0(\n_0_fifo0/add_1_reg[0] ),
        .A1(\n_0_fifo0/add_1_reg[1] ),
        .A2(\n_0_fifo0/add_1_reg[2] ),
        .A3(\n_0_fifo0/add_1_reg[3] ),
        .CE(wr_enable),
        .CLK(aclk),
        .D(wr_data[36]),
        .Q(\n_0_fifo0/fifo_1_reg[15][36]_srl16 ));
(* srl_bus_name = "U0/i_synth/\HAS_OUTPUT_FIFO.i_output_fifo /\fifo0/fifo_1_reg[15] " *) 
   (* srl_name = "U0/i_synth/\HAS_OUTPUT_FIFO.i_output_fifo /\fifo0/fifo_1_reg[15][37]_srl16 " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     \fifo0/fifo_1_reg[15][37]_srl16 
       (.A0(\n_0_fifo0/add_1_reg[0] ),
        .A1(\n_0_fifo0/add_1_reg[1] ),
        .A2(\n_0_fifo0/add_1_reg[2] ),
        .A3(\n_0_fifo0/add_1_reg[3] ),
        .CE(wr_enable),
        .CLK(aclk),
        .D(wr_data[37]),
        .Q(\n_0_fifo0/fifo_1_reg[15][37]_srl16 ));
(* srl_bus_name = "U0/i_synth/\HAS_OUTPUT_FIFO.i_output_fifo /\fifo0/fifo_1_reg[15] " *) 
   (* srl_name = "U0/i_synth/\HAS_OUTPUT_FIFO.i_output_fifo /\fifo0/fifo_1_reg[15][38]_srl16 " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     \fifo0/fifo_1_reg[15][38]_srl16 
       (.A0(\n_0_fifo0/add_1_reg[0] ),
        .A1(\n_0_fifo0/add_1_reg[1] ),
        .A2(\n_0_fifo0/add_1_reg[2] ),
        .A3(\n_0_fifo0/add_1_reg[3] ),
        .CE(wr_enable),
        .CLK(aclk),
        .D(wr_data[38]),
        .Q(\n_0_fifo0/fifo_1_reg[15][38]_srl16 ));
(* srl_bus_name = "U0/i_synth/\HAS_OUTPUT_FIFO.i_output_fifo /\fifo0/fifo_1_reg[15] " *) 
   (* srl_name = "U0/i_synth/\HAS_OUTPUT_FIFO.i_output_fifo /\fifo0/fifo_1_reg[15][39]_srl16 " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     \fifo0/fifo_1_reg[15][39]_srl16 
       (.A0(\n_0_fifo0/add_1_reg[0] ),
        .A1(\n_0_fifo0/add_1_reg[1] ),
        .A2(\n_0_fifo0/add_1_reg[2] ),
        .A3(\n_0_fifo0/add_1_reg[3] ),
        .CE(wr_enable),
        .CLK(aclk),
        .D(wr_data[39]),
        .Q(\n_0_fifo0/fifo_1_reg[15][39]_srl16 ));
(* srl_bus_name = "U0/i_synth/\HAS_OUTPUT_FIFO.i_output_fifo /\fifo0/fifo_1_reg[15] " *) 
   (* srl_name = "U0/i_synth/\HAS_OUTPUT_FIFO.i_output_fifo /\fifo0/fifo_1_reg[15][3]_srl16 " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     \fifo0/fifo_1_reg[15][3]_srl16 
       (.A0(\n_0_fifo0/add_1_reg[0] ),
        .A1(\n_0_fifo0/add_1_reg[1] ),
        .A2(\n_0_fifo0/add_1_reg[2] ),
        .A3(\n_0_fifo0/add_1_reg[3] ),
        .CE(wr_enable),
        .CLK(aclk),
        .D(wr_data[3]),
        .Q(\n_0_fifo0/fifo_1_reg[15][3]_srl16 ));
(* srl_bus_name = "U0/i_synth/\HAS_OUTPUT_FIFO.i_output_fifo /\fifo0/fifo_1_reg[15] " *) 
   (* srl_name = "U0/i_synth/\HAS_OUTPUT_FIFO.i_output_fifo /\fifo0/fifo_1_reg[15][40]_srl16 " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     \fifo0/fifo_1_reg[15][40]_srl16 
       (.A0(\n_0_fifo0/add_1_reg[0] ),
        .A1(\n_0_fifo0/add_1_reg[1] ),
        .A2(\n_0_fifo0/add_1_reg[2] ),
        .A3(\n_0_fifo0/add_1_reg[3] ),
        .CE(wr_enable),
        .CLK(aclk),
        .D(wr_data[40]),
        .Q(\n_0_fifo0/fifo_1_reg[15][40]_srl16 ));
(* srl_bus_name = "U0/i_synth/\HAS_OUTPUT_FIFO.i_output_fifo /\fifo0/fifo_1_reg[15] " *) 
   (* srl_name = "U0/i_synth/\HAS_OUTPUT_FIFO.i_output_fifo /\fifo0/fifo_1_reg[15][41]_srl16 " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     \fifo0/fifo_1_reg[15][41]_srl16 
       (.A0(\n_0_fifo0/add_1_reg[0] ),
        .A1(\n_0_fifo0/add_1_reg[1] ),
        .A2(\n_0_fifo0/add_1_reg[2] ),
        .A3(\n_0_fifo0/add_1_reg[3] ),
        .CE(wr_enable),
        .CLK(aclk),
        .D(wr_data[41]),
        .Q(\n_0_fifo0/fifo_1_reg[15][41]_srl16 ));
(* srl_bus_name = "U0/i_synth/\HAS_OUTPUT_FIFO.i_output_fifo /\fifo0/fifo_1_reg[15] " *) 
   (* srl_name = "U0/i_synth/\HAS_OUTPUT_FIFO.i_output_fifo /\fifo0/fifo_1_reg[15][42]_srl16 " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     \fifo0/fifo_1_reg[15][42]_srl16 
       (.A0(\n_0_fifo0/add_1_reg[0] ),
        .A1(\n_0_fifo0/add_1_reg[1] ),
        .A2(\n_0_fifo0/add_1_reg[2] ),
        .A3(\n_0_fifo0/add_1_reg[3] ),
        .CE(wr_enable),
        .CLK(aclk),
        .D(wr_data[42]),
        .Q(\n_0_fifo0/fifo_1_reg[15][42]_srl16 ));
(* srl_bus_name = "U0/i_synth/\HAS_OUTPUT_FIFO.i_output_fifo /\fifo0/fifo_1_reg[15] " *) 
   (* srl_name = "U0/i_synth/\HAS_OUTPUT_FIFO.i_output_fifo /\fifo0/fifo_1_reg[15][43]_srl16 " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     \fifo0/fifo_1_reg[15][43]_srl16 
       (.A0(\n_0_fifo0/add_1_reg[0] ),
        .A1(\n_0_fifo0/add_1_reg[1] ),
        .A2(\n_0_fifo0/add_1_reg[2] ),
        .A3(\n_0_fifo0/add_1_reg[3] ),
        .CE(wr_enable),
        .CLK(aclk),
        .D(wr_data[43]),
        .Q(\n_0_fifo0/fifo_1_reg[15][43]_srl16 ));
(* srl_bus_name = "U0/i_synth/\HAS_OUTPUT_FIFO.i_output_fifo /\fifo0/fifo_1_reg[15] " *) 
   (* srl_name = "U0/i_synth/\HAS_OUTPUT_FIFO.i_output_fifo /\fifo0/fifo_1_reg[15][44]_srl16 " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     \fifo0/fifo_1_reg[15][44]_srl16 
       (.A0(\n_0_fifo0/add_1_reg[0] ),
        .A1(\n_0_fifo0/add_1_reg[1] ),
        .A2(\n_0_fifo0/add_1_reg[2] ),
        .A3(\n_0_fifo0/add_1_reg[3] ),
        .CE(wr_enable),
        .CLK(aclk),
        .D(wr_data[44]),
        .Q(\n_0_fifo0/fifo_1_reg[15][44]_srl16 ));
(* srl_bus_name = "U0/i_synth/\HAS_OUTPUT_FIFO.i_output_fifo /\fifo0/fifo_1_reg[15] " *) 
   (* srl_name = "U0/i_synth/\HAS_OUTPUT_FIFO.i_output_fifo /\fifo0/fifo_1_reg[15][45]_srl16 " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     \fifo0/fifo_1_reg[15][45]_srl16 
       (.A0(\n_0_fifo0/add_1_reg[0] ),
        .A1(\n_0_fifo0/add_1_reg[1] ),
        .A2(\n_0_fifo0/add_1_reg[2] ),
        .A3(\n_0_fifo0/add_1_reg[3] ),
        .CE(wr_enable),
        .CLK(aclk),
        .D(wr_data[45]),
        .Q(\n_0_fifo0/fifo_1_reg[15][45]_srl16 ));
(* srl_bus_name = "U0/i_synth/\HAS_OUTPUT_FIFO.i_output_fifo /\fifo0/fifo_1_reg[15] " *) 
   (* srl_name = "U0/i_synth/\HAS_OUTPUT_FIFO.i_output_fifo /\fifo0/fifo_1_reg[15][46]_srl16 " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     \fifo0/fifo_1_reg[15][46]_srl16 
       (.A0(\n_0_fifo0/add_1_reg[0] ),
        .A1(\n_0_fifo0/add_1_reg[1] ),
        .A2(\n_0_fifo0/add_1_reg[2] ),
        .A3(\n_0_fifo0/add_1_reg[3] ),
        .CE(wr_enable),
        .CLK(aclk),
        .D(wr_data[46]),
        .Q(\n_0_fifo0/fifo_1_reg[15][46]_srl16 ));
(* srl_bus_name = "U0/i_synth/\HAS_OUTPUT_FIFO.i_output_fifo /\fifo0/fifo_1_reg[15] " *) 
   (* srl_name = "U0/i_synth/\HAS_OUTPUT_FIFO.i_output_fifo /\fifo0/fifo_1_reg[15][47]_srl16 " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     \fifo0/fifo_1_reg[15][47]_srl16 
       (.A0(\n_0_fifo0/add_1_reg[0] ),
        .A1(\n_0_fifo0/add_1_reg[1] ),
        .A2(\n_0_fifo0/add_1_reg[2] ),
        .A3(\n_0_fifo0/add_1_reg[3] ),
        .CE(wr_enable),
        .CLK(aclk),
        .D(wr_data[47]),
        .Q(\n_0_fifo0/fifo_1_reg[15][47]_srl16 ));
(* srl_bus_name = "U0/i_synth/\HAS_OUTPUT_FIFO.i_output_fifo /\fifo0/fifo_1_reg[15] " *) 
   (* srl_name = "U0/i_synth/\HAS_OUTPUT_FIFO.i_output_fifo /\fifo0/fifo_1_reg[15][48]_srl16 " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     \fifo0/fifo_1_reg[15][48]_srl16 
       (.A0(\n_0_fifo0/add_1_reg[0] ),
        .A1(\n_0_fifo0/add_1_reg[1] ),
        .A2(\n_0_fifo0/add_1_reg[2] ),
        .A3(\n_0_fifo0/add_1_reg[3] ),
        .CE(wr_enable),
        .CLK(aclk),
        .D(wr_data[48]),
        .Q(\n_0_fifo0/fifo_1_reg[15][48]_srl16 ));
(* srl_bus_name = "U0/i_synth/\HAS_OUTPUT_FIFO.i_output_fifo /\fifo0/fifo_1_reg[15] " *) 
   (* srl_name = "U0/i_synth/\HAS_OUTPUT_FIFO.i_output_fifo /\fifo0/fifo_1_reg[15][49]_srl16 " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     \fifo0/fifo_1_reg[15][49]_srl16 
       (.A0(\n_0_fifo0/add_1_reg[0] ),
        .A1(\n_0_fifo0/add_1_reg[1] ),
        .A2(\n_0_fifo0/add_1_reg[2] ),
        .A3(\n_0_fifo0/add_1_reg[3] ),
        .CE(wr_enable),
        .CLK(aclk),
        .D(wr_data[49]),
        .Q(\n_0_fifo0/fifo_1_reg[15][49]_srl16 ));
(* srl_bus_name = "U0/i_synth/\HAS_OUTPUT_FIFO.i_output_fifo /\fifo0/fifo_1_reg[15] " *) 
   (* srl_name = "U0/i_synth/\HAS_OUTPUT_FIFO.i_output_fifo /\fifo0/fifo_1_reg[15][4]_srl16 " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     \fifo0/fifo_1_reg[15][4]_srl16 
       (.A0(\n_0_fifo0/add_1_reg[0] ),
        .A1(\n_0_fifo0/add_1_reg[1] ),
        .A2(\n_0_fifo0/add_1_reg[2] ),
        .A3(\n_0_fifo0/add_1_reg[3] ),
        .CE(wr_enable),
        .CLK(aclk),
        .D(wr_data[4]),
        .Q(\n_0_fifo0/fifo_1_reg[15][4]_srl16 ));
(* srl_bus_name = "U0/i_synth/\HAS_OUTPUT_FIFO.i_output_fifo /\fifo0/fifo_1_reg[15] " *) 
   (* srl_name = "U0/i_synth/\HAS_OUTPUT_FIFO.i_output_fifo /\fifo0/fifo_1_reg[15][50]_srl16 " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     \fifo0/fifo_1_reg[15][50]_srl16 
       (.A0(\n_0_fifo0/add_1_reg[0] ),
        .A1(\n_0_fifo0/add_1_reg[1] ),
        .A2(\n_0_fifo0/add_1_reg[2] ),
        .A3(\n_0_fifo0/add_1_reg[3] ),
        .CE(wr_enable),
        .CLK(aclk),
        .D(wr_data[50]),
        .Q(\n_0_fifo0/fifo_1_reg[15][50]_srl16 ));
(* srl_bus_name = "U0/i_synth/\HAS_OUTPUT_FIFO.i_output_fifo /\fifo0/fifo_1_reg[15] " *) 
   (* srl_name = "U0/i_synth/\HAS_OUTPUT_FIFO.i_output_fifo /\fifo0/fifo_1_reg[15][51]_srl16 " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     \fifo0/fifo_1_reg[15][51]_srl16 
       (.A0(\n_0_fifo0/add_1_reg[0] ),
        .A1(\n_0_fifo0/add_1_reg[1] ),
        .A2(\n_0_fifo0/add_1_reg[2] ),
        .A3(\n_0_fifo0/add_1_reg[3] ),
        .CE(wr_enable),
        .CLK(aclk),
        .D(wr_data[51]),
        .Q(\n_0_fifo0/fifo_1_reg[15][51]_srl16 ));
(* srl_bus_name = "U0/i_synth/\HAS_OUTPUT_FIFO.i_output_fifo /\fifo0/fifo_1_reg[15] " *) 
   (* srl_name = "U0/i_synth/\HAS_OUTPUT_FIFO.i_output_fifo /\fifo0/fifo_1_reg[15][5]_srl16 " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     \fifo0/fifo_1_reg[15][5]_srl16 
       (.A0(\n_0_fifo0/add_1_reg[0] ),
        .A1(\n_0_fifo0/add_1_reg[1] ),
        .A2(\n_0_fifo0/add_1_reg[2] ),
        .A3(\n_0_fifo0/add_1_reg[3] ),
        .CE(wr_enable),
        .CLK(aclk),
        .D(wr_data[5]),
        .Q(\n_0_fifo0/fifo_1_reg[15][5]_srl16 ));
(* srl_bus_name = "U0/i_synth/\HAS_OUTPUT_FIFO.i_output_fifo /\fifo0/fifo_1_reg[15] " *) 
   (* srl_name = "U0/i_synth/\HAS_OUTPUT_FIFO.i_output_fifo /\fifo0/fifo_1_reg[15][6]_srl16 " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     \fifo0/fifo_1_reg[15][6]_srl16 
       (.A0(\n_0_fifo0/add_1_reg[0] ),
        .A1(\n_0_fifo0/add_1_reg[1] ),
        .A2(\n_0_fifo0/add_1_reg[2] ),
        .A3(\n_0_fifo0/add_1_reg[3] ),
        .CE(wr_enable),
        .CLK(aclk),
        .D(wr_data[6]),
        .Q(\n_0_fifo0/fifo_1_reg[15][6]_srl16 ));
(* srl_bus_name = "U0/i_synth/\HAS_OUTPUT_FIFO.i_output_fifo /\fifo0/fifo_1_reg[15] " *) 
   (* srl_name = "U0/i_synth/\HAS_OUTPUT_FIFO.i_output_fifo /\fifo0/fifo_1_reg[15][7]_srl16 " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     \fifo0/fifo_1_reg[15][7]_srl16 
       (.A0(\n_0_fifo0/add_1_reg[0] ),
        .A1(\n_0_fifo0/add_1_reg[1] ),
        .A2(\n_0_fifo0/add_1_reg[2] ),
        .A3(\n_0_fifo0/add_1_reg[3] ),
        .CE(wr_enable),
        .CLK(aclk),
        .D(wr_data[7]),
        .Q(\n_0_fifo0/fifo_1_reg[15][7]_srl16 ));
(* srl_bus_name = "U0/i_synth/\HAS_OUTPUT_FIFO.i_output_fifo /\fifo0/fifo_1_reg[15] " *) 
   (* srl_name = "U0/i_synth/\HAS_OUTPUT_FIFO.i_output_fifo /\fifo0/fifo_1_reg[15][8]_srl16 " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     \fifo0/fifo_1_reg[15][8]_srl16 
       (.A0(\n_0_fifo0/add_1_reg[0] ),
        .A1(\n_0_fifo0/add_1_reg[1] ),
        .A2(\n_0_fifo0/add_1_reg[2] ),
        .A3(\n_0_fifo0/add_1_reg[3] ),
        .CE(wr_enable),
        .CLK(aclk),
        .D(wr_data[8]),
        .Q(\n_0_fifo0/fifo_1_reg[15][8]_srl16 ));
(* srl_bus_name = "U0/i_synth/\HAS_OUTPUT_FIFO.i_output_fifo /\fifo0/fifo_1_reg[15] " *) 
   (* srl_name = "U0/i_synth/\HAS_OUTPUT_FIFO.i_output_fifo /\fifo0/fifo_1_reg[15][9]_srl16 " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     \fifo0/fifo_1_reg[15][9]_srl16 
       (.A0(\n_0_fifo0/add_1_reg[0] ),
        .A1(\n_0_fifo0/add_1_reg[1] ),
        .A2(\n_0_fifo0/add_1_reg[2] ),
        .A3(\n_0_fifo0/add_1_reg[3] ),
        .CE(wr_enable),
        .CLK(aclk),
        .D(wr_data[9]),
        .Q(\n_0_fifo0/fifo_1_reg[15][9]_srl16 ));
FDRE #(
    .INIT(1'b0)) 
     \fifo0/fifo_2_reg[0] 
       (.C(aclk),
        .CE(rd_enable),
        .D(\n_0_fifo0/fifo_1_reg[15][0]_srl16 ),
        .Q(ifx_data[0]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \fifo0/fifo_2_reg[10] 
       (.C(aclk),
        .CE(rd_enable),
        .D(\n_0_fifo0/fifo_1_reg[15][10]_srl16 ),
        .Q(ifx_data[10]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \fifo0/fifo_2_reg[11] 
       (.C(aclk),
        .CE(rd_enable),
        .D(\n_0_fifo0/fifo_1_reg[15][11]_srl16 ),
        .Q(ifx_data[11]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \fifo0/fifo_2_reg[12] 
       (.C(aclk),
        .CE(rd_enable),
        .D(\n_0_fifo0/fifo_1_reg[15][12]_srl16 ),
        .Q(ifx_data[12]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \fifo0/fifo_2_reg[13] 
       (.C(aclk),
        .CE(rd_enable),
        .D(\n_0_fifo0/fifo_1_reg[15][13]_srl16 ),
        .Q(ifx_data[13]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \fifo0/fifo_2_reg[14] 
       (.C(aclk),
        .CE(rd_enable),
        .D(\n_0_fifo0/fifo_1_reg[15][14]_srl16 ),
        .Q(ifx_data[14]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \fifo0/fifo_2_reg[15] 
       (.C(aclk),
        .CE(rd_enable),
        .D(\n_0_fifo0/fifo_1_reg[15][15]_srl16 ),
        .Q(ifx_data[15]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \fifo0/fifo_2_reg[16] 
       (.C(aclk),
        .CE(rd_enable),
        .D(\n_0_fifo0/fifo_1_reg[15][16]_srl16 ),
        .Q(ifx_data[16]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \fifo0/fifo_2_reg[17] 
       (.C(aclk),
        .CE(rd_enable),
        .D(\n_0_fifo0/fifo_1_reg[15][17]_srl16 ),
        .Q(ifx_data[17]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \fifo0/fifo_2_reg[18] 
       (.C(aclk),
        .CE(rd_enable),
        .D(\n_0_fifo0/fifo_1_reg[15][18]_srl16 ),
        .Q(ifx_data[18]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \fifo0/fifo_2_reg[19] 
       (.C(aclk),
        .CE(rd_enable),
        .D(\n_0_fifo0/fifo_1_reg[15][19]_srl16 ),
        .Q(ifx_data[19]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \fifo0/fifo_2_reg[1] 
       (.C(aclk),
        .CE(rd_enable),
        .D(\n_0_fifo0/fifo_1_reg[15][1]_srl16 ),
        .Q(ifx_data[1]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \fifo0/fifo_2_reg[20] 
       (.C(aclk),
        .CE(rd_enable),
        .D(\n_0_fifo0/fifo_1_reg[15][20]_srl16 ),
        .Q(ifx_data[20]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \fifo0/fifo_2_reg[21] 
       (.C(aclk),
        .CE(rd_enable),
        .D(\n_0_fifo0/fifo_1_reg[15][21]_srl16 ),
        .Q(ifx_data[21]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \fifo0/fifo_2_reg[22] 
       (.C(aclk),
        .CE(rd_enable),
        .D(\n_0_fifo0/fifo_1_reg[15][22]_srl16 ),
        .Q(ifx_data[22]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \fifo0/fifo_2_reg[23] 
       (.C(aclk),
        .CE(rd_enable),
        .D(\n_0_fifo0/fifo_1_reg[15][23]_srl16 ),
        .Q(ifx_data[23]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \fifo0/fifo_2_reg[24] 
       (.C(aclk),
        .CE(rd_enable),
        .D(\n_0_fifo0/fifo_1_reg[15][24]_srl16 ),
        .Q(ifx_data[24]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \fifo0/fifo_2_reg[25] 
       (.C(aclk),
        .CE(rd_enable),
        .D(\n_0_fifo0/fifo_1_reg[15][25]_srl16 ),
        .Q(ifx_data[25]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \fifo0/fifo_2_reg[26] 
       (.C(aclk),
        .CE(rd_enable),
        .D(\n_0_fifo0/fifo_1_reg[15][26]_srl16 ),
        .Q(ifx_data[26]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \fifo0/fifo_2_reg[27] 
       (.C(aclk),
        .CE(rd_enable),
        .D(\n_0_fifo0/fifo_1_reg[15][27]_srl16 ),
        .Q(ifx_data[27]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \fifo0/fifo_2_reg[28] 
       (.C(aclk),
        .CE(rd_enable),
        .D(\n_0_fifo0/fifo_1_reg[15][28]_srl16 ),
        .Q(ifx_data[28]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \fifo0/fifo_2_reg[29] 
       (.C(aclk),
        .CE(rd_enable),
        .D(\n_0_fifo0/fifo_1_reg[15][29]_srl16 ),
        .Q(ifx_data[29]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \fifo0/fifo_2_reg[2] 
       (.C(aclk),
        .CE(rd_enable),
        .D(\n_0_fifo0/fifo_1_reg[15][2]_srl16 ),
        .Q(ifx_data[2]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \fifo0/fifo_2_reg[30] 
       (.C(aclk),
        .CE(rd_enable),
        .D(\n_0_fifo0/fifo_1_reg[15][30]_srl16 ),
        .Q(ifx_data[30]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \fifo0/fifo_2_reg[31] 
       (.C(aclk),
        .CE(rd_enable),
        .D(\n_0_fifo0/fifo_1_reg[15][31]_srl16 ),
        .Q(ifx_data[31]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \fifo0/fifo_2_reg[32] 
       (.C(aclk),
        .CE(rd_enable),
        .D(\n_0_fifo0/fifo_1_reg[15][32]_srl16 ),
        .Q(ifx_data[32]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \fifo0/fifo_2_reg[33] 
       (.C(aclk),
        .CE(rd_enable),
        .D(\n_0_fifo0/fifo_1_reg[15][33]_srl16 ),
        .Q(ifx_data[33]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \fifo0/fifo_2_reg[34] 
       (.C(aclk),
        .CE(rd_enable),
        .D(\n_0_fifo0/fifo_1_reg[15][34]_srl16 ),
        .Q(ifx_data[34]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \fifo0/fifo_2_reg[35] 
       (.C(aclk),
        .CE(rd_enable),
        .D(\n_0_fifo0/fifo_1_reg[15][35]_srl16 ),
        .Q(ifx_data[35]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \fifo0/fifo_2_reg[36] 
       (.C(aclk),
        .CE(rd_enable),
        .D(\n_0_fifo0/fifo_1_reg[15][36]_srl16 ),
        .Q(ifx_data[36]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \fifo0/fifo_2_reg[37] 
       (.C(aclk),
        .CE(rd_enable),
        .D(\n_0_fifo0/fifo_1_reg[15][37]_srl16 ),
        .Q(ifx_data[37]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \fifo0/fifo_2_reg[38] 
       (.C(aclk),
        .CE(rd_enable),
        .D(\n_0_fifo0/fifo_1_reg[15][38]_srl16 ),
        .Q(ifx_data[38]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \fifo0/fifo_2_reg[39] 
       (.C(aclk),
        .CE(rd_enable),
        .D(\n_0_fifo0/fifo_1_reg[15][39]_srl16 ),
        .Q(ifx_data[39]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \fifo0/fifo_2_reg[3] 
       (.C(aclk),
        .CE(rd_enable),
        .D(\n_0_fifo0/fifo_1_reg[15][3]_srl16 ),
        .Q(ifx_data[3]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \fifo0/fifo_2_reg[40] 
       (.C(aclk),
        .CE(rd_enable),
        .D(\n_0_fifo0/fifo_1_reg[15][40]_srl16 ),
        .Q(ifx_data[40]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \fifo0/fifo_2_reg[41] 
       (.C(aclk),
        .CE(rd_enable),
        .D(\n_0_fifo0/fifo_1_reg[15][41]_srl16 ),
        .Q(ifx_data[41]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \fifo0/fifo_2_reg[42] 
       (.C(aclk),
        .CE(rd_enable),
        .D(\n_0_fifo0/fifo_1_reg[15][42]_srl16 ),
        .Q(ifx_data[42]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \fifo0/fifo_2_reg[43] 
       (.C(aclk),
        .CE(rd_enable),
        .D(\n_0_fifo0/fifo_1_reg[15][43]_srl16 ),
        .Q(ifx_data[43]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \fifo0/fifo_2_reg[44] 
       (.C(aclk),
        .CE(rd_enable),
        .D(\n_0_fifo0/fifo_1_reg[15][44]_srl16 ),
        .Q(ifx_data[44]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \fifo0/fifo_2_reg[45] 
       (.C(aclk),
        .CE(rd_enable),
        .D(\n_0_fifo0/fifo_1_reg[15][45]_srl16 ),
        .Q(ifx_data[45]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \fifo0/fifo_2_reg[46] 
       (.C(aclk),
        .CE(rd_enable),
        .D(\n_0_fifo0/fifo_1_reg[15][46]_srl16 ),
        .Q(ifx_data[46]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \fifo0/fifo_2_reg[47] 
       (.C(aclk),
        .CE(rd_enable),
        .D(\n_0_fifo0/fifo_1_reg[15][47]_srl16 ),
        .Q(ifx_data[47]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \fifo0/fifo_2_reg[48] 
       (.C(aclk),
        .CE(rd_enable),
        .D(\n_0_fifo0/fifo_1_reg[15][48]_srl16 ),
        .Q(ifx_data[48]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \fifo0/fifo_2_reg[49] 
       (.C(aclk),
        .CE(rd_enable),
        .D(\n_0_fifo0/fifo_1_reg[15][49]_srl16 ),
        .Q(ifx_data[49]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \fifo0/fifo_2_reg[4] 
       (.C(aclk),
        .CE(rd_enable),
        .D(\n_0_fifo0/fifo_1_reg[15][4]_srl16 ),
        .Q(ifx_data[4]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \fifo0/fifo_2_reg[50] 
       (.C(aclk),
        .CE(rd_enable),
        .D(\n_0_fifo0/fifo_1_reg[15][50]_srl16 ),
        .Q(ifx_data[50]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \fifo0/fifo_2_reg[51] 
       (.C(aclk),
        .CE(rd_enable),
        .D(\n_0_fifo0/fifo_1_reg[15][51]_srl16 ),
        .Q(ifx_data[51]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \fifo0/fifo_2_reg[5] 
       (.C(aclk),
        .CE(rd_enable),
        .D(\n_0_fifo0/fifo_1_reg[15][5]_srl16 ),
        .Q(ifx_data[5]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \fifo0/fifo_2_reg[6] 
       (.C(aclk),
        .CE(rd_enable),
        .D(\n_0_fifo0/fifo_1_reg[15][6]_srl16 ),
        .Q(ifx_data[6]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \fifo0/fifo_2_reg[7] 
       (.C(aclk),
        .CE(rd_enable),
        .D(\n_0_fifo0/fifo_1_reg[15][7]_srl16 ),
        .Q(ifx_data[7]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \fifo0/fifo_2_reg[8] 
       (.C(aclk),
        .CE(rd_enable),
        .D(\n_0_fifo0/fifo_1_reg[15][8]_srl16 ),
        .Q(ifx_data[8]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \fifo0/fifo_2_reg[9] 
       (.C(aclk),
        .CE(rd_enable),
        .D(\n_0_fifo0/fifo_1_reg[15][9]_srl16 ),
        .Q(ifx_data[9]),
        .R(\<const0> ));
(* use_clock_enable = "no" *) 
   (* use_sync_reset = "no" *) 
   (* use_sync_set = "no" *) 
   FDRE #(
    .INIT(1'b0)) 
     \fifo0/rd_valid_2_reg 
       (.C(aclk),
        .CE(\<const1> ),
        .D(n_0_rd_valid_2_i_1),
        .Q(ifx_valid),
        .R(areset));
LUT3 #(
    .INIT(8'hA2)) 
     \fifo_2[51]_i_1 
       (.I0(aclken),
        .I1(ifx_valid),
        .I2(ifx_ready),
        .O(rd_enable));
(* SOFT_HLUTNM = "soft_lutpair2" *) 
   LUT4 #(
    .INIT(16'h74F4)) 
     rd_valid_2_i_1
       (.I0(\n_0_fifo0/add_1_reg[4] ),
        .I1(aclken),
        .I2(ifx_valid),
        .I3(ifx_ready),
        .O(n_0_rd_valid_2_i_1));
endmodule

(* C_VERBOSITY = "0" *) (* C_MODEL_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) 
(* C_XDEVICEFAMILY = "kintex7" *) (* C_HAS_CE = "1" *) (* C_HAS_SCLR = "0" *) 
(* C_LATENCY = "1000000015" *) (* C_A_WIDTH = "24" *) (* C_A_TYPE = "1" *) 
(* C_B_WIDTH = "24" *) (* C_B_TYPE = "1" *) (* C_OUT_HIGH = "47" *) 
(* C_OUT_LOW = "22" *) (* C_MULT_TYPE = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_CCM_IMP = "0" *) (* C_B_VALUE = "111111111111111111" *) (* C_HAS_ZERO_DETECT = "1" *) 
(* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) (* downgradeipidentifiedwarnings = "yes" *) 
module ip_fp32_axis_multmult_gen_v12_0_viv
   (CLK,
    A,
    B,
    CE,
    SCLR,
    ZERO_DETECT,
    P,
    PCASC);
  input CLK;
  input [23:0]A;
  input [23:0]B;
  input CE;
  input SCLR;
  output [1:0]ZERO_DETECT;
  output [25:0]P;
  output [47:0]PCASC;

  wire \<const0> ;
  wire \<const1> ;
  wire [23:0]A;
  wire [23:0]B;
  wire CE;
  wire CLK;
  wire [25:0]P;
  wire [1:0]ZERO_DETECT;
  wire [29:0]\gDSP.gDSP_only.iDSP/ACOUT ;
  wire \gDSP.gDSP_only.iDSP/PATTERNDETECT ;
  wire [47:0]\gDSP.gDSP_only.iDSP/PCOUT ;
  wire [16:0]\gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].need_output_delay.output_delay/dout_i ;
  wire \gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].use_subtract_delay.subtract_delay/dout_i ;
  wire [42:0]\gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].need_output_delay.output_delay/dout_i ;
  wire \gDSP.gDSP_only.iDSP/use_prim.has_zero_detect.zd_a1b2.multi_dsp_output.zd_delay0/dout_i ;
  wire \gDSP.gDSP_only.iDSP/use_prim.has_zero_detect.zd_a1b2.multi_dsp_output.zd_delay1/dout_i ;
  wire [24:24]\gDSP.gDSP_only.iDSP/use_prim.iAdelx[0].iAdely[0].use_delay_line.Adelay/dout_i ;
  wire [17:17]\gDSP.gDSP_only.iDSP/use_prim.iBdelx[0].iBdely[0].need_delay_line.Bdelay/dout_i ;
  wire [7:7]\gDSP.gDSP_only.iDSP/use_prim.iBdelx[0].iBdely[1].need_delay_line.Bdelay/dout_i ;
  wire \n_0_d1.dout_i[0]_i_1 ;
  wire \n_100_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1 ;
  wire \n_101_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1 ;
  wire \n_102_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1 ;
  wire \n_103_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1 ;
  wire \n_104_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1 ;
  wire \n_105_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1 ;
  wire \n_106_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1 ;
  wire \n_107_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1 ;
  wire \n_108_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1 ;
  wire \n_109_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1 ;
  wire \n_110_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1 ;
  wire \n_111_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1 ;
  wire \n_112_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1 ;
  wire \n_113_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1 ;
  wire \n_114_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1 ;
  wire \n_115_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1 ;
  wire \n_116_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1 ;
  wire \n_117_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1 ;
  wire \n_118_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1 ;
  wire \n_119_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1 ;
  wire \n_120_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1 ;
  wire \n_121_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1 ;
  wire \n_122_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1 ;
  wire \n_123_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1 ;
  wire \n_124_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1 ;
  wire \n_125_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1 ;
  wire \n_126_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1 ;
  wire \n_127_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1 ;
  wire \n_128_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1 ;
  wire \n_129_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1 ;
  wire \n_130_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1 ;
  wire \n_131_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1 ;
  wire \n_132_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1 ;
  wire \n_133_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1 ;
  wire \n_134_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1 ;
  wire \n_135_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1 ;
  wire \n_136_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1 ;
  wire \n_137_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1 ;
  wire \n_138_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1 ;
  wire \n_139_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1 ;
  wire \n_140_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1 ;
  wire \n_141_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1 ;
  wire \n_142_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1 ;
  wire \n_143_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1 ;
  wire \n_144_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1 ;
  wire \n_145_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1 ;
  wire \n_146_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1 ;
  wire \n_147_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1 ;
  wire \n_148_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1 ;
  wire \n_149_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1 ;
  wire \n_150_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1 ;
  wire \n_151_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1 ;
  wire \n_152_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1 ;
  wire \n_153_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1 ;
  wire \n_89_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1 ;
  wire \n_90_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1 ;
  wire \n_91_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1 ;
  wire \n_92_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1 ;
  wire \n_93_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1 ;
  wire \n_94_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1 ;
  wire \n_95_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1 ;
  wire \n_96_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1 ;
  wire \n_97_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1 ;
  wire \n_98_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1 ;
  wire \n_99_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1 ;
  wire [16:0]p_0_in;
  wire \NLW_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_OVERFLOW_UNCONNECTED ;
  wire \NLW_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_UNDERFLOW_UNCONNECTED ;
  wire [17:0]\NLW_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_CARRYOUT_UNCONNECTED ;
  wire [47:17]\NLW_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_P_UNCONNECTED ;
  wire \NLW_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1_OVERFLOW_UNCONNECTED ;
  wire \NLW_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1_CARRYOUT_UNCONNECTED ;
  wire [47:43]\NLW_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1_P_UNCONNECTED ;

  assign PCASC[47] = \<const0> ;
  assign PCASC[46] = \<const0> ;
  assign PCASC[45] = \<const0> ;
  assign PCASC[44] = \<const0> ;
  assign PCASC[43] = \<const0> ;
  assign PCASC[42] = \<const0> ;
  assign PCASC[41] = \<const0> ;
  assign PCASC[40] = \<const0> ;
  assign PCASC[39] = \<const0> ;
  assign PCASC[38] = \<const0> ;
  assign PCASC[37] = \<const0> ;
  assign PCASC[36] = \<const0> ;
  assign PCASC[35] = \<const0> ;
  assign PCASC[34] = \<const0> ;
  assign PCASC[33] = \<const0> ;
  assign PCASC[32] = \<const0> ;
  assign PCASC[31] = \<const0> ;
  assign PCASC[30] = \<const0> ;
  assign PCASC[29] = \<const0> ;
  assign PCASC[28] = \<const0> ;
  assign PCASC[27] = \<const0> ;
  assign PCASC[26] = \<const0> ;
  assign PCASC[25] = \<const0> ;
  assign PCASC[24] = \<const0> ;
  assign PCASC[23] = \<const0> ;
  assign PCASC[22] = \<const0> ;
  assign PCASC[21] = \<const0> ;
  assign PCASC[20] = \<const0> ;
  assign PCASC[19] = \<const0> ;
  assign PCASC[18] = \<const0> ;
  assign PCASC[17] = \<const0> ;
  assign PCASC[16] = \<const0> ;
  assign PCASC[15] = \<const0> ;
  assign PCASC[14] = \<const0> ;
  assign PCASC[13] = \<const0> ;
  assign PCASC[12] = \<const0> ;
  assign PCASC[11] = \<const0> ;
  assign PCASC[10] = \<const0> ;
  assign PCASC[9] = \<const0> ;
  assign PCASC[8] = \<const0> ;
  assign PCASC[7] = \<const0> ;
  assign PCASC[6] = \<const0> ;
  assign PCASC[5] = \<const0> ;
  assign PCASC[4] = \<const0> ;
  assign PCASC[3] = \<const0> ;
  assign PCASC[2] = \<const0> ;
  assign PCASC[1] = \<const0> ;
  assign PCASC[0] = \<const0> ;
GND GND
       (.G(\<const0> ));
VCC VCC
       (.P(\<const1> ));
LUT3 #(
    .INIT(8'hB8)) 
     \d1.dout_i[0]_i_1 
       (.I0(\gDSP.gDSP_only.iDSP/PATTERNDETECT ),
        .I1(CE),
        .I2(\gDSP.gDSP_only.iDSP/use_prim.has_zero_detect.zd_a1b2.multi_dsp_output.zd_delay0/dout_i ),
        .O(\n_0_d1.dout_i[0]_i_1 ));
LUT3 #(
    .INIT(8'hAC)) 
     \gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].need_output_delay.output_delay/d1.dout_i[0]_i_1 
       (.I0(\n_105_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1 ),
        .I1(\gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].need_output_delay.output_delay/dout_i [0]),
        .I2(CE),
        .O(p_0_in[0]));
LUT3 #(
    .INIT(8'hAC)) 
     \gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].need_output_delay.output_delay/d1.dout_i[10]_i_1 
       (.I0(\n_95_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1 ),
        .I1(\gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].need_output_delay.output_delay/dout_i [10]),
        .I2(CE),
        .O(p_0_in[10]));
LUT3 #(
    .INIT(8'hAC)) 
     \gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].need_output_delay.output_delay/d1.dout_i[11]_i_1 
       (.I0(\n_94_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1 ),
        .I1(\gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].need_output_delay.output_delay/dout_i [11]),
        .I2(CE),
        .O(p_0_in[11]));
LUT3 #(
    .INIT(8'hAC)) 
     \gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].need_output_delay.output_delay/d1.dout_i[12]_i_1 
       (.I0(\n_93_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1 ),
        .I1(\gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].need_output_delay.output_delay/dout_i [12]),
        .I2(CE),
        .O(p_0_in[12]));
LUT3 #(
    .INIT(8'hAC)) 
     \gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].need_output_delay.output_delay/d1.dout_i[13]_i_1 
       (.I0(\n_92_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1 ),
        .I1(\gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].need_output_delay.output_delay/dout_i [13]),
        .I2(CE),
        .O(p_0_in[13]));
LUT3 #(
    .INIT(8'hAC)) 
     \gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].need_output_delay.output_delay/d1.dout_i[14]_i_1 
       (.I0(\n_91_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1 ),
        .I1(\gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].need_output_delay.output_delay/dout_i [14]),
        .I2(CE),
        .O(p_0_in[14]));
LUT3 #(
    .INIT(8'hAC)) 
     \gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].need_output_delay.output_delay/d1.dout_i[15]_i_1 
       (.I0(\n_90_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1 ),
        .I1(\gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].need_output_delay.output_delay/dout_i [15]),
        .I2(CE),
        .O(p_0_in[15]));
LUT3 #(
    .INIT(8'hAC)) 
     \gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].need_output_delay.output_delay/d1.dout_i[16]_i_1 
       (.I0(\n_89_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1 ),
        .I1(\gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].need_output_delay.output_delay/dout_i [16]),
        .I2(CE),
        .O(p_0_in[16]));
LUT3 #(
    .INIT(8'hAC)) 
     \gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].need_output_delay.output_delay/d1.dout_i[1]_i_1 
       (.I0(\n_104_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1 ),
        .I1(\gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].need_output_delay.output_delay/dout_i [1]),
        .I2(CE),
        .O(p_0_in[1]));
LUT3 #(
    .INIT(8'hAC)) 
     \gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].need_output_delay.output_delay/d1.dout_i[2]_i_1 
       (.I0(\n_103_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1 ),
        .I1(\gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].need_output_delay.output_delay/dout_i [2]),
        .I2(CE),
        .O(p_0_in[2]));
LUT3 #(
    .INIT(8'hAC)) 
     \gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].need_output_delay.output_delay/d1.dout_i[3]_i_1 
       (.I0(\n_102_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1 ),
        .I1(\gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].need_output_delay.output_delay/dout_i [3]),
        .I2(CE),
        .O(p_0_in[3]));
LUT3 #(
    .INIT(8'hAC)) 
     \gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].need_output_delay.output_delay/d1.dout_i[4]_i_1 
       (.I0(\n_101_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1 ),
        .I1(\gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].need_output_delay.output_delay/dout_i [4]),
        .I2(CE),
        .O(p_0_in[4]));
LUT3 #(
    .INIT(8'hAC)) 
     \gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].need_output_delay.output_delay/d1.dout_i[5]_i_1 
       (.I0(\n_100_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1 ),
        .I1(\gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].need_output_delay.output_delay/dout_i [5]),
        .I2(CE),
        .O(p_0_in[5]));
LUT3 #(
    .INIT(8'hAC)) 
     \gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].need_output_delay.output_delay/d1.dout_i[6]_i_1 
       (.I0(\n_99_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1 ),
        .I1(\gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].need_output_delay.output_delay/dout_i [6]),
        .I2(CE),
        .O(p_0_in[6]));
LUT3 #(
    .INIT(8'hAC)) 
     \gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].need_output_delay.output_delay/d1.dout_i[7]_i_1 
       (.I0(\n_98_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1 ),
        .I1(\gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].need_output_delay.output_delay/dout_i [7]),
        .I2(CE),
        .O(p_0_in[7]));
LUT3 #(
    .INIT(8'hAC)) 
     \gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].need_output_delay.output_delay/d1.dout_i[8]_i_1 
       (.I0(\n_97_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1 ),
        .I1(\gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].need_output_delay.output_delay/dout_i [8]),
        .I2(CE),
        .O(p_0_in[8]));
LUT3 #(
    .INIT(8'hAC)) 
     \gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].need_output_delay.output_delay/d1.dout_i[9]_i_1 
       (.I0(\n_96_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1 ),
        .I1(\gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].need_output_delay.output_delay/dout_i [9]),
        .I2(CE),
        .O(p_0_in[9]));
FDRE #(
    .INIT(1'b0)) 
     \gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].need_output_delay.output_delay/d1.dout_i_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(p_0_in[0]),
        .Q(\gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].need_output_delay.output_delay/dout_i [0]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].need_output_delay.output_delay/d1.dout_i_reg[10] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(p_0_in[10]),
        .Q(\gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].need_output_delay.output_delay/dout_i [10]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].need_output_delay.output_delay/d1.dout_i_reg[11] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(p_0_in[11]),
        .Q(\gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].need_output_delay.output_delay/dout_i [11]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].need_output_delay.output_delay/d1.dout_i_reg[12] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(p_0_in[12]),
        .Q(\gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].need_output_delay.output_delay/dout_i [12]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].need_output_delay.output_delay/d1.dout_i_reg[13] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(p_0_in[13]),
        .Q(\gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].need_output_delay.output_delay/dout_i [13]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].need_output_delay.output_delay/d1.dout_i_reg[14] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(p_0_in[14]),
        .Q(\gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].need_output_delay.output_delay/dout_i [14]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].need_output_delay.output_delay/d1.dout_i_reg[15] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(p_0_in[15]),
        .Q(\gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].need_output_delay.output_delay/dout_i [15]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].need_output_delay.output_delay/d1.dout_i_reg[16] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(p_0_in[16]),
        .Q(\gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].need_output_delay.output_delay/dout_i [16]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].need_output_delay.output_delay/d1.dout_i_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(p_0_in[1]),
        .Q(\gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].need_output_delay.output_delay/dout_i [1]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].need_output_delay.output_delay/d1.dout_i_reg[2] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(p_0_in[2]),
        .Q(\gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].need_output_delay.output_delay/dout_i [2]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].need_output_delay.output_delay/d1.dout_i_reg[3] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(p_0_in[3]),
        .Q(\gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].need_output_delay.output_delay/dout_i [3]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].need_output_delay.output_delay/d1.dout_i_reg[4] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(p_0_in[4]),
        .Q(\gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].need_output_delay.output_delay/dout_i [4]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].need_output_delay.output_delay/d1.dout_i_reg[5] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(p_0_in[5]),
        .Q(\gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].need_output_delay.output_delay/dout_i [5]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].need_output_delay.output_delay/d1.dout_i_reg[6] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(p_0_in[6]),
        .Q(\gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].need_output_delay.output_delay/dout_i [6]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].need_output_delay.output_delay/d1.dout_i_reg[7] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(p_0_in[7]),
        .Q(\gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].need_output_delay.output_delay/dout_i [7]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].need_output_delay.output_delay/d1.dout_i_reg[8] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(p_0_in[8]),
        .Q(\gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].need_output_delay.output_delay/dout_i [8]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].need_output_delay.output_delay/d1.dout_i_reg[9] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(p_0_in[9]),
        .Q(\gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].need_output_delay.output_delay/dout_i [9]),
        .R(\<const0> ));
(* box_type = "PRIMITIVE" *) 
   DSP48E1 #(
    .ACASCREG(1),
    .ADREG(0),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(0),
    .INMODEREG(0),
    .IS_ALUMODE_INVERTED(4'b0000),
    .IS_CARRYIN_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_INMODE_INVERTED(5'b00000),
    .IS_OPMODE_INVERTED(7'b0000000),
    .MASK(48'hFFFFFFFE0000),
    .MREG(1),
    .OPMODEREG(1),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("PATDET"),
    .USE_SIMD("ONE48")) 
     \gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1 
       (.A({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\gDSP.gDSP_only.iDSP/use_prim.iAdelx[0].iAdely[0].use_delay_line.Adelay/dout_i ,A}),
        .ACIN({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .ACOUT(\gDSP.gDSP_only.iDSP/ACOUT ),
        .ALUMODE({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .B({\gDSP.gDSP_only.iDSP/use_prim.iBdelx[0].iBdely[0].need_delay_line.Bdelay/dout_i ,B[16:0]}),
        .BCIN({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .BCOUT(\NLW_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_BCOUT_UNCONNECTED [17:0]),
        .C({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .CARRYCASCIN(\<const0> ),
        .CARRYCASCOUT(\NLW_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(\<const0> ),
        .CARRYINSEL({\<const0> ,\<const0> ,\<const0> }),
        .CARRYOUT(\NLW_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(\<const0> ),
        .CEA2(CE),
        .CEAD(\<const0> ),
        .CEALUMODE(\<const0> ),
        .CEB1(\<const0> ),
        .CEB2(CE),
        .CEC(\<const0> ),
        .CECARRYIN(\<const0> ),
        .CECTRL(CE),
        .CED(\<const0> ),
        .CEINMODE(\<const0> ),
        .CEM(CE),
        .CEP(CE),
        .CLK(CLK),
        .D({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .INMODE({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .MULTSIGNIN(\<const0> ),
        .MULTSIGNOUT(\NLW_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({\<const0> ,\<const1> ,\<const1> ,\<const0> ,\<const1> ,\<const0> ,\<const1> }),
        .OVERFLOW(\NLW_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_OVERFLOW_UNCONNECTED ),
        .P({\NLW_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_P_UNCONNECTED [47:17],\n_89_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1 ,\n_90_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1 ,\n_91_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1 ,\n_92_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1 ,\n_93_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1 ,\n_94_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1 ,\n_95_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1 ,\n_96_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1 ,\n_97_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1 ,\n_98_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1 ,\n_99_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1 ,\n_100_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1 ,\n_101_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1 ,\n_102_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1 ,\n_103_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1 ,\n_104_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1 ,\n_105_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1 }),
        .PATTERNBDETECT(\NLW_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\gDSP.gDSP_only.iDSP/PATTERNDETECT ),
        .PCIN({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .PCOUT(\gDSP.gDSP_only.iDSP/PCOUT ),
        .RSTA(\<const0> ),
        .RSTALLCARRYIN(\<const0> ),
        .RSTALUMODE(\<const0> ),
        .RSTB(\<const0> ),
        .RSTC(\<const0> ),
        .RSTCTRL(\<const0> ),
        .RSTD(\<const0> ),
        .RSTINMODE(\<const0> ),
        .RSTM(\<const0> ),
        .RSTP(\<const0> ),
        .UNDERFLOW(\NLW_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_UNDERFLOW_UNCONNECTED ));
(* box_type = "PRIMITIVE" *) 
   DSP48E1 #(
    .ACASCREG(1),
    .ADREG(0),
    .ALUMODEREG(1),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("CASCADE"),
    .BCASCREG(2),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(0),
    .INMODEREG(0),
    .IS_ALUMODE_INVERTED(4'b0000),
    .IS_CARRYIN_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_INMODE_INVERTED(5'b00000),
    .IS_OPMODE_INVERTED(7'b0000000),
    .MASK(48'hFFFFFFFFFFE0),
    .MREG(1),
    .OPMODEREG(1),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("PATDET"),
    .USE_SIMD("ONE48")) 
     \gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1 
       (.A({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .ACIN(\gDSP.gDSP_only.iDSP/ACOUT ),
        .ACOUT(\NLW_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({\<const0> ,\<const0> ,\gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].use_subtract_delay.subtract_delay/dout_i ,\gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].use_subtract_delay.subtract_delay/dout_i }),
        .B({\gDSP.gDSP_only.iDSP/use_prim.iBdelx[0].iBdely[1].need_delay_line.Bdelay/dout_i ,\gDSP.gDSP_only.iDSP/use_prim.iBdelx[0].iBdely[1].need_delay_line.Bdelay/dout_i ,\gDSP.gDSP_only.iDSP/use_prim.iBdelx[0].iBdely[1].need_delay_line.Bdelay/dout_i ,\gDSP.gDSP_only.iDSP/use_prim.iBdelx[0].iBdely[1].need_delay_line.Bdelay/dout_i ,\gDSP.gDSP_only.iDSP/use_prim.iBdelx[0].iBdely[1].need_delay_line.Bdelay/dout_i ,\gDSP.gDSP_only.iDSP/use_prim.iBdelx[0].iBdely[1].need_delay_line.Bdelay/dout_i ,\gDSP.gDSP_only.iDSP/use_prim.iBdelx[0].iBdely[1].need_delay_line.Bdelay/dout_i ,\gDSP.gDSP_only.iDSP/use_prim.iBdelx[0].iBdely[1].need_delay_line.Bdelay/dout_i ,\gDSP.gDSP_only.iDSP/use_prim.iBdelx[0].iBdely[1].need_delay_line.Bdelay/dout_i ,\gDSP.gDSP_only.iDSP/use_prim.iBdelx[0].iBdely[1].need_delay_line.Bdelay/dout_i ,\gDSP.gDSP_only.iDSP/use_prim.iBdelx[0].iBdely[1].need_delay_line.Bdelay/dout_i ,B[23:17]}),
        .BCIN({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .BCOUT(\NLW_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1_BCOUT_UNCONNECTED [17:0]),
        .C({\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .CARRYCASCIN(\<const0> ),
        .CARRYCASCOUT(\NLW_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(\<const0> ),
        .CARRYINSEL({\<const0> ,\<const0> ,\<const0> }),
        .CARRYOUT(\NLW_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(\<const0> ),
        .CEA2(CE),
        .CEAD(\<const0> ),
        .CEALUMODE(CE),
        .CEB1(CE),
        .CEB2(CE),
        .CEC(\<const0> ),
        .CECARRYIN(\<const0> ),
        .CECTRL(CE),
        .CED(\<const0> ),
        .CEINMODE(\<const0> ),
        .CEM(CE),
        .CEP(CE),
        .CLK(CLK),
        .D({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .INMODE({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .MULTSIGNIN(\<const0> ),
        .MULTSIGNOUT(\NLW_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({\<const1> ,\<const0> ,\<const1> ,\<const0> ,\<const1> ,\<const0> ,\<const1> }),
        .OVERFLOW(\NLW_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1_OVERFLOW_UNCONNECTED ),
        .P({\NLW_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1_P_UNCONNECTED [47:43],\gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].need_output_delay.output_delay/dout_i }),
        .PATTERNBDETECT(\NLW_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\gDSP.gDSP_only.iDSP/use_prim.has_zero_detect.zd_a1b2.multi_dsp_output.zd_delay1/dout_i ),
        .PCIN(\gDSP.gDSP_only.iDSP/PCOUT ),
        .PCOUT({\n_106_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1 ,\n_107_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1 ,\n_108_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1 ,\n_109_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1 ,\n_110_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1 ,\n_111_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1 ,\n_112_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1 ,\n_113_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1 ,\n_114_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1 ,\n_115_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1 ,\n_116_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1 ,\n_117_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1 ,\n_118_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1 ,\n_119_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1 ,\n_120_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1 ,\n_121_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1 ,\n_122_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1 ,\n_123_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1 ,\n_124_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1 ,\n_125_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1 ,\n_126_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1 ,\n_127_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1 ,\n_128_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1 ,\n_129_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1 ,\n_130_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1 ,\n_131_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1 ,\n_132_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1 ,\n_133_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1 ,\n_134_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1 ,\n_135_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1 ,\n_136_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1 ,\n_137_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1 ,\n_138_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1 ,\n_139_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1 ,\n_140_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1 ,\n_141_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1 ,\n_142_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1 ,\n_143_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1 ,\n_144_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1 ,\n_145_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1 ,\n_146_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1 ,\n_147_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1 ,\n_148_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1 ,\n_149_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1 ,\n_150_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1 ,\n_151_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1 ,\n_152_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1 ,\n_153_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1 }),
        .RSTA(\<const0> ),
        .RSTALLCARRYIN(\<const0> ),
        .RSTALUMODE(\<const0> ),
        .RSTB(\<const0> ),
        .RSTC(\<const0> ),
        .RSTCTRL(\<const0> ),
        .RSTD(\<const0> ),
        .RSTINMODE(\<const0> ),
        .RSTM(\<const0> ),
        .RSTP(\<const0> ),
        .UNDERFLOW(\NLW_gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1_UNDERFLOW_UNCONNECTED ));
FDRE #(
    .INIT(1'b0)) 
     \gDSP.gDSP_only.iDSP/use_prim.has_zero_detect.zd_a1b2.multi_dsp_output.zd_delay0/d1.dout_i_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\n_0_d1.dout_i[0]_i_1 ),
        .Q(\gDSP.gDSP_only.iDSP/use_prim.has_zero_detect.zd_a1b2.multi_dsp_output.zd_delay0/dout_i ),
        .R(\<const0> ));
LUT1 #(
    .INIT(2'h2)) 
     \gDSP.gDSP_only.iDSPi_31 
       (.I0(\gDSP.gDSP_only.iDSP/use_prim.has_zero_detect.zd_a1b2.multi_dsp_output.zd_delay0/dout_i ),
        .O(ZERO_DETECT[0]));
LUT1 #(
    .INIT(2'h2)) 
     \use_prim.appDSP48[0].bppDSP48[0].use_subtract_delay.subtract_delayi_3 
       (.I0(\<const0> ),
        .O(\gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[0].use_subtract_delay.subtract_delay/dout_i ));
LUT1 #(
    .INIT(2'h2)) 
     \use_prim.appDSP48[0].bppDSP48[1].need_output_delay.output_delayi_10 
       (.I0(\gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].need_output_delay.output_delay/dout_i [24]),
        .O(P[19]));
LUT1 #(
    .INIT(2'h2)) 
     \use_prim.appDSP48[0].bppDSP48[1].need_output_delay.output_delayi_11 
       (.I0(\gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].need_output_delay.output_delay/dout_i [23]),
        .O(P[18]));
LUT1 #(
    .INIT(2'h2)) 
     \use_prim.appDSP48[0].bppDSP48[1].need_output_delay.output_delayi_12 
       (.I0(\gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].need_output_delay.output_delay/dout_i [22]),
        .O(P[17]));
LUT1 #(
    .INIT(2'h2)) 
     \use_prim.appDSP48[0].bppDSP48[1].need_output_delay.output_delayi_13 
       (.I0(\gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].need_output_delay.output_delay/dout_i [21]),
        .O(P[16]));
LUT1 #(
    .INIT(2'h2)) 
     \use_prim.appDSP48[0].bppDSP48[1].need_output_delay.output_delayi_14 
       (.I0(\gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].need_output_delay.output_delay/dout_i [20]),
        .O(P[15]));
LUT1 #(
    .INIT(2'h2)) 
     \use_prim.appDSP48[0].bppDSP48[1].need_output_delay.output_delayi_15 
       (.I0(\gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].need_output_delay.output_delay/dout_i [19]),
        .O(P[14]));
LUT1 #(
    .INIT(2'h2)) 
     \use_prim.appDSP48[0].bppDSP48[1].need_output_delay.output_delayi_16 
       (.I0(\gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].need_output_delay.output_delay/dout_i [18]),
        .O(P[13]));
LUT1 #(
    .INIT(2'h2)) 
     \use_prim.appDSP48[0].bppDSP48[1].need_output_delay.output_delayi_17 
       (.I0(\gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].need_output_delay.output_delay/dout_i [17]),
        .O(P[12]));
LUT1 #(
    .INIT(2'h2)) 
     \use_prim.appDSP48[0].bppDSP48[1].need_output_delay.output_delayi_18 
       (.I0(\gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].need_output_delay.output_delay/dout_i [16]),
        .O(P[11]));
LUT1 #(
    .INIT(2'h2)) 
     \use_prim.appDSP48[0].bppDSP48[1].need_output_delay.output_delayi_19 
       (.I0(\gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].need_output_delay.output_delay/dout_i [15]),
        .O(P[10]));
LUT1 #(
    .INIT(2'h2)) 
     \use_prim.appDSP48[0].bppDSP48[1].need_output_delay.output_delayi_20 
       (.I0(\gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].need_output_delay.output_delay/dout_i [14]),
        .O(P[9]));
LUT1 #(
    .INIT(2'h2)) 
     \use_prim.appDSP48[0].bppDSP48[1].need_output_delay.output_delayi_21 
       (.I0(\gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].need_output_delay.output_delay/dout_i [13]),
        .O(P[8]));
LUT1 #(
    .INIT(2'h2)) 
     \use_prim.appDSP48[0].bppDSP48[1].need_output_delay.output_delayi_22 
       (.I0(\gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].need_output_delay.output_delay/dout_i [12]),
        .O(P[7]));
LUT1 #(
    .INIT(2'h2)) 
     \use_prim.appDSP48[0].bppDSP48[1].need_output_delay.output_delayi_23 
       (.I0(\gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].need_output_delay.output_delay/dout_i [11]),
        .O(P[6]));
LUT1 #(
    .INIT(2'h2)) 
     \use_prim.appDSP48[0].bppDSP48[1].need_output_delay.output_delayi_24 
       (.I0(\gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].need_output_delay.output_delay/dout_i [10]),
        .O(P[5]));
LUT1 #(
    .INIT(2'h2)) 
     \use_prim.appDSP48[0].bppDSP48[1].need_output_delay.output_delayi_25 
       (.I0(\gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].need_output_delay.output_delay/dout_i [9]),
        .O(P[4]));
LUT1 #(
    .INIT(2'h2)) 
     \use_prim.appDSP48[0].bppDSP48[1].need_output_delay.output_delayi_26 
       (.I0(\gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].need_output_delay.output_delay/dout_i [8]),
        .O(P[3]));
LUT1 #(
    .INIT(2'h2)) 
     \use_prim.appDSP48[0].bppDSP48[1].need_output_delay.output_delayi_27 
       (.I0(\gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].need_output_delay.output_delay/dout_i [7]),
        .O(P[2]));
LUT1 #(
    .INIT(2'h2)) 
     \use_prim.appDSP48[0].bppDSP48[1].need_output_delay.output_delayi_28 
       (.I0(\gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].need_output_delay.output_delay/dout_i [6]),
        .O(P[1]));
LUT1 #(
    .INIT(2'h2)) 
     \use_prim.appDSP48[0].bppDSP48[1].need_output_delay.output_delayi_29 
       (.I0(\gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].need_output_delay.output_delay/dout_i [5]),
        .O(P[0]));
LUT1 #(
    .INIT(2'h2)) 
     \use_prim.appDSP48[0].bppDSP48[1].need_output_delay.output_delayi_4 
       (.I0(\gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].need_output_delay.output_delay/dout_i [30]),
        .O(P[25]));
LUT1 #(
    .INIT(2'h2)) 
     \use_prim.appDSP48[0].bppDSP48[1].need_output_delay.output_delayi_5 
       (.I0(\gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].need_output_delay.output_delay/dout_i [29]),
        .O(P[24]));
LUT1 #(
    .INIT(2'h2)) 
     \use_prim.appDSP48[0].bppDSP48[1].need_output_delay.output_delayi_6 
       (.I0(\gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].need_output_delay.output_delay/dout_i [28]),
        .O(P[23]));
LUT1 #(
    .INIT(2'h2)) 
     \use_prim.appDSP48[0].bppDSP48[1].need_output_delay.output_delayi_7 
       (.I0(\gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].need_output_delay.output_delay/dout_i [27]),
        .O(P[22]));
LUT1 #(
    .INIT(2'h2)) 
     \use_prim.appDSP48[0].bppDSP48[1].need_output_delay.output_delayi_8 
       (.I0(\gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].need_output_delay.output_delay/dout_i [26]),
        .O(P[21]));
LUT1 #(
    .INIT(2'h2)) 
     \use_prim.appDSP48[0].bppDSP48[1].need_output_delay.output_delayi_9 
       (.I0(\gDSP.gDSP_only.iDSP/use_prim.appDSP48[0].bppDSP48[1].need_output_delay.output_delay/dout_i [25]),
        .O(P[20]));
LUT1 #(
    .INIT(2'h2)) 
     \use_prim.has_zero_detect.zd_a1b2.multi_dsp_output.zd_delay1i_30 
       (.I0(\gDSP.gDSP_only.iDSP/use_prim.has_zero_detect.zd_a1b2.multi_dsp_output.zd_delay1/dout_i ),
        .O(ZERO_DETECT[1]));
LUT1 #(
    .INIT(2'h2)) 
     \use_prim.iAdelx[0].iAdely[0].use_delay_line.Adelayi_0 
       (.I0(\<const0> ),
        .O(\gDSP.gDSP_only.iDSP/use_prim.iAdelx[0].iAdely[0].use_delay_line.Adelay/dout_i ));
LUT1 #(
    .INIT(2'h2)) 
     \use_prim.iBdelx[0].iBdely[0].need_delay_line.Bdelayi_1 
       (.I0(\<const0> ),
        .O(\gDSP.gDSP_only.iDSP/use_prim.iBdelx[0].iBdely[0].need_delay_line.Bdelay/dout_i ));
LUT1 #(
    .INIT(2'h2)) 
     \use_prim.iBdelx[0].iBdely[1].need_delay_line.Bdelayi_2 
       (.I0(\<const0> ),
        .O(\gDSP.gDSP_only.iDSP/use_prim.iBdelx[0].iBdely[1].need_delay_line.Bdelay/dout_i ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
