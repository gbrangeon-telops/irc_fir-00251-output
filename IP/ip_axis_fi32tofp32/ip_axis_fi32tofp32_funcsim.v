// Copyright 1986-1999, 2001-2013 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2013.4 (win64) Build 353583 Mon Dec  9 17:49:19 MST 2013
// Date        : Tue Nov 17 10:39:25 2015
// Host        : TELOPSX running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim
//               d:/Telops/fir-00251-Output/IP/ip_axis_fi32tofp32/ip_axis_fi32tofp32_funcsim.v
// Design      : ip_axis_fi32tofp32
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k70tfbg676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "floating_point_v7_0,Vivado 2013.4" *) (* CHECK_LICENSE_TYPE = "ip_axis_fi32tofp32,floating_point_v7_0,{}" *) 
(* core_generation_info = "ip_axis_fi32tofp32,floating_point_v7_0,{x_ipProduct=Vivado 2013.4,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=floating_point,x_ipVersion=7.0,x_ipCoreRevision=3,x_ipLanguage=VHDL,C_XDEVICEFAMILY=kintex7,C_HAS_ADD=0,C_HAS_SUBTRACT=0,C_HAS_MULTIPLY=0,C_HAS_DIVIDE=0,C_HAS_SQRT=0,C_HAS_COMPARE=0,C_HAS_FIX_TO_FLT=1,C_HAS_FLT_TO_FIX=0,C_HAS_FLT_TO_FLT=0,C_HAS_RECIP=0,C_HAS_RECIP_SQRT=0,C_HAS_ABSOLUTE=0,C_HAS_LOGARITHM=0,C_HAS_EXPONENTIAL=0,C_HAS_FMA=0,C_HAS_FMS=0,C_HAS_ACCUMULATOR_A=0,C_HAS_ACCUMULATOR_S=0,C_A_WIDTH=32,C_A_FRACTION_WIDTH=0,C_B_WIDTH=32,C_B_FRACTION_WIDTH=0,C_C_WIDTH=32,C_C_FRACTION_WIDTH=0,C_RESULT_WIDTH=32,C_RESULT_FRACTION_WIDTH=24,C_COMPARE_OPERATION=8,C_LATENCY=9,C_OPTIMIZATION=1,C_MULT_USAGE=0,C_BRAM_USAGE=0,C_RATE=1,C_ACCUM_INPUT_MSB=32,C_ACCUM_MSB=32,C_ACCUM_LSB=-31,C_HAS_UNDERFLOW=0,C_HAS_OVERFLOW=0,C_HAS_INVALID_OP=0,C_HAS_DIVIDE_BY_ZERO=0,C_HAS_ACCUM_OVERFLOW=0,C_HAS_ACCUM_INPUT_OVERFLOW=0,C_HAS_ACLKEN=0,C_HAS_ARESETN=1,C_THROTTLE_SCHEME=2,C_HAS_A_TUSER=1,C_HAS_A_TLAST=1,C_HAS_B=0,C_HAS_B_TUSER=0,C_HAS_B_TLAST=0,C_HAS_C=0,C_HAS_C_TUSER=0,C_HAS_C_TLAST=0,C_HAS_OPERATION=0,C_HAS_OPERATION_TUSER=0,C_HAS_OPERATION_TLAST=0,C_HAS_RESULT_TUSER=1,C_HAS_RESULT_TLAST=1,C_TLAST_RESOLUTION=1,C_A_TDATA_WIDTH=32,C_A_TUSER_WIDTH=8,C_B_TDATA_WIDTH=32,C_B_TUSER_WIDTH=1,C_C_TDATA_WIDTH=32,C_C_TUSER_WIDTH=1,C_OPERATION_TDATA_WIDTH=8,C_OPERATION_TUSER_WIDTH=1,C_RESULT_TDATA_WIDTH=32,C_RESULT_TUSER_WIDTH=8}" *) 
(* NotValidForBitStream *)
module ip_axis_fi32tofp32
   (aclk,
    aresetn,
    s_axis_a_tvalid,
    s_axis_a_tready,
    s_axis_a_tdata,
    s_axis_a_tuser,
    s_axis_a_tlast,
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
  output m_axis_result_tvalid;
  input m_axis_result_tready;
  output [31:0]m_axis_result_tdata;
  output [7:0]m_axis_result_tuser;
  output m_axis_result_tlast;

  wire \<const0> ;
  wire \<const1> ;
  wire aclk;
  wire aresetn;
  wire [31:0]m_axis_result_tdata;
  wire m_axis_result_tlast;
  wire m_axis_result_tready;
  wire [7:0]m_axis_result_tuser;
  wire m_axis_result_tvalid;
  wire [31:0]s_axis_a_tdata;
  wire s_axis_a_tlast;
  wire s_axis_a_tready;
  wire [7:0]s_axis_a_tuser;
  wire s_axis_a_tvalid;
  wire NLW_U0_s_axis_b_tready_UNCONNECTED;
  wire NLW_U0_s_axis_c_tready_UNCONNECTED;
  wire NLW_U0_s_axis_operation_tready_UNCONNECTED;

GND GND
       (.G(\<const0> ));
(* C_ACCUM_INPUT_MSB = "32" *) 
   (* C_ACCUM_LSB = "-31" *) 
   (* C_ACCUM_MSB = "32" *) 
   (* C_A_FRACTION_WIDTH = "0" *) 
   (* C_A_TDATA_WIDTH = "32" *) 
   (* C_A_TUSER_WIDTH = "8" *) 
   (* C_A_WIDTH = "32" *) 
   (* C_BRAM_USAGE = "0" *) 
   (* C_B_FRACTION_WIDTH = "0" *) 
   (* C_B_TDATA_WIDTH = "32" *) 
   (* C_B_TUSER_WIDTH = "1" *) 
   (* C_B_WIDTH = "32" *) 
   (* C_COMPARE_OPERATION = "8" *) 
   (* C_C_FRACTION_WIDTH = "0" *) 
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
   (* C_HAS_B = "0" *) 
   (* C_HAS_B_TLAST = "0" *) 
   (* C_HAS_B_TUSER = "0" *) 
   (* C_HAS_C = "0" *) 
   (* C_HAS_COMPARE = "0" *) 
   (* C_HAS_C_TLAST = "0" *) 
   (* C_HAS_C_TUSER = "0" *) 
   (* C_HAS_DIVIDE = "0" *) 
   (* C_HAS_DIVIDE_BY_ZERO = "0" *) 
   (* C_HAS_EXPONENTIAL = "0" *) 
   (* C_HAS_FIX_TO_FLT = "1" *) 
   (* C_HAS_FLT_TO_FIX = "0" *) 
   (* C_HAS_FLT_TO_FLT = "0" *) 
   (* C_HAS_FMA = "0" *) 
   (* C_HAS_FMS = "0" *) 
   (* C_HAS_INVALID_OP = "0" *) 
   (* C_HAS_LOGARITHM = "0" *) 
   (* C_HAS_MULTIPLY = "0" *) 
   (* C_HAS_OPERATION = "0" *) 
   (* C_HAS_OPERATION_TLAST = "0" *) 
   (* C_HAS_OPERATION_TUSER = "0" *) 
   (* C_HAS_OVERFLOW = "0" *) 
   (* C_HAS_RECIP = "0" *) 
   (* C_HAS_RECIP_SQRT = "0" *) 
   (* C_HAS_RESULT_TLAST = "1" *) 
   (* C_HAS_RESULT_TUSER = "1" *) 
   (* C_HAS_SQRT = "0" *) 
   (* C_HAS_SUBTRACT = "0" *) 
   (* C_HAS_UNDERFLOW = "0" *) 
   (* C_LATENCY = "9" *) 
   (* C_MULT_USAGE = "0" *) 
   (* C_OPERATION_TDATA_WIDTH = "8" *) 
   (* C_OPERATION_TUSER_WIDTH = "1" *) 
   (* C_OPTIMIZATION = "1" *) 
   (* C_RATE = "1" *) 
   (* C_RESULT_FRACTION_WIDTH = "24" *) 
   (* C_RESULT_TDATA_WIDTH = "32" *) 
   (* C_RESULT_TUSER_WIDTH = "8" *) 
   (* C_RESULT_WIDTH = "32" *) 
   (* C_THROTTLE_SCHEME = "2" *) 
   (* C_TLAST_RESOLUTION = "1" *) 
   (* C_XDEVICEFAMILY = "kintex7" *) 
   (* DONT_TOUCH *) 
   (* downgradeipidentifiedwarnings = "yes" *) 
   ip_axis_fi32tofp32floating_point_v7_0__parameterized0 U0
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
        .s_axis_b_tdata({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .s_axis_b_tlast(\<const0> ),
        .s_axis_b_tready(NLW_U0_s_axis_b_tready_UNCONNECTED),
        .s_axis_b_tuser(\<const0> ),
        .s_axis_b_tvalid(\<const0> ),
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
(* C_HAS_SUBTRACT = "0" *) (* C_HAS_MULTIPLY = "0" *) (* C_HAS_DIVIDE = "0" *) 
(* C_HAS_SQRT = "0" *) (* C_HAS_COMPARE = "0" *) (* C_HAS_FIX_TO_FLT = "1" *) 
(* C_HAS_FLT_TO_FIX = "0" *) (* C_HAS_FLT_TO_FLT = "0" *) (* C_HAS_RECIP = "0" *) 
(* C_HAS_RECIP_SQRT = "0" *) (* C_HAS_ABSOLUTE = "0" *) (* C_HAS_LOGARITHM = "0" *) 
(* C_HAS_EXPONENTIAL = "0" *) (* C_HAS_FMA = "0" *) (* C_HAS_FMS = "0" *) 
(* C_HAS_ACCUMULATOR_A = "0" *) (* C_HAS_ACCUMULATOR_S = "0" *) (* C_A_WIDTH = "32" *) 
(* C_A_FRACTION_WIDTH = "0" *) (* C_B_WIDTH = "32" *) (* C_B_FRACTION_WIDTH = "0" *) 
(* C_C_WIDTH = "32" *) (* C_C_FRACTION_WIDTH = "0" *) (* C_RESULT_WIDTH = "32" *) 
(* C_RESULT_FRACTION_WIDTH = "24" *) (* C_COMPARE_OPERATION = "8" *) (* C_LATENCY = "9" *) 
(* C_OPTIMIZATION = "1" *) (* C_MULT_USAGE = "0" *) (* C_BRAM_USAGE = "0" *) 
(* C_RATE = "1" *) (* C_ACCUM_INPUT_MSB = "32" *) (* C_ACCUM_MSB = "32" *) 
(* C_ACCUM_LSB = "-31" *) (* C_HAS_UNDERFLOW = "0" *) (* C_HAS_OVERFLOW = "0" *) 
(* C_HAS_INVALID_OP = "0" *) (* C_HAS_DIVIDE_BY_ZERO = "0" *) (* C_HAS_ACCUM_OVERFLOW = "0" *) 
(* C_HAS_ACCUM_INPUT_OVERFLOW = "0" *) (* C_HAS_ACLKEN = "0" *) (* C_HAS_ARESETN = "1" *) 
(* C_THROTTLE_SCHEME = "2" *) (* C_HAS_A_TUSER = "1" *) (* C_HAS_A_TLAST = "1" *) 
(* C_HAS_B = "0" *) (* C_HAS_B_TUSER = "0" *) (* C_HAS_B_TLAST = "0" *) 
(* C_HAS_C = "0" *) (* C_HAS_C_TUSER = "0" *) (* C_HAS_C_TLAST = "0" *) 
(* C_HAS_OPERATION = "0" *) (* C_HAS_OPERATION_TUSER = "0" *) (* C_HAS_OPERATION_TLAST = "0" *) 
(* C_HAS_RESULT_TUSER = "1" *) (* C_HAS_RESULT_TLAST = "1" *) (* C_TLAST_RESOLUTION = "1" *) 
(* C_A_TDATA_WIDTH = "32" *) (* C_A_TUSER_WIDTH = "8" *) (* C_B_TDATA_WIDTH = "32" *) 
(* C_B_TUSER_WIDTH = "1" *) (* C_C_TDATA_WIDTH = "32" *) (* C_C_TUSER_WIDTH = "1" *) 
(* C_OPERATION_TDATA_WIDTH = "8" *) (* C_OPERATION_TUSER_WIDTH = "1" *) (* C_RESULT_TDATA_WIDTH = "32" *) 
(* C_RESULT_TUSER_WIDTH = "8" *) (* downgradeipidentifiedwarnings = "yes" *) 
module ip_axis_fi32tofp32floating_point_v7_0__parameterized0
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
  input [0:0]s_axis_b_tuser;
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
  output [7:0]m_axis_result_tuser;
  output m_axis_result_tlast;

  wire aclk;
  wire aclken;
  wire aresetn;
  wire [31:0]m_axis_result_tdata;
  wire m_axis_result_tlast;
  wire m_axis_result_tready;
  wire [7:0]m_axis_result_tuser;
  wire m_axis_result_tvalid;
  wire [31:0]s_axis_a_tdata;
  wire s_axis_a_tlast;
  wire s_axis_a_tready;
  wire [7:0]s_axis_a_tuser;
  wire s_axis_a_tvalid;
  wire [31:0]s_axis_b_tdata;
  wire s_axis_b_tlast;
  wire s_axis_b_tready;
  wire [0:0]s_axis_b_tuser;
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
   (* C_A_FRACTION_WIDTH = "0" *) 
   (* C_A_TDATA_WIDTH = "32" *) 
   (* C_A_TUSER_WIDTH = "8" *) 
   (* C_A_WIDTH = "32" *) 
   (* C_BRAM_USAGE = "0" *) 
   (* C_B_FRACTION_WIDTH = "0" *) 
   (* C_B_TDATA_WIDTH = "32" *) 
   (* C_B_TUSER_WIDTH = "1" *) 
   (* C_B_WIDTH = "32" *) 
   (* C_COMPARE_OPERATION = "8" *) 
   (* C_C_FRACTION_WIDTH = "0" *) 
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
   (* C_HAS_B = "0" *) 
   (* C_HAS_B_TLAST = "0" *) 
   (* C_HAS_B_TUSER = "0" *) 
   (* C_HAS_C = "0" *) 
   (* C_HAS_COMPARE = "0" *) 
   (* C_HAS_C_TLAST = "0" *) 
   (* C_HAS_C_TUSER = "0" *) 
   (* C_HAS_DIVIDE = "0" *) 
   (* C_HAS_DIVIDE_BY_ZERO = "0" *) 
   (* C_HAS_EXPONENTIAL = "0" *) 
   (* C_HAS_FIX_TO_FLT = "1" *) 
   (* C_HAS_FLT_TO_FIX = "0" *) 
   (* C_HAS_FLT_TO_FLT = "0" *) 
   (* C_HAS_FMA = "0" *) 
   (* C_HAS_FMS = "0" *) 
   (* C_HAS_INVALID_OP = "0" *) 
   (* C_HAS_LOGARITHM = "0" *) 
   (* C_HAS_MULTIPLY = "0" *) 
   (* C_HAS_OPERATION = "0" *) 
   (* C_HAS_OPERATION_TLAST = "0" *) 
   (* C_HAS_OPERATION_TUSER = "0" *) 
   (* C_HAS_OVERFLOW = "0" *) 
   (* C_HAS_RECIP = "0" *) 
   (* C_HAS_RECIP_SQRT = "0" *) 
   (* C_HAS_RESULT_TLAST = "1" *) 
   (* C_HAS_RESULT_TUSER = "1" *) 
   (* C_HAS_SQRT = "0" *) 
   (* C_HAS_SUBTRACT = "0" *) 
   (* C_HAS_UNDERFLOW = "0" *) 
   (* C_LATENCY = "9" *) 
   (* C_MULT_USAGE = "0" *) 
   (* C_OPERATION_TDATA_WIDTH = "8" *) 
   (* C_OPERATION_TUSER_WIDTH = "1" *) 
   (* C_OPTIMIZATION = "1" *) 
   (* C_RATE = "1" *) 
   (* C_RESULT_FRACTION_WIDTH = "24" *) 
   (* C_RESULT_TDATA_WIDTH = "32" *) 
   (* C_RESULT_TUSER_WIDTH = "8" *) 
   (* C_RESULT_WIDTH = "32" *) 
   (* C_THROTTLE_SCHEME = "2" *) 
   (* C_TLAST_RESOLUTION = "1" *) 
   (* C_XDEVICEFAMILY = "kintex7" *) 
   (* downgradeipidentifiedwarnings = "yes" *) 
   ip_axis_fi32tofp32floating_point_v7_0_viv__parameterized0 i_synth
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
(* C_HAS_SUBTRACT = "0" *) (* C_HAS_MULTIPLY = "0" *) (* C_HAS_DIVIDE = "0" *) 
(* C_HAS_SQRT = "0" *) (* C_HAS_COMPARE = "0" *) (* C_HAS_FIX_TO_FLT = "1" *) 
(* C_HAS_FLT_TO_FIX = "0" *) (* C_HAS_FLT_TO_FLT = "0" *) (* C_HAS_RECIP = "0" *) 
(* C_HAS_RECIP_SQRT = "0" *) (* C_HAS_ABSOLUTE = "0" *) (* C_HAS_LOGARITHM = "0" *) 
(* C_HAS_EXPONENTIAL = "0" *) (* C_HAS_FMA = "0" *) (* C_HAS_FMS = "0" *) 
(* C_HAS_ACCUMULATOR_A = "0" *) (* C_HAS_ACCUMULATOR_S = "0" *) (* C_A_WIDTH = "32" *) 
(* C_A_FRACTION_WIDTH = "0" *) (* C_B_WIDTH = "32" *) (* C_B_FRACTION_WIDTH = "0" *) 
(* C_C_WIDTH = "32" *) (* C_C_FRACTION_WIDTH = "0" *) (* C_RESULT_WIDTH = "32" *) 
(* C_RESULT_FRACTION_WIDTH = "24" *) (* C_COMPARE_OPERATION = "8" *) (* C_LATENCY = "9" *) 
(* C_OPTIMIZATION = "1" *) (* C_MULT_USAGE = "0" *) (* C_BRAM_USAGE = "0" *) 
(* C_RATE = "1" *) (* C_ACCUM_INPUT_MSB = "32" *) (* C_ACCUM_MSB = "32" *) 
(* C_ACCUM_LSB = "-31" *) (* C_HAS_UNDERFLOW = "0" *) (* C_HAS_OVERFLOW = "0" *) 
(* C_HAS_INVALID_OP = "0" *) (* C_HAS_DIVIDE_BY_ZERO = "0" *) (* C_HAS_ACCUM_OVERFLOW = "0" *) 
(* C_HAS_ACCUM_INPUT_OVERFLOW = "0" *) (* C_HAS_ACLKEN = "0" *) (* C_HAS_ARESETN = "1" *) 
(* C_THROTTLE_SCHEME = "2" *) (* C_HAS_A_TUSER = "1" *) (* C_HAS_A_TLAST = "1" *) 
(* C_HAS_B = "0" *) (* C_HAS_B_TUSER = "0" *) (* C_HAS_B_TLAST = "0" *) 
(* C_HAS_C = "0" *) (* C_HAS_C_TUSER = "0" *) (* C_HAS_C_TLAST = "0" *) 
(* C_HAS_OPERATION = "0" *) (* C_HAS_OPERATION_TUSER = "0" *) (* C_HAS_OPERATION_TLAST = "0" *) 
(* C_HAS_RESULT_TUSER = "1" *) (* C_HAS_RESULT_TLAST = "1" *) (* C_TLAST_RESOLUTION = "1" *) 
(* C_A_TDATA_WIDTH = "32" *) (* C_A_TUSER_WIDTH = "8" *) (* C_B_TDATA_WIDTH = "32" *) 
(* C_B_TUSER_WIDTH = "1" *) (* C_C_TDATA_WIDTH = "32" *) (* C_C_TUSER_WIDTH = "1" *) 
(* C_OPERATION_TDATA_WIDTH = "8" *) (* C_OPERATION_TUSER_WIDTH = "1" *) (* C_RESULT_TDATA_WIDTH = "32" *) 
(* C_RESULT_TUSER_WIDTH = "8" *) (* downgradeipidentifiedwarnings = "yes" *) 
module ip_axis_fi32tofp32floating_point_v7_0_viv__parameterized0
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
  input [0:0]s_axis_b_tuser;
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
  output [7:0]m_axis_result_tuser;
  output m_axis_result_tlast;

  wire \<const0> ;
  wire \<const1> ;
  wire [7:0]EXP;
  wire [7:0]\FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q ;
  wire \FIX_TO_FLT_OP.SPD.OP/EXP/IP_SIGN_DELAY/i_pipe/first_q ;
  wire \FIX_TO_FLT_OP.SPD.OP/EXP/ZERO_DELAY/i_pipe/first_q ;
  wire \FIX_TO_FLT_OP.SPD.OP/LZE/A_Z_DET/i_pipe/first_q ;
  wire [1:0]\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].DIST_DEL/i_pipe/first_q ;
(* RTL_KEEP = "true" *)   wire [3:0]\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/OP_DEL/i_pipe/first_q ;
  wire [3:0]\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/op_int ;
(* RTL_KEEP = "true" *)   wire [3:0]\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q ;
  wire [3:0]\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/op_int ;
  wire [1:0]\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].DIST_DEL/i_pipe/first_q ;
(* RTL_KEEP = "true" *)   wire \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].MUX_0/OP_DEL/i_pipe/first_q ;
  wire \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].MUX_0/op_int ;
(* RTL_KEEP = "true" *)   wire \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].MUX_Z/OP_DEL/i_pipe/first_q ;
  wire \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].MUX_Z/op_int ;
  wire \FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CI ;
  wire \FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/D ;
  wire \FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_2.CC/CI ;
  wire \FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_2.CC/D ;
  wire \FIX_TO_FLT_OP.SPD.OP/LZE/all_bits_zero_del ;
  wire [15:0]\FIX_TO_FLT_OP.SPD.OP/LZE/chunk_is_zero ;
  wire [7:0]\FIX_TO_FLT_OP.SPD.OP/LZE/p_0_out ;
  wire \FIX_TO_FLT_OP.SPD.OP/LZE/p_1_in ;
  wire \FIX_TO_FLT_OP.SPD.OP/M_ABS/O ;
  wire [31:0]\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q ;
  wire \FIX_TO_FLT_OP.SPD.OP/NEED_Z_DET.Z_DET/CI ;
  wire \FIX_TO_FLT_OP.SPD.OP/NEED_Z_DET.Z_DET/CI0_out ;
  wire \FIX_TO_FLT_OP.SPD.OP/NEED_Z_DET.Z_DET/CI1_out ;
  wire \FIX_TO_FLT_OP.SPD.OP/NEED_Z_DET.Z_DET/ENCODE[0].DIST_OVER_DEL/i_pipe/first_q ;
(* RTL_KEEP = "true" *)   wire [3:0]\FIX_TO_FLT_OP.SPD.OP/NEED_Z_DET.Z_DET/ENCODE[0].Z_DET_DEL/i_pipe/first_q ;
  wire \FIX_TO_FLT_OP.SPD.OP/NEED_Z_DET.Z_DET/ENCODE[1].DIST_OVER_DEL/i_pipe/first_q ;
(* RTL_KEEP = "true" *)   wire \FIX_TO_FLT_OP.SPD.OP/NEED_Z_DET.Z_DET/ENCODE[1].Z_DET_DEL/i_pipe/first_q ;
  wire \FIX_TO_FLT_OP.SPD.OP/NEED_Z_DET.Z_DET/O ;
  wire [3:0]\FIX_TO_FLT_OP.SPD.OP/NEED_Z_DET.Z_DET/Z_C_DEL/i_pipe/first_q ;
  wire \FIX_TO_FLT_OP.SPD.OP/NEED_Z_DET.Z_DET/flt_all_zero ;
  wire \FIX_TO_FLT_OP.SPD.OP/NEED_Z_DET.Z_DET/p_16_out ;
  wire [31:0]\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q ;
  wire [31:0]\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q ;
  wire \FIX_TO_FLT_OP.SPD.OP/OP/FLAGS_REG.IV_OP_REG/i_pipe/first_q ;
  wire \FIX_TO_FLT_OP.SPD.OP/OP/p_2_out ;
  wire [7:0]\FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_IN_DEL/i_pipe/first_q ;
  wire [7:0]\FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_OFF_OP_DEL/i_pipe/first_q ;
  wire \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/O ;
  wire [11:0]\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/first_q ;
  wire [10:0]\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/first_q ;
  wire \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CARRYS_Q_DEL.NOT_FAST_OP.CARRY_DEL/i_pipe/first_q ;
  wire \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CI ;
  wire \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/O ;
  wire [11:0]\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q ;
  wire \FIX_TO_FLT_OP.SPD.OP/ROUND/carry_rnd2 ;
  wire [11:0]\FIX_TO_FLT_OP.SPD.OP/ROUND/mant_shifted_rnd1 ;
  wire \FIX_TO_FLT_OP.SPD.OP/ROUND/round_rnd1 ;
  wire [10:0]\FIX_TO_FLT_OP.SPD.OP/ROUND/sum_rnd2 ;
  wire [31:0]\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q ;
  wire [4:4]\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew ;
  wire [3:1]\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew__0 ;
  wire GND_2;
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
  wire lopt_15;
  wire lopt_16;
  wire lopt_17;
  wire lopt_18;
  wire lopt_19;
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
  wire [7:0]m_axis_result_tuser;
  wire m_axis_result_tvalid;
  wire [7:0]minusOp;
  wire \n_0_CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1 ;
  wire \n_0_CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1 ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1 ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[10].C_MUX.CARRY_MUX_i_1 ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[11].C_MUX.CARRY_MUX_i_1 ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[12].C_MUX.CARRY_MUX_i_1 ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[13].C_MUX.CARRY_MUX_i_1 ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[14].C_MUX.CARRY_MUX_i_1 ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[15].C_MUX.CARRY_MUX_i_1 ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[16].C_MUX.CARRY_MUX_i_1 ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[17].C_MUX.CARRY_MUX_i_1 ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[18].C_MUX.CARRY_MUX_i_1 ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[19].C_MUX.CARRY_MUX_i_1 ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1 ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[20].C_MUX.CARRY_MUX_i_1 ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[21].C_MUX.CARRY_MUX_i_1 ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[22].C_MUX.CARRY_MUX_i_1 ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[23].C_MUX.CARRY_MUX_i_1 ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[24].C_MUX.CARRY_MUX_i_1 ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[25].C_MUX.CARRY_MUX_i_1 ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[26].C_MUX.CARRY_MUX_i_1 ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[27].C_MUX.CARRY_MUX_i_1 ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[28].C_MUX.CARRY_MUX_i_1 ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[29].C_MUX.CARRY_MUX_i_1 ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1 ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[30].C_MUX.CARRY_MUX_i_1 ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[3].C_MUX.CARRY_MUX_i_1 ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[4].C_MUX.CARRY_MUX_i_1 ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[5].C_MUX.CARRY_MUX_i_1 ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[6].C_MUX.CARRY_MUX_i_1 ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[7].C_MUX.CARRY_MUX_i_1 ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[8].C_MUX.CARRY_MUX_i_1 ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[9].C_MUX.CARRY_MUX_i_1 ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/EXP/IP_SIGN_DELAY/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][0]_srl4 ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].DIST_DEL/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][0] ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].DIST_DEL/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][1] ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[0].CARRYS_DEL.NEED_DEL.CARRYS_FD ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[1].CARRYS_DEL.NEED_DEL.CARRYS_FD ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[1].C_MUX.CARRY_MUX ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[2].CARRYS_DEL.NEED_DEL.CARRYS_FD ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[2].C_MUX.CARRY_MUX ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[3].C_MUX.CARRY_MUX ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[4].CARRYS_DEL.NEED_DEL.CARRYS_FD ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[4].C_MUX.CARRY_MUX ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[5].CARRYS_DEL.NEED_DEL.CARRYS_FD ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[5].C_MUX.CARRY_MUX ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[6].CARRYS_DEL.NEED_DEL.CARRYS_FD ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[6].C_MUX.CARRY_MUX ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_2.CC/CHAIN_GEN[1].C_MUX.CARRY_MUX ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_2.CC/CHAIN_GEN[2].C_MUX.CARRY_MUX ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_2.CC/CHAIN_GEN[3].C_MUX.CARRY_MUX ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_2.CC/CHAIN_GEN[4].C_MUX.CARRY_MUX ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_2.CC/CHAIN_GEN[5].C_MUX.CARRY_MUX ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_2.CC/CHAIN_GEN[6].C_MUX.CARRY_MUX ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[0].C_MUX.CARRY_MUX ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[10].C_MUX.CARRY_MUX ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[10].Q_XOR.SUM_XOR ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[11].C_MUX.CARRY_MUX ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[11].Q_XOR.SUM_XOR ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[12].C_MUX.CARRY_MUX ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[12].Q_XOR.SUM_XOR ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[13].C_MUX.CARRY_MUX ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[13].Q_XOR.SUM_XOR ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[14].C_MUX.CARRY_MUX ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[14].Q_XOR.SUM_XOR ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[15].C_MUX.CARRY_MUX ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[15].Q_XOR.SUM_XOR ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[16].C_MUX.CARRY_MUX ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[16].Q_XOR.SUM_XOR ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[17].C_MUX.CARRY_MUX ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[17].Q_XOR.SUM_XOR ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[18].C_MUX.CARRY_MUX ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[18].Q_XOR.SUM_XOR ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[19].C_MUX.CARRY_MUX ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[19].Q_XOR.SUM_XOR ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[1].C_MUX.CARRY_MUX ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[1].Q_XOR.SUM_XOR ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[20].C_MUX.CARRY_MUX ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[20].Q_XOR.SUM_XOR ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[21].C_MUX.CARRY_MUX ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[21].Q_XOR.SUM_XOR ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[22].C_MUX.CARRY_MUX ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[22].Q_XOR.SUM_XOR ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[23].C_MUX.CARRY_MUX ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[23].Q_XOR.SUM_XOR ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[24].C_MUX.CARRY_MUX ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[24].Q_XOR.SUM_XOR ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[25].C_MUX.CARRY_MUX ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[25].Q_XOR.SUM_XOR ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[26].C_MUX.CARRY_MUX ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[26].Q_XOR.SUM_XOR ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[27].C_MUX.CARRY_MUX ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[27].Q_XOR.SUM_XOR ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[28].C_MUX.CARRY_MUX ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[28].Q_XOR.SUM_XOR ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[29].C_MUX.CARRY_MUX ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[29].Q_XOR.SUM_XOR ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[2].C_MUX.CARRY_MUX ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[2].Q_XOR.SUM_XOR ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[30].Q_XOR.SUM_XOR ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[31].Q_XOR.SUM_XOR ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[3].C_MUX.CARRY_MUX ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[3].Q_XOR.SUM_XOR ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[4].C_MUX.CARRY_MUX ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[4].Q_XOR.SUM_XOR ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[5].C_MUX.CARRY_MUX ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[5].Q_XOR.SUM_XOR ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[6].C_MUX.CARRY_MUX ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[6].Q_XOR.SUM_XOR ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[7].C_MUX.CARRY_MUX ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[7].Q_XOR.SUM_XOR ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[8].C_MUX.CARRY_MUX ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[8].Q_XOR.SUM_XOR ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[9].C_MUX.CARRY_MUX ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[9].Q_XOR.SUM_XOR ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[0].C_MUX.CARRY_MUX ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[10].C_MUX.CARRY_MUX ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[10].Q_XOR.SUM_XOR ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[11].Q_XOR.SUM_XOR ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[1].C_MUX.CARRY_MUX ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[1].Q_XOR.SUM_XOR ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[2].C_MUX.CARRY_MUX ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[2].Q_XOR.SUM_XOR ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[3].C_MUX.CARRY_MUX ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[3].Q_XOR.SUM_XOR ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[4].C_MUX.CARRY_MUX ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[4].Q_XOR.SUM_XOR ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[5].C_MUX.CARRY_MUX ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[5].Q_XOR.SUM_XOR ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[6].C_MUX.CARRY_MUX ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[6].Q_XOR.SUM_XOR ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[7].C_MUX.CARRY_MUX ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[7].Q_XOR.SUM_XOR ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[8].C_MUX.CARRY_MUX ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[8].Q_XOR.SUM_XOR ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[9].C_MUX.CARRY_MUX ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[9].Q_XOR.SUM_XOR ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[10].C_MUX.CARRY_MUX ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[10].Q_XOR.SUM_XOR ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[11].Q_XOR.SUM_XOR ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[1].C_MUX.CARRY_MUX ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[1].Q_XOR.SUM_XOR ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[2].C_MUX.CARRY_MUX ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[2].Q_XOR.SUM_XOR ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[3].C_MUX.CARRY_MUX ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[3].Q_XOR.SUM_XOR ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[4].C_MUX.CARRY_MUX ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[4].Q_XOR.SUM_XOR ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[5].C_MUX.CARRY_MUX ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[5].Q_XOR.SUM_XOR ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[6].C_MUX.CARRY_MUX ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[6].Q_XOR.SUM_XOR ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[7].C_MUX.CARRY_MUX ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[7].Q_XOR.SUM_XOR ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[8].C_MUX.CARRY_MUX ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[8].Q_XOR.SUM_XOR ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[9].C_MUX.CARRY_MUX ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[9].Q_XOR.SUM_XOR ;
  wire \n_0_HAS_ARESETN.sclr_i_i_1 ;
  wire \n_0_RESULT_REG.NORMAL.exp_op[7]_i_2 ;
  wire \n_0_RESULT_REG.NORMAL.mant_op[22]_i_1 ;
  wire \n_0_ZERO_DET[1].mc_i_1 ;
  wire \n_0_ZERO_DET[2].mc_i_1 ;
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
  wire \n_0_gen_has_z_tready.reg2_b_valid_i_2 ;
  wire \n_0_i_nd_to_rdy/opt_has_pipe.i_pipe[2].pipe_reg[2][0] ;
  wire \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tlast_reg ;
  wire \n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][0]_srl4 ;
  wire \n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][1]_srl4 ;
  wire \n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][2]_srl4 ;
  wire \n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][3]_srl4 ;
  wire \n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][4]_srl4 ;
  wire \n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][5]_srl4 ;
  wire \n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][6]_srl4 ;
  wire \n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][7]_srl4 ;
  wire \n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][8]_srl4 ;
  wire \n_0_opt_has_pipe.first_q[0]_i_1__1 ;
  wire \n_0_opt_has_pipe.first_q[0]_i_1__2 ;
  wire \n_0_opt_has_pipe.first_q[0]_i_1__8 ;
  wire \n_0_opt_has_pipe.first_q[0]_i_2 ;
  wire \n_0_opt_has_pipe.first_q[0]_i_2__0 ;
  wire \n_0_opt_has_pipe.first_q[0]_i_2__1 ;
  wire \n_0_opt_has_pipe.first_q[10]_i_1 ;
  wire \n_0_opt_has_pipe.first_q[10]_i_1__0 ;
  wire \n_0_opt_has_pipe.first_q[11]_i_1 ;
  wire \n_0_opt_has_pipe.first_q[11]_i_1__0 ;
  wire \n_0_opt_has_pipe.first_q[12]_i_1 ;
  wire \n_0_opt_has_pipe.first_q[12]_i_1__0 ;
  wire \n_0_opt_has_pipe.first_q[13]_i_1 ;
  wire \n_0_opt_has_pipe.first_q[13]_i_1__0 ;
  wire \n_0_opt_has_pipe.first_q[14]_i_1 ;
  wire \n_0_opt_has_pipe.first_q[14]_i_1__0 ;
  wire \n_0_opt_has_pipe.first_q[15]_i_1 ;
  wire \n_0_opt_has_pipe.first_q[15]_i_1__0 ;
  wire \n_0_opt_has_pipe.first_q[16]_i_1 ;
  wire \n_0_opt_has_pipe.first_q[16]_i_1__0 ;
  wire \n_0_opt_has_pipe.first_q[17]_i_1 ;
  wire \n_0_opt_has_pipe.first_q[17]_i_1__0 ;
  wire \n_0_opt_has_pipe.first_q[18]_i_1 ;
  wire \n_0_opt_has_pipe.first_q[18]_i_1__0 ;
  wire \n_0_opt_has_pipe.first_q[19]_i_1 ;
  wire \n_0_opt_has_pipe.first_q[19]_i_1__0 ;
  wire \n_0_opt_has_pipe.first_q[1]_i_1__0 ;
  wire \n_0_opt_has_pipe.first_q[1]_i_1__3 ;
  wire \n_0_opt_has_pipe.first_q[1]_i_2 ;
  wire \n_0_opt_has_pipe.first_q[20]_i_1 ;
  wire \n_0_opt_has_pipe.first_q[20]_i_1__0 ;
  wire \n_0_opt_has_pipe.first_q[21]_i_1 ;
  wire \n_0_opt_has_pipe.first_q[21]_i_1__0 ;
  wire \n_0_opt_has_pipe.first_q[22]_i_1 ;
  wire \n_0_opt_has_pipe.first_q[22]_i_1__0 ;
  wire \n_0_opt_has_pipe.first_q[23]_i_1 ;
  wire \n_0_opt_has_pipe.first_q[23]_i_1__0 ;
  wire \n_0_opt_has_pipe.first_q[24]_i_1 ;
  wire \n_0_opt_has_pipe.first_q[25]_i_1 ;
  wire \n_0_opt_has_pipe.first_q[26]_i_1 ;
  wire \n_0_opt_has_pipe.first_q[27]_i_1 ;
  wire \n_0_opt_has_pipe.first_q[28]_i_1 ;
  wire \n_0_opt_has_pipe.first_q[29]_i_1 ;
  wire \n_0_opt_has_pipe.first_q[2]_i_1__0 ;
  wire \n_0_opt_has_pipe.first_q[2]_i_1__1 ;
  wire \n_0_opt_has_pipe.first_q[2]_i_2 ;
  wire \n_0_opt_has_pipe.first_q[30]_i_1 ;
  wire \n_0_opt_has_pipe.first_q[31]_i_1 ;
  wire \n_0_opt_has_pipe.first_q[3]_i_1 ;
  wire \n_0_opt_has_pipe.first_q[3]_i_1__1 ;
  wire \n_0_opt_has_pipe.first_q[3]_i_2 ;
  wire \n_0_opt_has_pipe.first_q[4]_i_1 ;
  wire \n_0_opt_has_pipe.first_q[4]_i_1__0 ;
  wire \n_0_opt_has_pipe.first_q[5]_i_1 ;
  wire \n_0_opt_has_pipe.first_q[5]_i_1__0 ;
  wire \n_0_opt_has_pipe.first_q[6]_i_1 ;
  wire \n_0_opt_has_pipe.first_q[6]_i_1__0 ;
  wire \n_0_opt_has_pipe.first_q[7]_i_1 ;
  wire \n_0_opt_has_pipe.first_q[7]_i_1__0 ;
  wire \n_0_opt_has_pipe.first_q[8]_i_1 ;
  wire \n_0_opt_has_pipe.first_q[8]_i_1__0 ;
  wire \n_0_opt_has_pipe.first_q[9]_i_1 ;
  wire \n_0_opt_has_pipe.first_q[9]_i_1__0 ;
  wire \need_combiner.use_2to1.skid_buffer_combiner/b_tx ;
  wire \need_combiner.use_2to1.skid_buffer_combiner/p_2_out ;
  wire \need_combiner.use_2to1.skid_buffer_combiner/reg1_a_ready_nxt ;
  wire \need_combiner.use_2to1.skid_buffer_combiner/reg1_a_tlast ;
  wire \need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ;
  wire \need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid_nxt ;
  wire \need_combiner.use_2to1.skid_buffer_combiner/reg1_b_ready_nxt ;
  wire \need_combiner.use_2to1.skid_buffer_combiner/reg1_b_valid ;
  wire \need_combiner.use_2to1.skid_buffer_combiner/reg1_b_valid_nxt ;
  wire \need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ;
  wire \need_combiner.use_2to1.skid_buffer_combiner/reg2_a_valid ;
  wire \need_combiner.use_2to1.skid_buffer_combiner/reg2_a_valid_nxt ;
  wire \need_combiner.use_2to1.skid_buffer_combiner/reg2_b_valid ;
  wire \need_combiner.use_2to1.skid_buffer_combiner/reg2_b_valid_nxt ;
  wire [8:0]\need_user_delay.user_pipe/i_pipe/first_q ;
  wire [31:0]p_0_in;
  wire [8:0]p_1_in;
  wire [31:31]p_2_out;
  wire \pipe[3] ;
  wire \pipe[4] ;
  wire \pipe[5] ;
  wire [31:0]reg1_a_tdata;
  wire [7:0]reg1_a_tuser;
  wire [30:0]reg2_a_tdata;
  wire reg2_a_tlast;
  wire [7:0]reg2_a_tuser;
  wire [31:0]s_axis_a_tdata;
  wire s_axis_a_tlast;
  wire s_axis_a_tready;
  wire [7:0]s_axis_a_tuser;
  wire s_axis_a_tvalid;
  wire sclr_i;
  wire valid_transfer_in;
  wire valid_transfer_out;
  wire [3:0]\NLW_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED ;
  wire [3:0]\NLW_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED ;
  wire [3:0]\NLW_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_2.CC/CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED ;
  wire [3:0]\NLW_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_2.CC/CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED ;
  wire [3:2]\NLW_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[28].C_MUX.CARRY_MUX_CARRY4_CO_UNCONNECTED ;
  wire [3:3]\NLW_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[28].C_MUX.CARRY_MUX_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_FIX_TO_FLT_OP.SPD.OP/NEED_Z_DET.Z_DET/ZERO_DET[0].mc_CARRY4_O_UNCONNECTED ;
  wire [3:2]\NLW_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[9].C_MUX.CARRY_MUX_CARRY4_CO_UNCONNECTED ;
  wire [3:2]\NLW_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[9].C_MUX.CARRY_MUX_CARRY4_DI_UNCONNECTED ;
  wire [3:3]\NLW_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[9].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED ;
  wire [3:3]\NLW_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[9].C_MUX.CARRY_MUX_CARRY4_S_UNCONNECTED ;
  wire [1:0]\NLW_FIX_TO_FLT_OP.SPD.OP/ROUND/RND_BIT_GEN/NORM_1_OR_0.STRUCT_REQ.GENERAL.RND1/CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_CO_UNCONNECTED ;
  wire [2:0]\NLW_FIX_TO_FLT_OP.SPD.OP/ROUND/RND_BIT_GEN/NORM_1_OR_0.STRUCT_REQ.GENERAL.RND1/CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED ;
  wire \NLW_HAS_OUTPUT_FIFO.i_output_fifo_afull_UNCONNECTED ;
  wire \NLW_HAS_OUTPUT_FIFO.i_output_fifo_full_UNCONNECTED ;
  wire \NLW_HAS_OUTPUT_FIFO.i_output_fifo_not_afull_UNCONNECTED ;
  wire \NLW_HAS_OUTPUT_FIFO.i_output_fifo_not_full_UNCONNECTED ;
  wire [4:0]\NLW_HAS_OUTPUT_FIFO.i_output_fifo_add_UNCONNECTED ;

  assign s_axis_b_tready = \<const1> ;
  assign s_axis_c_tready = \<const1> ;
  assign s_axis_operation_tready = \<const1> ;
LUT3 #(
    .INIT(8'hFB)) 
     \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [24]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/NEED_Z_DET.Z_DET/ENCODE[1].Z_DET_DEL/i_pipe/first_q ),
        .I2(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [25]),
        .O(\n_0_CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1 ));
LUT3 #(
    .INIT(8'hB8)) 
     \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__0 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [23]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].MUX_0/OP_DEL/i_pipe/first_q ),
        .I2(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [24]),
        .O(\FIX_TO_FLT_OP.SPD.OP/ROUND/mant_shifted_rnd1 [0]));
LUT3 #(
    .INIT(8'hB8)) 
     \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__1 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [11]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].MUX_0/OP_DEL/i_pipe/first_q ),
        .I2(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [12]),
        .O(\FIX_TO_FLT_OP.SPD.OP/ROUND/sum_rnd2 [0]));
LUT3 #(
    .INIT(8'hB8)) 
     \CHAIN_GEN[10].C_MUX.CARRY_MUX_i_1 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [13]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].MUX_0/OP_DEL/i_pipe/first_q ),
        .I2(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [14]),
        .O(\FIX_TO_FLT_OP.SPD.OP/ROUND/mant_shifted_rnd1 [10]));
LUT3 #(
    .INIT(8'hB8)) 
     \CHAIN_GEN[10].C_MUX.CARRY_MUX_i_1__0 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [1]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].MUX_0/OP_DEL/i_pipe/first_q ),
        .I2(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [2]),
        .O(\FIX_TO_FLT_OP.SPD.OP/ROUND/sum_rnd2 [10]));
LUT3 #(
    .INIT(8'hB8)) 
     \CHAIN_GEN[11].C_MUX.CARRY_MUX_i_1 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [12]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].MUX_0/OP_DEL/i_pipe/first_q ),
        .I2(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [13]),
        .O(\FIX_TO_FLT_OP.SPD.OP/ROUND/mant_shifted_rnd1 [11]));
LUT3 #(
    .INIT(8'hB8)) 
     \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [22]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].MUX_0/OP_DEL/i_pipe/first_q ),
        .I2(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [23]),
        .O(\FIX_TO_FLT_OP.SPD.OP/ROUND/mant_shifted_rnd1 [1]));
LUT3 #(
    .INIT(8'hB8)) 
     \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__0 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [10]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].MUX_0/OP_DEL/i_pipe/first_q ),
        .I2(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [11]),
        .O(\FIX_TO_FLT_OP.SPD.OP/ROUND/sum_rnd2 [1]));
LUT5 #(
    .INIT(32'h57775353)) 
     \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [24]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [25]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].MUX_0/OP_DEL/i_pipe/first_q ),
        .I3(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [23]),
        .I4(\FIX_TO_FLT_OP.SPD.OP/NEED_Z_DET.Z_DET/ENCODE[1].Z_DET_DEL/i_pipe/first_q ),
        .O(\n_0_CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1 ));
LUT3 #(
    .INIT(8'hB8)) 
     \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__0 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [21]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].MUX_0/OP_DEL/i_pipe/first_q ),
        .I2(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [22]),
        .O(\FIX_TO_FLT_OP.SPD.OP/ROUND/mant_shifted_rnd1 [2]));
LUT3 #(
    .INIT(8'hB8)) 
     \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__1 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [9]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].MUX_0/OP_DEL/i_pipe/first_q ),
        .I2(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [10]),
        .O(\FIX_TO_FLT_OP.SPD.OP/ROUND/sum_rnd2 [2]));
LUT3 #(
    .INIT(8'hB8)) 
     \CHAIN_GEN[3].C_MUX.CARRY_MUX_i_1 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [20]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].MUX_0/OP_DEL/i_pipe/first_q ),
        .I2(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [21]),
        .O(\FIX_TO_FLT_OP.SPD.OP/ROUND/mant_shifted_rnd1 [3]));
LUT3 #(
    .INIT(8'hB8)) 
     \CHAIN_GEN[3].C_MUX.CARRY_MUX_i_1__0 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [8]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].MUX_0/OP_DEL/i_pipe/first_q ),
        .I2(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [9]),
        .O(\FIX_TO_FLT_OP.SPD.OP/ROUND/sum_rnd2 [3]));
LUT3 #(
    .INIT(8'hB8)) 
     \CHAIN_GEN[4].C_MUX.CARRY_MUX_i_1 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [19]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].MUX_0/OP_DEL/i_pipe/first_q ),
        .I2(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [20]),
        .O(\FIX_TO_FLT_OP.SPD.OP/ROUND/mant_shifted_rnd1 [4]));
LUT3 #(
    .INIT(8'hB8)) 
     \CHAIN_GEN[4].C_MUX.CARRY_MUX_i_1__0 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [7]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].MUX_0/OP_DEL/i_pipe/first_q ),
        .I2(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [8]),
        .O(\FIX_TO_FLT_OP.SPD.OP/ROUND/sum_rnd2 [4]));
LUT3 #(
    .INIT(8'hB8)) 
     \CHAIN_GEN[5].C_MUX.CARRY_MUX_i_1 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [18]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].MUX_0/OP_DEL/i_pipe/first_q ),
        .I2(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [19]),
        .O(\FIX_TO_FLT_OP.SPD.OP/ROUND/mant_shifted_rnd1 [5]));
LUT3 #(
    .INIT(8'hB8)) 
     \CHAIN_GEN[5].C_MUX.CARRY_MUX_i_1__0 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [6]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].MUX_0/OP_DEL/i_pipe/first_q ),
        .I2(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [7]),
        .O(\FIX_TO_FLT_OP.SPD.OP/ROUND/sum_rnd2 [5]));
LUT3 #(
    .INIT(8'hB8)) 
     \CHAIN_GEN[6].C_MUX.CARRY_MUX_i_1 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [17]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].MUX_0/OP_DEL/i_pipe/first_q ),
        .I2(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [18]),
        .O(\FIX_TO_FLT_OP.SPD.OP/ROUND/mant_shifted_rnd1 [6]));
LUT3 #(
    .INIT(8'hB8)) 
     \CHAIN_GEN[6].C_MUX.CARRY_MUX_i_1__0 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [5]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].MUX_0/OP_DEL/i_pipe/first_q ),
        .I2(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [6]),
        .O(\FIX_TO_FLT_OP.SPD.OP/ROUND/sum_rnd2 [6]));
LUT3 #(
    .INIT(8'hB8)) 
     \CHAIN_GEN[7].C_MUX.CARRY_MUX_i_1 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [16]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].MUX_0/OP_DEL/i_pipe/first_q ),
        .I2(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [17]),
        .O(\FIX_TO_FLT_OP.SPD.OP/ROUND/mant_shifted_rnd1 [7]));
LUT3 #(
    .INIT(8'hB8)) 
     \CHAIN_GEN[7].C_MUX.CARRY_MUX_i_1__0 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [4]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].MUX_0/OP_DEL/i_pipe/first_q ),
        .I2(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [5]),
        .O(\FIX_TO_FLT_OP.SPD.OP/ROUND/sum_rnd2 [7]));
LUT3 #(
    .INIT(8'hB8)) 
     \CHAIN_GEN[8].C_MUX.CARRY_MUX_i_1 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [15]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].MUX_0/OP_DEL/i_pipe/first_q ),
        .I2(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [16]),
        .O(\FIX_TO_FLT_OP.SPD.OP/ROUND/mant_shifted_rnd1 [8]));
LUT3 #(
    .INIT(8'hB8)) 
     \CHAIN_GEN[8].C_MUX.CARRY_MUX_i_1__0 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [3]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].MUX_0/OP_DEL/i_pipe/first_q ),
        .I2(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [4]),
        .O(\FIX_TO_FLT_OP.SPD.OP/ROUND/sum_rnd2 [8]));
LUT3 #(
    .INIT(8'hB8)) 
     \CHAIN_GEN[9].C_MUX.CARRY_MUX_i_1 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [14]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].MUX_0/OP_DEL/i_pipe/first_q ),
        .I2(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [15]),
        .O(\FIX_TO_FLT_OP.SPD.OP/ROUND/mant_shifted_rnd1 [9]));
LUT3 #(
    .INIT(8'hB8)) 
     \CHAIN_GEN[9].C_MUX.CARRY_MUX_i_1__0 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [2]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].MUX_0/OP_DEL/i_pipe/first_q ),
        .I2(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [3]),
        .O(\FIX_TO_FLT_OP.SPD.OP/ROUND/sum_rnd2 [9]));
LUT2 #(
    .INIT(4'h6)) 
     \FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1 
       (.I0(p_2_out),
        .I1(reg2_a_tdata[0]),
        .O(\n_0_FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1 ));
LUT2 #(
    .INIT(4'h6)) 
     \FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[10].C_MUX.CARRY_MUX_i_1 
       (.I0(p_2_out),
        .I1(reg2_a_tdata[10]),
        .O(\n_0_FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[10].C_MUX.CARRY_MUX_i_1 ));
LUT2 #(
    .INIT(4'h6)) 
     \FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[11].C_MUX.CARRY_MUX_i_1 
       (.I0(p_2_out),
        .I1(reg2_a_tdata[11]),
        .O(\n_0_FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[11].C_MUX.CARRY_MUX_i_1 ));
LUT2 #(
    .INIT(4'h6)) 
     \FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[12].C_MUX.CARRY_MUX_i_1 
       (.I0(p_2_out),
        .I1(reg2_a_tdata[12]),
        .O(\n_0_FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[12].C_MUX.CARRY_MUX_i_1 ));
LUT2 #(
    .INIT(4'h6)) 
     \FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[13].C_MUX.CARRY_MUX_i_1 
       (.I0(p_2_out),
        .I1(reg2_a_tdata[13]),
        .O(\n_0_FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[13].C_MUX.CARRY_MUX_i_1 ));
LUT2 #(
    .INIT(4'h6)) 
     \FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[14].C_MUX.CARRY_MUX_i_1 
       (.I0(p_2_out),
        .I1(reg2_a_tdata[14]),
        .O(\n_0_FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[14].C_MUX.CARRY_MUX_i_1 ));
LUT2 #(
    .INIT(4'h6)) 
     \FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[15].C_MUX.CARRY_MUX_i_1 
       (.I0(p_2_out),
        .I1(reg2_a_tdata[15]),
        .O(\n_0_FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[15].C_MUX.CARRY_MUX_i_1 ));
LUT2 #(
    .INIT(4'h6)) 
     \FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[16].C_MUX.CARRY_MUX_i_1 
       (.I0(p_2_out),
        .I1(reg2_a_tdata[16]),
        .O(\n_0_FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[16].C_MUX.CARRY_MUX_i_1 ));
LUT2 #(
    .INIT(4'h6)) 
     \FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[17].C_MUX.CARRY_MUX_i_1 
       (.I0(p_2_out),
        .I1(reg2_a_tdata[17]),
        .O(\n_0_FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[17].C_MUX.CARRY_MUX_i_1 ));
LUT2 #(
    .INIT(4'h6)) 
     \FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[18].C_MUX.CARRY_MUX_i_1 
       (.I0(p_2_out),
        .I1(reg2_a_tdata[18]),
        .O(\n_0_FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[18].C_MUX.CARRY_MUX_i_1 ));
LUT2 #(
    .INIT(4'h6)) 
     \FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[19].C_MUX.CARRY_MUX_i_1 
       (.I0(p_2_out),
        .I1(reg2_a_tdata[19]),
        .O(\n_0_FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[19].C_MUX.CARRY_MUX_i_1 ));
LUT2 #(
    .INIT(4'h6)) 
     \FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1 
       (.I0(p_2_out),
        .I1(reg2_a_tdata[1]),
        .O(\n_0_FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1 ));
LUT2 #(
    .INIT(4'h6)) 
     \FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[20].C_MUX.CARRY_MUX_i_1 
       (.I0(p_2_out),
        .I1(reg2_a_tdata[20]),
        .O(\n_0_FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[20].C_MUX.CARRY_MUX_i_1 ));
LUT2 #(
    .INIT(4'h6)) 
     \FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[21].C_MUX.CARRY_MUX_i_1 
       (.I0(p_2_out),
        .I1(reg2_a_tdata[21]),
        .O(\n_0_FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[21].C_MUX.CARRY_MUX_i_1 ));
LUT2 #(
    .INIT(4'h6)) 
     \FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[22].C_MUX.CARRY_MUX_i_1 
       (.I0(p_2_out),
        .I1(reg2_a_tdata[22]),
        .O(\n_0_FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[22].C_MUX.CARRY_MUX_i_1 ));
LUT2 #(
    .INIT(4'h6)) 
     \FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[23].C_MUX.CARRY_MUX_i_1 
       (.I0(p_2_out),
        .I1(reg2_a_tdata[23]),
        .O(\n_0_FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[23].C_MUX.CARRY_MUX_i_1 ));
LUT2 #(
    .INIT(4'h6)) 
     \FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[24].C_MUX.CARRY_MUX_i_1 
       (.I0(p_2_out),
        .I1(reg2_a_tdata[24]),
        .O(\n_0_FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[24].C_MUX.CARRY_MUX_i_1 ));
LUT2 #(
    .INIT(4'h6)) 
     \FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[25].C_MUX.CARRY_MUX_i_1 
       (.I0(p_2_out),
        .I1(reg2_a_tdata[25]),
        .O(\n_0_FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[25].C_MUX.CARRY_MUX_i_1 ));
LUT2 #(
    .INIT(4'h6)) 
     \FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[26].C_MUX.CARRY_MUX_i_1 
       (.I0(p_2_out),
        .I1(reg2_a_tdata[26]),
        .O(\n_0_FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[26].C_MUX.CARRY_MUX_i_1 ));
LUT2 #(
    .INIT(4'h6)) 
     \FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[27].C_MUX.CARRY_MUX_i_1 
       (.I0(p_2_out),
        .I1(reg2_a_tdata[27]),
        .O(\n_0_FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[27].C_MUX.CARRY_MUX_i_1 ));
LUT2 #(
    .INIT(4'h6)) 
     \FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[28].C_MUX.CARRY_MUX_i_1 
       (.I0(p_2_out),
        .I1(reg2_a_tdata[28]),
        .O(\n_0_FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[28].C_MUX.CARRY_MUX_i_1 ));
LUT2 #(
    .INIT(4'h6)) 
     \FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[29].C_MUX.CARRY_MUX_i_1 
       (.I0(p_2_out),
        .I1(reg2_a_tdata[29]),
        .O(\n_0_FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[29].C_MUX.CARRY_MUX_i_1 ));
LUT2 #(
    .INIT(4'h6)) 
     \FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1 
       (.I0(p_2_out),
        .I1(reg2_a_tdata[2]),
        .O(\n_0_FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1 ));
LUT2 #(
    .INIT(4'h6)) 
     \FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[30].C_MUX.CARRY_MUX_i_1 
       (.I0(p_2_out),
        .I1(reg2_a_tdata[30]),
        .O(\n_0_FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[30].C_MUX.CARRY_MUX_i_1 ));
LUT2 #(
    .INIT(4'h6)) 
     \FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[3].C_MUX.CARRY_MUX_i_1 
       (.I0(p_2_out),
        .I1(reg2_a_tdata[3]),
        .O(\n_0_FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[3].C_MUX.CARRY_MUX_i_1 ));
LUT2 #(
    .INIT(4'h6)) 
     \FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[4].C_MUX.CARRY_MUX_i_1 
       (.I0(p_2_out),
        .I1(reg2_a_tdata[4]),
        .O(\n_0_FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[4].C_MUX.CARRY_MUX_i_1 ));
LUT2 #(
    .INIT(4'h6)) 
     \FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[5].C_MUX.CARRY_MUX_i_1 
       (.I0(p_2_out),
        .I1(reg2_a_tdata[5]),
        .O(\n_0_FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[5].C_MUX.CARRY_MUX_i_1 ));
LUT2 #(
    .INIT(4'h6)) 
     \FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[6].C_MUX.CARRY_MUX_i_1 
       (.I0(p_2_out),
        .I1(reg2_a_tdata[6]),
        .O(\n_0_FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[6].C_MUX.CARRY_MUX_i_1 ));
LUT2 #(
    .INIT(4'h6)) 
     \FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[7].C_MUX.CARRY_MUX_i_1 
       (.I0(p_2_out),
        .I1(reg2_a_tdata[7]),
        .O(\n_0_FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[7].C_MUX.CARRY_MUX_i_1 ));
LUT2 #(
    .INIT(4'h6)) 
     \FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[8].C_MUX.CARRY_MUX_i_1 
       (.I0(p_2_out),
        .I1(reg2_a_tdata[8]),
        .O(\n_0_FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[8].C_MUX.CARRY_MUX_i_1 ));
LUT2 #(
    .INIT(4'h6)) 
     \FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[9].C_MUX.CARRY_MUX_i_1 
       (.I0(p_2_out),
        .I1(reg2_a_tdata[9]),
        .O(\n_0_FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[9].C_MUX.CARRY_MUX_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(minusOp[0]),
        .Q(\FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q [0]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[1] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(minusOp[1]),
        .Q(\FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q [1]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[2] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(minusOp[2]),
        .Q(\FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q [2]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[3] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(minusOp[3]),
        .Q(\FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q [3]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[4] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(minusOp[4]),
        .Q(\FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q [4]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[5] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(minusOp[5]),
        .Q(\FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q [5]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[6] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(minusOp[6]),
        .Q(\FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q [6]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[7] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(minusOp[7]),
        .Q(\FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q [7]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/EXP/IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(p_2_out),
        .Q(\FIX_TO_FLT_OP.SPD.OP/EXP/IP_SIGN_DELAY/i_pipe/first_q ),
        .R(\<const0> ));
(* srl_bus_name = "U0/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/IP_SIGN_DELAY/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5] " *) 
   (* srl_name = "U0/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/IP_SIGN_DELAY/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][0]_srl4 " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     \FIX_TO_FLT_OP.SPD.OP/EXP/IP_SIGN_DELAY/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][0]_srl4 
       (.A0(\<const1> ),
        .A1(\<const1> ),
        .A2(\<const0> ),
        .A3(\<const0> ),
        .CE(\<const1> ),
        .CLK(aclk),
        .D(\FIX_TO_FLT_OP.SPD.OP/EXP/IP_SIGN_DELAY/i_pipe/first_q ),
        .Q(\n_0_FIX_TO_FLT_OP.SPD.OP/EXP/IP_SIGN_DELAY/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][0]_srl4 ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/EXP/ZERO_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/LZE/A_Z_DET/i_pipe/first_q ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/EXP/ZERO_DELAY/i_pipe/first_q ),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/EXP/ZERO_DELAY/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/EXP/ZERO_DELAY/i_pipe/first_q ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/OP/p_2_out ),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/LZE/A_Z_DET/i_pipe/opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/LZE/all_bits_zero_del ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/LZE/A_Z_DET/i_pipe/first_q ),
        .R(\<const0> ));
LUT2 #(
    .INIT(4'h1)) 
     \FIX_TO_FLT_OP.SPD.OP/LZE/CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [30]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [31]),
        .O(\FIX_TO_FLT_OP.SPD.OP/LZE/chunk_is_zero [0]));
LUT2 #(
    .INIT(4'h1)) 
     \FIX_TO_FLT_OP.SPD.OP/LZE/CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__0 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [14]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [15]),
        .O(\FIX_TO_FLT_OP.SPD.OP/LZE/chunk_is_zero [8]));
LUT2 #(
    .INIT(4'h1)) 
     \FIX_TO_FLT_OP.SPD.OP/LZE/CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [28]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [29]),
        .O(\FIX_TO_FLT_OP.SPD.OP/LZE/chunk_is_zero [1]));
LUT2 #(
    .INIT(4'h1)) 
     \FIX_TO_FLT_OP.SPD.OP/LZE/CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__0 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [12]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [13]),
        .O(\FIX_TO_FLT_OP.SPD.OP/LZE/chunk_is_zero [9]));
LUT2 #(
    .INIT(4'h1)) 
     \FIX_TO_FLT_OP.SPD.OP/LZE/CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [26]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [27]),
        .O(\FIX_TO_FLT_OP.SPD.OP/LZE/chunk_is_zero [2]));
LUT2 #(
    .INIT(4'h1)) 
     \FIX_TO_FLT_OP.SPD.OP/LZE/CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__0 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [10]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [11]),
        .O(\FIX_TO_FLT_OP.SPD.OP/LZE/chunk_is_zero [10]));
LUT2 #(
    .INIT(4'h1)) 
     \FIX_TO_FLT_OP.SPD.OP/LZE/CHAIN_GEN[3].C_MUX.CARRY_MUX_i_1 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [24]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [25]),
        .O(\FIX_TO_FLT_OP.SPD.OP/LZE/chunk_is_zero [3]));
LUT2 #(
    .INIT(4'h1)) 
     \FIX_TO_FLT_OP.SPD.OP/LZE/CHAIN_GEN[3].C_MUX.CARRY_MUX_i_1__0 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [8]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [9]),
        .O(\FIX_TO_FLT_OP.SPD.OP/LZE/chunk_is_zero [11]));
LUT2 #(
    .INIT(4'h1)) 
     \FIX_TO_FLT_OP.SPD.OP/LZE/CHAIN_GEN[4].C_MUX.CARRY_MUX_i_1 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [22]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [23]),
        .O(\FIX_TO_FLT_OP.SPD.OP/LZE/chunk_is_zero [4]));
LUT2 #(
    .INIT(4'h1)) 
     \FIX_TO_FLT_OP.SPD.OP/LZE/CHAIN_GEN[4].C_MUX.CARRY_MUX_i_1__0 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [6]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [7]),
        .O(\FIX_TO_FLT_OP.SPD.OP/LZE/chunk_is_zero [12]));
LUT2 #(
    .INIT(4'h1)) 
     \FIX_TO_FLT_OP.SPD.OP/LZE/CHAIN_GEN[5].C_MUX.CARRY_MUX_i_1 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [20]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [21]),
        .O(\FIX_TO_FLT_OP.SPD.OP/LZE/chunk_is_zero [5]));
LUT2 #(
    .INIT(4'h1)) 
     \FIX_TO_FLT_OP.SPD.OP/LZE/CHAIN_GEN[5].C_MUX.CARRY_MUX_i_1__0 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [4]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [5]),
        .O(\FIX_TO_FLT_OP.SPD.OP/LZE/chunk_is_zero [13]));
LUT2 #(
    .INIT(4'h1)) 
     \FIX_TO_FLT_OP.SPD.OP/LZE/CHAIN_GEN[6].C_MUX.CARRY_MUX_i_1 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [18]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [19]),
        .O(\FIX_TO_FLT_OP.SPD.OP/LZE/chunk_is_zero [6]));
LUT2 #(
    .INIT(4'h1)) 
     \FIX_TO_FLT_OP.SPD.OP/LZE/CHAIN_GEN[6].C_MUX.CARRY_MUX_i_1__0 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [2]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [3]),
        .O(\FIX_TO_FLT_OP.SPD.OP/LZE/chunk_is_zero [14]));
LUT2 #(
    .INIT(4'h1)) 
     \FIX_TO_FLT_OP.SPD.OP/LZE/CHAIN_GEN[7].C_MUX.CARRY_MUX_i_1 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [16]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [17]),
        .O(\FIX_TO_FLT_OP.SPD.OP/LZE/chunk_is_zero [7]));
LUT2 #(
    .INIT(4'h1)) 
     \FIX_TO_FLT_OP.SPD.OP/LZE/CHAIN_GEN[7].C_MUX.CARRY_MUX_i_1__0 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [0]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [1]),
        .O(\FIX_TO_FLT_OP.SPD.OP/LZE/chunk_is_zero [15]));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].DIST_DEL/i_pipe/opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].DIST_DEL/i_pipe/first_q [0]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].DIST_DEL/i_pipe/opt_has_pipe.first_q_reg[1] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew__0 [3]),
        .Q(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].DIST_DEL/i_pipe/first_q [1]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].DIST_DEL/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].DIST_DEL/i_pipe/first_q [0]),
        .Q(\n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].DIST_DEL/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][0] ),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].DIST_DEL/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][1] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].DIST_DEL/i_pipe/first_q [1]),
        .Q(\n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].DIST_DEL/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][1] ),
        .R(\<const0> ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/OP_DEL/i_pipe/opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/op_int [0]),
        .Q(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/OP_DEL/i_pipe/first_q [0]),
        .R(\<const0> ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/OP_DEL/i_pipe/opt_has_pipe.first_q_reg[1] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/op_int [1]),
        .Q(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/OP_DEL/i_pipe/first_q [1]),
        .R(\<const0> ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/OP_DEL/i_pipe/opt_has_pipe.first_q_reg[2] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/op_int [2]),
        .Q(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/OP_DEL/i_pipe/first_q [2]),
        .R(\<const0> ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/OP_DEL/i_pipe/opt_has_pipe.first_q_reg[3] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/op_int [3]),
        .Q(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/OP_DEL/i_pipe/first_q [3]),
        .R(\<const0> ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/op_int [0]),
        .Q(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q [0]),
        .R(\<const0> ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/opt_has_pipe.first_q_reg[1] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/op_int [1]),
        .Q(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q [1]),
        .R(\<const0> ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/opt_has_pipe.first_q_reg[2] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/op_int [2]),
        .Q(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q [2]),
        .R(\<const0> ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/opt_has_pipe.first_q_reg[3] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/op_int [3]),
        .Q(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q [3]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].DIST_DEL/i_pipe/opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q [1]),
        .Q(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].DIST_DEL/i_pipe/first_q [0]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].DIST_DEL/i_pipe/opt_has_pipe.first_q_reg[1] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew__0 [1]),
        .Q(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].DIST_DEL/i_pipe/first_q [1]),
        .R(\<const0> ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].MUX_0/OP_DEL/i_pipe/opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].MUX_0/op_int ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].MUX_0/OP_DEL/i_pipe/first_q ),
        .R(\<const0> ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].MUX_Z/OP_DEL/i_pipe/opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].MUX_Z/op_int ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].MUX_Z/OP_DEL/i_pipe/first_q ),
        .R(\<const0> ));
(* XILINX_LEGACY_PRIM = "FDE" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[0].CARRYS_DEL.NEED_DEL.CARRYS_FD 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CI ),
        .Q(\n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[0].CARRYS_DEL.NEED_DEL.CARRYS_FD ),
        .R(GND_2));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* box_type = "PRIMITIVE" *) 
   CARRY4 \FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4 
       (.CI(lopt_8),
        .CO({\n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[3].C_MUX.CARRY_MUX ,\n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[2].C_MUX.CARRY_MUX ,\n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[1].C_MUX.CARRY_MUX ,\FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CI }),
        .CYINIT(\<const1> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(\NLW_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED [3:0]),
        .S(\FIX_TO_FLT_OP.SPD.OP/LZE/chunk_is_zero [3:0]));
GND \FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_GND 
       (.G(lopt_8));
(* XILINX_LEGACY_PRIM = "FDE" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[1].CARRYS_DEL.NEED_DEL.CARRYS_FD 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[1].C_MUX.CARRY_MUX ),
        .Q(\n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[1].CARRYS_DEL.NEED_DEL.CARRYS_FD ),
        .R(GND_2));
(* XILINX_LEGACY_PRIM = "FDE" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[2].CARRYS_DEL.NEED_DEL.CARRYS_FD 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[2].C_MUX.CARRY_MUX ),
        .Q(\n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[2].CARRYS_DEL.NEED_DEL.CARRYS_FD ),
        .R(GND_2));
(* XILINX_LEGACY_PRIM = "FDE" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[3].CARRYS_DEL.NEED_DEL.CARRYS_FD 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[3].C_MUX.CARRY_MUX ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/LZE/p_1_in ),
        .R(GND_2));
(* XILINX_LEGACY_PRIM = "FDE" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[4].CARRYS_DEL.NEED_DEL.CARRYS_FD 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[4].C_MUX.CARRY_MUX ),
        .Q(\n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[4].CARRYS_DEL.NEED_DEL.CARRYS_FD ),
        .R(GND_2));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* box_type = "PRIMITIVE" *) 
   CARRY4 \FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4 
       (.CI(\n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[3].C_MUX.CARRY_MUX ),
        .CO({\FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/D ,\n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[6].C_MUX.CARRY_MUX ,\n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[5].C_MUX.CARRY_MUX ,\n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[4].C_MUX.CARRY_MUX }),
        .CYINIT(lopt_9),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(\NLW_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED [3:0]),
        .S(\FIX_TO_FLT_OP.SPD.OP/LZE/chunk_is_zero [7:4]));
GND \FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_GND 
       (.G(lopt_9));
(* XILINX_LEGACY_PRIM = "FDE" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[5].CARRYS_DEL.NEED_DEL.CARRYS_FD 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[5].C_MUX.CARRY_MUX ),
        .Q(\n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[5].CARRYS_DEL.NEED_DEL.CARRYS_FD ),
        .R(GND_2));
(* XILINX_LEGACY_PRIM = "FDE" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[6].CARRYS_DEL.NEED_DEL.CARRYS_FD 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[6].C_MUX.CARRY_MUX ),
        .Q(\n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[6].CARRYS_DEL.NEED_DEL.CARRYS_FD ),
        .R(GND_2));
(* XILINX_LEGACY_PRIM = "FDE" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[7].CARRYS_DEL.NEED_DEL.CARRYS_FD 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/D ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew ),
        .R(GND_2));
(* XILINX_LEGACY_PRIM = "FDE" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_2.CC/CHAIN_GEN[0].CARRYS_DEL.NEED_DEL.CARRYS_FD 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_2.CC/CI ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/LZE/p_0_out [0]),
        .R(GND_2));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* box_type = "PRIMITIVE" *) 
   CARRY4 \FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_2.CC/CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4 
       (.CI(lopt_10),
        .CO({\n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_2.CC/CHAIN_GEN[3].C_MUX.CARRY_MUX ,\n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_2.CC/CHAIN_GEN[2].C_MUX.CARRY_MUX ,\n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_2.CC/CHAIN_GEN[1].C_MUX.CARRY_MUX ,\FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_2.CC/CI }),
        .CYINIT(\<const1> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(\NLW_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_2.CC/CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED [3:0]),
        .S(\FIX_TO_FLT_OP.SPD.OP/LZE/chunk_is_zero [11:8]));
GND \FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_2.CC/CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_GND 
       (.G(lopt_10));
(* XILINX_LEGACY_PRIM = "FDE" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_2.CC/CHAIN_GEN[1].CARRYS_DEL.NEED_DEL.CARRYS_FD 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_2.CC/CHAIN_GEN[1].C_MUX.CARRY_MUX ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/LZE/p_0_out [1]),
        .R(GND_2));
(* XILINX_LEGACY_PRIM = "FDE" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_2.CC/CHAIN_GEN[2].CARRYS_DEL.NEED_DEL.CARRYS_FD 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_2.CC/CHAIN_GEN[2].C_MUX.CARRY_MUX ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/LZE/p_0_out [2]),
        .R(GND_2));
(* XILINX_LEGACY_PRIM = "FDE" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_2.CC/CHAIN_GEN[3].CARRYS_DEL.NEED_DEL.CARRYS_FD 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_2.CC/CHAIN_GEN[3].C_MUX.CARRY_MUX ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/LZE/p_0_out [3]),
        .R(GND_2));
(* XILINX_LEGACY_PRIM = "FDE" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_2.CC/CHAIN_GEN[4].CARRYS_DEL.NEED_DEL.CARRYS_FD 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_2.CC/CHAIN_GEN[4].C_MUX.CARRY_MUX ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/LZE/p_0_out [4]),
        .R(GND_2));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* box_type = "PRIMITIVE" *) 
   CARRY4 \FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_2.CC/CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4 
       (.CI(\n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_2.CC/CHAIN_GEN[3].C_MUX.CARRY_MUX ),
        .CO({\FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_2.CC/D ,\n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_2.CC/CHAIN_GEN[6].C_MUX.CARRY_MUX ,\n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_2.CC/CHAIN_GEN[5].C_MUX.CARRY_MUX ,\n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_2.CC/CHAIN_GEN[4].C_MUX.CARRY_MUX }),
        .CYINIT(lopt_11),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(\NLW_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_2.CC/CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED [3:0]),
        .S(\FIX_TO_FLT_OP.SPD.OP/LZE/chunk_is_zero [15:12]));
GND \FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_2.CC/CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_GND 
       (.G(lopt_11));
(* XILINX_LEGACY_PRIM = "FDE" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_2.CC/CHAIN_GEN[5].CARRYS_DEL.NEED_DEL.CARRYS_FD 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_2.CC/CHAIN_GEN[5].C_MUX.CARRY_MUX ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/LZE/p_0_out [5]),
        .R(GND_2));
(* XILINX_LEGACY_PRIM = "FDE" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_2.CC/CHAIN_GEN[6].CARRYS_DEL.NEED_DEL.CARRYS_FD 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_2.CC/CHAIN_GEN[6].C_MUX.CARRY_MUX ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/LZE/p_0_out [6]),
        .R(GND_2));
(* XILINX_LEGACY_PRIM = "FDE" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_2.CC/CHAIN_GEN[7].CARRYS_DEL.NEED_DEL.CARRYS_FD 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_2.CC/D ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/LZE/p_0_out [7]),
        .R(GND_2));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* box_type = "PRIMITIVE" *) 
   CARRY4 \FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4 
       (.CI(lopt),
        .CO({\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[3].C_MUX.CARRY_MUX ,\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[2].C_MUX.CARRY_MUX ,\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[1].C_MUX.CARRY_MUX ,\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[0].C_MUX.CARRY_MUX }),
        .CYINIT(p_2_out),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[3].Q_XOR.SUM_XOR ,\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[2].Q_XOR.SUM_XOR ,\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[1].Q_XOR.SUM_XOR ,\FIX_TO_FLT_OP.SPD.OP/M_ABS/O }),
        .S({\n_0_FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[3].C_MUX.CARRY_MUX_i_1 ,\n_0_FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1 ,\n_0_FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1 ,\n_0_FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1 }));
GND \FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_GND 
       (.G(lopt));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* box_type = "PRIMITIVE" *) 
   CARRY4 \FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[12].C_MUX.CARRY_MUX_CARRY4 
       (.CI(\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[11].C_MUX.CARRY_MUX ),
        .CO({\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[15].C_MUX.CARRY_MUX ,\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[14].C_MUX.CARRY_MUX ,\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[13].C_MUX.CARRY_MUX ,\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[12].C_MUX.CARRY_MUX }),
        .CYINIT(lopt_3),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[15].Q_XOR.SUM_XOR ,\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[14].Q_XOR.SUM_XOR ,\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[13].Q_XOR.SUM_XOR ,\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[12].Q_XOR.SUM_XOR }),
        .S({\n_0_FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[15].C_MUX.CARRY_MUX_i_1 ,\n_0_FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[14].C_MUX.CARRY_MUX_i_1 ,\n_0_FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[13].C_MUX.CARRY_MUX_i_1 ,\n_0_FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[12].C_MUX.CARRY_MUX_i_1 }));
GND \FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[12].C_MUX.CARRY_MUX_CARRY4_GND 
       (.G(lopt_3));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* box_type = "PRIMITIVE" *) 
   CARRY4 \FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[16].C_MUX.CARRY_MUX_CARRY4 
       (.CI(\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[15].C_MUX.CARRY_MUX ),
        .CO({\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[19].C_MUX.CARRY_MUX ,\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[18].C_MUX.CARRY_MUX ,\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[17].C_MUX.CARRY_MUX ,\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[16].C_MUX.CARRY_MUX }),
        .CYINIT(lopt_4),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[19].Q_XOR.SUM_XOR ,\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[18].Q_XOR.SUM_XOR ,\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[17].Q_XOR.SUM_XOR ,\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[16].Q_XOR.SUM_XOR }),
        .S({\n_0_FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[19].C_MUX.CARRY_MUX_i_1 ,\n_0_FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[18].C_MUX.CARRY_MUX_i_1 ,\n_0_FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[17].C_MUX.CARRY_MUX_i_1 ,\n_0_FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[16].C_MUX.CARRY_MUX_i_1 }));
GND \FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[16].C_MUX.CARRY_MUX_CARRY4_GND 
       (.G(lopt_4));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* box_type = "PRIMITIVE" *) 
   CARRY4 \FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[20].C_MUX.CARRY_MUX_CARRY4 
       (.CI(\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[19].C_MUX.CARRY_MUX ),
        .CO({\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[23].C_MUX.CARRY_MUX ,\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[22].C_MUX.CARRY_MUX ,\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[21].C_MUX.CARRY_MUX ,\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[20].C_MUX.CARRY_MUX }),
        .CYINIT(lopt_5),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[23].Q_XOR.SUM_XOR ,\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[22].Q_XOR.SUM_XOR ,\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[21].Q_XOR.SUM_XOR ,\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[20].Q_XOR.SUM_XOR }),
        .S({\n_0_FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[23].C_MUX.CARRY_MUX_i_1 ,\n_0_FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[22].C_MUX.CARRY_MUX_i_1 ,\n_0_FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[21].C_MUX.CARRY_MUX_i_1 ,\n_0_FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[20].C_MUX.CARRY_MUX_i_1 }));
GND \FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[20].C_MUX.CARRY_MUX_CARRY4_GND 
       (.G(lopt_5));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* box_type = "PRIMITIVE" *) 
   CARRY4 \FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[24].C_MUX.CARRY_MUX_CARRY4 
       (.CI(\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[23].C_MUX.CARRY_MUX ),
        .CO({\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[27].C_MUX.CARRY_MUX ,\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[26].C_MUX.CARRY_MUX ,\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[25].C_MUX.CARRY_MUX ,\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[24].C_MUX.CARRY_MUX }),
        .CYINIT(lopt_6),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[27].Q_XOR.SUM_XOR ,\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[26].Q_XOR.SUM_XOR ,\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[25].Q_XOR.SUM_XOR ,\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[24].Q_XOR.SUM_XOR }),
        .S({\n_0_FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[27].C_MUX.CARRY_MUX_i_1 ,\n_0_FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[26].C_MUX.CARRY_MUX_i_1 ,\n_0_FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[25].C_MUX.CARRY_MUX_i_1 ,\n_0_FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[24].C_MUX.CARRY_MUX_i_1 }));
GND \FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[24].C_MUX.CARRY_MUX_CARRY4_GND 
       (.G(lopt_6));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* box_type = "PRIMITIVE" *) 
   CARRY4 \FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[28].C_MUX.CARRY_MUX_CARRY4 
       (.CI(\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[27].C_MUX.CARRY_MUX ),
        .CO({\NLW_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[28].C_MUX.CARRY_MUX_CARRY4_CO_UNCONNECTED [3:2],\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[29].C_MUX.CARRY_MUX ,\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[28].C_MUX.CARRY_MUX }),
        .CYINIT(lopt_7),
        .DI({\NLW_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[28].C_MUX.CARRY_MUX_CARRY4_DI_UNCONNECTED [3],\<const0> ,\<const0> ,\<const0> }),
        .O({\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[31].Q_XOR.SUM_XOR ,\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[30].Q_XOR.SUM_XOR ,\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[29].Q_XOR.SUM_XOR ,\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[28].Q_XOR.SUM_XOR }),
        .S({\<const0> ,\n_0_FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[30].C_MUX.CARRY_MUX_i_1 ,\n_0_FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[29].C_MUX.CARRY_MUX_i_1 ,\n_0_FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[28].C_MUX.CARRY_MUX_i_1 }));
GND \FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[28].C_MUX.CARRY_MUX_CARRY4_GND 
       (.G(lopt_7));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* box_type = "PRIMITIVE" *) 
   CARRY4 \FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4 
       (.CI(\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[3].C_MUX.CARRY_MUX ),
        .CO({\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[7].C_MUX.CARRY_MUX ,\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[6].C_MUX.CARRY_MUX ,\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[5].C_MUX.CARRY_MUX ,\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[4].C_MUX.CARRY_MUX }),
        .CYINIT(lopt_1),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[7].Q_XOR.SUM_XOR ,\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[6].Q_XOR.SUM_XOR ,\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[5].Q_XOR.SUM_XOR ,\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[4].Q_XOR.SUM_XOR }),
        .S({\n_0_FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[7].C_MUX.CARRY_MUX_i_1 ,\n_0_FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[6].C_MUX.CARRY_MUX_i_1 ,\n_0_FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[5].C_MUX.CARRY_MUX_i_1 ,\n_0_FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[4].C_MUX.CARRY_MUX_i_1 }));
GND \FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_GND 
       (.G(lopt_1));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* box_type = "PRIMITIVE" *) 
   CARRY4 \FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[8].C_MUX.CARRY_MUX_CARRY4 
       (.CI(\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[7].C_MUX.CARRY_MUX ),
        .CO({\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[11].C_MUX.CARRY_MUX ,\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[10].C_MUX.CARRY_MUX ,\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[9].C_MUX.CARRY_MUX ,\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[8].C_MUX.CARRY_MUX }),
        .CYINIT(lopt_2),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[11].Q_XOR.SUM_XOR ,\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[10].Q_XOR.SUM_XOR ,\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[9].Q_XOR.SUM_XOR ,\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[8].Q_XOR.SUM_XOR }),
        .S({\n_0_FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[11].C_MUX.CARRY_MUX_i_1 ,\n_0_FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[10].C_MUX.CARRY_MUX_i_1 ,\n_0_FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[9].C_MUX.CARRY_MUX_i_1 ,\n_0_FIX_TO_FLT_OP.SPD.OP/CHAIN_GEN[8].C_MUX.CARRY_MUX_i_1 }));
GND \FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[8].C_MUX.CARRY_MUX_CARRY4_GND 
       (.G(lopt_2));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/M_ABS/O ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [0]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[10] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[10].Q_XOR.SUM_XOR ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [10]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[11] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[11].Q_XOR.SUM_XOR ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [11]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[12] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[12].Q_XOR.SUM_XOR ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [12]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[13] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[13].Q_XOR.SUM_XOR ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [13]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[14] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[14].Q_XOR.SUM_XOR ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [14]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[15] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[15].Q_XOR.SUM_XOR ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [15]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[16] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[16].Q_XOR.SUM_XOR ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [16]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[17] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[17].Q_XOR.SUM_XOR ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [17]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[18] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[18].Q_XOR.SUM_XOR ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [18]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[19] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[19].Q_XOR.SUM_XOR ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [19]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[1] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[1].Q_XOR.SUM_XOR ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [1]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[20] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[20].Q_XOR.SUM_XOR ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [20]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[21] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[21].Q_XOR.SUM_XOR ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [21]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[22] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[22].Q_XOR.SUM_XOR ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [22]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[23] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[23].Q_XOR.SUM_XOR ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [23]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[24] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[24].Q_XOR.SUM_XOR ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [24]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[25] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[25].Q_XOR.SUM_XOR ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [25]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[26] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[26].Q_XOR.SUM_XOR ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [26]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[27] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[27].Q_XOR.SUM_XOR ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [27]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[28] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[28].Q_XOR.SUM_XOR ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [28]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[29] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[29].Q_XOR.SUM_XOR ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [29]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[2] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[2].Q_XOR.SUM_XOR ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [2]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[30] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[30].Q_XOR.SUM_XOR ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [30]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[31] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[31].Q_XOR.SUM_XOR ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [31]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[3] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[3].Q_XOR.SUM_XOR ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [3]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[4] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[4].Q_XOR.SUM_XOR ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [4]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[5] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[5].Q_XOR.SUM_XOR ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [5]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[6] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[6].Q_XOR.SUM_XOR ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [6]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[7] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[7].Q_XOR.SUM_XOR ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [7]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[8] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[8].Q_XOR.SUM_XOR ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [8]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[9] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[9].Q_XOR.SUM_XOR ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [9]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/NEED_Z_DET.Z_DET/ENCODE[0].DIST_OVER_DEL/i_pipe/opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/NEED_Z_DET.Z_DET/p_16_out ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/NEED_Z_DET.Z_DET/ENCODE[0].DIST_OVER_DEL/i_pipe/first_q ),
        .R(\<const0> ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/NEED_Z_DET.Z_DET/ENCODE[0].Z_DET_DEL/i_pipe/opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/NEED_Z_DET.Z_DET/Z_C_DEL/i_pipe/first_q [0]),
        .Q(\FIX_TO_FLT_OP.SPD.OP/NEED_Z_DET.Z_DET/ENCODE[0].Z_DET_DEL/i_pipe/first_q [0]),
        .R(\<const0> ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/NEED_Z_DET.Z_DET/ENCODE[0].Z_DET_DEL/i_pipe/opt_has_pipe.first_q_reg[1] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/NEED_Z_DET.Z_DET/Z_C_DEL/i_pipe/first_q [1]),
        .Q(\FIX_TO_FLT_OP.SPD.OP/NEED_Z_DET.Z_DET/ENCODE[0].Z_DET_DEL/i_pipe/first_q [1]),
        .R(\<const0> ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/NEED_Z_DET.Z_DET/ENCODE[0].Z_DET_DEL/i_pipe/opt_has_pipe.first_q_reg[2] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/NEED_Z_DET.Z_DET/Z_C_DEL/i_pipe/first_q [2]),
        .Q(\FIX_TO_FLT_OP.SPD.OP/NEED_Z_DET.Z_DET/ENCODE[0].Z_DET_DEL/i_pipe/first_q [2]),
        .R(\<const0> ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/NEED_Z_DET.Z_DET/ENCODE[0].Z_DET_DEL/i_pipe/opt_has_pipe.first_q_reg[3] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/NEED_Z_DET.Z_DET/Z_C_DEL/i_pipe/first_q [3]),
        .Q(\FIX_TO_FLT_OP.SPD.OP/NEED_Z_DET.Z_DET/ENCODE[0].Z_DET_DEL/i_pipe/first_q [3]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/NEED_Z_DET.Z_DET/ENCODE[1].DIST_OVER_DEL/i_pipe/opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/NEED_Z_DET.Z_DET/ENCODE[0].DIST_OVER_DEL/i_pipe/first_q ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/NEED_Z_DET.Z_DET/ENCODE[1].DIST_OVER_DEL/i_pipe/first_q ),
        .R(\<const0> ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/NEED_Z_DET.Z_DET/ENCODE[1].Z_DET_DEL/i_pipe/opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[0]_i_1__8 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/NEED_Z_DET.Z_DET/ENCODE[1].Z_DET_DEL/i_pipe/first_q ),
        .R(\<const0> ));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* box_type = "PRIMITIVE" *) 
   CARRY4 \FIX_TO_FLT_OP.SPD.OP/NEED_Z_DET.Z_DET/ZERO_DET[0].mc_CARRY4 
       (.CI(lopt_19),
        .CO({\FIX_TO_FLT_OP.SPD.OP/NEED_Z_DET.Z_DET/O ,\FIX_TO_FLT_OP.SPD.OP/NEED_Z_DET.Z_DET/CI ,\FIX_TO_FLT_OP.SPD.OP/NEED_Z_DET.Z_DET/CI0_out ,\FIX_TO_FLT_OP.SPD.OP/NEED_Z_DET.Z_DET/CI1_out }),
        .CYINIT(\<const1> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(\NLW_FIX_TO_FLT_OP.SPD.OP/NEED_Z_DET.Z_DET/ZERO_DET[0].mc_CARRY4_O_UNCONNECTED [3:0]),
        .S({\FIX_TO_FLT_OP.SPD.OP/NEED_Z_DET.Z_DET/flt_all_zero ,\n_0_ZERO_DET[2].mc_i_1 ,\n_0_ZERO_DET[1].mc_i_1 ,\<const1> }));
GND \FIX_TO_FLT_OP.SPD.OP/NEED_Z_DET.Z_DET/ZERO_DET[0].mc_CARRY4_GND 
       (.G(lopt_19));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/NEED_Z_DET.Z_DET/Z_C_DEL/i_pipe/opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/NEED_Z_DET.Z_DET/CI1_out ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/NEED_Z_DET.Z_DET/Z_C_DEL/i_pipe/first_q [0]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/NEED_Z_DET.Z_DET/Z_C_DEL/i_pipe/opt_has_pipe.first_q_reg[1] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/NEED_Z_DET.Z_DET/CI0_out ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/NEED_Z_DET.Z_DET/Z_C_DEL/i_pipe/first_q [1]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/NEED_Z_DET.Z_DET/Z_C_DEL/i_pipe/opt_has_pipe.first_q_reg[2] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/NEED_Z_DET.Z_DET/CI ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/NEED_Z_DET.Z_DET/Z_C_DEL/i_pipe/first_q [2]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/NEED_Z_DET.Z_DET/Z_C_DEL/i_pipe/opt_has_pipe.first_q_reg[3] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/NEED_Z_DET.Z_DET/O ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/NEED_Z_DET.Z_DET/Z_C_DEL/i_pipe/first_q [3]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[0]_i_1__2 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [0]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[10] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[10]_i_1__0 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [10]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[11] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[11]_i_1__0 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [11]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[12] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[12]_i_1__0 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [12]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[13] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[13]_i_1__0 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [13]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[14] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[14]_i_1__0 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [14]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[15] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[15]_i_1__0 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [15]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[16] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[16]_i_1__0 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [16]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[17] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[17]_i_1__0 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [17]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[18] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[18]_i_1__0 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [18]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[19] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[19]_i_1__0 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [19]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[1] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[1]_i_1__3 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [1]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[20] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[20]_i_1__0 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [20]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[21] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[21]_i_1__0 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [21]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[22] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[22]_i_1__0 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [22]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[23] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[23]_i_1__0 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [23]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[24] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [7]),
        .Q(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [24]),
        .R(\FIX_TO_FLT_OP.SPD.OP/NEED_Z_DET.Z_DET/p_16_out ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[25] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [6]),
        .Q(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [25]),
        .R(\FIX_TO_FLT_OP.SPD.OP/NEED_Z_DET.Z_DET/p_16_out ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[26] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [5]),
        .Q(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [26]),
        .R(\FIX_TO_FLT_OP.SPD.OP/NEED_Z_DET.Z_DET/p_16_out ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[27] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [4]),
        .Q(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [27]),
        .R(\FIX_TO_FLT_OP.SPD.OP/NEED_Z_DET.Z_DET/p_16_out ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[28] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [3]),
        .Q(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [28]),
        .R(\FIX_TO_FLT_OP.SPD.OP/NEED_Z_DET.Z_DET/p_16_out ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[29] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [2]),
        .Q(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [29]),
        .R(\FIX_TO_FLT_OP.SPD.OP/NEED_Z_DET.Z_DET/p_16_out ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[2] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[2]_i_1__1 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [2]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[30] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [1]),
        .Q(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [30]),
        .R(\FIX_TO_FLT_OP.SPD.OP/NEED_Z_DET.Z_DET/p_16_out ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[31] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [0]),
        .Q(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [31]),
        .R(\FIX_TO_FLT_OP.SPD.OP/NEED_Z_DET.Z_DET/p_16_out ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[3] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[3]_i_1__1 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [3]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[4] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[4]_i_1__0 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [4]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[5] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[5]_i_1__0 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [5]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[6] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[6]_i_1__0 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [6]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[7] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[7]_i_1__0 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [7]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[8] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[8]_i_1__0 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [8]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[9] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[9]_i_1__0 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [9]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[0]_i_1__1 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [0]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[10] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[10]_i_1 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [10]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[11] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[11]_i_1 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [11]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[12] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[12]_i_1 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [12]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[13] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[13]_i_1 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [13]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[14] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[14]_i_1 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [14]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[15] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[15]_i_1 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [15]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[16] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[16]_i_1 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [16]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[17] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[17]_i_1 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [17]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[18] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[18]_i_1 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [18]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[19] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[19]_i_1 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [19]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[1] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[1]_i_1__0 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [1]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[20] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[20]_i_1 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [20]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[21] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[21]_i_1 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [21]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[22] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[22]_i_1 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [22]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[23] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[23]_i_1 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [23]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[24] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[24]_i_1 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [24]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[25] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[25]_i_1 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [25]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[26] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[26]_i_1 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [26]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[27] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[27]_i_1 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [27]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[28] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[28]_i_1 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [28]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[29] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[29]_i_1 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [29]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[2] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[2]_i_1__0 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [2]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[30] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[30]_i_1 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [30]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[31] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[31]_i_1 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [31]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[3] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[3]_i_1 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [3]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[4] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[4]_i_1 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [4]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[5] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[5]_i_1 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [5]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[6] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[6]_i_1 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [6]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[7] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[7]_i_1 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [7]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[8] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[8]_i_1 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [8]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[9] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[9]_i_1 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [9]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/OP/FLAGS_REG.IV_OP_REG/i_pipe/opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\<const0> ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/OP/FLAGS_REG.IV_OP_REG/i_pipe/first_q ),
        .R(\<const0> ));
(* use_sync_reset = "auto" *) 
   (* use_sync_set = "auto" *) 
   FDRE \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.exp_op_reg[0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(EXP[0]),
        .Q(p_0_in[23]),
        .R(\<const0> ));
(* use_sync_reset = "auto" *) 
   (* use_sync_set = "auto" *) 
   FDRE \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.exp_op_reg[1] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(EXP[1]),
        .Q(p_0_in[24]),
        .R(\<const0> ));
(* use_sync_reset = "auto" *) 
   (* use_sync_set = "auto" *) 
   FDRE \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.exp_op_reg[2] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(EXP[2]),
        .Q(p_0_in[25]),
        .R(\<const0> ));
(* use_sync_reset = "auto" *) 
   (* use_sync_set = "auto" *) 
   FDRE \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.exp_op_reg[3] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(EXP[3]),
        .Q(p_0_in[26]),
        .R(\<const0> ));
(* use_sync_reset = "auto" *) 
   (* use_sync_set = "auto" *) 
   FDRE \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.exp_op_reg[4] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(EXP[4]),
        .Q(p_0_in[27]),
        .R(\<const0> ));
(* use_sync_reset = "auto" *) 
   (* use_sync_set = "auto" *) 
   FDRE \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.exp_op_reg[5] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(EXP[5]),
        .Q(p_0_in[28]),
        .R(\<const0> ));
(* use_sync_reset = "auto" *) 
   (* use_sync_set = "auto" *) 
   FDRE \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.exp_op_reg[6] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(EXP[6]),
        .Q(p_0_in[29]),
        .R(\<const0> ));
(* use_sync_reset = "auto" *) 
   (* use_sync_set = "auto" *) 
   FDRE \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.exp_op_reg[7] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(EXP[7]),
        .Q(p_0_in[30]),
        .R(\<const0> ));
(* use_sync_reset = "auto" *) 
   (* use_sync_set = "auto" *) 
   FDRE \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/first_q [0]),
        .Q(p_0_in[0]),
        .R(\FIX_TO_FLT_OP.SPD.OP/OP/p_2_out ));
(* use_sync_reset = "auto" *) 
   (* use_sync_set = "auto" *) 
   FDRE \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[10] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/first_q [10]),
        .Q(p_0_in[10]),
        .R(\FIX_TO_FLT_OP.SPD.OP/OP/p_2_out ));
(* use_sync_reset = "auto" *) 
   (* use_sync_set = "auto" *) 
   FDRE \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[11] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/first_q [11]),
        .Q(p_0_in[11]),
        .R(\FIX_TO_FLT_OP.SPD.OP/OP/p_2_out ));
(* use_sync_reset = "auto" *) 
   (* use_sync_set = "auto" *) 
   FDRE \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[12] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q [0]),
        .Q(p_0_in[12]),
        .R(\FIX_TO_FLT_OP.SPD.OP/OP/p_2_out ));
(* use_sync_reset = "auto" *) 
   (* use_sync_set = "auto" *) 
   FDRE \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[13] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q [1]),
        .Q(p_0_in[13]),
        .R(\FIX_TO_FLT_OP.SPD.OP/OP/p_2_out ));
(* use_sync_reset = "auto" *) 
   (* use_sync_set = "auto" *) 
   FDRE \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[14] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q [2]),
        .Q(p_0_in[14]),
        .R(\FIX_TO_FLT_OP.SPD.OP/OP/p_2_out ));
(* use_sync_reset = "auto" *) 
   (* use_sync_set = "auto" *) 
   FDRE \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[15] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q [3]),
        .Q(p_0_in[15]),
        .R(\FIX_TO_FLT_OP.SPD.OP/OP/p_2_out ));
(* use_sync_reset = "auto" *) 
   (* use_sync_set = "auto" *) 
   FDRE \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[16] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q [4]),
        .Q(p_0_in[16]),
        .R(\FIX_TO_FLT_OP.SPD.OP/OP/p_2_out ));
(* use_sync_reset = "auto" *) 
   (* use_sync_set = "auto" *) 
   FDRE \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[17] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q [5]),
        .Q(p_0_in[17]),
        .R(\FIX_TO_FLT_OP.SPD.OP/OP/p_2_out ));
(* use_sync_reset = "auto" *) 
   (* use_sync_set = "auto" *) 
   FDRE \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[18] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q [6]),
        .Q(p_0_in[18]),
        .R(\FIX_TO_FLT_OP.SPD.OP/OP/p_2_out ));
(* use_sync_reset = "auto" *) 
   (* use_sync_set = "auto" *) 
   FDRE \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[19] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q [7]),
        .Q(p_0_in[19]),
        .R(\FIX_TO_FLT_OP.SPD.OP/OP/p_2_out ));
(* use_sync_reset = "auto" *) 
   (* use_sync_set = "auto" *) 
   FDRE \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[1] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/first_q [1]),
        .Q(p_0_in[1]),
        .R(\FIX_TO_FLT_OP.SPD.OP/OP/p_2_out ));
(* use_sync_reset = "auto" *) 
   (* use_sync_set = "auto" *) 
   FDRE \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[20] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q [8]),
        .Q(p_0_in[20]),
        .R(\FIX_TO_FLT_OP.SPD.OP/OP/p_2_out ));
(* use_sync_reset = "auto" *) 
   (* use_sync_set = "auto" *) 
   FDRE \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[21] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q [9]),
        .Q(p_0_in[21]),
        .R(\FIX_TO_FLT_OP.SPD.OP/OP/p_2_out ));
(* use_sync_reset = "auto" *) 
   (* use_sync_set = "auto" *) 
   FDRE \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[22] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_RESULT_REG.NORMAL.mant_op[22]_i_1 ),
        .Q(p_0_in[22]),
        .R(\<const0> ));
(* use_sync_reset = "auto" *) 
   (* use_sync_set = "auto" *) 
   FDRE \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[2] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/first_q [2]),
        .Q(p_0_in[2]),
        .R(\FIX_TO_FLT_OP.SPD.OP/OP/p_2_out ));
(* use_sync_reset = "auto" *) 
   (* use_sync_set = "auto" *) 
   FDRE \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[3] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/first_q [3]),
        .Q(p_0_in[3]),
        .R(\FIX_TO_FLT_OP.SPD.OP/OP/p_2_out ));
(* use_sync_reset = "auto" *) 
   (* use_sync_set = "auto" *) 
   FDRE \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[4] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/first_q [4]),
        .Q(p_0_in[4]),
        .R(\FIX_TO_FLT_OP.SPD.OP/OP/p_2_out ));
(* use_sync_reset = "auto" *) 
   (* use_sync_set = "auto" *) 
   FDRE \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[5] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/first_q [5]),
        .Q(p_0_in[5]),
        .R(\FIX_TO_FLT_OP.SPD.OP/OP/p_2_out ));
(* use_sync_reset = "auto" *) 
   (* use_sync_set = "auto" *) 
   FDRE \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[6] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/first_q [6]),
        .Q(p_0_in[6]),
        .R(\FIX_TO_FLT_OP.SPD.OP/OP/p_2_out ));
(* use_sync_reset = "auto" *) 
   (* use_sync_set = "auto" *) 
   FDRE \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[7] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/first_q [7]),
        .Q(p_0_in[7]),
        .R(\FIX_TO_FLT_OP.SPD.OP/OP/p_2_out ));
(* use_sync_reset = "auto" *) 
   (* use_sync_set = "auto" *) 
   FDRE \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[8] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/first_q [8]),
        .Q(p_0_in[8]),
        .R(\FIX_TO_FLT_OP.SPD.OP/OP/p_2_out ));
(* use_sync_reset = "auto" *) 
   (* use_sync_set = "auto" *) 
   FDRE \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[9] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/first_q [9]),
        .Q(p_0_in[9]),
        .R(\FIX_TO_FLT_OP.SPD.OP/OP/p_2_out ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.sign_op_reg 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/EXP/IP_SIGN_DELAY/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][0]_srl4 ),
        .Q(p_0_in[31]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_IN_DEL/i_pipe/opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\<const0> ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_IN_DEL/i_pipe/first_q [0]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_IN_DEL/i_pipe/opt_has_pipe.first_q_reg[1] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\<const0> ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_IN_DEL/i_pipe/first_q [1]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_IN_DEL/i_pipe/opt_has_pipe.first_q_reg[2] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\<const0> ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_IN_DEL/i_pipe/first_q [2]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_IN_DEL/i_pipe/opt_has_pipe.first_q_reg[3] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\<const0> ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_IN_DEL/i_pipe/first_q [3]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_IN_DEL/i_pipe/opt_has_pipe.first_q_reg[4] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\<const0> ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_IN_DEL/i_pipe/first_q [4]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_IN_DEL/i_pipe/opt_has_pipe.first_q_reg[5] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\<const0> ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_IN_DEL/i_pipe/first_q [5]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_IN_DEL/i_pipe/opt_has_pipe.first_q_reg[6] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\<const0> ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_IN_DEL/i_pipe/first_q [6]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_IN_DEL/i_pipe/opt_has_pipe.first_q_reg[7] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\<const0> ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_IN_DEL/i_pipe/first_q [7]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_OFF_OP_DEL/i_pipe/opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\<const0> ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_OFF_OP_DEL/i_pipe/first_q [0]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_OFF_OP_DEL/i_pipe/opt_has_pipe.first_q_reg[1] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\<const0> ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_OFF_OP_DEL/i_pipe/first_q [1]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_OFF_OP_DEL/i_pipe/opt_has_pipe.first_q_reg[2] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\<const0> ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_OFF_OP_DEL/i_pipe/first_q [2]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_OFF_OP_DEL/i_pipe/opt_has_pipe.first_q_reg[3] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\<const0> ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_OFF_OP_DEL/i_pipe/first_q [3]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_OFF_OP_DEL/i_pipe/opt_has_pipe.first_q_reg[4] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\<const0> ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_OFF_OP_DEL/i_pipe/first_q [4]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_OFF_OP_DEL/i_pipe/opt_has_pipe.first_q_reg[5] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\<const0> ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_OFF_OP_DEL/i_pipe/first_q [5]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_OFF_OP_DEL/i_pipe/opt_has_pipe.first_q_reg[6] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\<const0> ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_OFF_OP_DEL/i_pipe/first_q [6]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_OFF_OP_DEL/i_pipe/opt_has_pipe.first_q_reg[7] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\<const0> ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_OFF_OP_DEL/i_pipe/first_q [7]),
        .R(\<const0> ));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* box_type = "PRIMITIVE" *) 
   CARRY4 \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[1].C_MUX.CARRY_MUX_CARRY4 
       (.CI(\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[0].C_MUX.CARRY_MUX ),
        .CO({\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[4].C_MUX.CARRY_MUX ,\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[3].C_MUX.CARRY_MUX ,\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[2].C_MUX.CARRY_MUX ,\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[1].C_MUX.CARRY_MUX }),
        .CYINIT(lopt_13),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[4].Q_XOR.SUM_XOR ,\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[3].Q_XOR.SUM_XOR ,\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[2].Q_XOR.SUM_XOR ,\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[1].Q_XOR.SUM_XOR }),
        .S(\FIX_TO_FLT_OP.SPD.OP/ROUND/mant_shifted_rnd1 [4:1]));
GND \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[1].C_MUX.CARRY_MUX_CARRY4_GND 
       (.G(lopt_13));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* box_type = "PRIMITIVE" *) 
   CARRY4 \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[5].C_MUX.CARRY_MUX_CARRY4 
       (.CI(\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[4].C_MUX.CARRY_MUX ),
        .CO({\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[8].C_MUX.CARRY_MUX ,\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[7].C_MUX.CARRY_MUX ,\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[6].C_MUX.CARRY_MUX ,\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[5].C_MUX.CARRY_MUX }),
        .CYINIT(lopt_14),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[8].Q_XOR.SUM_XOR ,\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[7].Q_XOR.SUM_XOR ,\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[6].Q_XOR.SUM_XOR ,\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[5].Q_XOR.SUM_XOR }),
        .S(\FIX_TO_FLT_OP.SPD.OP/ROUND/mant_shifted_rnd1 [8:5]));
GND \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[5].C_MUX.CARRY_MUX_CARRY4_GND 
       (.G(lopt_14));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* box_type = "PRIMITIVE" *) 
   CARRY4 \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[9].C_MUX.CARRY_MUX_CARRY4 
       (.CI(\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[8].C_MUX.CARRY_MUX ),
        .CO({\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CI ,\FIX_TO_FLT_OP.SPD.OP/ROUND/carry_rnd2 ,\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[10].C_MUX.CARRY_MUX ,\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[9].C_MUX.CARRY_MUX }),
        .CYINIT(lopt_15),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/O ,\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[11].Q_XOR.SUM_XOR ,\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[10].Q_XOR.SUM_XOR ,\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[9].Q_XOR.SUM_XOR }),
        .S({\FIX_TO_FLT_OP.SPD.OP/ROUND/sum_rnd2 [0],\FIX_TO_FLT_OP.SPD.OP/ROUND/mant_shifted_rnd1 [11:9]}));
GND \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[9].C_MUX.CARRY_MUX_CARRY4_GND 
       (.G(lopt_15));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/O ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/first_q [0]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[10] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[10].Q_XOR.SUM_XOR ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/first_q [10]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[11] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[11].Q_XOR.SUM_XOR ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/first_q [11]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[1] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[1].Q_XOR.SUM_XOR ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/first_q [1]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[2] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[2].Q_XOR.SUM_XOR ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/first_q [2]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[3] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[3].Q_XOR.SUM_XOR ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/first_q [3]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[4] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[4].Q_XOR.SUM_XOR ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/first_q [4]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[5] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[5].Q_XOR.SUM_XOR ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/first_q [5]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[6] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[6].Q_XOR.SUM_XOR ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/first_q [6]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[7] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[7].Q_XOR.SUM_XOR ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/first_q [7]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[8] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[8].Q_XOR.SUM_XOR ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/first_q [8]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[9] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[9].Q_XOR.SUM_XOR ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/first_q [9]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CI ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/first_q [0]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/opt_has_pipe.first_q_reg[10] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[10].C_MUX.CARRY_MUX ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/first_q [10]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/opt_has_pipe.first_q_reg[1] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[1].C_MUX.CARRY_MUX ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/first_q [1]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/opt_has_pipe.first_q_reg[2] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[2].C_MUX.CARRY_MUX ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/first_q [2]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/opt_has_pipe.first_q_reg[3] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[3].C_MUX.CARRY_MUX ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/first_q [3]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/opt_has_pipe.first_q_reg[4] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[4].C_MUX.CARRY_MUX ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/first_q [4]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/opt_has_pipe.first_q_reg[5] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[5].C_MUX.CARRY_MUX ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/first_q [5]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/opt_has_pipe.first_q_reg[6] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[6].C_MUX.CARRY_MUX ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/first_q [6]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/opt_has_pipe.first_q_reg[7] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[7].C_MUX.CARRY_MUX ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/first_q [7]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/opt_has_pipe.first_q_reg[8] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[8].C_MUX.CARRY_MUX ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/first_q [8]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/opt_has_pipe.first_q_reg[9] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[9].C_MUX.CARRY_MUX ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/first_q [9]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CARRYS_Q_DEL.NOT_FAST_OP.CARRY_DEL/i_pipe/opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\<const0> ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CARRYS_Q_DEL.NOT_FAST_OP.CARRY_DEL/i_pipe/first_q ),
        .R(\<const0> ));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* box_type = "PRIMITIVE" *) 
   CARRY4 \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[1].C_MUX.CARRY_MUX_CARRY4 
       (.CI(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CI ),
        .CO({\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[4].C_MUX.CARRY_MUX ,\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[3].C_MUX.CARRY_MUX ,\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[2].C_MUX.CARRY_MUX ,\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[1].C_MUX.CARRY_MUX }),
        .CYINIT(lopt_16),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[4].Q_XOR.SUM_XOR ,\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[3].Q_XOR.SUM_XOR ,\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[2].Q_XOR.SUM_XOR ,\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[1].Q_XOR.SUM_XOR }),
        .S(\FIX_TO_FLT_OP.SPD.OP/ROUND/sum_rnd2 [4:1]));
GND \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[1].C_MUX.CARRY_MUX_CARRY4_GND 
       (.G(lopt_16));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* box_type = "PRIMITIVE" *) 
   CARRY4 \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[5].C_MUX.CARRY_MUX_CARRY4 
       (.CI(\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[4].C_MUX.CARRY_MUX ),
        .CO({\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[8].C_MUX.CARRY_MUX ,\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[7].C_MUX.CARRY_MUX ,\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[6].C_MUX.CARRY_MUX ,\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[5].C_MUX.CARRY_MUX }),
        .CYINIT(lopt_17),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[8].Q_XOR.SUM_XOR ,\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[7].Q_XOR.SUM_XOR ,\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[6].Q_XOR.SUM_XOR ,\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[5].Q_XOR.SUM_XOR }),
        .S(\FIX_TO_FLT_OP.SPD.OP/ROUND/sum_rnd2 [8:5]));
GND \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[5].C_MUX.CARRY_MUX_CARRY4_GND 
       (.G(lopt_17));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* box_type = "PRIMITIVE" *) 
   CARRY4 \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[9].C_MUX.CARRY_MUX_CARRY4 
       (.CI(\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[8].C_MUX.CARRY_MUX ),
        .CO({\NLW_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[9].C_MUX.CARRY_MUX_CARRY4_CO_UNCONNECTED [3:2],\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[10].C_MUX.CARRY_MUX ,\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[9].C_MUX.CARRY_MUX }),
        .CYINIT(lopt_18),
        .DI({\NLW_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[9].C_MUX.CARRY_MUX_CARRY4_DI_UNCONNECTED [3:2],\<const0> ,\<const0> }),
        .O({\NLW_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[9].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED [3],\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[11].Q_XOR.SUM_XOR ,\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[10].Q_XOR.SUM_XOR ,\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[9].Q_XOR.SUM_XOR }),
        .S({\NLW_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[9].C_MUX.CARRY_MUX_CARRY4_S_UNCONNECTED [3],\<const1> ,\FIX_TO_FLT_OP.SPD.OP/ROUND/sum_rnd2 [10:9]}));
GND \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[9].C_MUX.CARRY_MUX_CARRY4_GND 
       (.G(lopt_18));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/O ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q [0]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[10] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[10].Q_XOR.SUM_XOR ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q [10]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[11] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[11].Q_XOR.SUM_XOR ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q [11]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[1] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[1].Q_XOR.SUM_XOR ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q [1]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[2] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[2].Q_XOR.SUM_XOR ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q [2]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[3] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[3].Q_XOR.SUM_XOR ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q [3]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[4] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[4].Q_XOR.SUM_XOR ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q [4]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[5] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[5].Q_XOR.SUM_XOR ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q [5]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[6] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[6].Q_XOR.SUM_XOR ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q [6]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[7] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[7].Q_XOR.SUM_XOR ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q [7]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[8] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[8].Q_XOR.SUM_XOR ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q [8]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[9] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[9].Q_XOR.SUM_XOR ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q [9]),
        .R(\<const0> ));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* box_type = "PRIMITIVE" *) 
   CARRY4 \FIX_TO_FLT_OP.SPD.OP/ROUND/RND_BIT_GEN/NORM_1_OR_0.STRUCT_REQ.GENERAL.RND1/CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4 
       (.CI(lopt_12),
        .CO({\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[0].C_MUX.CARRY_MUX ,\FIX_TO_FLT_OP.SPD.OP/ROUND/round_rnd1 ,\NLW_FIX_TO_FLT_OP.SPD.OP/ROUND/RND_BIT_GEN/NORM_1_OR_0.STRUCT_REQ.GENERAL.RND1/CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_CO_UNCONNECTED [1:0]}),
        .CYINIT(\<const1> ),
        .DI({\<const0> ,\<const1> ,\<const0> ,\<const0> }),
        .O({\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/O ,\NLW_FIX_TO_FLT_OP.SPD.OP/ROUND/RND_BIT_GEN/NORM_1_OR_0.STRUCT_REQ.GENERAL.RND1/CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED [2:0]}),
        .S({\FIX_TO_FLT_OP.SPD.OP/ROUND/mant_shifted_rnd1 [0],\n_0_CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1 ,\<const0> ,\n_0_CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1 }));
GND \FIX_TO_FLT_OP.SPD.OP/ROUND/RND_BIT_GEN/NORM_1_OR_0.STRUCT_REQ.GENERAL.RND1/CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_GND 
       (.G(lopt_12));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [0]),
        .Q(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [0]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/opt_has_pipe.first_q_reg[10] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [10]),
        .Q(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [10]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/opt_has_pipe.first_q_reg[11] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [11]),
        .Q(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [11]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/opt_has_pipe.first_q_reg[12] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [12]),
        .Q(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [12]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/opt_has_pipe.first_q_reg[13] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [13]),
        .Q(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [13]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/opt_has_pipe.first_q_reg[14] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [14]),
        .Q(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [14]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/opt_has_pipe.first_q_reg[15] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [15]),
        .Q(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [15]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/opt_has_pipe.first_q_reg[16] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [16]),
        .Q(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [16]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/opt_has_pipe.first_q_reg[17] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [17]),
        .Q(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [17]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/opt_has_pipe.first_q_reg[18] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [18]),
        .Q(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [18]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/opt_has_pipe.first_q_reg[19] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [19]),
        .Q(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [19]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/opt_has_pipe.first_q_reg[1] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [1]),
        .Q(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [1]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/opt_has_pipe.first_q_reg[20] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [20]),
        .Q(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [20]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/opt_has_pipe.first_q_reg[21] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [21]),
        .Q(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [21]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/opt_has_pipe.first_q_reg[22] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [22]),
        .Q(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [22]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/opt_has_pipe.first_q_reg[23] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [23]),
        .Q(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [23]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/opt_has_pipe.first_q_reg[24] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [24]),
        .Q(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [24]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/opt_has_pipe.first_q_reg[25] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [25]),
        .Q(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [25]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/opt_has_pipe.first_q_reg[26] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [26]),
        .Q(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [26]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/opt_has_pipe.first_q_reg[27] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [27]),
        .Q(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [27]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/opt_has_pipe.first_q_reg[28] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [28]),
        .Q(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [28]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/opt_has_pipe.first_q_reg[29] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [29]),
        .Q(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [29]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/opt_has_pipe.first_q_reg[2] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [2]),
        .Q(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [2]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/opt_has_pipe.first_q_reg[30] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [30]),
        .Q(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [30]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/opt_has_pipe.first_q_reg[31] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [31]),
        .Q(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [31]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/opt_has_pipe.first_q_reg[3] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [3]),
        .Q(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [3]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/opt_has_pipe.first_q_reg[4] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [4]),
        .Q(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [4]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/opt_has_pipe.first_q_reg[5] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [5]),
        .Q(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [5]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/opt_has_pipe.first_q_reg[6] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [6]),
        .Q(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [6]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/opt_has_pipe.first_q_reg[7] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [7]),
        .Q(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [7]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/opt_has_pipe.first_q_reg[8] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [8]),
        .Q(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [8]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/opt_has_pipe.first_q_reg[9] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [9]),
        .Q(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [9]),
        .R(\<const0> ));
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
   (* WIDTH = "41" *) 
   (* downgradeipidentifiedwarnings = "yes" *) 
   ip_axis_fi32tofp32glb_ifx_master \HAS_OUTPUT_FIFO.i_output_fifo 
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
        .wr_data({p_1_in,p_0_in}),
        .wr_enable(valid_transfer_out));
LUT3 #(
    .INIT(8'h21)) 
     \RESULT_REG.NORMAL.exp_op[0]_i_1 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q [0]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/OP/p_2_out ),
        .I2(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q [11]),
        .O(EXP[0]));
LUT4 #(
    .INIT(16'h0D02)) 
     \RESULT_REG.NORMAL.exp_op[1]_i_1 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q [0]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q [11]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/OP/p_2_out ),
        .I3(\FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q [1]),
        .O(EXP[1]));
LUT5 #(
    .INIT(32'h00BF0040)) 
     \RESULT_REG.NORMAL.exp_op[2]_i_1 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q [11]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q [0]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q [1]),
        .I3(\FIX_TO_FLT_OP.SPD.OP/OP/p_2_out ),
        .I4(\FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q [2]),
        .O(EXP[2]));
LUT6 #(
    .INIT(64'h0000F7FF00000800)) 
     \RESULT_REG.NORMAL.exp_op[3]_i_1 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q [1]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q [0]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q [11]),
        .I3(\FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q [2]),
        .I4(\FIX_TO_FLT_OP.SPD.OP/OP/p_2_out ),
        .I5(\FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q [3]),
        .O(EXP[3]));
LUT3 #(
    .INIT(8'h9A)) 
     \RESULT_REG.NORMAL.exp_op[4]_i_1 
       (.I0(\n_0_RESULT_REG.NORMAL.exp_op[7]_i_2 ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/OP/p_2_out ),
        .I2(\FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q [4]),
        .O(EXP[4]));
LUT4 #(
    .INIT(16'h0708)) 
     \RESULT_REG.NORMAL.exp_op[5]_i_1 
       (.I0(\n_0_RESULT_REG.NORMAL.exp_op[7]_i_2 ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q [4]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/OP/p_2_out ),
        .I3(\FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q [5]),
        .O(EXP[5]));
LUT5 #(
    .INIT(32'h007F0080)) 
     \RESULT_REG.NORMAL.exp_op[6]_i_1 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q [4]),
        .I1(\n_0_RESULT_REG.NORMAL.exp_op[7]_i_2 ),
        .I2(\FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q [5]),
        .I3(\FIX_TO_FLT_OP.SPD.OP/OP/p_2_out ),
        .I4(\FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q [6]),
        .O(EXP[6]));
LUT6 #(
    .INIT(64'h00007FFF00008000)) 
     \RESULT_REG.NORMAL.exp_op[7]_i_1 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q [5]),
        .I1(\n_0_RESULT_REG.NORMAL.exp_op[7]_i_2 ),
        .I2(\FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q [4]),
        .I3(\FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q [6]),
        .I4(\FIX_TO_FLT_OP.SPD.OP/OP/p_2_out ),
        .I5(\FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q [7]),
        .O(EXP[7]));
LUT6 #(
    .INIT(64'h0000008000000000)) 
     \RESULT_REG.NORMAL.exp_op[7]_i_2 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q [3]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q [1]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q [0]),
        .I3(\FIX_TO_FLT_OP.SPD.OP/OP/p_2_out ),
        .I4(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q [11]),
        .I5(\FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q [2]),
        .O(\n_0_RESULT_REG.NORMAL.exp_op[7]_i_2 ));
LUT2 #(
    .INIT(4'h2)) 
     \RESULT_REG.NORMAL.mant_op[22]_i_1 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q [10]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/OP/p_2_out ),
        .O(\n_0_RESULT_REG.NORMAL.mant_op[22]_i_1 ));
VCC VCC
       (.P(\<const1> ));
LUT2 #(
    .INIT(4'h1)) 
     \ZERO_DET[1].mc_i_1 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [1]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [0]),
        .O(\n_0_ZERO_DET[1].mc_i_1 ));
LUT2 #(
    .INIT(4'h1)) 
     \ZERO_DET[2].mc_i_1 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [3]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [2]),
        .O(\n_0_ZERO_DET[2].mc_i_1 ));
LUT2 #(
    .INIT(4'h1)) 
     \ZERO_DET[3].mc_i_1 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [5]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [4]),
        .O(\FIX_TO_FLT_OP.SPD.OP/NEED_Z_DET.Z_DET/flt_all_zero ));
LUT3 #(
    .INIT(8'h0D)) 
     \gen_has_z_tready.reg1_a_ready_i_1 
       (.I0(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_valid_nxt ),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg2_b_valid_nxt ),
        .I2(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid_nxt ),
        .O(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_ready_nxt ));
LUT6 #(
    .INIT(64'h0800888800000000)) 
     \gen_has_z_tready.reg1_a_tdata[31]_i_1 
       (.I0(s_axis_a_tvalid),
        .I1(s_axis_a_tready),
        .I2(m_axis_result_tready),
        .I3(m_axis_result_tvalid),
        .I4(\need_combiner.use_2to1.skid_buffer_combiner/reg2_b_valid ),
        .I5(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_valid ),
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
LUT6 #(
    .INIT(64'hBFBFFFBFAAAAAAAA)) 
     \gen_has_z_tready.reg1_a_valid_i_1 
       (.I0(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_tlast ),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_valid ),
        .I2(\need_combiner.use_2to1.skid_buffer_combiner/reg2_b_valid ),
        .I3(m_axis_result_tvalid),
        .I4(m_axis_result_tready),
        .I5(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .O(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid_nxt ));
(* SOFT_HLUTNM = "soft_lutpair6" *) 
   LUT3 #(
    .INIT(8'h0D)) 
     \gen_has_z_tready.reg1_b_ready_i_1 
       (.I0(\need_combiner.use_2to1.skid_buffer_combiner/reg2_b_valid_nxt ),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_valid_nxt ),
        .I2(\need_combiner.use_2to1.skid_buffer_combiner/reg1_b_valid_nxt ),
        .O(\need_combiner.use_2to1.skid_buffer_combiner/reg1_b_ready_nxt ));
LUT6 #(
    .INIT(64'h4F4FFF004F00FF00)) 
     \gen_has_z_tready.reg1_b_valid_i_1 
       (.I0(m_axis_result_tready),
        .I1(m_axis_result_tvalid),
        .I2(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_valid ),
        .I3(\need_combiner.use_2to1.skid_buffer_combiner/reg1_b_valid ),
        .I4(\need_combiner.use_2to1.skid_buffer_combiner/reg2_b_valid ),
        .I5(\need_combiner.use_2to1.skid_buffer_combiner/b_tx ),
        .O(\need_combiner.use_2to1.skid_buffer_combiner/reg1_b_valid_nxt ));
(* SOFT_HLUTNM = "soft_lutpair20" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tdata[0]_i_1 
       (.I0(reg1_a_tdata[0]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tdata[0]),
        .O(\n_0_gen_has_z_tready.reg2_a_tdata[0]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair15" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tdata[10]_i_1 
       (.I0(reg1_a_tdata[10]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tdata[10]),
        .O(\n_0_gen_has_z_tready.reg2_a_tdata[10]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair15" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tdata[11]_i_1 
       (.I0(reg1_a_tdata[11]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tdata[11]),
        .O(\n_0_gen_has_z_tready.reg2_a_tdata[11]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair14" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tdata[12]_i_1 
       (.I0(reg1_a_tdata[12]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tdata[12]),
        .O(\n_0_gen_has_z_tready.reg2_a_tdata[12]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair13" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tdata[13]_i_1 
       (.I0(reg1_a_tdata[13]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tdata[13]),
        .O(\n_0_gen_has_z_tready.reg2_a_tdata[13]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair14" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tdata[14]_i_1 
       (.I0(reg1_a_tdata[14]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tdata[14]),
        .O(\n_0_gen_has_z_tready.reg2_a_tdata[14]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair13" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tdata[15]_i_1 
       (.I0(reg1_a_tdata[15]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tdata[15]),
        .O(\n_0_gen_has_z_tready.reg2_a_tdata[15]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair12" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tdata[16]_i_1 
       (.I0(reg1_a_tdata[16]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tdata[16]),
        .O(\n_0_gen_has_z_tready.reg2_a_tdata[16]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair12" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tdata[17]_i_1 
       (.I0(reg1_a_tdata[17]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tdata[17]),
        .O(\n_0_gen_has_z_tready.reg2_a_tdata[17]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair11" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tdata[18]_i_1 
       (.I0(reg1_a_tdata[18]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tdata[18]),
        .O(\n_0_gen_has_z_tready.reg2_a_tdata[18]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair11" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tdata[19]_i_1 
       (.I0(reg1_a_tdata[19]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tdata[19]),
        .O(\n_0_gen_has_z_tready.reg2_a_tdata[19]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair20" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tdata[1]_i_1 
       (.I0(reg1_a_tdata[1]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tdata[1]),
        .O(\n_0_gen_has_z_tready.reg2_a_tdata[1]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair10" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tdata[20]_i_1 
       (.I0(reg1_a_tdata[20]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tdata[20]),
        .O(\n_0_gen_has_z_tready.reg2_a_tdata[20]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair10" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tdata[21]_i_1 
       (.I0(reg1_a_tdata[21]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tdata[21]),
        .O(\n_0_gen_has_z_tready.reg2_a_tdata[21]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair9" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tdata[22]_i_1 
       (.I0(reg1_a_tdata[22]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tdata[22]),
        .O(\n_0_gen_has_z_tready.reg2_a_tdata[22]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair8" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tdata[23]_i_1 
       (.I0(reg1_a_tdata[23]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tdata[23]),
        .O(\n_0_gen_has_z_tready.reg2_a_tdata[23]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair9" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tdata[24]_i_1 
       (.I0(reg1_a_tdata[24]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tdata[24]),
        .O(\n_0_gen_has_z_tready.reg2_a_tdata[24]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair8" *) 
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
(* SOFT_HLUTNM = "soft_lutpair5" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tdata[27]_i_1 
       (.I0(reg1_a_tdata[27]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tdata[27]),
        .O(\n_0_gen_has_z_tready.reg2_a_tdata[27]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair4" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tdata[28]_i_1 
       (.I0(reg1_a_tdata[28]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tdata[28]),
        .O(\n_0_gen_has_z_tready.reg2_a_tdata[28]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair4" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tdata[29]_i_1 
       (.I0(reg1_a_tdata[29]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tdata[29]),
        .O(\n_0_gen_has_z_tready.reg2_a_tdata[29]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair19" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tdata[2]_i_1 
       (.I0(reg1_a_tdata[2]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tdata[2]),
        .O(\n_0_gen_has_z_tready.reg2_a_tdata[2]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair3" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tdata[30]_i_1 
       (.I0(reg1_a_tdata[30]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tdata[30]),
        .O(\n_0_gen_has_z_tready.reg2_a_tdata[30]_i_1 ));
LUT4 #(
    .INIT(16'hDD5D)) 
     \gen_has_z_tready.reg2_a_tdata[31]_i_1 
       (.I0(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_valid ),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg2_b_valid ),
        .I2(m_axis_result_tvalid),
        .I3(m_axis_result_tready),
        .O(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ));
(* SOFT_HLUTNM = "soft_lutpair3" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tdata[31]_i_2 
       (.I0(reg1_a_tdata[31]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tdata[31]),
        .O(\n_0_gen_has_z_tready.reg2_a_tdata[31]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair19" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tdata[3]_i_1 
       (.I0(reg1_a_tdata[3]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tdata[3]),
        .O(\n_0_gen_has_z_tready.reg2_a_tdata[3]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair18" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tdata[4]_i_1 
       (.I0(reg1_a_tdata[4]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tdata[4]),
        .O(\n_0_gen_has_z_tready.reg2_a_tdata[4]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair18" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tdata[5]_i_1 
       (.I0(reg1_a_tdata[5]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tdata[5]),
        .O(\n_0_gen_has_z_tready.reg2_a_tdata[5]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair17" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tdata[6]_i_1 
       (.I0(reg1_a_tdata[6]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tdata[6]),
        .O(\n_0_gen_has_z_tready.reg2_a_tdata[6]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair17" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tdata[7]_i_1 
       (.I0(reg1_a_tdata[7]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tdata[7]),
        .O(\n_0_gen_has_z_tready.reg2_a_tdata[7]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair16" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tdata[8]_i_1 
       (.I0(reg1_a_tdata[8]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tdata[8]),
        .O(\n_0_gen_has_z_tready.reg2_a_tdata[8]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair16" *) 
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
(* SOFT_HLUTNM = "soft_lutpair24" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tuser[0]_i_1 
       (.I0(reg1_a_tuser[0]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tuser[0]),
        .O(\n_0_gen_has_z_tready.reg2_a_tuser[0]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair24" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tuser[1]_i_1 
       (.I0(reg1_a_tuser[1]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tuser[1]),
        .O(\n_0_gen_has_z_tready.reg2_a_tuser[1]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair23" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tuser[2]_i_1 
       (.I0(reg1_a_tuser[2]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tuser[2]),
        .O(\n_0_gen_has_z_tready.reg2_a_tuser[2]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair23" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tuser[3]_i_1 
       (.I0(reg1_a_tuser[3]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tuser[3]),
        .O(\n_0_gen_has_z_tready.reg2_a_tuser[3]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair22" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tuser[4]_i_1 
       (.I0(reg1_a_tuser[4]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tuser[4]),
        .O(\n_0_gen_has_z_tready.reg2_a_tuser[4]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair22" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tuser[5]_i_1 
       (.I0(reg1_a_tuser[5]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tuser[5]),
        .O(\n_0_gen_has_z_tready.reg2_a_tuser[5]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair21" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tuser[6]_i_1 
       (.I0(reg1_a_tuser[6]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tuser[6]),
        .O(\n_0_gen_has_z_tready.reg2_a_tuser[6]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair21" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tuser[7]_i_1 
       (.I0(reg1_a_tuser[7]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tuser[7]),
        .O(\n_0_gen_has_z_tready.reg2_a_tuser[7]_i_1 ));
LUT6 #(
    .INIT(64'hF4F4F444F444F444)) 
     \gen_has_z_tready.reg2_a_valid_i_1 
       (.I0(valid_transfer_in),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_valid ),
        .I2(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .I3(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I4(s_axis_a_tvalid),
        .I5(s_axis_a_tready),
        .O(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_valid_nxt ));
LUT6 #(
    .INIT(64'hFFFFA8FFFCFCFCFC)) 
     \gen_has_z_tready.reg2_b_valid_i_1 
       (.I0(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_valid ),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/b_tx ),
        .I2(\need_combiner.use_2to1.skid_buffer_combiner/reg1_b_valid ),
        .I3(combiner_data_valid),
        .I4(\n_0_gen_has_z_tready.reg2_b_valid_i_2 ),
        .I5(\need_combiner.use_2to1.skid_buffer_combiner/reg2_b_valid ),
        .O(\need_combiner.use_2to1.skid_buffer_combiner/reg2_b_valid_nxt ));
(* SOFT_HLUTNM = "soft_lutpair7" *) 
   LUT2 #(
    .INIT(4'h2)) 
     \gen_has_z_tready.reg2_b_valid_i_2 
       (.I0(m_axis_result_tvalid),
        .I1(m_axis_result_tready),
        .O(\n_0_gen_has_z_tready.reg2_b_valid_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair6" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \gen_has_z_tready.z_valid_i_1 
       (.I0(\need_combiner.use_2to1.skid_buffer_combiner/reg2_b_valid_nxt ),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_valid_nxt ),
        .O(\need_combiner.use_2to1.skid_buffer_combiner/p_2_out ));
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
        .Q(\pipe[4] ),
        .R(sclr_i));
FDRE #(
    .INIT(1'b0)) 
     \i_nd_to_rdy/opt_has_pipe.i_pipe[5].pipe_reg[5][0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\pipe[4] ),
        .Q(\pipe[5] ),
        .R(sclr_i));
FDRE #(
    .INIT(1'b0)) 
     \i_nd_to_rdy/opt_has_pipe.i_pipe[6].pipe_reg[6][0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\pipe[5] ),
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
        .Q(\need_combiner.use_2to1.skid_buffer_combiner/b_tx ),
        .R(sclr_i));
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
        .Q(reg2_a_tdata[0]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[10] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[10]_i_1 ),
        .Q(reg2_a_tdata[10]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[11] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[11]_i_1 ),
        .Q(reg2_a_tdata[11]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[12] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[12]_i_1 ),
        .Q(reg2_a_tdata[12]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[13] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[13]_i_1 ),
        .Q(reg2_a_tdata[13]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[14] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[14]_i_1 ),
        .Q(reg2_a_tdata[14]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[15] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[15]_i_1 ),
        .Q(reg2_a_tdata[15]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[16] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[16]_i_1 ),
        .Q(reg2_a_tdata[16]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[17] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[17]_i_1 ),
        .Q(reg2_a_tdata[17]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[18] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[18]_i_1 ),
        .Q(reg2_a_tdata[18]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[19] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[19]_i_1 ),
        .Q(reg2_a_tdata[19]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[1] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[1]_i_1 ),
        .Q(reg2_a_tdata[1]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[20] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[20]_i_1 ),
        .Q(reg2_a_tdata[20]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[21] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[21]_i_1 ),
        .Q(reg2_a_tdata[21]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[22] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[22]_i_1 ),
        .Q(reg2_a_tdata[22]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[23] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[23]_i_1 ),
        .Q(reg2_a_tdata[23]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[24] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[24]_i_1 ),
        .Q(reg2_a_tdata[24]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[25] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[25]_i_1 ),
        .Q(reg2_a_tdata[25]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[26] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[26]_i_1 ),
        .Q(reg2_a_tdata[26]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[27] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[27]_i_1 ),
        .Q(reg2_a_tdata[27]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[28] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[28]_i_1 ),
        .Q(reg2_a_tdata[28]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[29] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[29]_i_1 ),
        .Q(reg2_a_tdata[29]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[2] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[2]_i_1 ),
        .Q(reg2_a_tdata[2]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[30] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[30]_i_1 ),
        .Q(reg2_a_tdata[30]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[31] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[31]_i_2 ),
        .Q(p_2_out),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[3] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[3]_i_1 ),
        .Q(reg2_a_tdata[3]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[4] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[4]_i_1 ),
        .Q(reg2_a_tdata[4]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[5] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[5]_i_1 ),
        .Q(reg2_a_tdata[5]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[6] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[6]_i_1 ),
        .Q(reg2_a_tdata[6]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[7] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[7]_i_1 ),
        .Q(reg2_a_tdata[7]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[8] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[8]_i_1 ),
        .Q(reg2_a_tdata[8]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[9] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[9]_i_1 ),
        .Q(reg2_a_tdata[9]),
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
        .D(\need_combiner.use_2to1.skid_buffer_combiner/p_2_out ),
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
        .D(reg2_a_tlast),
        .Q(\need_user_delay.user_pipe/i_pipe/first_q [8]),
        .R(\<const0> ));
(* srl_bus_name = "U0/i_synth/\need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5] " *) 
   (* srl_name = "U0/i_synth/\need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][0]_srl4 " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     \need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][0]_srl4 
       (.A0(\<const1> ),
        .A1(\<const1> ),
        .A2(\<const0> ),
        .A3(\<const0> ),
        .CE(\<const1> ),
        .CLK(aclk),
        .D(\need_user_delay.user_pipe/i_pipe/first_q [0]),
        .Q(\n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][0]_srl4 ));
(* srl_bus_name = "U0/i_synth/\need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5] " *) 
   (* srl_name = "U0/i_synth/\need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][1]_srl4 " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     \need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][1]_srl4 
       (.A0(\<const1> ),
        .A1(\<const1> ),
        .A2(\<const0> ),
        .A3(\<const0> ),
        .CE(\<const1> ),
        .CLK(aclk),
        .D(\need_user_delay.user_pipe/i_pipe/first_q [1]),
        .Q(\n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][1]_srl4 ));
(* srl_bus_name = "U0/i_synth/\need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5] " *) 
   (* srl_name = "U0/i_synth/\need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][2]_srl4 " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     \need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][2]_srl4 
       (.A0(\<const1> ),
        .A1(\<const1> ),
        .A2(\<const0> ),
        .A3(\<const0> ),
        .CE(\<const1> ),
        .CLK(aclk),
        .D(\need_user_delay.user_pipe/i_pipe/first_q [2]),
        .Q(\n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][2]_srl4 ));
(* srl_bus_name = "U0/i_synth/\need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5] " *) 
   (* srl_name = "U0/i_synth/\need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][3]_srl4 " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     \need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][3]_srl4 
       (.A0(\<const1> ),
        .A1(\<const1> ),
        .A2(\<const0> ),
        .A3(\<const0> ),
        .CE(\<const1> ),
        .CLK(aclk),
        .D(\need_user_delay.user_pipe/i_pipe/first_q [3]),
        .Q(\n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][3]_srl4 ));
(* srl_bus_name = "U0/i_synth/\need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5] " *) 
   (* srl_name = "U0/i_synth/\need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][4]_srl4 " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     \need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][4]_srl4 
       (.A0(\<const1> ),
        .A1(\<const1> ),
        .A2(\<const0> ),
        .A3(\<const0> ),
        .CE(\<const1> ),
        .CLK(aclk),
        .D(\need_user_delay.user_pipe/i_pipe/first_q [4]),
        .Q(\n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][4]_srl4 ));
(* srl_bus_name = "U0/i_synth/\need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5] " *) 
   (* srl_name = "U0/i_synth/\need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][5]_srl4 " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     \need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][5]_srl4 
       (.A0(\<const1> ),
        .A1(\<const1> ),
        .A2(\<const0> ),
        .A3(\<const0> ),
        .CE(\<const1> ),
        .CLK(aclk),
        .D(\need_user_delay.user_pipe/i_pipe/first_q [5]),
        .Q(\n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][5]_srl4 ));
(* srl_bus_name = "U0/i_synth/\need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5] " *) 
   (* srl_name = "U0/i_synth/\need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][6]_srl4 " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     \need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][6]_srl4 
       (.A0(\<const1> ),
        .A1(\<const1> ),
        .A2(\<const0> ),
        .A3(\<const0> ),
        .CE(\<const1> ),
        .CLK(aclk),
        .D(\need_user_delay.user_pipe/i_pipe/first_q [6]),
        .Q(\n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][6]_srl4 ));
(* srl_bus_name = "U0/i_synth/\need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5] " *) 
   (* srl_name = "U0/i_synth/\need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][7]_srl4 " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     \need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][7]_srl4 
       (.A0(\<const1> ),
        .A1(\<const1> ),
        .A2(\<const0> ),
        .A3(\<const0> ),
        .CE(\<const1> ),
        .CLK(aclk),
        .D(\need_user_delay.user_pipe/i_pipe/first_q [7]),
        .Q(\n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][7]_srl4 ));
(* srl_bus_name = "U0/i_synth/\need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5] " *) 
   (* srl_name = "U0/i_synth/\need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][8]_srl4 " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     \need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][8]_srl4 
       (.A0(\<const1> ),
        .A1(\<const1> ),
        .A2(\<const0> ),
        .A3(\<const0> ),
        .CE(\<const1> ),
        .CLK(aclk),
        .D(\need_user_delay.user_pipe/i_pipe/first_q [8]),
        .Q(\n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][8]_srl4 ));
FDRE #(
    .INIT(1'b0)) 
     \need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[6].pipe_reg[6][0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][0]_srl4 ),
        .Q(p_1_in[0]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[6].pipe_reg[6][1] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][1]_srl4 ),
        .Q(p_1_in[1]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[6].pipe_reg[6][2] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][2]_srl4 ),
        .Q(p_1_in[2]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[6].pipe_reg[6][3] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][3]_srl4 ),
        .Q(p_1_in[3]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[6].pipe_reg[6][4] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][4]_srl4 ),
        .Q(p_1_in[4]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[6].pipe_reg[6][5] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][5]_srl4 ),
        .Q(p_1_in[5]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[6].pipe_reg[6][6] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][6]_srl4 ),
        .Q(p_1_in[6]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[6].pipe_reg[6][7] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][7]_srl4 ),
        .Q(p_1_in[7]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[6].pipe_reg[6][8] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][8]_srl4 ),
        .Q(p_1_in[8]),
        .R(\<const0> ));
(* SOFT_HLUTNM = "soft_lutpair7" *) 
   LUT3 #(
    .INIT(8'h8A)) 
     \opt_has_pipe.first_q[0]_i_1 
       (.I0(combiner_data_valid),
        .I1(m_axis_result_tready),
        .I2(m_axis_result_tvalid),
        .O(valid_transfer_in));
LUT5 #(
    .INIT(32'hB8FFB800)) 
     \opt_has_pipe.first_q[0]_i_1__0 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/LZE/p_0_out [4]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/LZE/p_0_out [3]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/LZE/p_0_out [0]),
        .I3(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew ),
        .I4(\n_0_opt_has_pipe.first_q[0]_i_2 ),
        .O(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/op_int [0]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \opt_has_pipe.first_q[0]_i_1__1 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [6]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [2]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew__0 [1]),
        .I3(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [4]),
        .I4(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q [1]),
        .I5(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [0]),
        .O(\n_0_opt_has_pipe.first_q[0]_i_1__1 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \opt_has_pipe.first_q[0]_i_1__2 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [15]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [31]),
        .I2(\n_0_opt_has_pipe.first_q[3]_i_2 ),
        .I3(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [7]),
        .I4(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew ),
        .I5(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [23]),
        .O(\n_0_opt_has_pipe.first_q[0]_i_1__2 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \opt_has_pipe.first_q[0]_i_1__3 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [15]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [31]),
        .I2(\n_0_opt_has_pipe.first_q[3]_i_2 ),
        .I3(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [7]),
        .I4(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew ),
        .I5(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [23]),
        .O(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/op_int [0]));
LUT2 #(
    .INIT(4'h8)) 
     \opt_has_pipe.first_q[0]_i_1__4 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/LZE/p_0_out [7]),
        .O(\FIX_TO_FLT_OP.SPD.OP/LZE/all_bits_zero_del ));
LUT1 #(
    .INIT(2'h1)) 
     \opt_has_pipe.first_q[0]_i_1__5 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].MUX_0/OP_DEL/i_pipe/first_q ),
        .O(minusOp[0]));
LUT5 #(
    .INIT(32'hB8FFB800)) 
     \opt_has_pipe.first_q[0]_i_1__6 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/OP_DEL/i_pipe/first_q [3]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q [2]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/OP_DEL/i_pipe/first_q [2]),
        .I3(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q [1]),
        .I4(\n_0_opt_has_pipe.first_q[0]_i_2__0 ),
        .O(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].MUX_0/op_int ));
LUT3 #(
    .INIT(8'h80)) 
     \opt_has_pipe.first_q[0]_i_1__7 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q [3]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q [2]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q [1]),
        .O(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].MUX_Z/op_int ));
LUT5 #(
    .INIT(32'hFFFFE040)) 
     \opt_has_pipe.first_q[0]_i_1__8 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q [2]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/NEED_Z_DET.Z_DET/ENCODE[0].Z_DET_DEL/i_pipe/first_q [1]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q [1]),
        .I3(\FIX_TO_FLT_OP.SPD.OP/NEED_Z_DET.Z_DET/ENCODE[0].Z_DET_DEL/i_pipe/first_q [0]),
        .I4(\n_0_opt_has_pipe.first_q[0]_i_2__1 ),
        .O(\n_0_opt_has_pipe.first_q[0]_i_1__8 ));
(* SOFT_HLUTNM = "soft_lutpair26" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \opt_has_pipe.first_q[0]_i_2 
       (.I0(\n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[4].CARRYS_DEL.NEED_DEL.CARRYS_FD ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/LZE/p_1_in ),
        .I2(\n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[0].CARRYS_DEL.NEED_DEL.CARRYS_FD ),
        .O(\n_0_opt_has_pipe.first_q[0]_i_2 ));
LUT3 #(
    .INIT(8'hB8)) 
     \opt_has_pipe.first_q[0]_i_2__0 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/OP_DEL/i_pipe/first_q [1]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q [0]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/OP_DEL/i_pipe/first_q [0]),
        .O(\n_0_opt_has_pipe.first_q[0]_i_2__0 ));
LUT5 #(
    .INIT(32'hBABBBAAA)) 
     \opt_has_pipe.first_q[0]_i_2__1 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/NEED_Z_DET.Z_DET/ENCODE[0].DIST_OVER_DEL/i_pipe/first_q ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q [1]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/NEED_Z_DET.Z_DET/ENCODE[0].Z_DET_DEL/i_pipe/first_q [2]),
        .I3(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q [0]),
        .I4(\FIX_TO_FLT_OP.SPD.OP/NEED_Z_DET.Z_DET/ENCODE[0].Z_DET_DEL/i_pipe/first_q [3]),
        .O(\n_0_opt_has_pipe.first_q[0]_i_2__1 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \opt_has_pipe.first_q[10]_i_1 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [16]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [12]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew__0 [1]),
        .I3(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [14]),
        .I4(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q [1]),
        .I5(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [10]),
        .O(\n_0_opt_has_pipe.first_q[10]_i_1 ));
LUT6 #(
    .INIT(64'h0A0AFFCC0A0A00CC)) 
     \opt_has_pipe.first_q[10]_i_1__0 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [5]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [21]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/LZE/p_0_out [3]),
        .I3(\FIX_TO_FLT_OP.SPD.OP/LZE/p_1_in ),
        .I4(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew ),
        .I5(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [13]),
        .O(\n_0_opt_has_pipe.first_q[10]_i_1__0 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \opt_has_pipe.first_q[11]_i_1 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [17]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [13]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew__0 [1]),
        .I3(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [15]),
        .I4(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q [1]),
        .I5(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [11]),
        .O(\n_0_opt_has_pipe.first_q[11]_i_1 ));
LUT6 #(
    .INIT(64'h33AF00AF33A000A0)) 
     \opt_has_pipe.first_q[11]_i_1__0 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [12]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/LZE/p_0_out [3]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/LZE/p_1_in ),
        .I3(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew ),
        .I4(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [4]),
        .I5(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [20]),
        .O(\n_0_opt_has_pipe.first_q[11]_i_1__0 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \opt_has_pipe.first_q[12]_i_1 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [18]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [14]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew__0 [1]),
        .I3(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [16]),
        .I4(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q [1]),
        .I5(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [12]),
        .O(\n_0_opt_has_pipe.first_q[12]_i_1 ));
LUT6 #(
    .INIT(64'h0A0AFFCC0A0A00CC)) 
     \opt_has_pipe.first_q[12]_i_1__0 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [3]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [19]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/LZE/p_0_out [3]),
        .I3(\FIX_TO_FLT_OP.SPD.OP/LZE/p_1_in ),
        .I4(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew ),
        .I5(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [11]),
        .O(\n_0_opt_has_pipe.first_q[12]_i_1__0 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \opt_has_pipe.first_q[13]_i_1 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [19]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [15]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew__0 [1]),
        .I3(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [17]),
        .I4(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q [1]),
        .I5(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [13]),
        .O(\n_0_opt_has_pipe.first_q[13]_i_1 ));
LUT6 #(
    .INIT(64'h33AF00AF33A000A0)) 
     \opt_has_pipe.first_q[13]_i_1__0 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [10]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/LZE/p_0_out [3]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/LZE/p_1_in ),
        .I3(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew ),
        .I4(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [2]),
        .I5(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [18]),
        .O(\n_0_opt_has_pipe.first_q[13]_i_1__0 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \opt_has_pipe.first_q[14]_i_1 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [20]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [16]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew__0 [1]),
        .I3(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [18]),
        .I4(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q [1]),
        .I5(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [14]),
        .O(\n_0_opt_has_pipe.first_q[14]_i_1 ));
LUT6 #(
    .INIT(64'h0A0AFFCC0A0A00CC)) 
     \opt_has_pipe.first_q[14]_i_1__0 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [1]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [17]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/LZE/p_0_out [3]),
        .I3(\FIX_TO_FLT_OP.SPD.OP/LZE/p_1_in ),
        .I4(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew ),
        .I5(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [9]),
        .O(\n_0_opt_has_pipe.first_q[14]_i_1__0 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \opt_has_pipe.first_q[15]_i_1 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [21]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [17]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew__0 [1]),
        .I3(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [19]),
        .I4(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q [1]),
        .I5(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [15]),
        .O(\n_0_opt_has_pipe.first_q[15]_i_1 ));
LUT6 #(
    .INIT(64'h33AF00AF33A000A0)) 
     \opt_has_pipe.first_q[15]_i_1__0 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [8]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/LZE/p_0_out [3]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/LZE/p_1_in ),
        .I3(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew ),
        .I4(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [0]),
        .I5(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [16]),
        .O(\n_0_opt_has_pipe.first_q[15]_i_1__0 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \opt_has_pipe.first_q[16]_i_1 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [22]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [18]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew__0 [1]),
        .I3(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [20]),
        .I4(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q [1]),
        .I5(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [16]),
        .O(\n_0_opt_has_pipe.first_q[16]_i_1 ));
LUT4 #(
    .INIT(16'h0A0C)) 
     \opt_has_pipe.first_q[16]_i_1__0 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [7]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [15]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew ),
        .I3(\FIX_TO_FLT_OP.SPD.OP/LZE/p_1_in ),
        .O(\n_0_opt_has_pipe.first_q[16]_i_1__0 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \opt_has_pipe.first_q[17]_i_1 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [23]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [19]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew__0 [1]),
        .I3(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [21]),
        .I4(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q [1]),
        .I5(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [17]),
        .O(\n_0_opt_has_pipe.first_q[17]_i_1 ));
LUT4 #(
    .INIT(16'h0A0C)) 
     \opt_has_pipe.first_q[17]_i_1__0 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [6]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [14]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew ),
        .I3(\FIX_TO_FLT_OP.SPD.OP/LZE/p_1_in ),
        .O(\n_0_opt_has_pipe.first_q[17]_i_1__0 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \opt_has_pipe.first_q[18]_i_1 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [24]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [20]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew__0 [1]),
        .I3(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [22]),
        .I4(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q [1]),
        .I5(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [18]),
        .O(\n_0_opt_has_pipe.first_q[18]_i_1 ));
LUT4 #(
    .INIT(16'h0A0C)) 
     \opt_has_pipe.first_q[18]_i_1__0 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [5]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [13]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew ),
        .I3(\FIX_TO_FLT_OP.SPD.OP/LZE/p_1_in ),
        .O(\n_0_opt_has_pipe.first_q[18]_i_1__0 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \opt_has_pipe.first_q[19]_i_1 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [25]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [21]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew__0 [1]),
        .I3(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [23]),
        .I4(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q [1]),
        .I5(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [19]),
        .O(\n_0_opt_has_pipe.first_q[19]_i_1 ));
LUT4 #(
    .INIT(16'h0A0C)) 
     \opt_has_pipe.first_q[19]_i_1__0 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [4]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [12]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew ),
        .I3(\FIX_TO_FLT_OP.SPD.OP/LZE/p_1_in ),
        .O(\n_0_opt_has_pipe.first_q[19]_i_1__0 ));
LUT5 #(
    .INIT(32'hB8FFB800)) 
     \opt_has_pipe.first_q[1]_i_1 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/LZE/p_0_out [5]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/LZE/p_0_out [3]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/LZE/p_0_out [1]),
        .I3(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew ),
        .I4(\n_0_opt_has_pipe.first_q[1]_i_2 ),
        .O(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/op_int [1]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \opt_has_pipe.first_q[1]_i_1__0 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [7]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [3]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew__0 [1]),
        .I3(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [5]),
        .I4(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q [1]),
        .I5(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [1]),
        .O(\n_0_opt_has_pipe.first_q[1]_i_1__0 ));
LUT3 #(
    .INIT(8'hB8)) 
     \opt_has_pipe.first_q[1]_i_1__1 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q [2]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q [1]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q [0]),
        .O(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew__0 [1]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \opt_has_pipe.first_q[1]_i_1__2 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [13]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [29]),
        .I2(\n_0_opt_has_pipe.first_q[3]_i_2 ),
        .I3(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [5]),
        .I4(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew ),
        .I5(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [21]),
        .O(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/op_int [1]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \opt_has_pipe.first_q[1]_i_1__3 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [6]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [22]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew__0 [3]),
        .I3(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [14]),
        .I4(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew ),
        .I5(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [30]),
        .O(\n_0_opt_has_pipe.first_q[1]_i_1__3 ));
(* SOFT_HLUTNM = "soft_lutpair27" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \opt_has_pipe.first_q[1]_i_1__4 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/LZE/p_0_out [3]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/LZE/p_1_in ),
        .I2(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew ),
        .O(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew__0 [3]));
LUT2 #(
    .INIT(4'h6)) 
     \opt_has_pipe.first_q[1]_i_1__5 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].MUX_0/OP_DEL/i_pipe/first_q ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].DIST_DEL/i_pipe/first_q [1]),
        .O(minusOp[1]));
(* SOFT_HLUTNM = "soft_lutpair25" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \opt_has_pipe.first_q[1]_i_2 
       (.I0(\n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[5].CARRYS_DEL.NEED_DEL.CARRYS_FD ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/LZE/p_1_in ),
        .I2(\n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[1].CARRYS_DEL.NEED_DEL.CARRYS_FD ),
        .O(\n_0_opt_has_pipe.first_q[1]_i_2 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \opt_has_pipe.first_q[20]_i_1 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [26]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [22]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew__0 [1]),
        .I3(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [24]),
        .I4(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q [1]),
        .I5(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [20]),
        .O(\n_0_opt_has_pipe.first_q[20]_i_1 ));
LUT4 #(
    .INIT(16'h0A0C)) 
     \opt_has_pipe.first_q[20]_i_1__0 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [3]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [11]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew ),
        .I3(\FIX_TO_FLT_OP.SPD.OP/LZE/p_1_in ),
        .O(\n_0_opt_has_pipe.first_q[20]_i_1__0 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \opt_has_pipe.first_q[21]_i_1 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [27]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [23]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew__0 [1]),
        .I3(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [25]),
        .I4(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q [1]),
        .I5(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [21]),
        .O(\n_0_opt_has_pipe.first_q[21]_i_1 ));
LUT4 #(
    .INIT(16'h0A0C)) 
     \opt_has_pipe.first_q[21]_i_1__0 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [2]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [10]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew ),
        .I3(\FIX_TO_FLT_OP.SPD.OP/LZE/p_1_in ),
        .O(\n_0_opt_has_pipe.first_q[21]_i_1__0 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \opt_has_pipe.first_q[22]_i_1 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [28]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [24]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew__0 [1]),
        .I3(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [26]),
        .I4(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q [1]),
        .I5(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [22]),
        .O(\n_0_opt_has_pipe.first_q[22]_i_1 ));
LUT4 #(
    .INIT(16'h0A0C)) 
     \opt_has_pipe.first_q[22]_i_1__0 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [1]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [9]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew ),
        .I3(\FIX_TO_FLT_OP.SPD.OP/LZE/p_1_in ),
        .O(\n_0_opt_has_pipe.first_q[22]_i_1__0 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \opt_has_pipe.first_q[23]_i_1 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [29]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [25]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew__0 [1]),
        .I3(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [27]),
        .I4(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q [1]),
        .I5(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [23]),
        .O(\n_0_opt_has_pipe.first_q[23]_i_1 ));
LUT4 #(
    .INIT(16'h0A0C)) 
     \opt_has_pipe.first_q[23]_i_1__0 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [0]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [8]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew ),
        .I3(\FIX_TO_FLT_OP.SPD.OP/LZE/p_1_in ),
        .O(\n_0_opt_has_pipe.first_q[23]_i_1__0 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \opt_has_pipe.first_q[24]_i_1 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [30]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [26]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew__0 [1]),
        .I3(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [28]),
        .I4(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q [1]),
        .I5(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [24]),
        .O(\n_0_opt_has_pipe.first_q[24]_i_1 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \opt_has_pipe.first_q[25]_i_1 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [31]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [27]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew__0 [1]),
        .I3(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [29]),
        .I4(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q [1]),
        .I5(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [25]),
        .O(\n_0_opt_has_pipe.first_q[25]_i_1 ));
LUT6 #(
    .INIT(64'h3A3F0A0F3A300A00)) 
     \opt_has_pipe.first_q[26]_i_1 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [28]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q [2]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q [1]),
        .I3(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q [0]),
        .I4(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [30]),
        .I5(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [26]),
        .O(\n_0_opt_has_pipe.first_q[26]_i_1 ));
LUT6 #(
    .INIT(64'h3A3F0A0F3A300A00)) 
     \opt_has_pipe.first_q[27]_i_1 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [29]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q [2]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q [1]),
        .I3(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q [0]),
        .I4(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [31]),
        .I5(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [27]),
        .O(\n_0_opt_has_pipe.first_q[27]_i_1 ));
LUT4 #(
    .INIT(16'h0A0C)) 
     \opt_has_pipe.first_q[28]_i_1 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [30]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [28]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q [1]),
        .I3(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q [0]),
        .O(\n_0_opt_has_pipe.first_q[28]_i_1 ));
LUT4 #(
    .INIT(16'h0A0C)) 
     \opt_has_pipe.first_q[29]_i_1 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [31]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [29]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q [1]),
        .I3(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q [0]),
        .O(\n_0_opt_has_pipe.first_q[29]_i_1 ));
LUT5 #(
    .INIT(32'hB8FFB800)) 
     \opt_has_pipe.first_q[2]_i_1 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/LZE/p_0_out [6]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/LZE/p_0_out [3]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/LZE/p_0_out [2]),
        .I3(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew ),
        .I4(\n_0_opt_has_pipe.first_q[2]_i_2 ),
        .O(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/op_int [2]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \opt_has_pipe.first_q[2]_i_1__0 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [8]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [4]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew__0 [1]),
        .I3(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [6]),
        .I4(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q [1]),
        .I5(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [2]),
        .O(\n_0_opt_has_pipe.first_q[2]_i_1__0 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \opt_has_pipe.first_q[2]_i_1__1 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [13]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [29]),
        .I2(\n_0_opt_has_pipe.first_q[3]_i_2 ),
        .I3(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [5]),
        .I4(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew ),
        .I5(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [21]),
        .O(\n_0_opt_has_pipe.first_q[2]_i_1__1 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \opt_has_pipe.first_q[2]_i_1__2 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [11]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [27]),
        .I2(\n_0_opt_has_pipe.first_q[3]_i_2 ),
        .I3(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [3]),
        .I4(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew ),
        .I5(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [19]),
        .O(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/op_int [2]));
LUT3 #(
    .INIT(8'h59)) 
     \opt_has_pipe.first_q[2]_i_1__3 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].DIST_DEL/i_pipe/first_q [0]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].DIST_DEL/i_pipe/first_q [1]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].MUX_0/OP_DEL/i_pipe/first_q ),
        .O(minusOp[2]));
(* SOFT_HLUTNM = "soft_lutpair25" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \opt_has_pipe.first_q[2]_i_2 
       (.I0(\n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[6].CARRYS_DEL.NEED_DEL.CARRYS_FD ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/LZE/p_1_in ),
        .I2(\n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[2].CARRYS_DEL.NEED_DEL.CARRYS_FD ),
        .O(\n_0_opt_has_pipe.first_q[2]_i_2 ));
LUT3 #(
    .INIT(8'h02)) 
     \opt_has_pipe.first_q[30]_i_1 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [30]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q [0]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q [1]),
        .O(\n_0_opt_has_pipe.first_q[30]_i_1 ));
LUT3 #(
    .INIT(8'h02)) 
     \opt_has_pipe.first_q[31]_i_1 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [31]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q [0]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q [1]),
        .O(\n_0_opt_has_pipe.first_q[31]_i_1 ));
LUT2 #(
    .INIT(4'hE)) 
     \opt_has_pipe.first_q[31]_i_1__0 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/LZE/p_1_in ),
        .O(\FIX_TO_FLT_OP.SPD.OP/NEED_Z_DET.Z_DET/p_16_out ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \opt_has_pipe.first_q[3]_i_1 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [9]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [5]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew__0 [1]),
        .I3(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [7]),
        .I4(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q [1]),
        .I5(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [3]),
        .O(\n_0_opt_has_pipe.first_q[3]_i_1 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \opt_has_pipe.first_q[3]_i_1__0 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [9]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [25]),
        .I2(\n_0_opt_has_pipe.first_q[3]_i_2 ),
        .I3(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [1]),
        .I4(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew ),
        .I5(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [17]),
        .O(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/op_int [3]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \opt_has_pipe.first_q[3]_i_1__1 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [4]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [20]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew__0 [3]),
        .I3(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [12]),
        .I4(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew ),
        .I5(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [28]),
        .O(\n_0_opt_has_pipe.first_q[3]_i_1__1 ));
LUT4 #(
    .INIT(16'h5955)) 
     \opt_has_pipe.first_q[3]_i_1__2 
       (.I0(\n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].DIST_DEL/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][1] ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].DIST_DEL/i_pipe/first_q [0]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].MUX_0/OP_DEL/i_pipe/first_q ),
        .I3(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].DIST_DEL/i_pipe/first_q [1]),
        .O(minusOp[3]));
(* SOFT_HLUTNM = "soft_lutpair27" *) 
   LUT3 #(
    .INIT(8'h80)) 
     \opt_has_pipe.first_q[3]_i_1__3 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/LZE/p_0_out [7]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/LZE/p_0_out [3]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew ),
        .O(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/op_int [3]));
(* SOFT_HLUTNM = "soft_lutpair26" *) 
   LUT3 #(
    .INIT(8'h53)) 
     \opt_has_pipe.first_q[3]_i_2 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/LZE/p_0_out [3]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/LZE/p_1_in ),
        .I2(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew ),
        .O(\n_0_opt_has_pipe.first_q[3]_i_2 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \opt_has_pipe.first_q[4]_i_1 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [10]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [6]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew__0 [1]),
        .I3(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [8]),
        .I4(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q [1]),
        .I5(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [4]),
        .O(\n_0_opt_has_pipe.first_q[4]_i_1 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \opt_has_pipe.first_q[4]_i_1__0 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [11]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [27]),
        .I2(\n_0_opt_has_pipe.first_q[3]_i_2 ),
        .I3(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [3]),
        .I4(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew ),
        .I5(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [19]),
        .O(\n_0_opt_has_pipe.first_q[4]_i_1__0 ));
LUT5 #(
    .INIT(32'h55955555)) 
     \opt_has_pipe.first_q[4]_i_1__1 
       (.I0(\n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].DIST_DEL/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][0] ),
        .I1(\n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].DIST_DEL/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][1] ),
        .I2(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].DIST_DEL/i_pipe/first_q [1]),
        .I3(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].MUX_0/OP_DEL/i_pipe/first_q ),
        .I4(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].DIST_DEL/i_pipe/first_q [0]),
        .O(minusOp[4]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \opt_has_pipe.first_q[5]_i_1 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [11]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [7]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew__0 [1]),
        .I3(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [9]),
        .I4(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q [1]),
        .I5(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [5]),
        .O(\n_0_opt_has_pipe.first_q[5]_i_1 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \opt_has_pipe.first_q[5]_i_1__0 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [2]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [18]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew__0 [3]),
        .I3(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [10]),
        .I4(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew ),
        .I5(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [26]),
        .O(\n_0_opt_has_pipe.first_q[5]_i_1__0 ));
LUT5 #(
    .INIT(32'h00800000)) 
     \opt_has_pipe.first_q[5]_i_1__1 
       (.I0(\n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].DIST_DEL/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][0] ),
        .I1(\n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].DIST_DEL/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][1] ),
        .I2(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].DIST_DEL/i_pipe/first_q [1]),
        .I3(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].MUX_0/OP_DEL/i_pipe/first_q ),
        .I4(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].DIST_DEL/i_pipe/first_q [0]),
        .O(minusOp[5]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \opt_has_pipe.first_q[6]_i_1 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [12]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [8]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew__0 [1]),
        .I3(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [10]),
        .I4(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q [1]),
        .I5(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [6]),
        .O(\n_0_opt_has_pipe.first_q[6]_i_1 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \opt_has_pipe.first_q[6]_i_1__0 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [9]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [25]),
        .I2(\n_0_opt_has_pipe.first_q[3]_i_2 ),
        .I3(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [1]),
        .I4(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew ),
        .I5(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [17]),
        .O(\n_0_opt_has_pipe.first_q[6]_i_1__0 ));
LUT5 #(
    .INIT(32'h00800000)) 
     \opt_has_pipe.first_q[6]_i_1__1 
       (.I0(\n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].DIST_DEL/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][0] ),
        .I1(\n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].DIST_DEL/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][1] ),
        .I2(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].DIST_DEL/i_pipe/first_q [1]),
        .I3(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].MUX_0/OP_DEL/i_pipe/first_q ),
        .I4(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].DIST_DEL/i_pipe/first_q [0]),
        .O(minusOp[6]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \opt_has_pipe.first_q[7]_i_1 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [13]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [9]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew__0 [1]),
        .I3(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [11]),
        .I4(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q [1]),
        .I5(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [7]),
        .O(\n_0_opt_has_pipe.first_q[7]_i_1 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \opt_has_pipe.first_q[7]_i_1__0 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [0]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [16]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew__0 [3]),
        .I3(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [8]),
        .I4(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew ),
        .I5(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [24]),
        .O(\n_0_opt_has_pipe.first_q[7]_i_1__0 ));
LUT5 #(
    .INIT(32'hF7FFFFFF)) 
     \opt_has_pipe.first_q[7]_i_1__1 
       (.I0(\n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].DIST_DEL/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][1] ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].DIST_DEL/i_pipe/first_q [1]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].MUX_0/OP_DEL/i_pipe/first_q ),
        .I3(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].DIST_DEL/i_pipe/first_q [0]),
        .I4(\n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].DIST_DEL/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][0] ),
        .O(minusOp[7]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \opt_has_pipe.first_q[8]_i_1 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [14]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [10]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew__0 [1]),
        .I3(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [12]),
        .I4(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q [1]),
        .I5(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [8]),
        .O(\n_0_opt_has_pipe.first_q[8]_i_1 ));
LUT6 #(
    .INIT(64'h0A0AFFCC0A0A00CC)) 
     \opt_has_pipe.first_q[8]_i_1__0 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [7]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [23]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/LZE/p_0_out [3]),
        .I3(\FIX_TO_FLT_OP.SPD.OP/LZE/p_1_in ),
        .I4(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew ),
        .I5(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [15]),
        .O(\n_0_opt_has_pipe.first_q[8]_i_1__0 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \opt_has_pipe.first_q[9]_i_1 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [15]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [11]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew__0 [1]),
        .I3(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [13]),
        .I4(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q [1]),
        .I5(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [9]),
        .O(\n_0_opt_has_pipe.first_q[9]_i_1 ));
LUT6 #(
    .INIT(64'h33AF00AF33A000A0)) 
     \opt_has_pipe.first_q[9]_i_1__0 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [14]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/LZE/p_0_out [3]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/LZE/p_1_in ),
        .I3(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew ),
        .I4(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [6]),
        .I5(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [22]),
        .O(\n_0_opt_has_pipe.first_q[9]_i_1__0 ));
endmodule

(* WIDTH = "41" *) (* DEPTH = "16" *) (* AFULL_THRESH1 = "1" *) 
(* AFULL_THRESH0 = "1" *) (* downgradeipidentifiedwarnings = "yes" *) 
module ip_axis_fi32tofp32glb_ifx_master
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
  input [40:0]wr_data;
  output ifx_valid;
  input ifx_ready;
  output [40:0]ifx_data;
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
  wire [40:0]ifx_data;
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
  wire \n_0_fifo0/fifo_1_reg[15][4]_srl16 ;
  wire \n_0_fifo0/fifo_1_reg[15][5]_srl16 ;
  wire \n_0_fifo0/fifo_1_reg[15][6]_srl16 ;
  wire \n_0_fifo0/fifo_1_reg[15][7]_srl16 ;
  wire \n_0_fifo0/fifo_1_reg[15][8]_srl16 ;
  wire \n_0_fifo0/fifo_1_reg[15][9]_srl16 ;
  wire n_0_rd_valid_2_i_1;
  wire rd_enable;
  wire [40:0]wr_data;
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
     \fifo0/fifo_2_reg[4] 
       (.C(aclk),
        .CE(rd_enable),
        .D(\n_0_fifo0/fifo_1_reg[15][4]_srl16 ),
        .Q(ifx_data[4]),
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
     \fifo_2[40]_i_1 
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
