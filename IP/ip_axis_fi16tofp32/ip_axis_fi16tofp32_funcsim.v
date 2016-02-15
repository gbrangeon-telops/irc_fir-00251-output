// Copyright 1986-1999, 2001-2013 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2013.4 (win64) Build 353583 Mon Dec  9 17:49:19 MST 2013
// Date        : Thu Jul 09 16:09:01 2015
// Host        : TELOPSX running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim
//               D:/Telops/FIR-00251-Output/IP/ip_axis_fi16tofp32/ip_axis_fi16tofp32_funcsim.v
// Design      : ip_axis_fi16tofp32
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k70tfbg676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "floating_point_v7_0,Vivado 2013.4" *) (* CHECK_LICENSE_TYPE = "ip_axis_fi16tofp32,floating_point_v7_0,{}" *) 
(* core_generation_info = "ip_axis_fi16tofp32,floating_point_v7_0,{x_ipProduct=Vivado 2013.4,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=floating_point,x_ipVersion=7.0,x_ipCoreRevision=3,x_ipLanguage=VHDL,C_XDEVICEFAMILY=kintex7,C_HAS_ADD=0,C_HAS_SUBTRACT=0,C_HAS_MULTIPLY=0,C_HAS_DIVIDE=0,C_HAS_SQRT=0,C_HAS_COMPARE=0,C_HAS_FIX_TO_FLT=1,C_HAS_FLT_TO_FIX=0,C_HAS_FLT_TO_FLT=0,C_HAS_RECIP=0,C_HAS_RECIP_SQRT=0,C_HAS_ABSOLUTE=0,C_HAS_LOGARITHM=0,C_HAS_EXPONENTIAL=0,C_HAS_FMA=0,C_HAS_FMS=0,C_HAS_ACCUMULATOR_A=0,C_HAS_ACCUMULATOR_S=0,C_A_WIDTH=17,C_A_FRACTION_WIDTH=0,C_B_WIDTH=17,C_B_FRACTION_WIDTH=0,C_C_WIDTH=17,C_C_FRACTION_WIDTH=0,C_RESULT_WIDTH=32,C_RESULT_FRACTION_WIDTH=24,C_COMPARE_OPERATION=8,C_LATENCY=7,C_OPTIMIZATION=1,C_MULT_USAGE=0,C_BRAM_USAGE=0,C_RATE=1,C_ACCUM_INPUT_MSB=32,C_ACCUM_MSB=32,C_ACCUM_LSB=-31,C_HAS_UNDERFLOW=0,C_HAS_OVERFLOW=0,C_HAS_INVALID_OP=0,C_HAS_DIVIDE_BY_ZERO=0,C_HAS_ACCUM_OVERFLOW=0,C_HAS_ACCUM_INPUT_OVERFLOW=0,C_HAS_ACLKEN=0,C_HAS_ARESETN=1,C_THROTTLE_SCHEME=1,C_HAS_A_TUSER=1,C_HAS_A_TLAST=1,C_HAS_B=0,C_HAS_B_TUSER=0,C_HAS_B_TLAST=0,C_HAS_C=0,C_HAS_C_TUSER=0,C_HAS_C_TLAST=0,C_HAS_OPERATION=0,C_HAS_OPERATION_TUSER=0,C_HAS_OPERATION_TLAST=0,C_HAS_RESULT_TUSER=1,C_HAS_RESULT_TLAST=1,C_TLAST_RESOLUTION=1,C_A_TDATA_WIDTH=24,C_A_TUSER_WIDTH=4,C_B_TDATA_WIDTH=24,C_B_TUSER_WIDTH=1,C_C_TDATA_WIDTH=24,C_C_TUSER_WIDTH=1,C_OPERATION_TDATA_WIDTH=8,C_OPERATION_TUSER_WIDTH=1,C_RESULT_TDATA_WIDTH=32,C_RESULT_TUSER_WIDTH=4}" *) 
(* NotValidForBitStream *)
module ip_axis_fi16tofp32
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
  input [23:0]s_axis_a_tdata;
  input [3:0]s_axis_a_tuser;
  input s_axis_a_tlast;
  output m_axis_result_tvalid;
  input m_axis_result_tready;
  output [31:0]m_axis_result_tdata;
  output [3:0]m_axis_result_tuser;
  output m_axis_result_tlast;

  wire \<const0> ;
  wire \<const1> ;
  wire aclk;
  wire aresetn;
  wire [31:0]m_axis_result_tdata;
  wire m_axis_result_tlast;
  wire m_axis_result_tready;
  wire [3:0]m_axis_result_tuser;
  wire m_axis_result_tvalid;
  wire [23:0]s_axis_a_tdata;
  wire s_axis_a_tlast;
  wire s_axis_a_tready;
  wire [3:0]s_axis_a_tuser;
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
   (* C_A_TDATA_WIDTH = "24" *) 
   (* C_A_TUSER_WIDTH = "4" *) 
   (* C_A_WIDTH = "17" *) 
   (* C_BRAM_USAGE = "0" *) 
   (* C_B_FRACTION_WIDTH = "0" *) 
   (* C_B_TDATA_WIDTH = "24" *) 
   (* C_B_TUSER_WIDTH = "1" *) 
   (* C_B_WIDTH = "17" *) 
   (* C_COMPARE_OPERATION = "8" *) 
   (* C_C_FRACTION_WIDTH = "0" *) 
   (* C_C_TDATA_WIDTH = "24" *) 
   (* C_C_TUSER_WIDTH = "1" *) 
   (* C_C_WIDTH = "17" *) 
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
   (* C_LATENCY = "7" *) 
   (* C_MULT_USAGE = "0" *) 
   (* C_OPERATION_TDATA_WIDTH = "8" *) 
   (* C_OPERATION_TUSER_WIDTH = "1" *) 
   (* C_OPTIMIZATION = "1" *) 
   (* C_RATE = "1" *) 
   (* C_RESULT_FRACTION_WIDTH = "24" *) 
   (* C_RESULT_TDATA_WIDTH = "32" *) 
   (* C_RESULT_TUSER_WIDTH = "4" *) 
   (* C_RESULT_WIDTH = "32" *) 
   (* C_THROTTLE_SCHEME = "1" *) 
   (* C_TLAST_RESOLUTION = "1" *) 
   (* C_XDEVICEFAMILY = "kintex7" *) 
   (* DONT_TOUCH *) 
   (* downgradeipidentifiedwarnings = "yes" *) 
   ip_axis_fi16tofp32floating_point_v7_0__parameterized0 U0
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
        .s_axis_b_tdata({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .s_axis_b_tlast(\<const0> ),
        .s_axis_b_tready(NLW_U0_s_axis_b_tready_UNCONNECTED),
        .s_axis_b_tuser(\<const0> ),
        .s_axis_b_tvalid(\<const0> ),
        .s_axis_c_tdata({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
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
(* C_HAS_ACCUMULATOR_A = "0" *) (* C_HAS_ACCUMULATOR_S = "0" *) (* C_A_WIDTH = "17" *) 
(* C_A_FRACTION_WIDTH = "0" *) (* C_B_WIDTH = "17" *) (* C_B_FRACTION_WIDTH = "0" *) 
(* C_C_WIDTH = "17" *) (* C_C_FRACTION_WIDTH = "0" *) (* C_RESULT_WIDTH = "32" *) 
(* C_RESULT_FRACTION_WIDTH = "24" *) (* C_COMPARE_OPERATION = "8" *) (* C_LATENCY = "7" *) 
(* C_OPTIMIZATION = "1" *) (* C_MULT_USAGE = "0" *) (* C_BRAM_USAGE = "0" *) 
(* C_RATE = "1" *) (* C_ACCUM_INPUT_MSB = "32" *) (* C_ACCUM_MSB = "32" *) 
(* C_ACCUM_LSB = "-31" *) (* C_HAS_UNDERFLOW = "0" *) (* C_HAS_OVERFLOW = "0" *) 
(* C_HAS_INVALID_OP = "0" *) (* C_HAS_DIVIDE_BY_ZERO = "0" *) (* C_HAS_ACCUM_OVERFLOW = "0" *) 
(* C_HAS_ACCUM_INPUT_OVERFLOW = "0" *) (* C_HAS_ACLKEN = "0" *) (* C_HAS_ARESETN = "1" *) 
(* C_THROTTLE_SCHEME = "1" *) (* C_HAS_A_TUSER = "1" *) (* C_HAS_A_TLAST = "1" *) 
(* C_HAS_B = "0" *) (* C_HAS_B_TUSER = "0" *) (* C_HAS_B_TLAST = "0" *) 
(* C_HAS_C = "0" *) (* C_HAS_C_TUSER = "0" *) (* C_HAS_C_TLAST = "0" *) 
(* C_HAS_OPERATION = "0" *) (* C_HAS_OPERATION_TUSER = "0" *) (* C_HAS_OPERATION_TLAST = "0" *) 
(* C_HAS_RESULT_TUSER = "1" *) (* C_HAS_RESULT_TLAST = "1" *) (* C_TLAST_RESOLUTION = "1" *) 
(* C_A_TDATA_WIDTH = "24" *) (* C_A_TUSER_WIDTH = "4" *) (* C_B_TDATA_WIDTH = "24" *) 
(* C_B_TUSER_WIDTH = "1" *) (* C_C_TDATA_WIDTH = "24" *) (* C_C_TUSER_WIDTH = "1" *) 
(* C_OPERATION_TDATA_WIDTH = "8" *) (* C_OPERATION_TUSER_WIDTH = "1" *) (* C_RESULT_TDATA_WIDTH = "32" *) 
(* C_RESULT_TUSER_WIDTH = "4" *) (* downgradeipidentifiedwarnings = "yes" *) 
module ip_axis_fi16tofp32floating_point_v7_0__parameterized0
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
  input [23:0]s_axis_a_tdata;
  input [3:0]s_axis_a_tuser;
  input s_axis_a_tlast;
  input s_axis_b_tvalid;
  output s_axis_b_tready;
  input [23:0]s_axis_b_tdata;
  input [0:0]s_axis_b_tuser;
  input s_axis_b_tlast;
  input s_axis_c_tvalid;
  output s_axis_c_tready;
  input [23:0]s_axis_c_tdata;
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
  output [3:0]m_axis_result_tuser;
  output m_axis_result_tlast;

  wire aclk;
  wire aclken;
  wire aresetn;
  wire [31:0]m_axis_result_tdata;
  wire m_axis_result_tlast;
  wire m_axis_result_tready;
  wire [3:0]m_axis_result_tuser;
  wire m_axis_result_tvalid;
  wire [23:0]s_axis_a_tdata;
  wire s_axis_a_tlast;
  wire s_axis_a_tready;
  wire [3:0]s_axis_a_tuser;
  wire s_axis_a_tvalid;
  wire [23:0]s_axis_b_tdata;
  wire s_axis_b_tlast;
  wire s_axis_b_tready;
  wire [0:0]s_axis_b_tuser;
  wire s_axis_b_tvalid;
  wire [23:0]s_axis_c_tdata;
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
   (* C_A_TDATA_WIDTH = "24" *) 
   (* C_A_TUSER_WIDTH = "4" *) 
   (* C_A_WIDTH = "17" *) 
   (* C_BRAM_USAGE = "0" *) 
   (* C_B_FRACTION_WIDTH = "0" *) 
   (* C_B_TDATA_WIDTH = "24" *) 
   (* C_B_TUSER_WIDTH = "1" *) 
   (* C_B_WIDTH = "17" *) 
   (* C_COMPARE_OPERATION = "8" *) 
   (* C_C_FRACTION_WIDTH = "0" *) 
   (* C_C_TDATA_WIDTH = "24" *) 
   (* C_C_TUSER_WIDTH = "1" *) 
   (* C_C_WIDTH = "17" *) 
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
   (* C_LATENCY = "7" *) 
   (* C_MULT_USAGE = "0" *) 
   (* C_OPERATION_TDATA_WIDTH = "8" *) 
   (* C_OPERATION_TUSER_WIDTH = "1" *) 
   (* C_OPTIMIZATION = "1" *) 
   (* C_RATE = "1" *) 
   (* C_RESULT_FRACTION_WIDTH = "24" *) 
   (* C_RESULT_TDATA_WIDTH = "32" *) 
   (* C_RESULT_TUSER_WIDTH = "4" *) 
   (* C_RESULT_WIDTH = "32" *) 
   (* C_THROTTLE_SCHEME = "1" *) 
   (* C_TLAST_RESOLUTION = "1" *) 
   (* C_XDEVICEFAMILY = "kintex7" *) 
   (* downgradeipidentifiedwarnings = "yes" *) 
   ip_axis_fi16tofp32floating_point_v7_0_viv__parameterized0 i_synth
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
(* C_HAS_ACCUMULATOR_A = "0" *) (* C_HAS_ACCUMULATOR_S = "0" *) (* C_A_WIDTH = "17" *) 
(* C_A_FRACTION_WIDTH = "0" *) (* C_B_WIDTH = "17" *) (* C_B_FRACTION_WIDTH = "0" *) 
(* C_C_WIDTH = "17" *) (* C_C_FRACTION_WIDTH = "0" *) (* C_RESULT_WIDTH = "32" *) 
(* C_RESULT_FRACTION_WIDTH = "24" *) (* C_COMPARE_OPERATION = "8" *) (* C_LATENCY = "7" *) 
(* C_OPTIMIZATION = "1" *) (* C_MULT_USAGE = "0" *) (* C_BRAM_USAGE = "0" *) 
(* C_RATE = "1" *) (* C_ACCUM_INPUT_MSB = "32" *) (* C_ACCUM_MSB = "32" *) 
(* C_ACCUM_LSB = "-31" *) (* C_HAS_UNDERFLOW = "0" *) (* C_HAS_OVERFLOW = "0" *) 
(* C_HAS_INVALID_OP = "0" *) (* C_HAS_DIVIDE_BY_ZERO = "0" *) (* C_HAS_ACCUM_OVERFLOW = "0" *) 
(* C_HAS_ACCUM_INPUT_OVERFLOW = "0" *) (* C_HAS_ACLKEN = "0" *) (* C_HAS_ARESETN = "1" *) 
(* C_THROTTLE_SCHEME = "1" *) (* C_HAS_A_TUSER = "1" *) (* C_HAS_A_TLAST = "1" *) 
(* C_HAS_B = "0" *) (* C_HAS_B_TUSER = "0" *) (* C_HAS_B_TLAST = "0" *) 
(* C_HAS_C = "0" *) (* C_HAS_C_TUSER = "0" *) (* C_HAS_C_TLAST = "0" *) 
(* C_HAS_OPERATION = "0" *) (* C_HAS_OPERATION_TUSER = "0" *) (* C_HAS_OPERATION_TLAST = "0" *) 
(* C_HAS_RESULT_TUSER = "1" *) (* C_HAS_RESULT_TLAST = "1" *) (* C_TLAST_RESOLUTION = "1" *) 
(* C_A_TDATA_WIDTH = "24" *) (* C_A_TUSER_WIDTH = "4" *) (* C_B_TDATA_WIDTH = "24" *) 
(* C_B_TUSER_WIDTH = "1" *) (* C_C_TDATA_WIDTH = "24" *) (* C_C_TUSER_WIDTH = "1" *) 
(* C_OPERATION_TDATA_WIDTH = "8" *) (* C_OPERATION_TUSER_WIDTH = "1" *) (* C_RESULT_TDATA_WIDTH = "32" *) 
(* C_RESULT_TUSER_WIDTH = "4" *) (* downgradeipidentifiedwarnings = "yes" *) 
module ip_axis_fi16tofp32floating_point_v7_0_viv__parameterized0
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
  input [23:0]s_axis_a_tdata;
  input [3:0]s_axis_a_tuser;
  input s_axis_a_tlast;
  input s_axis_b_tvalid;
  output s_axis_b_tready;
  input [23:0]s_axis_b_tdata;
  input [0:0]s_axis_b_tuser;
  input s_axis_b_tlast;
  input s_axis_c_tvalid;
  output s_axis_c_tready;
  input [23:0]s_axis_c_tdata;
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
  output [3:0]m_axis_result_tuser;
  output m_axis_result_tlast;

  wire \<const0> ;
  wire \<const1> ;
  wire [7:0]\FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q ;
  wire \FIX_TO_FLT_OP.SPD.OP/EXP/IP_SIGN_DELAY/i_pipe/first_q ;
  wire \FIX_TO_FLT_OP.SPD.OP/EXP/ZERO_DELAY/i_pipe/first_q ;
  wire \FIX_TO_FLT_OP.SPD.OP/LZE/A_Z_DET/i_pipe/first_q ;
  wire [1:0]\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].DIST_DEL/i_pipe/first_q ;
(* RTL_KEEP = "true" *)   wire [3:0]\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/OP_DEL/i_pipe/first_q ;
  wire [3:0]\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/op_int ;
(* RTL_KEEP = "true" *)   wire [3:0]\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q ;
  wire [2:0]\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/op_int ;
  wire [1:0]\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].DIST_DEL/i_pipe/first_q ;
(* RTL_KEEP = "true" *)   wire \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].MUX_0/OP_DEL/i_pipe/first_q ;
  wire \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].MUX_0/op_int ;
(* RTL_KEEP = "true" *)   wire \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].MUX_Z/OP_DEL/i_pipe/first_q ;
  wire \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].MUX_Z/op_int ;
  wire \FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CI ;
  wire \FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/D ;
  wire \FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_2.CC/D ;
  wire \FIX_TO_FLT_OP.SPD.OP/LZE/all_bits_zero_del ;
  wire \FIX_TO_FLT_OP.SPD.OP/LZE/flt_all_zero ;
  wire \FIX_TO_FLT_OP.SPD.OP/LZE/p_0_out ;
  wire \FIX_TO_FLT_OP.SPD.OP/LZE/p_1_in ;
  wire \FIX_TO_FLT_OP.SPD.OP/M_ABS/O ;
  wire [16:0]\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q ;
  wire [16:0]\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q ;
  wire [16:0]\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q ;
  wire \FIX_TO_FLT_OP.SPD.OP/OP/FLAGS_REG.IV_OP_REG/i_pipe/first_q ;
  wire [22:22]\FIX_TO_FLT_OP.SPD.OP/OP/p_5_out ;
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
  wire [11:8]\FIX_TO_FLT_OP.SPD.OP/ROUND/mant_shifted_rnd1 ;
  wire \FIX_TO_FLT_OP.SPD.OP/ROUND/round_rnd1 ;
  wire [10:0]\FIX_TO_FLT_OP.SPD.OP/ROUND/sum_rnd2 ;
  wire [16:0]\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q ;
  wire [4:4]\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew ;
  wire [1:1]\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew__0 ;
  wire [3:3]\FIX_TO_FLT_OP.SPD.OP/op_state ;
  wire GND_2;
  wire SIGN;
  wire [16:16]a_i;
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
  wire [3:0]m_axis_result_tuser;
  wire m_axis_result_tvalid;
  wire m_axis_z_tlast_a;
  wire [3:0]m_axis_z_tuser_a;
  wire \n_0_CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__0 ;
  wire \n_0_CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__2 ;
  wire \n_0_CHAIN_GEN[10].C_MUX.CARRY_MUX_i_1__1 ;
  wire \n_0_CHAIN_GEN[11].C_MUX.CARRY_MUX_i_1__0 ;
  wire \n_0_CHAIN_GEN[12].C_MUX.CARRY_MUX_i_1 ;
  wire \n_0_CHAIN_GEN[13].C_MUX.CARRY_MUX_i_1 ;
  wire \n_0_CHAIN_GEN[14].C_MUX.CARRY_MUX_i_1 ;
  wire \n_0_CHAIN_GEN[15].C_MUX.CARRY_MUX_i_1 ;
  wire \n_0_CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1 ;
  wire \n_0_CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__1 ;
  wire \n_0_CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1 ;
  wire \n_0_CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__1 ;
  wire \n_0_CHAIN_GEN[3].C_MUX.CARRY_MUX_i_1 ;
  wire \n_0_CHAIN_GEN[3].C_MUX.CARRY_MUX_i_1__1 ;
  wire \n_0_CHAIN_GEN[4].C_MUX.CARRY_MUX_i_1 ;
  wire \n_0_CHAIN_GEN[4].C_MUX.CARRY_MUX_i_1__1 ;
  wire \n_0_CHAIN_GEN[5].C_MUX.CARRY_MUX_i_1 ;
  wire \n_0_CHAIN_GEN[5].C_MUX.CARRY_MUX_i_1__1 ;
  wire \n_0_CHAIN_GEN[6].C_MUX.CARRY_MUX_i_1 ;
  wire \n_0_CHAIN_GEN[6].C_MUX.CARRY_MUX_i_1__1 ;
  wire \n_0_CHAIN_GEN[7].C_MUX.CARRY_MUX_i_1 ;
  wire \n_0_CHAIN_GEN[7].C_MUX.CARRY_MUX_i_1__1 ;
  wire \n_0_CHAIN_GEN[7].C_MUX.CARRY_MUX_i_1__2 ;
  wire \n_0_CHAIN_GEN[8].C_MUX.CARRY_MUX_i_1__1 ;
  wire \n_0_CHAIN_GEN[9].C_MUX.CARRY_MUX_i_1__1 ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/EXP/IP_SIGN_DELAY/i_pipe/opt_has_pipe.i_pipe[4].pipe_reg[4][0]_srl3 ;
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
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[16].Q_XOR.SUM_XOR ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[1].C_MUX.CARRY_MUX ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[1].Q_XOR.SUM_XOR ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[2].C_MUX.CARRY_MUX ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[2].Q_XOR.SUM_XOR ;
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
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.exp_op[0]_i_1 ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.exp_op[1]_i_1 ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.exp_op[2]_i_1 ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.exp_op[3]_i_1 ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.exp_op[4]_i_1 ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.exp_op[5]_i_1 ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.exp_op[6]_i_1 ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.exp_op[7]_i_1 ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[0]_i_1 ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[10]_i_1 ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[11]_i_1 ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[12]_i_1 ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[13]_i_1 ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[14]_i_1 ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[15]_i_1 ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[16]_i_1 ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[17]_i_1 ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[18]_i_1 ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[19]_i_1 ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[1]_i_1 ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[20]_i_1 ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[21]_i_1 ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[2]_i_1 ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[3]_i_1 ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[4]_i_1 ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[5]_i_1 ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[6]_i_1 ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[7]_i_1 ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[8]_i_1 ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[9]_i_1 ;
  wire \n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.sign_op_i_1 ;
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
  wire \n_0_RESULT_REG.NORMAL.exp_op[2]_i_2 ;
  wire \n_0_RESULT_REG.NORMAL.exp_op[3]_i_2 ;
  wire \n_0_RESULT_REG.NORMAL.exp_op[5]_i_2 ;
  wire \n_0_RESULT_REG.NORMAL.exp_op[7]_i_2 ;
  wire \n_0_gen_has_z_tready.reg1_a_tlast_i_1 ;
  wire \n_0_gen_has_z_tready.reg1_a_tuser[3]_i_1 ;
  wire \n_0_gen_has_z_tready.reg2_a_tdata[0]_i_1 ;
  wire \n_0_gen_has_z_tready.reg2_a_tdata[10]_i_1 ;
  wire \n_0_gen_has_z_tready.reg2_a_tdata[11]_i_1 ;
  wire \n_0_gen_has_z_tready.reg2_a_tdata[12]_i_1 ;
  wire \n_0_gen_has_z_tready.reg2_a_tdata[13]_i_1 ;
  wire \n_0_gen_has_z_tready.reg2_a_tdata[14]_i_1 ;
  wire \n_0_gen_has_z_tready.reg2_a_tdata[15]_i_1 ;
  wire \n_0_gen_has_z_tready.reg2_a_tdata[16]_i_2 ;
  wire \n_0_gen_has_z_tready.reg2_a_tdata[1]_i_1 ;
  wire \n_0_gen_has_z_tready.reg2_a_tdata[2]_i_1 ;
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
  wire \n_0_i_nd_to_rdy/opt_has_pipe.i_pipe[2].pipe_reg[2][0] ;
  wire \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[0] ;
  wire \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[10] ;
  wire \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[11] ;
  wire \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[12] ;
  wire \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[13] ;
  wire \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[14] ;
  wire \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[15] ;
  wire \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[16] ;
  wire \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[1] ;
  wire \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[2] ;
  wire \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[3] ;
  wire \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[4] ;
  wire \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[5] ;
  wire \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[6] ;
  wire \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[7] ;
  wire \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[8] ;
  wire \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[9] ;
  wire \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tlast_reg ;
  wire \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[0] ;
  wire \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[10] ;
  wire \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[11] ;
  wire \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[12] ;
  wire \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[13] ;
  wire \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[14] ;
  wire \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[15] ;
  wire \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[1] ;
  wire \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[2] ;
  wire \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[3] ;
  wire \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[4] ;
  wire \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[5] ;
  wire \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[6] ;
  wire \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[7] ;
  wire \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[8] ;
  wire \n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[9] ;
  wire \n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][0]_srl4 ;
  wire \n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][1]_srl4 ;
  wire \n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][2]_srl4 ;
  wire \n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][3]_srl4 ;
  wire \n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][4]_srl4 ;
  wire \n_0_opt_has_pipe.first_q[0]_i_1__1 ;
  wire \n_0_opt_has_pipe.first_q[0]_i_1__10 ;
  wire \n_0_opt_has_pipe.first_q[0]_i_1__12 ;
  wire \n_0_opt_has_pipe.first_q[0]_i_1__4 ;
  wire \n_0_opt_has_pipe.first_q[0]_i_1__6 ;
  wire \n_0_opt_has_pipe.first_q[0]_i_1__7 ;
  wire \n_0_opt_has_pipe.first_q[0]_i_1__8 ;
  wire \n_0_opt_has_pipe.first_q[0]_i_1__9 ;
  wire \n_0_opt_has_pipe.first_q[0]_i_2 ;
  wire \n_0_opt_has_pipe.first_q[0]_i_2__0 ;
  wire \n_0_opt_has_pipe.first_q[0]_i_2__1 ;
  wire \n_0_opt_has_pipe.first_q[10]_i_1 ;
  wire \n_0_opt_has_pipe.first_q[10]_i_1__0 ;
  wire \n_0_opt_has_pipe.first_q[10]_i_1__1 ;
  wire \n_0_opt_has_pipe.first_q[10]_i_1__2 ;
  wire \n_0_opt_has_pipe.first_q[10]_i_1__3 ;
  wire \n_0_opt_has_pipe.first_q[10]_i_1__4 ;
  wire \n_0_opt_has_pipe.first_q[10]_i_1__5 ;
  wire \n_0_opt_has_pipe.first_q[10]_i_2 ;
  wire \n_0_opt_has_pipe.first_q[11]_i_1 ;
  wire \n_0_opt_has_pipe.first_q[11]_i_1__0 ;
  wire \n_0_opt_has_pipe.first_q[11]_i_1__1 ;
  wire \n_0_opt_has_pipe.first_q[11]_i_1__2 ;
  wire \n_0_opt_has_pipe.first_q[11]_i_1__3 ;
  wire \n_0_opt_has_pipe.first_q[11]_i_1__4 ;
  wire \n_0_opt_has_pipe.first_q[11]_i_2 ;
  wire \n_0_opt_has_pipe.first_q[12]_i_1 ;
  wire \n_0_opt_has_pipe.first_q[12]_i_1__0 ;
  wire \n_0_opt_has_pipe.first_q[12]_i_1__1 ;
  wire \n_0_opt_has_pipe.first_q[12]_i_1__2 ;
  wire \n_0_opt_has_pipe.first_q[12]_i_2 ;
  wire \n_0_opt_has_pipe.first_q[13]_i_1 ;
  wire \n_0_opt_has_pipe.first_q[13]_i_1__0 ;
  wire \n_0_opt_has_pipe.first_q[13]_i_1__1 ;
  wire \n_0_opt_has_pipe.first_q[13]_i_1__2 ;
  wire \n_0_opt_has_pipe.first_q[14]_i_1 ;
  wire \n_0_opt_has_pipe.first_q[14]_i_1__0 ;
  wire \n_0_opt_has_pipe.first_q[14]_i_1__1 ;
  wire \n_0_opt_has_pipe.first_q[14]_i_1__2 ;
  wire \n_0_opt_has_pipe.first_q[15]_i_1 ;
  wire \n_0_opt_has_pipe.first_q[15]_i_1__0 ;
  wire \n_0_opt_has_pipe.first_q[15]_i_1__1 ;
  wire \n_0_opt_has_pipe.first_q[15]_i_1__2 ;
  wire \n_0_opt_has_pipe.first_q[16]_i_1 ;
  wire \n_0_opt_has_pipe.first_q[16]_i_1__0 ;
  wire \n_0_opt_has_pipe.first_q[16]_i_1__1 ;
  wire \n_0_opt_has_pipe.first_q[16]_i_1__2 ;
  wire \n_0_opt_has_pipe.first_q[1]_i_1 ;
  wire \n_0_opt_has_pipe.first_q[1]_i_1__1 ;
  wire \n_0_opt_has_pipe.first_q[1]_i_1__10 ;
  wire \n_0_opt_has_pipe.first_q[1]_i_1__2 ;
  wire \n_0_opt_has_pipe.first_q[1]_i_1__3 ;
  wire \n_0_opt_has_pipe.first_q[1]_i_1__4 ;
  wire \n_0_opt_has_pipe.first_q[1]_i_1__5 ;
  wire \n_0_opt_has_pipe.first_q[1]_i_1__6 ;
  wire \n_0_opt_has_pipe.first_q[1]_i_1__9 ;
  wire \n_0_opt_has_pipe.first_q[1]_i_2 ;
  wire \n_0_opt_has_pipe.first_q[2]_i_1 ;
  wire \n_0_opt_has_pipe.first_q[2]_i_1__0 ;
  wire \n_0_opt_has_pipe.first_q[2]_i_1__1 ;
  wire \n_0_opt_has_pipe.first_q[2]_i_1__2 ;
  wire \n_0_opt_has_pipe.first_q[2]_i_1__3 ;
  wire \n_0_opt_has_pipe.first_q[2]_i_1__4 ;
  wire \n_0_opt_has_pipe.first_q[2]_i_1__7 ;
  wire \n_0_opt_has_pipe.first_q[2]_i_1__8 ;
  wire \n_0_opt_has_pipe.first_q[2]_i_2 ;
  wire \n_0_opt_has_pipe.first_q[3]_i_1 ;
  wire \n_0_opt_has_pipe.first_q[3]_i_1__0 ;
  wire \n_0_opt_has_pipe.first_q[3]_i_1__1 ;
  wire \n_0_opt_has_pipe.first_q[3]_i_1__2 ;
  wire \n_0_opt_has_pipe.first_q[3]_i_1__3 ;
  wire \n_0_opt_has_pipe.first_q[3]_i_1__4 ;
  wire \n_0_opt_has_pipe.first_q[3]_i_1__6 ;
  wire \n_0_opt_has_pipe.first_q[3]_i_1__7 ;
  wire \n_0_opt_has_pipe.first_q[3]_i_2 ;
  wire \n_0_opt_has_pipe.first_q[4]_i_1 ;
  wire \n_0_opt_has_pipe.first_q[4]_i_1__0 ;
  wire \n_0_opt_has_pipe.first_q[4]_i_1__1 ;
  wire \n_0_opt_has_pipe.first_q[4]_i_1__2 ;
  wire \n_0_opt_has_pipe.first_q[4]_i_1__3 ;
  wire \n_0_opt_has_pipe.first_q[4]_i_1__4 ;
  wire \n_0_opt_has_pipe.first_q[4]_i_1__5 ;
  wire \n_0_opt_has_pipe.first_q[4]_i_1__6 ;
  wire \n_0_opt_has_pipe.first_q[4]_i_2 ;
  wire \n_0_opt_has_pipe.first_q[5]_i_1 ;
  wire \n_0_opt_has_pipe.first_q[5]_i_1__0 ;
  wire \n_0_opt_has_pipe.first_q[5]_i_1__1 ;
  wire \n_0_opt_has_pipe.first_q[5]_i_1__2 ;
  wire \n_0_opt_has_pipe.first_q[5]_i_1__3 ;
  wire \n_0_opt_has_pipe.first_q[5]_i_1__4 ;
  wire \n_0_opt_has_pipe.first_q[5]_i_1__5 ;
  wire \n_0_opt_has_pipe.first_q[5]_i_1__6 ;
  wire \n_0_opt_has_pipe.first_q[5]_i_2 ;
  wire \n_0_opt_has_pipe.first_q[6]_i_1 ;
  wire \n_0_opt_has_pipe.first_q[6]_i_1__0 ;
  wire \n_0_opt_has_pipe.first_q[6]_i_1__1 ;
  wire \n_0_opt_has_pipe.first_q[6]_i_1__2 ;
  wire \n_0_opt_has_pipe.first_q[6]_i_1__3 ;
  wire \n_0_opt_has_pipe.first_q[6]_i_1__4 ;
  wire \n_0_opt_has_pipe.first_q[6]_i_1__5 ;
  wire \n_0_opt_has_pipe.first_q[6]_i_1__6 ;
  wire \n_0_opt_has_pipe.first_q[6]_i_2 ;
  wire \n_0_opt_has_pipe.first_q[7]_i_1 ;
  wire \n_0_opt_has_pipe.first_q[7]_i_1__0 ;
  wire \n_0_opt_has_pipe.first_q[7]_i_1__1 ;
  wire \n_0_opt_has_pipe.first_q[7]_i_1__2 ;
  wire \n_0_opt_has_pipe.first_q[7]_i_1__3 ;
  wire \n_0_opt_has_pipe.first_q[7]_i_1__4 ;
  wire \n_0_opt_has_pipe.first_q[7]_i_1__5 ;
  wire \n_0_opt_has_pipe.first_q[7]_i_1__6 ;
  wire \n_0_opt_has_pipe.first_q[7]_i_2 ;
  wire \n_0_opt_has_pipe.first_q[8]_i_1 ;
  wire \n_0_opt_has_pipe.first_q[8]_i_1__0 ;
  wire \n_0_opt_has_pipe.first_q[8]_i_1__1 ;
  wire \n_0_opt_has_pipe.first_q[8]_i_1__2 ;
  wire \n_0_opt_has_pipe.first_q[8]_i_1__3 ;
  wire \n_0_opt_has_pipe.first_q[8]_i_1__4 ;
  wire \n_0_opt_has_pipe.first_q[8]_i_1__5 ;
  wire \n_0_opt_has_pipe.first_q[8]_i_2 ;
  wire \n_0_opt_has_pipe.first_q[9]_i_1 ;
  wire \n_0_opt_has_pipe.first_q[9]_i_1__0 ;
  wire \n_0_opt_has_pipe.first_q[9]_i_1__1 ;
  wire \n_0_opt_has_pipe.first_q[9]_i_1__2 ;
  wire \n_0_opt_has_pipe.first_q[9]_i_1__3 ;
  wire \n_0_opt_has_pipe.first_q[9]_i_1__4 ;
  wire \n_0_opt_has_pipe.first_q[9]_i_1__5 ;
  wire \n_0_opt_has_pipe.first_q[9]_i_2 ;
  wire \n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ;
  wire \need_combiner.use_2to1.skid_buffer_combiner/a_tx ;
  wire \need_combiner.use_2to1.skid_buffer_combiner/b_tx ;
  wire \need_combiner.use_2to1.skid_buffer_combiner/p_18_in ;
  wire \need_combiner.use_2to1.skid_buffer_combiner/p_2_out ;
  wire \need_combiner.use_2to1.skid_buffer_combiner/reg1_a_ready_nxt ;
  wire [3:0]\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_tuser ;
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
  wire [4:0]\need_user_delay.user_pipe/i_pipe/first_q ;
  wire \pipe[3] ;
  wire \pipe[4] ;
  wire \pipe[5] ;
  wire [23:0]s_axis_a_tdata;
  wire s_axis_a_tlast;
  wire s_axis_a_tready;
  wire [3:0]s_axis_a_tuser;
  wire s_axis_a_tvalid;
  wire sclr_i;
  wire valid_transfer_in;
  wire [3:0]\NLW_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED ;
  wire [3:0]\NLW_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_2.CC/CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_CO_UNCONNECTED ;
  wire [3:1]\NLW_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_2.CC/CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_2.CC/CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_2.CC/CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_S_UNCONNECTED ;
  wire [3:0]\NLW_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[16].Q_XOR.SUM_XOR_CARRY4_CO_UNCONNECTED ;
  wire [3:0]\NLW_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[16].Q_XOR.SUM_XOR_CARRY4_DI_UNCONNECTED ;
  wire [3:1]\NLW_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[16].Q_XOR.SUM_XOR_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[16].Q_XOR.SUM_XOR_CARRY4_S_UNCONNECTED ;
  wire [3:2]\NLW_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[9].C_MUX.CARRY_MUX_CARRY4_CO_UNCONNECTED ;
  wire [3:2]\NLW_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[9].C_MUX.CARRY_MUX_CARRY4_DI_UNCONNECTED ;
  wire [3:3]\NLW_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[9].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED ;
  wire [3:3]\NLW_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[9].C_MUX.CARRY_MUX_CARRY4_S_UNCONNECTED ;
  wire [1:0]\NLW_FIX_TO_FLT_OP.SPD.OP/ROUND/RND_BIT_GEN/NORM_1_OR_0.STRUCT_REQ.GENERAL.RND1/CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_CO_UNCONNECTED ;
  wire [2:0]\NLW_FIX_TO_FLT_OP.SPD.OP/ROUND/RND_BIT_GEN/NORM_1_OR_0.STRUCT_REQ.GENERAL.RND1/CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED ;

  assign s_axis_b_tready = \<const1> ;
  assign s_axis_c_tready = \<const1> ;
  assign s_axis_operation_tready = \<const1> ;
LUT1 #(
    .INIT(2'h1)) 
     \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [0]),
        .O(\FIX_TO_FLT_OP.SPD.OP/LZE/flt_all_zero ));
LUT2 #(
    .INIT(4'h1)) 
     \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__0 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [16]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [15]),
        .O(\n_0_CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__0 ));
LUT3 #(
    .INIT(8'hCA)) 
     \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__1 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [12]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [11]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].MUX_0/OP_DEL/i_pipe/first_q ),
        .O(\FIX_TO_FLT_OP.SPD.OP/ROUND/sum_rnd2 [0]));
LUT2 #(
    .INIT(4'h6)) 
     \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__2 
       (.I0(a_i),
        .I1(\n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[0] ),
        .O(\n_0_CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__2 ));
LUT3 #(
    .INIT(8'hCA)) 
     \CHAIN_GEN[10].C_MUX.CARRY_MUX_i_1 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [14]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [13]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].MUX_0/OP_DEL/i_pipe/first_q ),
        .O(\FIX_TO_FLT_OP.SPD.OP/ROUND/mant_shifted_rnd1 [10]));
LUT3 #(
    .INIT(8'hCA)) 
     \CHAIN_GEN[10].C_MUX.CARRY_MUX_i_1__0 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [2]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [1]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].MUX_0/OP_DEL/i_pipe/first_q ),
        .O(\FIX_TO_FLT_OP.SPD.OP/ROUND/sum_rnd2 [10]));
LUT2 #(
    .INIT(4'h6)) 
     \CHAIN_GEN[10].C_MUX.CARRY_MUX_i_1__1 
       (.I0(a_i),
        .I1(\n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[10] ),
        .O(\n_0_CHAIN_GEN[10].C_MUX.CARRY_MUX_i_1__1 ));
LUT3 #(
    .INIT(8'hCA)) 
     \CHAIN_GEN[11].C_MUX.CARRY_MUX_i_1 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [13]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [12]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].MUX_0/OP_DEL/i_pipe/first_q ),
        .O(\FIX_TO_FLT_OP.SPD.OP/ROUND/mant_shifted_rnd1 [11]));
LUT2 #(
    .INIT(4'h6)) 
     \CHAIN_GEN[11].C_MUX.CARRY_MUX_i_1__0 
       (.I0(a_i),
        .I1(\n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[11] ),
        .O(\n_0_CHAIN_GEN[11].C_MUX.CARRY_MUX_i_1__0 ));
LUT2 #(
    .INIT(4'h6)) 
     \CHAIN_GEN[12].C_MUX.CARRY_MUX_i_1 
       (.I0(a_i),
        .I1(\n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[12] ),
        .O(\n_0_CHAIN_GEN[12].C_MUX.CARRY_MUX_i_1 ));
LUT2 #(
    .INIT(4'h6)) 
     \CHAIN_GEN[13].C_MUX.CARRY_MUX_i_1 
       (.I0(a_i),
        .I1(\n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[13] ),
        .O(\n_0_CHAIN_GEN[13].C_MUX.CARRY_MUX_i_1 ));
LUT2 #(
    .INIT(4'h6)) 
     \CHAIN_GEN[14].C_MUX.CARRY_MUX_i_1 
       (.I0(a_i),
        .I1(\n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[14] ),
        .O(\n_0_CHAIN_GEN[14].C_MUX.CARRY_MUX_i_1 ));
LUT2 #(
    .INIT(4'h6)) 
     \CHAIN_GEN[15].C_MUX.CARRY_MUX_i_1 
       (.I0(a_i),
        .I1(\n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[15] ),
        .O(\n_0_CHAIN_GEN[15].C_MUX.CARRY_MUX_i_1 ));
LUT2 #(
    .INIT(4'h1)) 
     \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [14]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [13]),
        .O(\n_0_CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1 ));
LUT3 #(
    .INIT(8'hCA)) 
     \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__0 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [11]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [10]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].MUX_0/OP_DEL/i_pipe/first_q ),
        .O(\FIX_TO_FLT_OP.SPD.OP/ROUND/sum_rnd2 [1]));
LUT2 #(
    .INIT(4'h6)) 
     \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__1 
       (.I0(a_i),
        .I1(\n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[1] ),
        .O(\n_0_CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__1 ));
LUT2 #(
    .INIT(4'h1)) 
     \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [12]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [11]),
        .O(\n_0_CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1 ));
LUT3 #(
    .INIT(8'hCA)) 
     \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__0 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [10]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [9]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].MUX_0/OP_DEL/i_pipe/first_q ),
        .O(\FIX_TO_FLT_OP.SPD.OP/ROUND/sum_rnd2 [2]));
LUT2 #(
    .INIT(4'h6)) 
     \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__1 
       (.I0(a_i),
        .I1(\n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[2] ),
        .O(\n_0_CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__1 ));
LUT2 #(
    .INIT(4'h1)) 
     \CHAIN_GEN[3].C_MUX.CARRY_MUX_i_1 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [10]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [9]),
        .O(\n_0_CHAIN_GEN[3].C_MUX.CARRY_MUX_i_1 ));
LUT3 #(
    .INIT(8'hCA)) 
     \CHAIN_GEN[3].C_MUX.CARRY_MUX_i_1__0 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [9]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [8]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].MUX_0/OP_DEL/i_pipe/first_q ),
        .O(\FIX_TO_FLT_OP.SPD.OP/ROUND/sum_rnd2 [3]));
LUT2 #(
    .INIT(4'h6)) 
     \CHAIN_GEN[3].C_MUX.CARRY_MUX_i_1__1 
       (.I0(a_i),
        .I1(\n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[3] ),
        .O(\n_0_CHAIN_GEN[3].C_MUX.CARRY_MUX_i_1__1 ));
LUT2 #(
    .INIT(4'h1)) 
     \CHAIN_GEN[4].C_MUX.CARRY_MUX_i_1 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [8]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [7]),
        .O(\n_0_CHAIN_GEN[4].C_MUX.CARRY_MUX_i_1 ));
LUT3 #(
    .INIT(8'hCA)) 
     \CHAIN_GEN[4].C_MUX.CARRY_MUX_i_1__0 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [8]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [7]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].MUX_0/OP_DEL/i_pipe/first_q ),
        .O(\FIX_TO_FLT_OP.SPD.OP/ROUND/sum_rnd2 [4]));
LUT2 #(
    .INIT(4'h6)) 
     \CHAIN_GEN[4].C_MUX.CARRY_MUX_i_1__1 
       (.I0(a_i),
        .I1(\n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[4] ),
        .O(\n_0_CHAIN_GEN[4].C_MUX.CARRY_MUX_i_1__1 ));
LUT2 #(
    .INIT(4'h1)) 
     \CHAIN_GEN[5].C_MUX.CARRY_MUX_i_1 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [6]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [5]),
        .O(\n_0_CHAIN_GEN[5].C_MUX.CARRY_MUX_i_1 ));
LUT3 #(
    .INIT(8'hCA)) 
     \CHAIN_GEN[5].C_MUX.CARRY_MUX_i_1__0 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [7]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [6]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].MUX_0/OP_DEL/i_pipe/first_q ),
        .O(\FIX_TO_FLT_OP.SPD.OP/ROUND/sum_rnd2 [5]));
LUT2 #(
    .INIT(4'h6)) 
     \CHAIN_GEN[5].C_MUX.CARRY_MUX_i_1__1 
       (.I0(a_i),
        .I1(\n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[5] ),
        .O(\n_0_CHAIN_GEN[5].C_MUX.CARRY_MUX_i_1__1 ));
LUT2 #(
    .INIT(4'h1)) 
     \CHAIN_GEN[6].C_MUX.CARRY_MUX_i_1 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [4]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [3]),
        .O(\n_0_CHAIN_GEN[6].C_MUX.CARRY_MUX_i_1 ));
LUT3 #(
    .INIT(8'hCA)) 
     \CHAIN_GEN[6].C_MUX.CARRY_MUX_i_1__0 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [6]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [5]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].MUX_0/OP_DEL/i_pipe/first_q ),
        .O(\FIX_TO_FLT_OP.SPD.OP/ROUND/sum_rnd2 [6]));
LUT2 #(
    .INIT(4'h6)) 
     \CHAIN_GEN[6].C_MUX.CARRY_MUX_i_1__1 
       (.I0(a_i),
        .I1(\n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[6] ),
        .O(\n_0_CHAIN_GEN[6].C_MUX.CARRY_MUX_i_1__1 ));
LUT2 #(
    .INIT(4'h1)) 
     \CHAIN_GEN[7].C_MUX.CARRY_MUX_i_1 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [2]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [1]),
        .O(\n_0_CHAIN_GEN[7].C_MUX.CARRY_MUX_i_1 ));
LUT3 #(
    .INIT(8'hCA)) 
     \CHAIN_GEN[7].C_MUX.CARRY_MUX_i_1__0 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [5]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [4]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].MUX_0/OP_DEL/i_pipe/first_q ),
        .O(\FIX_TO_FLT_OP.SPD.OP/ROUND/sum_rnd2 [7]));
LUT2 #(
    .INIT(4'h6)) 
     \CHAIN_GEN[7].C_MUX.CARRY_MUX_i_1__1 
       (.I0(a_i),
        .I1(\n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[7] ),
        .O(\n_0_CHAIN_GEN[7].C_MUX.CARRY_MUX_i_1__1 ));
LUT2 #(
    .INIT(4'h8)) 
     \CHAIN_GEN[7].C_MUX.CARRY_MUX_i_1__2 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [16]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].MUX_0/OP_DEL/i_pipe/first_q ),
        .O(\n_0_CHAIN_GEN[7].C_MUX.CARRY_MUX_i_1__2 ));
LUT3 #(
    .INIT(8'hCA)) 
     \CHAIN_GEN[8].C_MUX.CARRY_MUX_i_1 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [16]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [15]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].MUX_0/OP_DEL/i_pipe/first_q ),
        .O(\FIX_TO_FLT_OP.SPD.OP/ROUND/mant_shifted_rnd1 [8]));
LUT3 #(
    .INIT(8'hCA)) 
     \CHAIN_GEN[8].C_MUX.CARRY_MUX_i_1__0 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [4]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [3]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].MUX_0/OP_DEL/i_pipe/first_q ),
        .O(\FIX_TO_FLT_OP.SPD.OP/ROUND/sum_rnd2 [8]));
LUT2 #(
    .INIT(4'h6)) 
     \CHAIN_GEN[8].C_MUX.CARRY_MUX_i_1__1 
       (.I0(a_i),
        .I1(\n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[8] ),
        .O(\n_0_CHAIN_GEN[8].C_MUX.CARRY_MUX_i_1__1 ));
LUT3 #(
    .INIT(8'hCA)) 
     \CHAIN_GEN[9].C_MUX.CARRY_MUX_i_1 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [15]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [14]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].MUX_0/OP_DEL/i_pipe/first_q ),
        .O(\FIX_TO_FLT_OP.SPD.OP/ROUND/mant_shifted_rnd1 [9]));
LUT3 #(
    .INIT(8'hCA)) 
     \CHAIN_GEN[9].C_MUX.CARRY_MUX_i_1__0 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [3]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [2]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].MUX_0/OP_DEL/i_pipe/first_q ),
        .O(\FIX_TO_FLT_OP.SPD.OP/ROUND/sum_rnd2 [9]));
LUT2 #(
    .INIT(4'h6)) 
     \CHAIN_GEN[9].C_MUX.CARRY_MUX_i_1__1 
       (.I0(a_i),
        .I1(\n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[9] ),
        .O(\n_0_CHAIN_GEN[9].C_MUX.CARRY_MUX_i_1__1 ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[0]_i_1__4 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q [0]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[1] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[1]_i_1__6 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q [1]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[2] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[2]_i_1__4 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q [2]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[3] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[3]_i_1__4 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q [3]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[4] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[4]_i_1__4 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q [4]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[5] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[5]_i_1__4 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q [5]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[6] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[6]_i_1__4 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q [6]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/opt_has_pipe.first_q_reg[7] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[7]_i_1__4 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q [7]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/EXP/IP_SIGN_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .D(a_i),
        .Q(\FIX_TO_FLT_OP.SPD.OP/EXP/IP_SIGN_DELAY/i_pipe/first_q ),
        .R(\<const0> ));
(* srl_bus_name = "U0/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/IP_SIGN_DELAY/i_pipe/opt_has_pipe.i_pipe[4].pipe_reg[4] " *) 
   (* srl_name = "U0/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/IP_SIGN_DELAY/i_pipe/opt_has_pipe.i_pipe[4].pipe_reg[4][0]_srl3 " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     \FIX_TO_FLT_OP.SPD.OP/EXP/IP_SIGN_DELAY/i_pipe/opt_has_pipe.i_pipe[4].pipe_reg[4][0]_srl3 
       (.A0(\<const0> ),
        .A1(\<const1> ),
        .A2(\<const0> ),
        .A3(\<const0> ),
        .CE(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .CLK(aclk),
        .D(\FIX_TO_FLT_OP.SPD.OP/EXP/IP_SIGN_DELAY/i_pipe/first_q ),
        .Q(\n_0_FIX_TO_FLT_OP.SPD.OP/EXP/IP_SIGN_DELAY/i_pipe/opt_has_pipe.i_pipe[4].pipe_reg[4][0]_srl3 ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/EXP/IP_SIGN_DELAY/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][0] 
       (.C(aclk),
        .CE(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/EXP/IP_SIGN_DELAY/i_pipe/opt_has_pipe.i_pipe[4].pipe_reg[4][0]_srl3 ),
        .Q(SIGN),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/EXP/ZERO_DELAY/i_pipe/opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .D(\FIX_TO_FLT_OP.SPD.OP/LZE/A_Z_DET/i_pipe/first_q ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/EXP/ZERO_DELAY/i_pipe/first_q ),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/EXP/ZERO_DELAY/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][0] 
       (.C(aclk),
        .CE(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .D(\FIX_TO_FLT_OP.SPD.OP/EXP/ZERO_DELAY/i_pipe/first_q ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/op_state ),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/LZE/A_Z_DET/i_pipe/opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .D(\FIX_TO_FLT_OP.SPD.OP/LZE/all_bits_zero_del ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/LZE/A_Z_DET/i_pipe/first_q ),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].DIST_DEL/i_pipe/opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .D(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].DIST_DEL/i_pipe/first_q [0]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].DIST_DEL/i_pipe/opt_has_pipe.first_q_reg[1] 
       (.C(aclk),
        .CE(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .D(\n_0_opt_has_pipe.first_q[1]_i_1__10 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].DIST_DEL/i_pipe/first_q [1]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].DIST_DEL/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][0] 
       (.C(aclk),
        .CE(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .D(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].DIST_DEL/i_pipe/first_q [0]),
        .Q(\n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].DIST_DEL/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][0] ),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].DIST_DEL/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][1] 
       (.C(aclk),
        .CE(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .D(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].DIST_DEL/i_pipe/first_q [1]),
        .Q(\n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].DIST_DEL/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][1] ),
        .R(\<const0> ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/OP_DEL/i_pipe/opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .D(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/op_int [0]),
        .Q(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/OP_DEL/i_pipe/first_q [0]),
        .R(\<const0> ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/OP_DEL/i_pipe/opt_has_pipe.first_q_reg[1] 
       (.C(aclk),
        .CE(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .D(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/op_int [1]),
        .Q(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/OP_DEL/i_pipe/first_q [1]),
        .R(\<const0> ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/OP_DEL/i_pipe/opt_has_pipe.first_q_reg[2] 
       (.C(aclk),
        .CE(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .D(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/op_int [2]),
        .Q(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/OP_DEL/i_pipe/first_q [2]),
        .R(\<const0> ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/OP_DEL/i_pipe/opt_has_pipe.first_q_reg[3] 
       (.C(aclk),
        .CE(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .D(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/op_int [3]),
        .Q(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/OP_DEL/i_pipe/first_q [3]),
        .R(\<const0> ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .D(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/op_int [0]),
        .Q(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q [0]),
        .R(\<const0> ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/opt_has_pipe.first_q_reg[1] 
       (.C(aclk),
        .CE(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .D(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/op_int [1]),
        .Q(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q [1]),
        .R(\<const0> ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/opt_has_pipe.first_q_reg[2] 
       (.C(aclk),
        .CE(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .D(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/op_int [2]),
        .Q(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q [2]),
        .R(\<const0> ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/opt_has_pipe.first_q_reg[3] 
       (.C(aclk),
        .CE(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .D(\<const0> ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q [3]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].DIST_DEL/i_pipe/opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .D(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q [1]),
        .Q(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].DIST_DEL/i_pipe/first_q [0]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].DIST_DEL/i_pipe/opt_has_pipe.first_q_reg[1] 
       (.C(aclk),
        .CE(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .D(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew__0 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].DIST_DEL/i_pipe/first_q [1]),
        .R(\<const0> ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].MUX_0/OP_DEL/i_pipe/opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .D(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].MUX_0/op_int ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].MUX_0/OP_DEL/i_pipe/first_q ),
        .R(\<const0> ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].MUX_Z/OP_DEL/i_pipe/opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .D(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].MUX_Z/op_int ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].MUX_Z/OP_DEL/i_pipe/first_q ),
        .R(\<const0> ));
(* XILINX_LEGACY_PRIM = "FDE" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[0].CARRYS_DEL.NEED_DEL.CARRYS_FD 
       (.C(aclk),
        .CE(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .D(\FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CI ),
        .Q(\n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[0].CARRYS_DEL.NEED_DEL.CARRYS_FD ),
        .R(GND_2));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* box_type = "PRIMITIVE" *) 
   CARRY4 \FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4 
       (.CI(lopt_4),
        .CO({\n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[3].C_MUX.CARRY_MUX ,\n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[2].C_MUX.CARRY_MUX ,\n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[1].C_MUX.CARRY_MUX ,\FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CI }),
        .CYINIT(\<const1> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(\NLW_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED [3:0]),
        .S({\n_0_CHAIN_GEN[3].C_MUX.CARRY_MUX_i_1 ,\n_0_CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1 ,\n_0_CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1 ,\n_0_CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__0 }));
GND \FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_GND 
       (.G(lopt_4));
(* XILINX_LEGACY_PRIM = "FDE" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[1].CARRYS_DEL.NEED_DEL.CARRYS_FD 
       (.C(aclk),
        .CE(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[1].C_MUX.CARRY_MUX ),
        .Q(\n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[1].CARRYS_DEL.NEED_DEL.CARRYS_FD ),
        .R(GND_2));
(* XILINX_LEGACY_PRIM = "FDE" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[2].CARRYS_DEL.NEED_DEL.CARRYS_FD 
       (.C(aclk),
        .CE(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[2].C_MUX.CARRY_MUX ),
        .Q(\n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[2].CARRYS_DEL.NEED_DEL.CARRYS_FD ),
        .R(GND_2));
(* XILINX_LEGACY_PRIM = "FDE" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[3].CARRYS_DEL.NEED_DEL.CARRYS_FD 
       (.C(aclk),
        .CE(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[3].C_MUX.CARRY_MUX ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/LZE/p_1_in ),
        .R(GND_2));
(* XILINX_LEGACY_PRIM = "FDE" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[4].CARRYS_DEL.NEED_DEL.CARRYS_FD 
       (.C(aclk),
        .CE(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[4].C_MUX.CARRY_MUX ),
        .Q(\n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[4].CARRYS_DEL.NEED_DEL.CARRYS_FD ),
        .R(GND_2));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* box_type = "PRIMITIVE" *) 
   CARRY4 \FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4 
       (.CI(\n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[3].C_MUX.CARRY_MUX ),
        .CO({\FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/D ,\n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[6].C_MUX.CARRY_MUX ,\n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[5].C_MUX.CARRY_MUX ,\n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[4].C_MUX.CARRY_MUX }),
        .CYINIT(lopt_5),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(\NLW_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED [3:0]),
        .S({\n_0_CHAIN_GEN[7].C_MUX.CARRY_MUX_i_1 ,\n_0_CHAIN_GEN[6].C_MUX.CARRY_MUX_i_1 ,\n_0_CHAIN_GEN[5].C_MUX.CARRY_MUX_i_1 ,\n_0_CHAIN_GEN[4].C_MUX.CARRY_MUX_i_1 }));
GND \FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_GND 
       (.G(lopt_5));
(* XILINX_LEGACY_PRIM = "FDE" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[5].CARRYS_DEL.NEED_DEL.CARRYS_FD 
       (.C(aclk),
        .CE(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[5].C_MUX.CARRY_MUX ),
        .Q(\n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[5].CARRYS_DEL.NEED_DEL.CARRYS_FD ),
        .R(GND_2));
(* XILINX_LEGACY_PRIM = "FDE" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[6].CARRYS_DEL.NEED_DEL.CARRYS_FD 
       (.C(aclk),
        .CE(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[6].C_MUX.CARRY_MUX ),
        .Q(\n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[6].CARRYS_DEL.NEED_DEL.CARRYS_FD ),
        .R(GND_2));
(* XILINX_LEGACY_PRIM = "FDE" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[7].CARRYS_DEL.NEED_DEL.CARRYS_FD 
       (.C(aclk),
        .CE(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .D(\FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/D ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew ),
        .R(GND_2));
(* XILINX_LEGACY_PRIM = "FDE" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_2.CC/CHAIN_GEN[0].CARRYS_DEL.NEED_DEL.CARRYS_FD 
       (.C(aclk),
        .CE(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .D(\FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_2.CC/D ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/LZE/p_0_out ),
        .R(GND_2));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* box_type = "PRIMITIVE" *) 
   CARRY4 \FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_2.CC/CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4 
       (.CI(lopt_6),
        .CO({\NLW_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_2.CC/CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_CO_UNCONNECTED [3:1],\FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_2.CC/D }),
        .CYINIT(\<const1> ),
        .DI({\NLW_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_2.CC/CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_DI_UNCONNECTED [3:1],\<const0> }),
        .O(\NLW_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_2.CC/CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_2.CC/CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_S_UNCONNECTED [3:1],\FIX_TO_FLT_OP.SPD.OP/LZE/flt_all_zero }));
GND \FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_2.CC/CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_GND 
       (.G(lopt_6));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* box_type = "PRIMITIVE" *) 
   CARRY4 \FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4 
       (.CI(lopt),
        .CO({\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[3].C_MUX.CARRY_MUX ,\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[2].C_MUX.CARRY_MUX ,\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[1].C_MUX.CARRY_MUX ,\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[0].C_MUX.CARRY_MUX }),
        .CYINIT(a_i),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[3].Q_XOR.SUM_XOR ,\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[2].Q_XOR.SUM_XOR ,\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[1].Q_XOR.SUM_XOR ,\FIX_TO_FLT_OP.SPD.OP/M_ABS/O }),
        .S({\n_0_CHAIN_GEN[3].C_MUX.CARRY_MUX_i_1__1 ,\n_0_CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__1 ,\n_0_CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__1 ,\n_0_CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__2 }));
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
        .S({\n_0_CHAIN_GEN[15].C_MUX.CARRY_MUX_i_1 ,\n_0_CHAIN_GEN[14].C_MUX.CARRY_MUX_i_1 ,\n_0_CHAIN_GEN[13].C_MUX.CARRY_MUX_i_1 ,\n_0_CHAIN_GEN[12].C_MUX.CARRY_MUX_i_1 }));
GND \FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[12].C_MUX.CARRY_MUX_CARRY4_GND 
       (.G(lopt_3));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* box_type = "PRIMITIVE" *) 
   CARRY4 \FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[16].Q_XOR.SUM_XOR_CARRY4 
       (.CI(\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[15].C_MUX.CARRY_MUX ),
        .CO(\NLW_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[16].Q_XOR.SUM_XOR_CARRY4_CO_UNCONNECTED [3:0]),
        .CYINIT(lopt_14),
        .DI(\NLW_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[16].Q_XOR.SUM_XOR_CARRY4_DI_UNCONNECTED [3:0]),
        .O({\NLW_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[16].Q_XOR.SUM_XOR_CARRY4_O_UNCONNECTED [3:1],\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[16].Q_XOR.SUM_XOR }),
        .S({\NLW_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[16].Q_XOR.SUM_XOR_CARRY4_S_UNCONNECTED [3:1],\<const0> }));
GND \FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[16].Q_XOR.SUM_XOR_CARRY4_GND 
       (.G(lopt_14));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* box_type = "PRIMITIVE" *) 
   CARRY4 \FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4 
       (.CI(\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[3].C_MUX.CARRY_MUX ),
        .CO({\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[7].C_MUX.CARRY_MUX ,\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[6].C_MUX.CARRY_MUX ,\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[5].C_MUX.CARRY_MUX ,\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[4].C_MUX.CARRY_MUX }),
        .CYINIT(lopt_1),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[7].Q_XOR.SUM_XOR ,\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[6].Q_XOR.SUM_XOR ,\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[5].Q_XOR.SUM_XOR ,\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[4].Q_XOR.SUM_XOR }),
        .S({\n_0_CHAIN_GEN[7].C_MUX.CARRY_MUX_i_1__1 ,\n_0_CHAIN_GEN[6].C_MUX.CARRY_MUX_i_1__1 ,\n_0_CHAIN_GEN[5].C_MUX.CARRY_MUX_i_1__1 ,\n_0_CHAIN_GEN[4].C_MUX.CARRY_MUX_i_1__1 }));
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
        .S({\n_0_CHAIN_GEN[11].C_MUX.CARRY_MUX_i_1__0 ,\n_0_CHAIN_GEN[10].C_MUX.CARRY_MUX_i_1__1 ,\n_0_CHAIN_GEN[9].C_MUX.CARRY_MUX_i_1__1 ,\n_0_CHAIN_GEN[8].C_MUX.CARRY_MUX_i_1__1 }));
GND \FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[8].C_MUX.CARRY_MUX_CARRY4_GND 
       (.G(lopt_2));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[0]_i_1__6 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [0]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[10] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[10]_i_1__4 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [10]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[11] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[11]_i_1__2 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [11]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[12] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[12]_i_1__2 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [12]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[13] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[13]_i_1__2 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [13]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[14] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[14]_i_1__2 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [14]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[15] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[15]_i_1__2 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [15]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[16] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[16]_i_1__2 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [16]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[1] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[1]_i_1__1 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [1]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[2] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[2]_i_1__7 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [2]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[3] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[3]_i_1__6 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [3]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[4] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[4]_i_1__5 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [4]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[5] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[5]_i_1__5 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [5]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[6] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[6]_i_1__5 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [6]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[7] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[7]_i_1__5 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [7]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[8] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[8]_i_1__4 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [8]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[9] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[9]_i_1__4 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [9]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[0]_i_1__8 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [0]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[10] 
       (.C(aclk),
        .CE(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .D(\n_0_opt_has_pipe.first_q[10]_i_1__1 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [10]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[11] 
       (.C(aclk),
        .CE(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .D(\n_0_opt_has_pipe.first_q[11]_i_1__1 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [11]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[12] 
       (.C(aclk),
        .CE(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .D(\n_0_opt_has_pipe.first_q[12]_i_1__1 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [12]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[13] 
       (.C(aclk),
        .CE(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .D(\n_0_opt_has_pipe.first_q[13]_i_1__0 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [13]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[14] 
       (.C(aclk),
        .CE(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .D(\n_0_opt_has_pipe.first_q[14]_i_1__0 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [14]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[15] 
       (.C(aclk),
        .CE(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .D(\n_0_opt_has_pipe.first_q[15]_i_1__0 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [15]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[16] 
       (.C(aclk),
        .CE(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .D(\n_0_opt_has_pipe.first_q[16]_i_1__0 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [16]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[1] 
       (.C(aclk),
        .CE(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .D(\n_0_opt_has_pipe.first_q[1]_i_1__3 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [1]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[2] 
       (.C(aclk),
        .CE(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .D(\n_0_opt_has_pipe.first_q[2]_i_1__1 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [2]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[3] 
       (.C(aclk),
        .CE(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .D(\n_0_opt_has_pipe.first_q[3]_i_1__1 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [3]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[4] 
       (.C(aclk),
        .CE(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .D(\n_0_opt_has_pipe.first_q[4]_i_1__1 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [4]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[5] 
       (.C(aclk),
        .CE(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .D(\n_0_opt_has_pipe.first_q[5]_i_1__1 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [5]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[6] 
       (.C(aclk),
        .CE(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .D(\n_0_opt_has_pipe.first_q[6]_i_1__1 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [6]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[7] 
       (.C(aclk),
        .CE(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .D(\n_0_opt_has_pipe.first_q[7]_i_1__1 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [7]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[8] 
       (.C(aclk),
        .CE(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .D(\n_0_opt_has_pipe.first_q[8]_i_1__1 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [8]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[9] 
       (.C(aclk),
        .CE(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .D(\n_0_opt_has_pipe.first_q[9]_i_1__1 ),
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
        .CE(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .D(\n_0_opt_has_pipe.first_q[13]_i_1__1 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [13]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[14] 
       (.C(aclk),
        .CE(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .D(\n_0_opt_has_pipe.first_q[14]_i_1__1 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [14]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[15] 
       (.C(aclk),
        .CE(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .D(\n_0_opt_has_pipe.first_q[15]_i_1__1 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [15]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[16] 
       (.C(aclk),
        .CE(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .D(\n_0_opt_has_pipe.first_q[16]_i_1__1 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [16]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[1] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[1]_i_1 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [1]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[2] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[2]_i_1 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [2]),
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
        .CE(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .D(\<const0> ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/OP/FLAGS_REG.IV_OP_REG/i_pipe/first_q ),
        .R(\<const0> ));
LUT5 #(
    .INIT(32'h09FF0900)) 
     \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.exp_op[0]_i_1 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q [0]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q [11]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/op_state ),
        .I3(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .I4(m_axis_result_tdata[23]),
        .O(\n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.exp_op[0]_i_1 ));
LUT6 #(
    .INIT(64'h0D02FFFF0D020000)) 
     \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.exp_op[1]_i_1 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q [0]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q [11]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/op_state ),
        .I3(\FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q [1]),
        .I4(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .I5(m_axis_result_tdata[24]),
        .O(\n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.exp_op[1]_i_1 ));
LUT5 #(
    .INIT(32'h9AFF9A00)) 
     \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.exp_op[2]_i_1 
       (.I0(\n_0_RESULT_REG.NORMAL.exp_op[2]_i_2 ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/op_state ),
        .I2(\FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q [2]),
        .I3(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .I4(m_axis_result_tdata[25]),
        .O(\n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.exp_op[2]_i_1 ));
LUT5 #(
    .INIT(32'h9AFF9A00)) 
     \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.exp_op[3]_i_1 
       (.I0(\n_0_RESULT_REG.NORMAL.exp_op[3]_i_2 ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/op_state ),
        .I2(\FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q [3]),
        .I3(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .I4(m_axis_result_tdata[26]),
        .O(\n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.exp_op[3]_i_1 ));
LUT5 #(
    .INIT(32'h9AFF9A00)) 
     \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.exp_op[4]_i_1 
       (.I0(\n_0_RESULT_REG.NORMAL.exp_op[5]_i_2 ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/op_state ),
        .I2(\FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q [4]),
        .I3(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .I4(m_axis_result_tdata[27]),
        .O(\n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.exp_op[4]_i_1 ));
LUT6 #(
    .INIT(64'h0708FFFF07080000)) 
     \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.exp_op[5]_i_1 
       (.I0(\n_0_RESULT_REG.NORMAL.exp_op[5]_i_2 ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q [4]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/op_state ),
        .I3(\FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q [5]),
        .I4(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .I5(m_axis_result_tdata[28]),
        .O(\n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.exp_op[5]_i_1 ));
LUT5 #(
    .INIT(32'h9AFF9A00)) 
     \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.exp_op[6]_i_1 
       (.I0(\n_0_RESULT_REG.NORMAL.exp_op[7]_i_2 ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/op_state ),
        .I2(\FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q [6]),
        .I3(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .I4(m_axis_result_tdata[29]),
        .O(\n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.exp_op[6]_i_1 ));
LUT6 #(
    .INIT(64'h0708FFFF07080000)) 
     \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.exp_op[7]_i_1 
       (.I0(\n_0_RESULT_REG.NORMAL.exp_op[7]_i_2 ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q [6]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/op_state ),
        .I3(\FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q [7]),
        .I4(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .I5(m_axis_result_tdata[30]),
        .O(\n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.exp_op[7]_i_1 ));
(* use_sync_reset = "auto" *) 
   (* use_sync_set = "auto" *) 
   FDRE \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.exp_op_reg[0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.exp_op[0]_i_1 ),
        .Q(m_axis_result_tdata[23]),
        .R(\<const0> ));
(* use_sync_reset = "auto" *) 
   (* use_sync_set = "auto" *) 
   FDRE \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.exp_op_reg[1] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.exp_op[1]_i_1 ),
        .Q(m_axis_result_tdata[24]),
        .R(\<const0> ));
(* use_sync_reset = "auto" *) 
   (* use_sync_set = "auto" *) 
   FDRE \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.exp_op_reg[2] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.exp_op[2]_i_1 ),
        .Q(m_axis_result_tdata[25]),
        .R(\<const0> ));
(* use_sync_reset = "auto" *) 
   (* use_sync_set = "auto" *) 
   FDRE \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.exp_op_reg[3] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.exp_op[3]_i_1 ),
        .Q(m_axis_result_tdata[26]),
        .R(\<const0> ));
(* use_sync_reset = "auto" *) 
   (* use_sync_set = "auto" *) 
   FDRE \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.exp_op_reg[4] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.exp_op[4]_i_1 ),
        .Q(m_axis_result_tdata[27]),
        .R(\<const0> ));
(* use_sync_reset = "auto" *) 
   (* use_sync_set = "auto" *) 
   FDRE \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.exp_op_reg[5] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.exp_op[5]_i_1 ),
        .Q(m_axis_result_tdata[28]),
        .R(\<const0> ));
(* use_sync_reset = "auto" *) 
   (* use_sync_set = "auto" *) 
   FDRE \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.exp_op_reg[6] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.exp_op[6]_i_1 ),
        .Q(m_axis_result_tdata[29]),
        .R(\<const0> ));
(* use_sync_reset = "auto" *) 
   (* use_sync_set = "auto" *) 
   FDRE \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.exp_op_reg[7] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.exp_op[7]_i_1 ),
        .Q(m_axis_result_tdata[30]),
        .R(\<const0> ));
LUT4 #(
    .INIT(16'h0ACA)) 
     \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[0]_i_1 
       (.I0(m_axis_result_tdata[0]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/first_q [0]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .I3(\FIX_TO_FLT_OP.SPD.OP/op_state ),
        .O(\n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[0]_i_1 ));
LUT4 #(
    .INIT(16'h0ACA)) 
     \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[10]_i_1 
       (.I0(m_axis_result_tdata[10]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/first_q [10]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .I3(\FIX_TO_FLT_OP.SPD.OP/op_state ),
        .O(\n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[10]_i_1 ));
LUT4 #(
    .INIT(16'h0ACA)) 
     \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[11]_i_1 
       (.I0(m_axis_result_tdata[11]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/first_q [11]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .I3(\FIX_TO_FLT_OP.SPD.OP/op_state ),
        .O(\n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[11]_i_1 ));
LUT4 #(
    .INIT(16'h0ACA)) 
     \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[12]_i_1 
       (.I0(m_axis_result_tdata[12]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q [0]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .I3(\FIX_TO_FLT_OP.SPD.OP/op_state ),
        .O(\n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[12]_i_1 ));
LUT4 #(
    .INIT(16'h0ACA)) 
     \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[13]_i_1 
       (.I0(m_axis_result_tdata[13]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q [1]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .I3(\FIX_TO_FLT_OP.SPD.OP/op_state ),
        .O(\n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[13]_i_1 ));
LUT4 #(
    .INIT(16'h0ACA)) 
     \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[14]_i_1 
       (.I0(m_axis_result_tdata[14]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q [2]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .I3(\FIX_TO_FLT_OP.SPD.OP/op_state ),
        .O(\n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[14]_i_1 ));
LUT4 #(
    .INIT(16'h0ACA)) 
     \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[15]_i_1 
       (.I0(m_axis_result_tdata[15]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q [3]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .I3(\FIX_TO_FLT_OP.SPD.OP/op_state ),
        .O(\n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[15]_i_1 ));
LUT4 #(
    .INIT(16'h0ACA)) 
     \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[16]_i_1 
       (.I0(m_axis_result_tdata[16]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q [4]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .I3(\FIX_TO_FLT_OP.SPD.OP/op_state ),
        .O(\n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[16]_i_1 ));
LUT4 #(
    .INIT(16'h0ACA)) 
     \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[17]_i_1 
       (.I0(m_axis_result_tdata[17]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q [5]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .I3(\FIX_TO_FLT_OP.SPD.OP/op_state ),
        .O(\n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[17]_i_1 ));
LUT4 #(
    .INIT(16'h0ACA)) 
     \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[18]_i_1 
       (.I0(m_axis_result_tdata[18]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q [6]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .I3(\FIX_TO_FLT_OP.SPD.OP/op_state ),
        .O(\n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[18]_i_1 ));
LUT4 #(
    .INIT(16'h0ACA)) 
     \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[19]_i_1 
       (.I0(m_axis_result_tdata[19]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q [7]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .I3(\FIX_TO_FLT_OP.SPD.OP/op_state ),
        .O(\n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[19]_i_1 ));
LUT4 #(
    .INIT(16'h0ACA)) 
     \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[1]_i_1 
       (.I0(m_axis_result_tdata[1]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/first_q [1]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .I3(\FIX_TO_FLT_OP.SPD.OP/op_state ),
        .O(\n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[1]_i_1 ));
LUT4 #(
    .INIT(16'h0ACA)) 
     \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[20]_i_1 
       (.I0(m_axis_result_tdata[20]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q [8]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .I3(\FIX_TO_FLT_OP.SPD.OP/op_state ),
        .O(\n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[20]_i_1 ));
LUT4 #(
    .INIT(16'h0ACA)) 
     \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[21]_i_1 
       (.I0(m_axis_result_tdata[21]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q [9]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .I3(\FIX_TO_FLT_OP.SPD.OP/op_state ),
        .O(\n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[21]_i_1 ));
LUT4 #(
    .INIT(16'h0ACA)) 
     \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[2]_i_1 
       (.I0(m_axis_result_tdata[2]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/first_q [2]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .I3(\FIX_TO_FLT_OP.SPD.OP/op_state ),
        .O(\n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[2]_i_1 ));
LUT4 #(
    .INIT(16'h0ACA)) 
     \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[3]_i_1 
       (.I0(m_axis_result_tdata[3]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/first_q [3]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .I3(\FIX_TO_FLT_OP.SPD.OP/op_state ),
        .O(\n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[3]_i_1 ));
LUT4 #(
    .INIT(16'h0ACA)) 
     \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[4]_i_1 
       (.I0(m_axis_result_tdata[4]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/first_q [4]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .I3(\FIX_TO_FLT_OP.SPD.OP/op_state ),
        .O(\n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[4]_i_1 ));
LUT4 #(
    .INIT(16'h0ACA)) 
     \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[5]_i_1 
       (.I0(m_axis_result_tdata[5]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/first_q [5]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .I3(\FIX_TO_FLT_OP.SPD.OP/op_state ),
        .O(\n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[5]_i_1 ));
LUT4 #(
    .INIT(16'h0ACA)) 
     \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[6]_i_1 
       (.I0(m_axis_result_tdata[6]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/first_q [6]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .I3(\FIX_TO_FLT_OP.SPD.OP/op_state ),
        .O(\n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[6]_i_1 ));
LUT4 #(
    .INIT(16'h0ACA)) 
     \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[7]_i_1 
       (.I0(m_axis_result_tdata[7]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/first_q [7]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .I3(\FIX_TO_FLT_OP.SPD.OP/op_state ),
        .O(\n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[7]_i_1 ));
LUT4 #(
    .INIT(16'h0ACA)) 
     \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[8]_i_1 
       (.I0(m_axis_result_tdata[8]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/first_q [8]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .I3(\FIX_TO_FLT_OP.SPD.OP/op_state ),
        .O(\n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[8]_i_1 ));
LUT4 #(
    .INIT(16'h0ACA)) 
     \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[9]_i_1 
       (.I0(m_axis_result_tdata[9]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/first_q [9]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .I3(\FIX_TO_FLT_OP.SPD.OP/op_state ),
        .O(\n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[9]_i_1 ));
(* use_sync_reset = "auto" *) 
   (* use_sync_set = "auto" *) 
   FDRE \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[0]_i_1 ),
        .Q(m_axis_result_tdata[0]),
        .R(\<const0> ));
(* use_sync_reset = "auto" *) 
   (* use_sync_set = "auto" *) 
   FDRE \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[10] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[10]_i_1 ),
        .Q(m_axis_result_tdata[10]),
        .R(\<const0> ));
(* use_sync_reset = "auto" *) 
   (* use_sync_set = "auto" *) 
   FDRE \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[11] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[11]_i_1 ),
        .Q(m_axis_result_tdata[11]),
        .R(\<const0> ));
(* use_sync_reset = "auto" *) 
   (* use_sync_set = "auto" *) 
   FDRE \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[12] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[12]_i_1 ),
        .Q(m_axis_result_tdata[12]),
        .R(\<const0> ));
(* use_sync_reset = "auto" *) 
   (* use_sync_set = "auto" *) 
   FDRE \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[13] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[13]_i_1 ),
        .Q(m_axis_result_tdata[13]),
        .R(\<const0> ));
(* use_sync_reset = "auto" *) 
   (* use_sync_set = "auto" *) 
   FDRE \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[14] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[14]_i_1 ),
        .Q(m_axis_result_tdata[14]),
        .R(\<const0> ));
(* use_sync_reset = "auto" *) 
   (* use_sync_set = "auto" *) 
   FDRE \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[15] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[15]_i_1 ),
        .Q(m_axis_result_tdata[15]),
        .R(\<const0> ));
(* use_sync_reset = "auto" *) 
   (* use_sync_set = "auto" *) 
   FDRE \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[16] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[16]_i_1 ),
        .Q(m_axis_result_tdata[16]),
        .R(\<const0> ));
(* use_sync_reset = "auto" *) 
   (* use_sync_set = "auto" *) 
   FDRE \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[17] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[17]_i_1 ),
        .Q(m_axis_result_tdata[17]),
        .R(\<const0> ));
(* use_sync_reset = "auto" *) 
   (* use_sync_set = "auto" *) 
   FDRE \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[18] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[18]_i_1 ),
        .Q(m_axis_result_tdata[18]),
        .R(\<const0> ));
(* use_sync_reset = "auto" *) 
   (* use_sync_set = "auto" *) 
   FDRE \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[19] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[19]_i_1 ),
        .Q(m_axis_result_tdata[19]),
        .R(\<const0> ));
(* use_sync_reset = "auto" *) 
   (* use_sync_set = "auto" *) 
   FDRE \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[1] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[1]_i_1 ),
        .Q(m_axis_result_tdata[1]),
        .R(\<const0> ));
(* use_sync_reset = "auto" *) 
   (* use_sync_set = "auto" *) 
   FDRE \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[20] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[20]_i_1 ),
        .Q(m_axis_result_tdata[20]),
        .R(\<const0> ));
(* use_sync_reset = "auto" *) 
   (* use_sync_set = "auto" *) 
   FDRE \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[21] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[21]_i_1 ),
        .Q(m_axis_result_tdata[21]),
        .R(\<const0> ));
(* use_sync_reset = "auto" *) 
   (* use_sync_set = "auto" *) 
   FDRE \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[22] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/OP/p_5_out ),
        .Q(m_axis_result_tdata[22]),
        .R(\<const0> ));
(* use_sync_reset = "auto" *) 
   (* use_sync_set = "auto" *) 
   FDRE \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[2] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[2]_i_1 ),
        .Q(m_axis_result_tdata[2]),
        .R(\<const0> ));
(* use_sync_reset = "auto" *) 
   (* use_sync_set = "auto" *) 
   FDRE \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[3] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[3]_i_1 ),
        .Q(m_axis_result_tdata[3]),
        .R(\<const0> ));
(* use_sync_reset = "auto" *) 
   (* use_sync_set = "auto" *) 
   FDRE \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[4] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[4]_i_1 ),
        .Q(m_axis_result_tdata[4]),
        .R(\<const0> ));
(* use_sync_reset = "auto" *) 
   (* use_sync_set = "auto" *) 
   FDRE \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[5] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[5]_i_1 ),
        .Q(m_axis_result_tdata[5]),
        .R(\<const0> ));
(* use_sync_reset = "auto" *) 
   (* use_sync_set = "auto" *) 
   FDRE \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[6] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[6]_i_1 ),
        .Q(m_axis_result_tdata[6]),
        .R(\<const0> ));
(* use_sync_reset = "auto" *) 
   (* use_sync_set = "auto" *) 
   FDRE \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[7] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[7]_i_1 ),
        .Q(m_axis_result_tdata[7]),
        .R(\<const0> ));
(* use_sync_reset = "auto" *) 
   (* use_sync_set = "auto" *) 
   FDRE \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[8] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[8]_i_1 ),
        .Q(m_axis_result_tdata[8]),
        .R(\<const0> ));
(* use_sync_reset = "auto" *) 
   (* use_sync_set = "auto" *) 
   FDRE \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op_reg[9] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.mant_op[9]_i_1 ),
        .Q(m_axis_result_tdata[9]),
        .R(\<const0> ));
LUT3 #(
    .INIT(8'hB8)) 
     \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.sign_op_i_1 
       (.I0(SIGN),
        .I1(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .I2(m_axis_result_tdata[31]),
        .O(\n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.sign_op_i_1 ));
(* use_sync_reset = "auto" *) 
   (* use_sync_set = "auto" *) 
   FDRE \FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.sign_op_reg 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FIX_TO_FLT_OP.SPD.OP/OP/RESULT_REG.NORMAL.sign_op_i_1 ),
        .Q(m_axis_result_tdata[31]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_IN_DEL/i_pipe/opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_IN_DEL/i_pipe/first_q [0]),
        .Q(\FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_IN_DEL/i_pipe/first_q [0]),
        .R(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_IN_DEL/i_pipe/opt_has_pipe.first_q_reg[1] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_IN_DEL/i_pipe/first_q [1]),
        .Q(\FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_IN_DEL/i_pipe/first_q [1]),
        .R(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_IN_DEL/i_pipe/opt_has_pipe.first_q_reg[2] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_IN_DEL/i_pipe/first_q [2]),
        .Q(\FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_IN_DEL/i_pipe/first_q [2]),
        .R(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_IN_DEL/i_pipe/opt_has_pipe.first_q_reg[3] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_IN_DEL/i_pipe/first_q [3]),
        .Q(\FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_IN_DEL/i_pipe/first_q [3]),
        .R(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_IN_DEL/i_pipe/opt_has_pipe.first_q_reg[4] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_IN_DEL/i_pipe/first_q [4]),
        .Q(\FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_IN_DEL/i_pipe/first_q [4]),
        .R(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_IN_DEL/i_pipe/opt_has_pipe.first_q_reg[5] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_IN_DEL/i_pipe/first_q [5]),
        .Q(\FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_IN_DEL/i_pipe/first_q [5]),
        .R(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_IN_DEL/i_pipe/opt_has_pipe.first_q_reg[6] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_IN_DEL/i_pipe/first_q [6]),
        .Q(\FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_IN_DEL/i_pipe/first_q [6]),
        .R(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_IN_DEL/i_pipe/opt_has_pipe.first_q_reg[7] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_IN_DEL/i_pipe/first_q [7]),
        .Q(\FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_IN_DEL/i_pipe/first_q [7]),
        .R(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_OFF_OP_DEL/i_pipe/opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_OFF_OP_DEL/i_pipe/first_q [0]),
        .Q(\FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_OFF_OP_DEL/i_pipe/first_q [0]),
        .R(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_OFF_OP_DEL/i_pipe/opt_has_pipe.first_q_reg[1] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_OFF_OP_DEL/i_pipe/first_q [1]),
        .Q(\FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_OFF_OP_DEL/i_pipe/first_q [1]),
        .R(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_OFF_OP_DEL/i_pipe/opt_has_pipe.first_q_reg[2] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_OFF_OP_DEL/i_pipe/first_q [2]),
        .Q(\FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_OFF_OP_DEL/i_pipe/first_q [2]),
        .R(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_OFF_OP_DEL/i_pipe/opt_has_pipe.first_q_reg[3] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_OFF_OP_DEL/i_pipe/first_q [3]),
        .Q(\FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_OFF_OP_DEL/i_pipe/first_q [3]),
        .R(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_OFF_OP_DEL/i_pipe/opt_has_pipe.first_q_reg[4] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_OFF_OP_DEL/i_pipe/first_q [4]),
        .Q(\FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_OFF_OP_DEL/i_pipe/first_q [4]),
        .R(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_OFF_OP_DEL/i_pipe/opt_has_pipe.first_q_reg[5] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_OFF_OP_DEL/i_pipe/first_q [5]),
        .Q(\FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_OFF_OP_DEL/i_pipe/first_q [5]),
        .R(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_OFF_OP_DEL/i_pipe/opt_has_pipe.first_q_reg[6] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_OFF_OP_DEL/i_pipe/first_q [6]),
        .Q(\FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_OFF_OP_DEL/i_pipe/first_q [6]),
        .R(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_OFF_OP_DEL/i_pipe/opt_has_pipe.first_q_reg[7] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_OFF_OP_DEL/i_pipe/first_q [7]),
        .Q(\FIX_TO_FLT_OP.SPD.OP/ROUND/EXP_IN_DELAY.EXP_OFF_OP_DEL/i_pipe/first_q [7]),
        .R(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* box_type = "PRIMITIVE" *) 
   CARRY4 \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[1].C_MUX.CARRY_MUX_CARRY4 
       (.CI(\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[0].C_MUX.CARRY_MUX ),
        .CO({\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[4].C_MUX.CARRY_MUX ,\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[3].C_MUX.CARRY_MUX ,\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[2].C_MUX.CARRY_MUX ,\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[1].C_MUX.CARRY_MUX }),
        .CYINIT(lopt_8),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[4].Q_XOR.SUM_XOR ,\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[3].Q_XOR.SUM_XOR ,\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[2].Q_XOR.SUM_XOR ,\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[1].Q_XOR.SUM_XOR }),
        .S({\<const0> ,\<const0> ,\<const0> ,\<const0> }));
GND \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[1].C_MUX.CARRY_MUX_CARRY4_GND 
       (.G(lopt_8));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* box_type = "PRIMITIVE" *) 
   CARRY4 \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[5].C_MUX.CARRY_MUX_CARRY4 
       (.CI(\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[4].C_MUX.CARRY_MUX ),
        .CO({\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[8].C_MUX.CARRY_MUX ,\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[7].C_MUX.CARRY_MUX ,\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[6].C_MUX.CARRY_MUX ,\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[5].C_MUX.CARRY_MUX }),
        .CYINIT(lopt_9),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[8].Q_XOR.SUM_XOR ,\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[7].Q_XOR.SUM_XOR ,\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[6].Q_XOR.SUM_XOR ,\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[5].Q_XOR.SUM_XOR }),
        .S({\FIX_TO_FLT_OP.SPD.OP/ROUND/mant_shifted_rnd1 [8],\n_0_CHAIN_GEN[7].C_MUX.CARRY_MUX_i_1__2 ,\<const0> ,\<const0> }));
GND \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[5].C_MUX.CARRY_MUX_CARRY4_GND 
       (.G(lopt_9));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* box_type = "PRIMITIVE" *) 
   CARRY4 \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[9].C_MUX.CARRY_MUX_CARRY4 
       (.CI(\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[8].C_MUX.CARRY_MUX ),
        .CO({\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CI ,\FIX_TO_FLT_OP.SPD.OP/ROUND/carry_rnd2 ,\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[10].C_MUX.CARRY_MUX ,\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[9].C_MUX.CARRY_MUX }),
        .CYINIT(lopt_10),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/O ,\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[11].Q_XOR.SUM_XOR ,\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[10].Q_XOR.SUM_XOR ,\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[9].Q_XOR.SUM_XOR }),
        .S({\FIX_TO_FLT_OP.SPD.OP/ROUND/sum_rnd2 [0],\FIX_TO_FLT_OP.SPD.OP/ROUND/mant_shifted_rnd1 [11:9]}));
GND \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[9].C_MUX.CARRY_MUX_CARRY4_GND 
       (.G(lopt_10));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[0]_i_1__9 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/first_q [0]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[10] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[10]_i_1__2 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/first_q [10]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[11] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[11]_i_1__3 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/first_q [11]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[1] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[1]_i_1__4 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/first_q [1]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[2] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[2]_i_1__2 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/first_q [2]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[3] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[3]_i_1__2 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/first_q [3]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[4] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[4]_i_1__2 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/first_q [4]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[5] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[5]_i_1__2 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/first_q [5]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[6] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[6]_i_1__2 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/first_q [6]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[7] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[7]_i_1__2 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/first_q [7]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[8] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[8]_i_1__2 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/first_q [8]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[9] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[9]_i_1__2 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/first_q [9]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[0]_i_1__10 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/first_q [0]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/opt_has_pipe.first_q_reg[10] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[10]_i_1__3 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/first_q [10]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/opt_has_pipe.first_q_reg[1] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[1]_i_1__5 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/first_q [1]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/opt_has_pipe.first_q_reg[2] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[2]_i_1__3 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/first_q [2]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/opt_has_pipe.first_q_reg[3] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[3]_i_1__3 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/first_q [3]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/opt_has_pipe.first_q_reg[4] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[4]_i_1__3 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/first_q [4]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/opt_has_pipe.first_q_reg[5] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[5]_i_1__3 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/first_q [5]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/opt_has_pipe.first_q_reg[6] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[6]_i_1__3 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/first_q [6]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/opt_has_pipe.first_q_reg[7] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[7]_i_1__3 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/first_q [7]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/opt_has_pipe.first_q_reg[8] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[8]_i_1__3 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/first_q [8]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/opt_has_pipe.first_q_reg[9] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[9]_i_1__3 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/first_q [9]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CARRYS_Q_DEL.NOT_FAST_OP.CARRY_DEL/i_pipe/opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .D(\<const0> ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CARRYS_Q_DEL.NOT_FAST_OP.CARRY_DEL/i_pipe/first_q ),
        .R(\<const0> ));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* box_type = "PRIMITIVE" *) 
   CARRY4 \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[1].C_MUX.CARRY_MUX_CARRY4 
       (.CI(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CI ),
        .CO({\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[4].C_MUX.CARRY_MUX ,\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[3].C_MUX.CARRY_MUX ,\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[2].C_MUX.CARRY_MUX ,\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[1].C_MUX.CARRY_MUX }),
        .CYINIT(lopt_11),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[4].Q_XOR.SUM_XOR ,\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[3].Q_XOR.SUM_XOR ,\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[2].Q_XOR.SUM_XOR ,\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[1].Q_XOR.SUM_XOR }),
        .S(\FIX_TO_FLT_OP.SPD.OP/ROUND/sum_rnd2 [4:1]));
GND \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[1].C_MUX.CARRY_MUX_CARRY4_GND 
       (.G(lopt_11));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* box_type = "PRIMITIVE" *) 
   CARRY4 \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[5].C_MUX.CARRY_MUX_CARRY4 
       (.CI(\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[4].C_MUX.CARRY_MUX ),
        .CO({\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[8].C_MUX.CARRY_MUX ,\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[7].C_MUX.CARRY_MUX ,\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[6].C_MUX.CARRY_MUX ,\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[5].C_MUX.CARRY_MUX }),
        .CYINIT(lopt_12),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[8].Q_XOR.SUM_XOR ,\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[7].Q_XOR.SUM_XOR ,\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[6].Q_XOR.SUM_XOR ,\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[5].Q_XOR.SUM_XOR }),
        .S(\FIX_TO_FLT_OP.SPD.OP/ROUND/sum_rnd2 [8:5]));
GND \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[5].C_MUX.CARRY_MUX_CARRY4_GND 
       (.G(lopt_12));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* box_type = "PRIMITIVE" *) 
   CARRY4 \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[9].C_MUX.CARRY_MUX_CARRY4 
       (.CI(\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[8].C_MUX.CARRY_MUX ),
        .CO({\NLW_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[9].C_MUX.CARRY_MUX_CARRY4_CO_UNCONNECTED [3:2],\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[10].C_MUX.CARRY_MUX ,\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[9].C_MUX.CARRY_MUX }),
        .CYINIT(lopt_13),
        .DI({\NLW_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[9].C_MUX.CARRY_MUX_CARRY4_DI_UNCONNECTED [3:2],\<const0> ,\<const0> }),
        .O({\NLW_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[9].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED [3],\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[11].Q_XOR.SUM_XOR ,\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[10].Q_XOR.SUM_XOR ,\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[9].Q_XOR.SUM_XOR }),
        .S({\NLW_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[9].C_MUX.CARRY_MUX_CARRY4_S_UNCONNECTED [3],\<const1> ,\FIX_TO_FLT_OP.SPD.OP/ROUND/sum_rnd2 [10:9]}));
GND \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[9].C_MUX.CARRY_MUX_CARRY4_GND 
       (.G(lopt_13));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[0]_i_1__12 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q [0]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[10] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[10]_i_1__5 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q [10]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[11] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[11]_i_1__4 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q [11]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[1] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[1]_i_1__9 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q [1]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[2] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[2]_i_1__8 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q [2]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[3] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[3]_i_1__7 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q [3]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[4] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[4]_i_1__6 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q [4]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[5] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[5]_i_1__6 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q [5]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[6] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[6]_i_1__6 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q [6]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[7] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[7]_i_1__6 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q [7]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[8] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[8]_i_1__5 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q [8]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[9] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[9]_i_1__5 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q [9]),
        .R(\<const0> ));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* box_type = "PRIMITIVE" *) 
   CARRY4 \FIX_TO_FLT_OP.SPD.OP/ROUND/RND_BIT_GEN/NORM_1_OR_0.STRUCT_REQ.GENERAL.RND1/CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4 
       (.CI(lopt_7),
        .CO({\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[0].C_MUX.CARRY_MUX ,\FIX_TO_FLT_OP.SPD.OP/ROUND/round_rnd1 ,\NLW_FIX_TO_FLT_OP.SPD.OP/ROUND/RND_BIT_GEN/NORM_1_OR_0.STRUCT_REQ.GENERAL.RND1/CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_CO_UNCONNECTED [1:0]}),
        .CYINIT(\<const1> ),
        .DI({\<const0> ,\<const1> ,\<const0> ,\<const0> }),
        .O({\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/O ,\NLW_FIX_TO_FLT_OP.SPD.OP/ROUND/RND_BIT_GEN/NORM_1_OR_0.STRUCT_REQ.GENERAL.RND1/CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED [2:0]}),
        .S({\<const0> ,\<const1> ,\<const0> ,\<const0> }));
GND \FIX_TO_FLT_OP.SPD.OP/ROUND/RND_BIT_GEN/NORM_1_OR_0.STRUCT_REQ.GENERAL.RND1/CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_GND 
       (.G(lopt_7));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[0]_i_1__7 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [0]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/opt_has_pipe.first_q_reg[10] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[10]_i_1__0 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [10]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/opt_has_pipe.first_q_reg[11] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[11]_i_1__0 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [11]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/opt_has_pipe.first_q_reg[12] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[12]_i_1__0 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [12]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/opt_has_pipe.first_q_reg[13] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[13]_i_1 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [13]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/opt_has_pipe.first_q_reg[14] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[14]_i_1 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [14]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/opt_has_pipe.first_q_reg[15] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[15]_i_1 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [15]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/opt_has_pipe.first_q_reg[16] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[16]_i_1 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [16]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/opt_has_pipe.first_q_reg[1] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[1]_i_1__2 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [1]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/opt_has_pipe.first_q_reg[2] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[2]_i_1__0 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [2]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/opt_has_pipe.first_q_reg[3] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[3]_i_1__0 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [3]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/opt_has_pipe.first_q_reg[4] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[4]_i_1__0 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [4]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/opt_has_pipe.first_q_reg[5] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[5]_i_1__0 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [5]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/opt_has_pipe.first_q_reg[6] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[6]_i_1__0 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [6]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/opt_has_pipe.first_q_reg[7] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[7]_i_1__0 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [7]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/opt_has_pipe.first_q_reg[8] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[8]_i_1__0 ),
        .Q(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [8]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/opt_has_pipe.first_q_reg[9] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[9]_i_1__0 ),
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
LUT4 #(
    .INIT(16'h0020)) 
     \RESULT_REG.NORMAL.exp_op[2]_i_2 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q [1]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q [11]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q [0]),
        .I3(\FIX_TO_FLT_OP.SPD.OP/op_state ),
        .O(\n_0_RESULT_REG.NORMAL.exp_op[2]_i_2 ));
LUT5 #(
    .INIT(32'h00200000)) 
     \RESULT_REG.NORMAL.exp_op[3]_i_2 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q [2]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/op_state ),
        .I2(\FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q [0]),
        .I3(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q [11]),
        .I4(\FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q [1]),
        .O(\n_0_RESULT_REG.NORMAL.exp_op[3]_i_2 ));
LUT6 #(
    .INIT(64'h0000080000000000)) 
     \RESULT_REG.NORMAL.exp_op[5]_i_2 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q [3]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q [1]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q [11]),
        .I3(\FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q [0]),
        .I4(\FIX_TO_FLT_OP.SPD.OP/op_state ),
        .I5(\FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q [2]),
        .O(\n_0_RESULT_REG.NORMAL.exp_op[5]_i_2 ));
LUT4 #(
    .INIT(16'h0080)) 
     \RESULT_REG.NORMAL.exp_op[7]_i_2 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q [5]),
        .I1(\n_0_RESULT_REG.NORMAL.exp_op[5]_i_2 ),
        .I2(\FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q [4]),
        .I3(\FIX_TO_FLT_OP.SPD.OP/op_state ),
        .O(\n_0_RESULT_REG.NORMAL.exp_op[7]_i_2 ));
LUT4 #(
    .INIT(16'h5C0C)) 
     \RESULT_REG.NORMAL.mant_op[22]_i_1 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/op_state ),
        .I1(m_axis_result_tdata[22]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .I3(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q [10]),
        .O(\FIX_TO_FLT_OP.SPD.OP/OP/p_5_out ));
VCC VCC
       (.P(\<const1> ));
LUT6 #(
    .INIT(64'h00D5000000D500D5)) 
     \gen_has_z_tready.reg1_a_ready_i_1 
       (.I0(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .I2(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_valid ),
        .I3(\n_0_gen_has_z_tready.reg1_a_tuser[3]_i_1 ),
        .I4(\need_combiner.use_2to1.skid_buffer_combiner/reg2_b_valid_nxt ),
        .I5(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_valid_nxt ),
        .O(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_ready_nxt ));
(* SOFT_HLUTNM = "soft_lutpair1" *) 
   LUT5 #(
    .INIT(32'hFFBF0080)) 
     \gen_has_z_tready.reg1_a_tlast_i_1 
       (.I0(s_axis_a_tlast),
        .I1(s_axis_a_tready),
        .I2(s_axis_a_tvalid),
        .I3(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .I4(\n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tlast_reg ),
        .O(\n_0_gen_has_z_tready.reg1_a_tlast_i_1 ));
LUT5 #(
    .INIT(32'h08880000)) 
     \gen_has_z_tready.reg1_a_tuser[3]_i_1 
       (.I0(s_axis_a_tready),
        .I1(s_axis_a_tvalid),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .I3(\need_combiner.use_2to1.skid_buffer_combiner/reg2_b_valid ),
        .I4(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_valid ),
        .O(\n_0_gen_has_z_tready.reg1_a_tuser[3]_i_1 ));
LUT6 #(
    .INIT(64'h0FFFFFFF08880000)) 
     \gen_has_z_tready.reg1_a_valid_i_1 
       (.I0(s_axis_a_tvalid),
        .I1(s_axis_a_tready),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .I3(\need_combiner.use_2to1.skid_buffer_combiner/reg2_b_valid ),
        .I4(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_valid ),
        .I5(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .O(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid_nxt ));
LUT6 #(
    .INIT(64'hC4D50000C4D5C4D5)) 
     \gen_has_z_tready.reg1_b_ready_i_1 
       (.I0(\need_combiner.use_2to1.skid_buffer_combiner/reg1_b_valid ),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/p_18_in ),
        .I2(\need_combiner.use_2to1.skid_buffer_combiner/reg2_b_valid ),
        .I3(\need_combiner.use_2to1.skid_buffer_combiner/b_tx ),
        .I4(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_valid_nxt ),
        .I5(\need_combiner.use_2to1.skid_buffer_combiner/reg2_b_valid_nxt ),
        .O(\need_combiner.use_2to1.skid_buffer_combiner/reg1_b_ready_nxt ));
(* SOFT_HLUTNM = "soft_lutpair2" *) 
   LUT3 #(
    .INIT(8'hD5)) 
     \gen_has_z_tready.reg1_b_ready_i_2 
       (.I0(\need_combiner.use_2to1.skid_buffer_combiner/reg2_b_valid ),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_valid ),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .O(\need_combiner.use_2to1.skid_buffer_combiner/p_18_in ));
(* SOFT_HLUTNM = "soft_lutpair2" *) 
   LUT5 #(
    .INIT(32'h3FFF2A00)) 
     \gen_has_z_tready.reg1_b_valid_i_1 
       (.I0(\need_combiner.use_2to1.skid_buffer_combiner/b_tx ),
        .I1(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .I2(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_valid ),
        .I3(\need_combiner.use_2to1.skid_buffer_combiner/reg2_b_valid ),
        .I4(\need_combiner.use_2to1.skid_buffer_combiner/reg1_b_valid ),
        .O(\need_combiner.use_2to1.skid_buffer_combiner/reg1_b_valid_nxt ));
(* SOFT_HLUTNM = "soft_lutpair6" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \gen_has_z_tready.reg2_a_tdata[0]_i_1 
       (.I0(\n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[0] ),
        .I1(s_axis_a_tdata[0]),
        .I2(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .O(\n_0_gen_has_z_tready.reg2_a_tdata[0]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair11" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \gen_has_z_tready.reg2_a_tdata[10]_i_1 
       (.I0(\n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[10] ),
        .I1(s_axis_a_tdata[10]),
        .I2(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .O(\n_0_gen_has_z_tready.reg2_a_tdata[10]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair11" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \gen_has_z_tready.reg2_a_tdata[11]_i_1 
       (.I0(\n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[11] ),
        .I1(s_axis_a_tdata[11]),
        .I2(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .O(\n_0_gen_has_z_tready.reg2_a_tdata[11]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair12" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \gen_has_z_tready.reg2_a_tdata[12]_i_1 
       (.I0(\n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[12] ),
        .I1(s_axis_a_tdata[12]),
        .I2(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .O(\n_0_gen_has_z_tready.reg2_a_tdata[12]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair12" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \gen_has_z_tready.reg2_a_tdata[13]_i_1 
       (.I0(\n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[13] ),
        .I1(s_axis_a_tdata[13]),
        .I2(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .O(\n_0_gen_has_z_tready.reg2_a_tdata[13]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair13" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \gen_has_z_tready.reg2_a_tdata[14]_i_1 
       (.I0(\n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[14] ),
        .I1(s_axis_a_tdata[14]),
        .I2(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .O(\n_0_gen_has_z_tready.reg2_a_tdata[14]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair13" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \gen_has_z_tready.reg2_a_tdata[15]_i_1 
       (.I0(\n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[15] ),
        .I1(s_axis_a_tdata[15]),
        .I2(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .O(\n_0_gen_has_z_tready.reg2_a_tdata[15]_i_1 ));
LUT3 #(
    .INIT(8'hD5)) 
     \gen_has_z_tready.reg2_a_tdata[16]_i_1 
       (.I0(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_valid ),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg2_b_valid ),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .O(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ));
LUT3 #(
    .INIT(8'hAC)) 
     \gen_has_z_tready.reg2_a_tdata[16]_i_2 
       (.I0(\n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[16] ),
        .I1(s_axis_a_tdata[16]),
        .I2(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .O(\n_0_gen_has_z_tready.reg2_a_tdata[16]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair6" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \gen_has_z_tready.reg2_a_tdata[1]_i_1 
       (.I0(\n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[1] ),
        .I1(s_axis_a_tdata[1]),
        .I2(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .O(\n_0_gen_has_z_tready.reg2_a_tdata[1]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair7" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \gen_has_z_tready.reg2_a_tdata[2]_i_1 
       (.I0(\n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[2] ),
        .I1(s_axis_a_tdata[2]),
        .I2(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .O(\n_0_gen_has_z_tready.reg2_a_tdata[2]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair7" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \gen_has_z_tready.reg2_a_tdata[3]_i_1 
       (.I0(\n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[3] ),
        .I1(s_axis_a_tdata[3]),
        .I2(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .O(\n_0_gen_has_z_tready.reg2_a_tdata[3]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair8" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \gen_has_z_tready.reg2_a_tdata[4]_i_1 
       (.I0(\n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[4] ),
        .I1(s_axis_a_tdata[4]),
        .I2(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .O(\n_0_gen_has_z_tready.reg2_a_tdata[4]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair8" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \gen_has_z_tready.reg2_a_tdata[5]_i_1 
       (.I0(\n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[5] ),
        .I1(s_axis_a_tdata[5]),
        .I2(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .O(\n_0_gen_has_z_tready.reg2_a_tdata[5]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair9" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \gen_has_z_tready.reg2_a_tdata[6]_i_1 
       (.I0(\n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[6] ),
        .I1(s_axis_a_tdata[6]),
        .I2(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .O(\n_0_gen_has_z_tready.reg2_a_tdata[6]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair9" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \gen_has_z_tready.reg2_a_tdata[7]_i_1 
       (.I0(\n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[7] ),
        .I1(s_axis_a_tdata[7]),
        .I2(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .O(\n_0_gen_has_z_tready.reg2_a_tdata[7]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair10" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \gen_has_z_tready.reg2_a_tdata[8]_i_1 
       (.I0(\n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[8] ),
        .I1(s_axis_a_tdata[8]),
        .I2(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .O(\n_0_gen_has_z_tready.reg2_a_tdata[8]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair10" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \gen_has_z_tready.reg2_a_tdata[9]_i_1 
       (.I0(\n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[9] ),
        .I1(s_axis_a_tdata[9]),
        .I2(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .O(\n_0_gen_has_z_tready.reg2_a_tdata[9]_i_1 ));
LUT5 #(
    .INIT(32'hB8FFB800)) 
     \gen_has_z_tready.reg2_a_tlast_i_1 
       (.I0(\n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tlast_reg ),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tlast),
        .I3(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .I4(m_axis_z_tlast_a),
        .O(\n_0_gen_has_z_tready.reg2_a_tlast_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair4" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tuser[0]_i_1 
       (.I0(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_tuser [0]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tuser[0]),
        .O(\n_0_gen_has_z_tready.reg2_a_tuser[0]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair4" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tuser[1]_i_1 
       (.I0(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_tuser [1]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tuser[1]),
        .O(\n_0_gen_has_z_tready.reg2_a_tuser[1]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair5" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tuser[2]_i_1 
       (.I0(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_tuser [2]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tuser[2]),
        .O(\n_0_gen_has_z_tready.reg2_a_tuser[2]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair5" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tuser[3]_i_1 
       (.I0(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_tuser [3]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tuser[3]),
        .O(\n_0_gen_has_z_tready.reg2_a_tuser[3]_i_1 ));
LUT6 #(
    .INIT(64'hFDFC55FCFFFCFFFC)) 
     \gen_has_z_tready.reg2_a_valid_i_1 
       (.I0(combiner_data_valid),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(\need_combiner.use_2to1.skid_buffer_combiner/a_tx ),
        .I3(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_valid ),
        .I4(\need_combiner.use_2to1.skid_buffer_combiner/reg2_b_valid ),
        .I5(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .O(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_valid_nxt ));
(* SOFT_HLUTNM = "soft_lutpair1" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \gen_has_z_tready.reg2_a_valid_i_2 
       (.I0(s_axis_a_tvalid),
        .I1(s_axis_a_tready),
        .O(\need_combiner.use_2to1.skid_buffer_combiner/a_tx ));
LUT6 #(
    .INIT(64'hFDFC55FCFFFCFFFC)) 
     \gen_has_z_tready.reg2_b_valid_i_1 
       (.I0(combiner_data_valid),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_b_valid ),
        .I2(\need_combiner.use_2to1.skid_buffer_combiner/b_tx ),
        .I3(\need_combiner.use_2to1.skid_buffer_combiner/reg2_b_valid ),
        .I4(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_valid ),
        .I5(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .O(\need_combiner.use_2to1.skid_buffer_combiner/reg2_b_valid_nxt ));
LUT2 #(
    .INIT(4'h8)) 
     \gen_has_z_tready.z_valid_i_1 
       (.I0(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_valid_nxt ),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg2_b_valid_nxt ),
        .O(\need_combiner.use_2to1.skid_buffer_combiner/p_2_out ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \i_nd_to_rdy/opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .D(valid_transfer_in),
        .Q(\i_nd_to_rdy/first_q ),
        .R(sclr_i));
FDRE #(
    .INIT(1'b0)) 
     \i_nd_to_rdy/opt_has_pipe.i_pipe[2].pipe_reg[2][0] 
       (.C(aclk),
        .CE(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .D(\i_nd_to_rdy/first_q ),
        .Q(\n_0_i_nd_to_rdy/opt_has_pipe.i_pipe[2].pipe_reg[2][0] ),
        .R(sclr_i));
FDRE #(
    .INIT(1'b0)) 
     \i_nd_to_rdy/opt_has_pipe.i_pipe[3].pipe_reg[3][0] 
       (.C(aclk),
        .CE(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .D(\n_0_i_nd_to_rdy/opt_has_pipe.i_pipe[2].pipe_reg[2][0] ),
        .Q(\pipe[3] ),
        .R(sclr_i));
FDRE #(
    .INIT(1'b0)) 
     \i_nd_to_rdy/opt_has_pipe.i_pipe[4].pipe_reg[4][0] 
       (.C(aclk),
        .CE(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .D(\pipe[3] ),
        .Q(\pipe[4] ),
        .R(sclr_i));
FDRE #(
    .INIT(1'b0)) 
     \i_nd_to_rdy/opt_has_pipe.i_pipe[5].pipe_reg[5][0] 
       (.C(aclk),
        .CE(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .D(\pipe[4] ),
        .Q(\pipe[5] ),
        .R(sclr_i));
FDRE #(
    .INIT(1'b0)) 
     \i_nd_to_rdy/opt_has_pipe.i_pipe[6].pipe_reg[6][0] 
       (.C(aclk),
        .CE(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .D(\pipe[5] ),
        .Q(m_axis_result_tvalid),
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
        .CE(\n_0_gen_has_z_tready.reg1_a_tuser[3]_i_1 ),
        .D(s_axis_a_tdata[0]),
        .Q(\n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[0] ),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[10] 
       (.C(aclk),
        .CE(\n_0_gen_has_z_tready.reg1_a_tuser[3]_i_1 ),
        .D(s_axis_a_tdata[10]),
        .Q(\n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[10] ),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[11] 
       (.C(aclk),
        .CE(\n_0_gen_has_z_tready.reg1_a_tuser[3]_i_1 ),
        .D(s_axis_a_tdata[11]),
        .Q(\n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[11] ),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[12] 
       (.C(aclk),
        .CE(\n_0_gen_has_z_tready.reg1_a_tuser[3]_i_1 ),
        .D(s_axis_a_tdata[12]),
        .Q(\n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[12] ),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[13] 
       (.C(aclk),
        .CE(\n_0_gen_has_z_tready.reg1_a_tuser[3]_i_1 ),
        .D(s_axis_a_tdata[13]),
        .Q(\n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[13] ),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[14] 
       (.C(aclk),
        .CE(\n_0_gen_has_z_tready.reg1_a_tuser[3]_i_1 ),
        .D(s_axis_a_tdata[14]),
        .Q(\n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[14] ),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[15] 
       (.C(aclk),
        .CE(\n_0_gen_has_z_tready.reg1_a_tuser[3]_i_1 ),
        .D(s_axis_a_tdata[15]),
        .Q(\n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[15] ),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[16] 
       (.C(aclk),
        .CE(\n_0_gen_has_z_tready.reg1_a_tuser[3]_i_1 ),
        .D(s_axis_a_tdata[16]),
        .Q(\n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[16] ),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[1] 
       (.C(aclk),
        .CE(\n_0_gen_has_z_tready.reg1_a_tuser[3]_i_1 ),
        .D(s_axis_a_tdata[1]),
        .Q(\n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[1] ),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[2] 
       (.C(aclk),
        .CE(\n_0_gen_has_z_tready.reg1_a_tuser[3]_i_1 ),
        .D(s_axis_a_tdata[2]),
        .Q(\n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[2] ),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[3] 
       (.C(aclk),
        .CE(\n_0_gen_has_z_tready.reg1_a_tuser[3]_i_1 ),
        .D(s_axis_a_tdata[3]),
        .Q(\n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[3] ),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[4] 
       (.C(aclk),
        .CE(\n_0_gen_has_z_tready.reg1_a_tuser[3]_i_1 ),
        .D(s_axis_a_tdata[4]),
        .Q(\n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[4] ),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[5] 
       (.C(aclk),
        .CE(\n_0_gen_has_z_tready.reg1_a_tuser[3]_i_1 ),
        .D(s_axis_a_tdata[5]),
        .Q(\n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[5] ),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[6] 
       (.C(aclk),
        .CE(\n_0_gen_has_z_tready.reg1_a_tuser[3]_i_1 ),
        .D(s_axis_a_tdata[6]),
        .Q(\n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[6] ),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[7] 
       (.C(aclk),
        .CE(\n_0_gen_has_z_tready.reg1_a_tuser[3]_i_1 ),
        .D(s_axis_a_tdata[7]),
        .Q(\n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[7] ),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[8] 
       (.C(aclk),
        .CE(\n_0_gen_has_z_tready.reg1_a_tuser[3]_i_1 ),
        .D(s_axis_a_tdata[8]),
        .Q(\n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[8] ),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[9] 
       (.C(aclk),
        .CE(\n_0_gen_has_z_tready.reg1_a_tuser[3]_i_1 ),
        .D(s_axis_a_tdata[9]),
        .Q(\n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tdata_reg[9] ),
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
        .CE(\n_0_gen_has_z_tready.reg1_a_tuser[3]_i_1 ),
        .D(s_axis_a_tuser[0]),
        .Q(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_tuser [0]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tuser_reg[1] 
       (.C(aclk),
        .CE(\n_0_gen_has_z_tready.reg1_a_tuser[3]_i_1 ),
        .D(s_axis_a_tuser[1]),
        .Q(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_tuser [1]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tuser_reg[2] 
       (.C(aclk),
        .CE(\n_0_gen_has_z_tready.reg1_a_tuser[3]_i_1 ),
        .D(s_axis_a_tuser[2]),
        .Q(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_tuser [2]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg1_a_tuser_reg[3] 
       (.C(aclk),
        .CE(\n_0_gen_has_z_tready.reg1_a_tuser[3]_i_1 ),
        .D(s_axis_a_tuser[3]),
        .Q(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_tuser [3]),
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
        .Q(\n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[0] ),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[10] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[10]_i_1 ),
        .Q(\n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[10] ),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[11] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[11]_i_1 ),
        .Q(\n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[11] ),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[12] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[12]_i_1 ),
        .Q(\n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[12] ),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[13] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[13]_i_1 ),
        .Q(\n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[13] ),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[14] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[14]_i_1 ),
        .Q(\n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[14] ),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[15] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[15]_i_1 ),
        .Q(\n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[15] ),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[16] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[16]_i_2 ),
        .Q(a_i),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[1] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[1]_i_1 ),
        .Q(\n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[1] ),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[2] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[2]_i_1 ),
        .Q(\n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[2] ),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[3] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[3]_i_1 ),
        .Q(\n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[3] ),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[4] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[4]_i_1 ),
        .Q(\n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[4] ),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[5] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[5]_i_1 ),
        .Q(\n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[5] ),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[6] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[6]_i_1 ),
        .Q(\n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[6] ),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[7] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[7]_i_1 ),
        .Q(\n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[7] ),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[8] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[8]_i_1 ),
        .Q(\n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[8] ),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[9] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[9]_i_1 ),
        .Q(\n_0_need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[9] ),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tlast_reg 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_gen_has_z_tready.reg2_a_tlast_i_1 ),
        .Q(m_axis_z_tlast_a),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tuser_reg[0] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tuser[0]_i_1 ),
        .Q(m_axis_z_tuser_a[0]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tuser_reg[1] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tuser[1]_i_1 ),
        .Q(m_axis_z_tuser_a[1]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tuser_reg[2] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tuser[2]_i_1 ),
        .Q(m_axis_z_tuser_a[2]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tuser_reg[3] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tuser[3]_i_1 ),
        .Q(m_axis_z_tuser_a[3]),
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
        .CE(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .D(m_axis_z_tuser_a[0]),
        .Q(\need_user_delay.user_pipe/i_pipe/first_q [0]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_user_delay.user_pipe/i_pipe/opt_has_pipe.first_q_reg[1] 
       (.C(aclk),
        .CE(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .D(m_axis_z_tuser_a[1]),
        .Q(\need_user_delay.user_pipe/i_pipe/first_q [1]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_user_delay.user_pipe/i_pipe/opt_has_pipe.first_q_reg[2] 
       (.C(aclk),
        .CE(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .D(m_axis_z_tuser_a[2]),
        .Q(\need_user_delay.user_pipe/i_pipe/first_q [2]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_user_delay.user_pipe/i_pipe/opt_has_pipe.first_q_reg[3] 
       (.C(aclk),
        .CE(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .D(m_axis_z_tuser_a[3]),
        .Q(\need_user_delay.user_pipe/i_pipe/first_q [3]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_user_delay.user_pipe/i_pipe/opt_has_pipe.first_q_reg[4] 
       (.C(aclk),
        .CE(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .D(m_axis_z_tlast_a),
        .Q(\need_user_delay.user_pipe/i_pipe/first_q [4]),
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
        .CE(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
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
        .CE(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
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
        .CE(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
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
        .CE(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
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
        .CE(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .CLK(aclk),
        .D(\need_user_delay.user_pipe/i_pipe/first_q [4]),
        .Q(\n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][4]_srl4 ));
FDRE #(
    .INIT(1'b0)) 
     \need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[6].pipe_reg[6][0] 
       (.C(aclk),
        .CE(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .D(\n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][0]_srl4 ),
        .Q(m_axis_result_tuser[0]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[6].pipe_reg[6][1] 
       (.C(aclk),
        .CE(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .D(\n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][1]_srl4 ),
        .Q(m_axis_result_tuser[1]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[6].pipe_reg[6][2] 
       (.C(aclk),
        .CE(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .D(\n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][2]_srl4 ),
        .Q(m_axis_result_tuser[2]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[6].pipe_reg[6][3] 
       (.C(aclk),
        .CE(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .D(\n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][3]_srl4 ),
        .Q(m_axis_result_tuser[3]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[6].pipe_reg[6][4] 
       (.C(aclk),
        .CE(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .D(\n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][4]_srl4 ),
        .Q(m_axis_result_tlast),
        .R(\<const0> ));
LUT5 #(
    .INIT(32'hB8BBB888)) 
     \opt_has_pipe.first_q[0]_i_1 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [0]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew ),
        .I2(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [8]),
        .I3(\FIX_TO_FLT_OP.SPD.OP/LZE/p_1_in ),
        .I4(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [16]),
        .O(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/op_int [0]));
(* SOFT_HLUTNM = "soft_lutpair0" *) 
   LUT5 #(
    .INIT(32'hB8BBB888)) 
     \opt_has_pipe.first_q[0]_i_1__0 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/LZE/p_0_out ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew ),
        .I2(\n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[4].CARRYS_DEL.NEED_DEL.CARRYS_FD ),
        .I3(\FIX_TO_FLT_OP.SPD.OP/LZE/p_1_in ),
        .I4(\n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[0].CARRYS_DEL.NEED_DEL.CARRYS_FD ),
        .O(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/op_int [0]));
LUT3 #(
    .INIT(8'hAC)) 
     \opt_has_pipe.first_q[0]_i_1__1 
       (.I0(\n_0_opt_has_pipe.first_q[0]_i_2 ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [0]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .O(\n_0_opt_has_pipe.first_q[0]_i_1__1 ));
LUT3 #(
    .INIT(8'hAC)) 
     \opt_has_pipe.first_q[0]_i_1__10 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CI ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/first_q [0]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .O(\n_0_opt_has_pipe.first_q[0]_i_1__10 ));
LUT3 #(
    .INIT(8'h80)) 
     \opt_has_pipe.first_q[0]_i_1__11 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q [3]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q [2]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q [1]),
        .O(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].MUX_Z/op_int ));
LUT3 #(
    .INIT(8'hAC)) 
     \opt_has_pipe.first_q[0]_i_1__12 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/O ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q [0]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .O(\n_0_opt_has_pipe.first_q[0]_i_1__12 ));
(* SOFT_HLUTNM = "soft_lutpair0" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \opt_has_pipe.first_q[0]_i_1__2 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/LZE/p_0_out ),
        .O(\FIX_TO_FLT_OP.SPD.OP/LZE/all_bits_zero_del ));
LUT2 #(
    .INIT(4'h8)) 
     \opt_has_pipe.first_q[0]_i_1__3 
       (.I0(combiner_data_valid),
        .I1(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .O(valid_transfer_in));
LUT3 #(
    .INIT(8'hAC)) 
     \opt_has_pipe.first_q[0]_i_1__4 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].MUX_0/OP_DEL/i_pipe/first_q ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q [0]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .O(\n_0_opt_has_pipe.first_q[0]_i_1__4 ));
LUT5 #(
    .INIT(32'hB8FFB800)) 
     \opt_has_pipe.first_q[0]_i_1__5 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/OP_DEL/i_pipe/first_q [3]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q [2]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/OP_DEL/i_pipe/first_q [2]),
        .I3(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q [1]),
        .I4(\n_0_opt_has_pipe.first_q[0]_i_2__0 ),
        .O(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].MUX_0/op_int ));
LUT3 #(
    .INIT(8'hAC)) 
     \opt_has_pipe.first_q[0]_i_1__6 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/M_ABS/O ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [0]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .O(\n_0_opt_has_pipe.first_q[0]_i_1__6 ));
LUT3 #(
    .INIT(8'hAC)) 
     \opt_has_pipe.first_q[0]_i_1__7 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [0]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [0]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .O(\n_0_opt_has_pipe.first_q[0]_i_1__7 ));
LUT3 #(
    .INIT(8'hAC)) 
     \opt_has_pipe.first_q[0]_i_1__8 
       (.I0(\n_0_opt_has_pipe.first_q[0]_i_2__1 ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [0]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .O(\n_0_opt_has_pipe.first_q[0]_i_1__8 ));
LUT3 #(
    .INIT(8'hAC)) 
     \opt_has_pipe.first_q[0]_i_1__9 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/O ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/first_q [0]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .O(\n_0_opt_has_pipe.first_q[0]_i_1__9 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \opt_has_pipe.first_q[0]_i_2 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [6]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [2]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew__0 ),
        .I3(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [4]),
        .I4(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q [1]),
        .I5(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [0]),
        .O(\n_0_opt_has_pipe.first_q[0]_i_2 ));
LUT3 #(
    .INIT(8'hB8)) 
     \opt_has_pipe.first_q[0]_i_2__0 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/OP_DEL/i_pipe/first_q [1]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q [0]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/OP_DEL/i_pipe/first_q [0]),
        .O(\n_0_opt_has_pipe.first_q[0]_i_2__0 ));
LUT5 #(
    .INIT(32'hFB0BF808)) 
     \opt_has_pipe.first_q[0]_i_2__1 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [8]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/LZE/p_1_in ),
        .I2(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew ),
        .I3(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [0]),
        .I4(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [16]),
        .O(\n_0_opt_has_pipe.first_q[0]_i_2__1 ));
LUT3 #(
    .INIT(8'hAC)) 
     \opt_has_pipe.first_q[10]_i_1 
       (.I0(\n_0_opt_has_pipe.first_q[10]_i_2 ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [10]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .O(\n_0_opt_has_pipe.first_q[10]_i_1 ));
LUT3 #(
    .INIT(8'hAC)) 
     \opt_has_pipe.first_q[10]_i_1__0 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [10]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [10]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .O(\n_0_opt_has_pipe.first_q[10]_i_1__0 ));
LUT3 #(
    .INIT(8'h04)) 
     \opt_has_pipe.first_q[10]_i_1__1 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/LZE/p_1_in ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [6]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew ),
        .O(\n_0_opt_has_pipe.first_q[10]_i_1__1 ));
LUT3 #(
    .INIT(8'hAC)) 
     \opt_has_pipe.first_q[10]_i_1__2 
       (.I0(\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[10].Q_XOR.SUM_XOR ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/first_q [10]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .O(\n_0_opt_has_pipe.first_q[10]_i_1__2 ));
LUT3 #(
    .INIT(8'hAC)) 
     \opt_has_pipe.first_q[10]_i_1__3 
       (.I0(\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[10].C_MUX.CARRY_MUX ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/first_q [10]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .O(\n_0_opt_has_pipe.first_q[10]_i_1__3 ));
LUT3 #(
    .INIT(8'hAC)) 
     \opt_has_pipe.first_q[10]_i_1__4 
       (.I0(\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[10].Q_XOR.SUM_XOR ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [10]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .O(\n_0_opt_has_pipe.first_q[10]_i_1__4 ));
LUT3 #(
    .INIT(8'hAC)) 
     \opt_has_pipe.first_q[10]_i_1__5 
       (.I0(\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[10].Q_XOR.SUM_XOR ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q [10]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .O(\n_0_opt_has_pipe.first_q[10]_i_1__5 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \opt_has_pipe.first_q[10]_i_2 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [16]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [12]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew__0 ),
        .I3(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [14]),
        .I4(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q [1]),
        .I5(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [10]),
        .O(\n_0_opt_has_pipe.first_q[10]_i_2 ));
LUT3 #(
    .INIT(8'hAC)) 
     \opt_has_pipe.first_q[11]_i_1 
       (.I0(\n_0_opt_has_pipe.first_q[11]_i_2 ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [11]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .O(\n_0_opt_has_pipe.first_q[11]_i_1 ));
LUT3 #(
    .INIT(8'hAC)) 
     \opt_has_pipe.first_q[11]_i_1__0 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [11]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [11]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .O(\n_0_opt_has_pipe.first_q[11]_i_1__0 ));
LUT3 #(
    .INIT(8'h04)) 
     \opt_has_pipe.first_q[11]_i_1__1 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/LZE/p_1_in ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [5]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew ),
        .O(\n_0_opt_has_pipe.first_q[11]_i_1__1 ));
LUT3 #(
    .INIT(8'hAC)) 
     \opt_has_pipe.first_q[11]_i_1__2 
       (.I0(\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[11].Q_XOR.SUM_XOR ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [11]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .O(\n_0_opt_has_pipe.first_q[11]_i_1__2 ));
LUT3 #(
    .INIT(8'hAC)) 
     \opt_has_pipe.first_q[11]_i_1__3 
       (.I0(\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[11].Q_XOR.SUM_XOR ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/first_q [11]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .O(\n_0_opt_has_pipe.first_q[11]_i_1__3 ));
LUT3 #(
    .INIT(8'hAC)) 
     \opt_has_pipe.first_q[11]_i_1__4 
       (.I0(\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[11].Q_XOR.SUM_XOR ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q [11]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .O(\n_0_opt_has_pipe.first_q[11]_i_1__4 ));
LUT6 #(
    .INIT(64'h3A3F0A0F3A300A00)) 
     \opt_has_pipe.first_q[11]_i_2 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [13]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q [2]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q [1]),
        .I3(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q [0]),
        .I4(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [15]),
        .I5(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [11]),
        .O(\n_0_opt_has_pipe.first_q[11]_i_2 ));
LUT3 #(
    .INIT(8'hAC)) 
     \opt_has_pipe.first_q[12]_i_1 
       (.I0(\n_0_opt_has_pipe.first_q[12]_i_2 ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [12]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .O(\n_0_opt_has_pipe.first_q[12]_i_1 ));
LUT3 #(
    .INIT(8'hAC)) 
     \opt_has_pipe.first_q[12]_i_1__0 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [12]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [12]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .O(\n_0_opt_has_pipe.first_q[12]_i_1__0 ));
LUT3 #(
    .INIT(8'h04)) 
     \opt_has_pipe.first_q[12]_i_1__1 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/LZE/p_1_in ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [4]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew ),
        .O(\n_0_opt_has_pipe.first_q[12]_i_1__1 ));
LUT3 #(
    .INIT(8'hAC)) 
     \opt_has_pipe.first_q[12]_i_1__2 
       (.I0(\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[12].Q_XOR.SUM_XOR ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [12]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .O(\n_0_opt_has_pipe.first_q[12]_i_1__2 ));
LUT6 #(
    .INIT(64'h3A3F0A0F3A300A00)) 
     \opt_has_pipe.first_q[12]_i_2 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [14]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q [2]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q [1]),
        .I3(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q [0]),
        .I4(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [16]),
        .I5(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [12]),
        .O(\n_0_opt_has_pipe.first_q[12]_i_2 ));
LUT3 #(
    .INIT(8'hAC)) 
     \opt_has_pipe.first_q[13]_i_1 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [13]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [13]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .O(\n_0_opt_has_pipe.first_q[13]_i_1 ));
LUT3 #(
    .INIT(8'h04)) 
     \opt_has_pipe.first_q[13]_i_1__0 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/LZE/p_1_in ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [3]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew ),
        .O(\n_0_opt_has_pipe.first_q[13]_i_1__0 ));
LUT4 #(
    .INIT(16'h00E4)) 
     \opt_has_pipe.first_q[13]_i_1__1 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q [0]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [13]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [15]),
        .I3(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q [1]),
        .O(\n_0_opt_has_pipe.first_q[13]_i_1__1 ));
LUT3 #(
    .INIT(8'hAC)) 
     \opt_has_pipe.first_q[13]_i_1__2 
       (.I0(\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[13].Q_XOR.SUM_XOR ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [13]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .O(\n_0_opt_has_pipe.first_q[13]_i_1__2 ));
LUT3 #(
    .INIT(8'hAC)) 
     \opt_has_pipe.first_q[14]_i_1 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [14]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [14]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .O(\n_0_opt_has_pipe.first_q[14]_i_1 ));
LUT3 #(
    .INIT(8'h04)) 
     \opt_has_pipe.first_q[14]_i_1__0 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/LZE/p_1_in ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [2]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew ),
        .O(\n_0_opt_has_pipe.first_q[14]_i_1__0 ));
LUT4 #(
    .INIT(16'h00E4)) 
     \opt_has_pipe.first_q[14]_i_1__1 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q [0]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [14]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [16]),
        .I3(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q [1]),
        .O(\n_0_opt_has_pipe.first_q[14]_i_1__1 ));
LUT3 #(
    .INIT(8'hAC)) 
     \opt_has_pipe.first_q[14]_i_1__2 
       (.I0(\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[14].Q_XOR.SUM_XOR ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [14]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .O(\n_0_opt_has_pipe.first_q[14]_i_1__2 ));
LUT3 #(
    .INIT(8'hAC)) 
     \opt_has_pipe.first_q[15]_i_1 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [15]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [15]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .O(\n_0_opt_has_pipe.first_q[15]_i_1 ));
LUT3 #(
    .INIT(8'h04)) 
     \opt_has_pipe.first_q[15]_i_1__0 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/LZE/p_1_in ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [1]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew ),
        .O(\n_0_opt_has_pipe.first_q[15]_i_1__0 ));
LUT3 #(
    .INIT(8'h04)) 
     \opt_has_pipe.first_q[15]_i_1__1 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q [0]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [15]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q [1]),
        .O(\n_0_opt_has_pipe.first_q[15]_i_1__1 ));
LUT3 #(
    .INIT(8'hAC)) 
     \opt_has_pipe.first_q[15]_i_1__2 
       (.I0(\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[15].Q_XOR.SUM_XOR ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [15]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .O(\n_0_opt_has_pipe.first_q[15]_i_1__2 ));
LUT3 #(
    .INIT(8'hAC)) 
     \opt_has_pipe.first_q[16]_i_1 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [16]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [16]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .O(\n_0_opt_has_pipe.first_q[16]_i_1 ));
LUT3 #(
    .INIT(8'h04)) 
     \opt_has_pipe.first_q[16]_i_1__0 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/LZE/p_1_in ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [0]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew ),
        .O(\n_0_opt_has_pipe.first_q[16]_i_1__0 ));
LUT3 #(
    .INIT(8'h04)) 
     \opt_has_pipe.first_q[16]_i_1__1 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q [0]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [16]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q [1]),
        .O(\n_0_opt_has_pipe.first_q[16]_i_1__1 ));
LUT3 #(
    .INIT(8'hAC)) 
     \opt_has_pipe.first_q[16]_i_1__2 
       (.I0(\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[16].Q_XOR.SUM_XOR ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [16]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .O(\n_0_opt_has_pipe.first_q[16]_i_1__2 ));
LUT3 #(
    .INIT(8'hAC)) 
     \opt_has_pipe.first_q[1]_i_1 
       (.I0(\n_0_opt_has_pipe.first_q[1]_i_2 ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [1]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .O(\n_0_opt_has_pipe.first_q[1]_i_1 ));
LUT3 #(
    .INIT(8'hB8)) 
     \opt_has_pipe.first_q[1]_i_1__0 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q [2]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q [1]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q [0]),
        .O(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew__0 ));
LUT3 #(
    .INIT(8'hAC)) 
     \opt_has_pipe.first_q[1]_i_1__1 
       (.I0(\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[1].Q_XOR.SUM_XOR ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [1]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .O(\n_0_opt_has_pipe.first_q[1]_i_1__1 ));
(* SOFT_HLUTNM = "soft_lutpair3" *) 
   LUT2 #(
    .INIT(4'h2)) 
     \opt_has_pipe.first_q[1]_i_1__10 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/LZE/p_1_in ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew ),
        .O(\n_0_opt_has_pipe.first_q[1]_i_1__10 ));
LUT3 #(
    .INIT(8'hAC)) 
     \opt_has_pipe.first_q[1]_i_1__2 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [1]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [1]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .O(\n_0_opt_has_pipe.first_q[1]_i_1__2 ));
LUT4 #(
    .INIT(16'h00E4)) 
     \opt_has_pipe.first_q[1]_i_1__3 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/LZE/p_1_in ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [15]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [7]),
        .I3(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew ),
        .O(\n_0_opt_has_pipe.first_q[1]_i_1__3 ));
LUT3 #(
    .INIT(8'hAC)) 
     \opt_has_pipe.first_q[1]_i_1__4 
       (.I0(\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[1].Q_XOR.SUM_XOR ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/first_q [1]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .O(\n_0_opt_has_pipe.first_q[1]_i_1__4 ));
LUT3 #(
    .INIT(8'hAC)) 
     \opt_has_pipe.first_q[1]_i_1__5 
       (.I0(\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[1].C_MUX.CARRY_MUX ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/first_q [1]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .O(\n_0_opt_has_pipe.first_q[1]_i_1__5 ));
LUT3 #(
    .INIT(8'h5C)) 
     \opt_has_pipe.first_q[1]_i_1__6 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].DIST_DEL/i_pipe/first_q [1]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q [1]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .O(\n_0_opt_has_pipe.first_q[1]_i_1__6 ));
LUT4 #(
    .INIT(16'h00E2)) 
     \opt_has_pipe.first_q[1]_i_1__7 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [14]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/LZE/p_1_in ),
        .I2(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [6]),
        .I3(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew ),
        .O(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/op_int [1]));
(* SOFT_HLUTNM = "soft_lutpair3" *) 
   LUT4 #(
    .INIT(16'h00E2)) 
     \opt_has_pipe.first_q[1]_i_1__8 
       (.I0(\n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[1].CARRYS_DEL.NEED_DEL.CARRYS_FD ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/LZE/p_1_in ),
        .I2(\n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[5].CARRYS_DEL.NEED_DEL.CARRYS_FD ),
        .I3(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew ),
        .O(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/op_int [1]));
LUT3 #(
    .INIT(8'hAC)) 
     \opt_has_pipe.first_q[1]_i_1__9 
       (.I0(\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[1].Q_XOR.SUM_XOR ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q [1]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .O(\n_0_opt_has_pipe.first_q[1]_i_1__9 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \opt_has_pipe.first_q[1]_i_2 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [7]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [3]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew__0 ),
        .I3(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [5]),
        .I4(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q [1]),
        .I5(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [1]),
        .O(\n_0_opt_has_pipe.first_q[1]_i_2 ));
LUT3 #(
    .INIT(8'hAC)) 
     \opt_has_pipe.first_q[2]_i_1 
       (.I0(\n_0_opt_has_pipe.first_q[2]_i_2 ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [2]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .O(\n_0_opt_has_pipe.first_q[2]_i_1 ));
LUT3 #(
    .INIT(8'hAC)) 
     \opt_has_pipe.first_q[2]_i_1__0 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [2]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [2]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .O(\n_0_opt_has_pipe.first_q[2]_i_1__0 ));
LUT4 #(
    .INIT(16'h00E4)) 
     \opt_has_pipe.first_q[2]_i_1__1 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/LZE/p_1_in ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [14]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [6]),
        .I3(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew ),
        .O(\n_0_opt_has_pipe.first_q[2]_i_1__1 ));
LUT3 #(
    .INIT(8'hAC)) 
     \opt_has_pipe.first_q[2]_i_1__2 
       (.I0(\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[2].Q_XOR.SUM_XOR ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/first_q [2]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .O(\n_0_opt_has_pipe.first_q[2]_i_1__2 ));
LUT3 #(
    .INIT(8'hAC)) 
     \opt_has_pipe.first_q[2]_i_1__3 
       (.I0(\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[2].C_MUX.CARRY_MUX ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/first_q [2]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .O(\n_0_opt_has_pipe.first_q[2]_i_1__3 ));
LUT3 #(
    .INIT(8'h5C)) 
     \opt_has_pipe.first_q[2]_i_1__4 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[1].DIST_DEL/i_pipe/first_q [0]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q [2]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .O(\n_0_opt_has_pipe.first_q[2]_i_1__4 ));
LUT4 #(
    .INIT(16'h00E2)) 
     \opt_has_pipe.first_q[2]_i_1__5 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [12]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/LZE/p_1_in ),
        .I2(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [4]),
        .I3(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew ),
        .O(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/op_int [2]));
LUT4 #(
    .INIT(16'h00E2)) 
     \opt_has_pipe.first_q[2]_i_1__6 
       (.I0(\n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[2].CARRYS_DEL.NEED_DEL.CARRYS_FD ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/LZE/p_1_in ),
        .I2(\n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ZERO_DET_CC_1/CHAIN_GEN[6].CARRYS_DEL.NEED_DEL.CARRYS_FD ),
        .I3(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew ),
        .O(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/op_int [2]));
LUT3 #(
    .INIT(8'hAC)) 
     \opt_has_pipe.first_q[2]_i_1__7 
       (.I0(\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[2].Q_XOR.SUM_XOR ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [2]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .O(\n_0_opt_has_pipe.first_q[2]_i_1__7 ));
LUT3 #(
    .INIT(8'hAC)) 
     \opt_has_pipe.first_q[2]_i_1__8 
       (.I0(\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[2].Q_XOR.SUM_XOR ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q [2]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .O(\n_0_opt_has_pipe.first_q[2]_i_1__8 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \opt_has_pipe.first_q[2]_i_2 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [8]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [4]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew__0 ),
        .I3(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [6]),
        .I4(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q [1]),
        .I5(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [2]),
        .O(\n_0_opt_has_pipe.first_q[2]_i_2 ));
LUT3 #(
    .INIT(8'hAC)) 
     \opt_has_pipe.first_q[3]_i_1 
       (.I0(\n_0_opt_has_pipe.first_q[3]_i_2 ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [3]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .O(\n_0_opt_has_pipe.first_q[3]_i_1 ));
LUT3 #(
    .INIT(8'hAC)) 
     \opt_has_pipe.first_q[3]_i_1__0 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [3]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [3]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .O(\n_0_opt_has_pipe.first_q[3]_i_1__0 ));
LUT4 #(
    .INIT(16'h00E4)) 
     \opt_has_pipe.first_q[3]_i_1__1 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/LZE/p_1_in ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [13]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [5]),
        .I3(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew ),
        .O(\n_0_opt_has_pipe.first_q[3]_i_1__1 ));
LUT3 #(
    .INIT(8'hAC)) 
     \opt_has_pipe.first_q[3]_i_1__2 
       (.I0(\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[3].Q_XOR.SUM_XOR ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/first_q [3]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .O(\n_0_opt_has_pipe.first_q[3]_i_1__2 ));
LUT3 #(
    .INIT(8'hAC)) 
     \opt_has_pipe.first_q[3]_i_1__3 
       (.I0(\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[3].C_MUX.CARRY_MUX ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/first_q [3]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .O(\n_0_opt_has_pipe.first_q[3]_i_1__3 ));
LUT3 #(
    .INIT(8'h5C)) 
     \opt_has_pipe.first_q[3]_i_1__4 
       (.I0(\n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].DIST_DEL/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][1] ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q [3]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .O(\n_0_opt_has_pipe.first_q[3]_i_1__4 ));
LUT4 #(
    .INIT(16'h00E2)) 
     \opt_has_pipe.first_q[3]_i_1__5 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [10]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/LZE/p_1_in ),
        .I2(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [2]),
        .I3(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew ),
        .O(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_0/op_int [3]));
LUT3 #(
    .INIT(8'hAC)) 
     \opt_has_pipe.first_q[3]_i_1__6 
       (.I0(\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[3].Q_XOR.SUM_XOR ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [3]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .O(\n_0_opt_has_pipe.first_q[3]_i_1__6 ));
LUT3 #(
    .INIT(8'hAC)) 
     \opt_has_pipe.first_q[3]_i_1__7 
       (.I0(\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[3].Q_XOR.SUM_XOR ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q [3]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .O(\n_0_opt_has_pipe.first_q[3]_i_1__7 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \opt_has_pipe.first_q[3]_i_2 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [9]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [5]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew__0 ),
        .I3(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [7]),
        .I4(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q [1]),
        .I5(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [3]),
        .O(\n_0_opt_has_pipe.first_q[3]_i_2 ));
LUT3 #(
    .INIT(8'hAC)) 
     \opt_has_pipe.first_q[4]_i_1 
       (.I0(\n_0_opt_has_pipe.first_q[4]_i_2 ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [4]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .O(\n_0_opt_has_pipe.first_q[4]_i_1 ));
LUT3 #(
    .INIT(8'hAC)) 
     \opt_has_pipe.first_q[4]_i_1__0 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [4]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [4]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .O(\n_0_opt_has_pipe.first_q[4]_i_1__0 ));
LUT4 #(
    .INIT(16'h00E4)) 
     \opt_has_pipe.first_q[4]_i_1__1 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/LZE/p_1_in ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [12]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [4]),
        .I3(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew ),
        .O(\n_0_opt_has_pipe.first_q[4]_i_1__1 ));
LUT3 #(
    .INIT(8'hAC)) 
     \opt_has_pipe.first_q[4]_i_1__2 
       (.I0(\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[4].Q_XOR.SUM_XOR ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/first_q [4]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .O(\n_0_opt_has_pipe.first_q[4]_i_1__2 ));
LUT3 #(
    .INIT(8'hAC)) 
     \opt_has_pipe.first_q[4]_i_1__3 
       (.I0(\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[4].C_MUX.CARRY_MUX ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/first_q [4]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .O(\n_0_opt_has_pipe.first_q[4]_i_1__3 ));
LUT3 #(
    .INIT(8'hAC)) 
     \opt_has_pipe.first_q[4]_i_1__4 
       (.I0(\n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].DIST_DEL/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][0] ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q [4]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .O(\n_0_opt_has_pipe.first_q[4]_i_1__4 ));
LUT3 #(
    .INIT(8'hAC)) 
     \opt_has_pipe.first_q[4]_i_1__5 
       (.I0(\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[4].Q_XOR.SUM_XOR ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [4]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .O(\n_0_opt_has_pipe.first_q[4]_i_1__5 ));
LUT3 #(
    .INIT(8'hAC)) 
     \opt_has_pipe.first_q[4]_i_1__6 
       (.I0(\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[4].Q_XOR.SUM_XOR ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q [4]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .O(\n_0_opt_has_pipe.first_q[4]_i_1__6 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \opt_has_pipe.first_q[4]_i_2 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [10]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [6]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew__0 ),
        .I3(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [8]),
        .I4(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q [1]),
        .I5(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [4]),
        .O(\n_0_opt_has_pipe.first_q[4]_i_2 ));
LUT3 #(
    .INIT(8'hAC)) 
     \opt_has_pipe.first_q[5]_i_1 
       (.I0(\n_0_opt_has_pipe.first_q[5]_i_2 ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [5]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .O(\n_0_opt_has_pipe.first_q[5]_i_1 ));
LUT3 #(
    .INIT(8'hAC)) 
     \opt_has_pipe.first_q[5]_i_1__0 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [5]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [5]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .O(\n_0_opt_has_pipe.first_q[5]_i_1__0 ));
LUT4 #(
    .INIT(16'h00E4)) 
     \opt_has_pipe.first_q[5]_i_1__1 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/LZE/p_1_in ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [11]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [3]),
        .I3(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew ),
        .O(\n_0_opt_has_pipe.first_q[5]_i_1__1 ));
LUT3 #(
    .INIT(8'hAC)) 
     \opt_has_pipe.first_q[5]_i_1__2 
       (.I0(\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[5].Q_XOR.SUM_XOR ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/first_q [5]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .O(\n_0_opt_has_pipe.first_q[5]_i_1__2 ));
LUT3 #(
    .INIT(8'hAC)) 
     \opt_has_pipe.first_q[5]_i_1__3 
       (.I0(\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[5].C_MUX.CARRY_MUX ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/first_q [5]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .O(\n_0_opt_has_pipe.first_q[5]_i_1__3 ));
LUT3 #(
    .INIT(8'hAC)) 
     \opt_has_pipe.first_q[5]_i_1__4 
       (.I0(\n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].DIST_DEL/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][0] ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q [5]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .O(\n_0_opt_has_pipe.first_q[5]_i_1__4 ));
LUT3 #(
    .INIT(8'hAC)) 
     \opt_has_pipe.first_q[5]_i_1__5 
       (.I0(\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[5].Q_XOR.SUM_XOR ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [5]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .O(\n_0_opt_has_pipe.first_q[5]_i_1__5 ));
LUT3 #(
    .INIT(8'hAC)) 
     \opt_has_pipe.first_q[5]_i_1__6 
       (.I0(\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[5].Q_XOR.SUM_XOR ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q [5]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .O(\n_0_opt_has_pipe.first_q[5]_i_1__6 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \opt_has_pipe.first_q[5]_i_2 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [11]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [7]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew__0 ),
        .I3(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [9]),
        .I4(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q [1]),
        .I5(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [5]),
        .O(\n_0_opt_has_pipe.first_q[5]_i_2 ));
LUT3 #(
    .INIT(8'hAC)) 
     \opt_has_pipe.first_q[6]_i_1 
       (.I0(\n_0_opt_has_pipe.first_q[6]_i_2 ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [6]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .O(\n_0_opt_has_pipe.first_q[6]_i_1 ));
LUT3 #(
    .INIT(8'hAC)) 
     \opt_has_pipe.first_q[6]_i_1__0 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [6]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [6]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .O(\n_0_opt_has_pipe.first_q[6]_i_1__0 ));
LUT4 #(
    .INIT(16'h00E4)) 
     \opt_has_pipe.first_q[6]_i_1__1 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/LZE/p_1_in ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [10]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [2]),
        .I3(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew ),
        .O(\n_0_opt_has_pipe.first_q[6]_i_1__1 ));
LUT3 #(
    .INIT(8'hAC)) 
     \opt_has_pipe.first_q[6]_i_1__2 
       (.I0(\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[6].Q_XOR.SUM_XOR ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/first_q [6]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .O(\n_0_opt_has_pipe.first_q[6]_i_1__2 ));
LUT3 #(
    .INIT(8'hAC)) 
     \opt_has_pipe.first_q[6]_i_1__3 
       (.I0(\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[6].C_MUX.CARRY_MUX ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/first_q [6]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .O(\n_0_opt_has_pipe.first_q[6]_i_1__3 ));
LUT3 #(
    .INIT(8'hAC)) 
     \opt_has_pipe.first_q[6]_i_1__4 
       (.I0(\n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].DIST_DEL/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][0] ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q [6]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .O(\n_0_opt_has_pipe.first_q[6]_i_1__4 ));
LUT3 #(
    .INIT(8'hAC)) 
     \opt_has_pipe.first_q[6]_i_1__5 
       (.I0(\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[6].Q_XOR.SUM_XOR ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [6]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .O(\n_0_opt_has_pipe.first_q[6]_i_1__5 ));
LUT3 #(
    .INIT(8'hAC)) 
     \opt_has_pipe.first_q[6]_i_1__6 
       (.I0(\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[6].Q_XOR.SUM_XOR ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q [6]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .O(\n_0_opt_has_pipe.first_q[6]_i_1__6 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \opt_has_pipe.first_q[6]_i_2 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [12]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [8]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew__0 ),
        .I3(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [10]),
        .I4(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q [1]),
        .I5(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [6]),
        .O(\n_0_opt_has_pipe.first_q[6]_i_2 ));
LUT3 #(
    .INIT(8'hAC)) 
     \opt_has_pipe.first_q[7]_i_1 
       (.I0(\n_0_opt_has_pipe.first_q[7]_i_2 ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [7]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .O(\n_0_opt_has_pipe.first_q[7]_i_1 ));
LUT3 #(
    .INIT(8'hAC)) 
     \opt_has_pipe.first_q[7]_i_1__0 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [7]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [7]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .O(\n_0_opt_has_pipe.first_q[7]_i_1__0 ));
LUT4 #(
    .INIT(16'h00E4)) 
     \opt_has_pipe.first_q[7]_i_1__1 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/LZE/p_1_in ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [9]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [1]),
        .I3(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew ),
        .O(\n_0_opt_has_pipe.first_q[7]_i_1__1 ));
LUT3 #(
    .INIT(8'hAC)) 
     \opt_has_pipe.first_q[7]_i_1__2 
       (.I0(\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[7].Q_XOR.SUM_XOR ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/first_q [7]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .O(\n_0_opt_has_pipe.first_q[7]_i_1__2 ));
LUT3 #(
    .INIT(8'hAC)) 
     \opt_has_pipe.first_q[7]_i_1__3 
       (.I0(\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[7].C_MUX.CARRY_MUX ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/first_q [7]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .O(\n_0_opt_has_pipe.first_q[7]_i_1__3 ));
LUT3 #(
    .INIT(8'h5C)) 
     \opt_has_pipe.first_q[7]_i_1__4 
       (.I0(\n_0_FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].DIST_DEL/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][0] ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/EXP/EXP_MOD_DEL/i_pipe/first_q [7]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .O(\n_0_opt_has_pipe.first_q[7]_i_1__4 ));
LUT3 #(
    .INIT(8'hAC)) 
     \opt_has_pipe.first_q[7]_i_1__5 
       (.I0(\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[7].Q_XOR.SUM_XOR ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [7]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .O(\n_0_opt_has_pipe.first_q[7]_i_1__5 ));
LUT3 #(
    .INIT(8'hAC)) 
     \opt_has_pipe.first_q[7]_i_1__6 
       (.I0(\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[7].Q_XOR.SUM_XOR ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q [7]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .O(\n_0_opt_has_pipe.first_q[7]_i_1__6 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \opt_has_pipe.first_q[7]_i_2 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [13]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [9]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew__0 ),
        .I3(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [11]),
        .I4(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q [1]),
        .I5(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [7]),
        .O(\n_0_opt_has_pipe.first_q[7]_i_2 ));
LUT3 #(
    .INIT(8'hAC)) 
     \opt_has_pipe.first_q[8]_i_1 
       (.I0(\n_0_opt_has_pipe.first_q[8]_i_2 ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [8]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .O(\n_0_opt_has_pipe.first_q[8]_i_1 ));
LUT3 #(
    .INIT(8'hAC)) 
     \opt_has_pipe.first_q[8]_i_1__0 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [8]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [8]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .O(\n_0_opt_has_pipe.first_q[8]_i_1__0 ));
LUT4 #(
    .INIT(16'h00E4)) 
     \opt_has_pipe.first_q[8]_i_1__1 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/LZE/p_1_in ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [8]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [0]),
        .I3(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew ),
        .O(\n_0_opt_has_pipe.first_q[8]_i_1__1 ));
LUT3 #(
    .INIT(8'hAC)) 
     \opt_has_pipe.first_q[8]_i_1__2 
       (.I0(\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[8].Q_XOR.SUM_XOR ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/first_q [8]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .O(\n_0_opt_has_pipe.first_q[8]_i_1__2 ));
LUT3 #(
    .INIT(8'hAC)) 
     \opt_has_pipe.first_q[8]_i_1__3 
       (.I0(\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[8].C_MUX.CARRY_MUX ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/first_q [8]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .O(\n_0_opt_has_pipe.first_q[8]_i_1__3 ));
LUT3 #(
    .INIT(8'hAC)) 
     \opt_has_pipe.first_q[8]_i_1__4 
       (.I0(\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[8].Q_XOR.SUM_XOR ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [8]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .O(\n_0_opt_has_pipe.first_q[8]_i_1__4 ));
LUT3 #(
    .INIT(8'hAC)) 
     \opt_has_pipe.first_q[8]_i_1__5 
       (.I0(\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[8].Q_XOR.SUM_XOR ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q [8]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .O(\n_0_opt_has_pipe.first_q[8]_i_1__5 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \opt_has_pipe.first_q[8]_i_2 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [14]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [10]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew__0 ),
        .I3(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [12]),
        .I4(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q [1]),
        .I5(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [8]),
        .O(\n_0_opt_has_pipe.first_q[8]_i_2 ));
LUT3 #(
    .INIT(8'hAC)) 
     \opt_has_pipe.first_q[9]_i_1 
       (.I0(\n_0_opt_has_pipe.first_q[9]_i_2 ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [9]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .O(\n_0_opt_has_pipe.first_q[9]_i_1 ));
LUT3 #(
    .INIT(8'hAC)) 
     \opt_has_pipe.first_q[9]_i_1__0 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [9]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [9]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .O(\n_0_opt_has_pipe.first_q[9]_i_1__0 ));
LUT3 #(
    .INIT(8'h04)) 
     \opt_has_pipe.first_q[9]_i_1__1 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/LZE/p_1_in ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/Z_C_DEL/i_pipe/first_q [7]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew ),
        .O(\n_0_opt_has_pipe.first_q[9]_i_1__1 ));
LUT3 #(
    .INIT(8'hAC)) 
     \opt_has_pipe.first_q[9]_i_1__2 
       (.I0(\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/CHAIN_GEN[9].Q_XOR.SUM_XOR ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND1/Q_DEL/i_pipe/first_q [9]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .O(\n_0_opt_has_pipe.first_q[9]_i_1__2 ));
LUT3 #(
    .INIT(8'hAC)) 
     \opt_has_pipe.first_q[9]_i_1__3 
       (.I0(\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[9].C_MUX.CARRY_MUX ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CARRYS_Q_DEL.CARRYS_DEL/i_pipe/first_q [9]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .O(\n_0_opt_has_pipe.first_q[9]_i_1__3 ));
LUT3 #(
    .INIT(8'hAC)) 
     \opt_has_pipe.first_q[9]_i_1__4 
       (.I0(\n_0_FIX_TO_FLT_OP.SPD.OP/M_ABS/CHAIN_GEN[9].Q_XOR.SUM_XOR ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/M_ABS/Q_DEL/i_pipe/first_q [9]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .O(\n_0_opt_has_pipe.first_q[9]_i_1__4 ));
LUT3 #(
    .INIT(8'hAC)) 
     \opt_has_pipe.first_q[9]_i_1__5 
       (.I0(\n_0_FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/CHAIN_GEN[9].Q_XOR.SUM_XOR ),
        .I1(\FIX_TO_FLT_OP.SPD.OP/ROUND/LOGIC.RND2/Q_DEL/i_pipe/first_q [9]),
        .I2(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ),
        .O(\n_0_opt_has_pipe.first_q[9]_i_1__5 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \opt_has_pipe.first_q[9]_i_2 
       (.I0(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [15]),
        .I1(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [11]),
        .I2(\FIX_TO_FLT_OP.SPD.OP/norm_dist_skew__0 ),
        .I3(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [13]),
        .I4(\FIX_TO_FLT_OP.SPD.OP/LZE/ENCODE[0].MUX_Z/OP_DEL/i_pipe/first_q [1]),
        .I5(\FIX_TO_FLT_OP.SPD.OP/NORM_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [9]),
        .O(\n_0_opt_has_pipe.first_q[9]_i_2 ));
LUT2 #(
    .INIT(4'hB)) 
     \opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 
       (.I0(m_axis_result_tready),
        .I1(m_axis_result_tvalid),
        .O(\n_0_opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 ));
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
