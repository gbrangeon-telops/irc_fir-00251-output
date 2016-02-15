// Copyright 1986-1999, 2001-2013 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2013.4 (win64) Build 353583 Mon Dec  9 17:49:19 MST 2013
// Date        : Tue Nov 17 10:37:48 2015
// Host        : TELOPSX running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim
//               d:/Telops/fir-00251-Output/IP/ip_axis_fp32tofi16/ip_axis_fp32tofi16_funcsim.v
// Design      : ip_axis_fp32tofi16
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k70tfbg676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "floating_point_v7_0,Vivado 2013.4" *) (* CHECK_LICENSE_TYPE = "ip_axis_fp32tofi16,floating_point_v7_0,{}" *) 
(* core_generation_info = "ip_axis_fp32tofi16,floating_point_v7_0,{x_ipProduct=Vivado 2013.4,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=floating_point,x_ipVersion=7.0,x_ipCoreRevision=3,x_ipLanguage=VHDL,C_XDEVICEFAMILY=kintex7,C_HAS_ADD=0,C_HAS_SUBTRACT=0,C_HAS_MULTIPLY=0,C_HAS_DIVIDE=0,C_HAS_SQRT=0,C_HAS_COMPARE=0,C_HAS_FIX_TO_FLT=0,C_HAS_FLT_TO_FIX=1,C_HAS_FLT_TO_FLT=0,C_HAS_RECIP=0,C_HAS_RECIP_SQRT=0,C_HAS_ABSOLUTE=0,C_HAS_LOGARITHM=0,C_HAS_EXPONENTIAL=0,C_HAS_FMA=0,C_HAS_FMS=0,C_HAS_ACCUMULATOR_A=0,C_HAS_ACCUMULATOR_S=0,C_A_WIDTH=32,C_A_FRACTION_WIDTH=24,C_B_WIDTH=32,C_B_FRACTION_WIDTH=24,C_C_WIDTH=32,C_C_FRACTION_WIDTH=24,C_RESULT_WIDTH=16,C_RESULT_FRACTION_WIDTH=0,C_COMPARE_OPERATION=8,C_LATENCY=7,C_OPTIMIZATION=1,C_MULT_USAGE=0,C_BRAM_USAGE=0,C_RATE=1,C_ACCUM_INPUT_MSB=32,C_ACCUM_MSB=32,C_ACCUM_LSB=-31,C_HAS_UNDERFLOW=0,C_HAS_OVERFLOW=0,C_HAS_INVALID_OP=0,C_HAS_DIVIDE_BY_ZERO=0,C_HAS_ACCUM_OVERFLOW=0,C_HAS_ACCUM_INPUT_OVERFLOW=0,C_HAS_ACLKEN=0,C_HAS_ARESETN=1,C_THROTTLE_SCHEME=1,C_HAS_A_TUSER=1,C_HAS_A_TLAST=1,C_HAS_B=0,C_HAS_B_TUSER=0,C_HAS_B_TLAST=0,C_HAS_C=0,C_HAS_C_TUSER=0,C_HAS_C_TLAST=0,C_HAS_OPERATION=0,C_HAS_OPERATION_TUSER=0,C_HAS_OPERATION_TLAST=0,C_HAS_RESULT_TUSER=1,C_HAS_RESULT_TLAST=1,C_TLAST_RESOLUTION=1,C_A_TDATA_WIDTH=32,C_A_TUSER_WIDTH=8,C_B_TDATA_WIDTH=32,C_B_TUSER_WIDTH=1,C_C_TDATA_WIDTH=32,C_C_TUSER_WIDTH=1,C_OPERATION_TDATA_WIDTH=8,C_OPERATION_TUSER_WIDTH=1,C_RESULT_TDATA_WIDTH=16,C_RESULT_TUSER_WIDTH=8}" *) 
(* NotValidForBitStream *)
module ip_axis_fp32tofi16
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
  output [15:0]m_axis_result_tdata;
  output [7:0]m_axis_result_tuser;
  output m_axis_result_tlast;

  wire \<const0> ;
  wire \<const1> ;
  wire aclk;
  wire aresetn;
  wire [15:0]m_axis_result_tdata;
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
   (* C_A_FRACTION_WIDTH = "24" *) 
   (* C_A_TDATA_WIDTH = "32" *) 
   (* C_A_TUSER_WIDTH = "8" *) 
   (* C_A_WIDTH = "32" *) 
   (* C_BRAM_USAGE = "0" *) 
   (* C_B_FRACTION_WIDTH = "24" *) 
   (* C_B_TDATA_WIDTH = "32" *) 
   (* C_B_TUSER_WIDTH = "1" *) 
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
   (* C_HAS_FIX_TO_FLT = "0" *) 
   (* C_HAS_FLT_TO_FIX = "1" *) 
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
   (* C_RESULT_FRACTION_WIDTH = "0" *) 
   (* C_RESULT_TDATA_WIDTH = "16" *) 
   (* C_RESULT_TUSER_WIDTH = "8" *) 
   (* C_RESULT_WIDTH = "16" *) 
   (* C_THROTTLE_SCHEME = "1" *) 
   (* C_TLAST_RESOLUTION = "1" *) 
   (* C_XDEVICEFAMILY = "kintex7" *) 
   (* DONT_TOUCH *) 
   (* downgradeipidentifiedwarnings = "yes" *) 
   ip_axis_fp32tofi16floating_point_v7_0__parameterized0 U0
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
(* C_HAS_SQRT = "0" *) (* C_HAS_COMPARE = "0" *) (* C_HAS_FIX_TO_FLT = "0" *) 
(* C_HAS_FLT_TO_FIX = "1" *) (* C_HAS_FLT_TO_FLT = "0" *) (* C_HAS_RECIP = "0" *) 
(* C_HAS_RECIP_SQRT = "0" *) (* C_HAS_ABSOLUTE = "0" *) (* C_HAS_LOGARITHM = "0" *) 
(* C_HAS_EXPONENTIAL = "0" *) (* C_HAS_FMA = "0" *) (* C_HAS_FMS = "0" *) 
(* C_HAS_ACCUMULATOR_A = "0" *) (* C_HAS_ACCUMULATOR_S = "0" *) (* C_A_WIDTH = "32" *) 
(* C_A_FRACTION_WIDTH = "24" *) (* C_B_WIDTH = "32" *) (* C_B_FRACTION_WIDTH = "24" *) 
(* C_C_WIDTH = "32" *) (* C_C_FRACTION_WIDTH = "24" *) (* C_RESULT_WIDTH = "16" *) 
(* C_RESULT_FRACTION_WIDTH = "0" *) (* C_COMPARE_OPERATION = "8" *) (* C_LATENCY = "7" *) 
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
(* C_A_TDATA_WIDTH = "32" *) (* C_A_TUSER_WIDTH = "8" *) (* C_B_TDATA_WIDTH = "32" *) 
(* C_B_TUSER_WIDTH = "1" *) (* C_C_TDATA_WIDTH = "32" *) (* C_C_TUSER_WIDTH = "1" *) 
(* C_OPERATION_TDATA_WIDTH = "8" *) (* C_OPERATION_TUSER_WIDTH = "1" *) (* C_RESULT_TDATA_WIDTH = "16" *) 
(* C_RESULT_TUSER_WIDTH = "8" *) (* downgradeipidentifiedwarnings = "yes" *) 
module ip_axis_fp32tofi16floating_point_v7_0__parameterized0
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
  output [15:0]m_axis_result_tdata;
  output [7:0]m_axis_result_tuser;
  output m_axis_result_tlast;

  wire aclk;
  wire aclken;
  wire aresetn;
  wire [15:0]m_axis_result_tdata;
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
   (* C_A_FRACTION_WIDTH = "24" *) 
   (* C_A_TDATA_WIDTH = "32" *) 
   (* C_A_TUSER_WIDTH = "8" *) 
   (* C_A_WIDTH = "32" *) 
   (* C_BRAM_USAGE = "0" *) 
   (* C_B_FRACTION_WIDTH = "24" *) 
   (* C_B_TDATA_WIDTH = "32" *) 
   (* C_B_TUSER_WIDTH = "1" *) 
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
   (* C_HAS_FIX_TO_FLT = "0" *) 
   (* C_HAS_FLT_TO_FIX = "1" *) 
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
   (* C_RESULT_FRACTION_WIDTH = "0" *) 
   (* C_RESULT_TDATA_WIDTH = "16" *) 
   (* C_RESULT_TUSER_WIDTH = "8" *) 
   (* C_RESULT_WIDTH = "16" *) 
   (* C_THROTTLE_SCHEME = "1" *) 
   (* C_TLAST_RESOLUTION = "1" *) 
   (* C_XDEVICEFAMILY = "kintex7" *) 
   (* downgradeipidentifiedwarnings = "yes" *) 
   ip_axis_fp32tofi16floating_point_v7_0_viv__parameterized0 i_synth
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
(* C_HAS_SQRT = "0" *) (* C_HAS_COMPARE = "0" *) (* C_HAS_FIX_TO_FLT = "0" *) 
(* C_HAS_FLT_TO_FIX = "1" *) (* C_HAS_FLT_TO_FLT = "0" *) (* C_HAS_RECIP = "0" *) 
(* C_HAS_RECIP_SQRT = "0" *) (* C_HAS_ABSOLUTE = "0" *) (* C_HAS_LOGARITHM = "0" *) 
(* C_HAS_EXPONENTIAL = "0" *) (* C_HAS_FMA = "0" *) (* C_HAS_FMS = "0" *) 
(* C_HAS_ACCUMULATOR_A = "0" *) (* C_HAS_ACCUMULATOR_S = "0" *) (* C_A_WIDTH = "32" *) 
(* C_A_FRACTION_WIDTH = "24" *) (* C_B_WIDTH = "32" *) (* C_B_FRACTION_WIDTH = "24" *) 
(* C_C_WIDTH = "32" *) (* C_C_FRACTION_WIDTH = "24" *) (* C_RESULT_WIDTH = "16" *) 
(* C_RESULT_FRACTION_WIDTH = "0" *) (* C_COMPARE_OPERATION = "8" *) (* C_LATENCY = "7" *) 
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
(* C_A_TDATA_WIDTH = "32" *) (* C_A_TUSER_WIDTH = "8" *) (* C_B_TDATA_WIDTH = "32" *) 
(* C_B_TUSER_WIDTH = "1" *) (* C_C_TDATA_WIDTH = "32" *) (* C_C_TUSER_WIDTH = "1" *) 
(* C_OPERATION_TDATA_WIDTH = "8" *) (* C_OPERATION_TUSER_WIDTH = "1" *) (* C_RESULT_TDATA_WIDTH = "16" *) 
(* C_RESULT_TUSER_WIDTH = "8" *) (* downgradeipidentifiedwarnings = "yes" *) 
module ip_axis_fp32tofi16floating_point_v7_0_viv__parameterized0
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
  output [15:0]m_axis_result_tdata;
  output [7:0]m_axis_result_tuser;
  output m_axis_result_tlast;

  wire \<const0> ;
  wire \<const1> ;
  wire [15:0]\FLT_TO_FIX_OP.SPD.OP/ALIGN_DEL/i_pipe/first_q ;
  wire [9:0]\FLT_TO_FIX_OP.SPD.OP/ALIGN_DIST_DEL/DEL/i_pipe/first_q ;
  wire [15:0]\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q ;
  wire [15:0]\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q ;
  wire [1:0]\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].SKEW_DIST_DEL.DEL_DIST/i_pipe/first_q ;
  wire \FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/EQ_ZERO/CARRY_ZERO_DET/CI ;
  wire \FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/EQ_ZERO/CARRY_ZERO_DET/D ;
  wire [4:0]\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/EQ_ZERO/chunk_det ;
  wire \FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/I0 ;
  wire [15:0]\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[0].DEL_Z_D/i_pipe/first_q ;
  wire [15:0]\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[1].DEL_Z_D/i_pipe/first_q ;
  wire [1:0]\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[1].SKEW_DIST_DEL.DEL_DIST/i_pipe/first_q ;
  wire [15:0]\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[2].DEL_Z_D/i_pipe/first_q ;
  wire [1:0]\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[2].SKEW_DIST_DEL.DEL_DIST/i_pipe/first_q ;
  wire \FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/O ;
  wire [5:4]\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/ext_del_distance ;
  wire \FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/p_0_in10_in ;
  wire \FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/p_0_in13_in ;
  wire \FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/p_0_in16_in ;
  wire \FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/p_0_in4_in ;
  wire \FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/p_0_in7_in ;
  wire \FLT_TO_FIX_OP.SPD.OP/A_MANT_ALL_ZERO_P0_DEL/i_pipe/first_q ;
(* RTL_KEEP = "true" *)   wire \FLT_TO_FIX_OP.SPD.OP/COND_DET/EXP_DET_LUT.EXP_ALL_ONE_DEL/i_pipe/first_q ;
(* RTL_KEEP = "true" *)   wire \FLT_TO_FIX_OP.SPD.OP/COND_DET/EXP_DET_LUT.EXP_ALL_ZERO_DEL/i_pipe/first_q ;
  wire \FLT_TO_FIX_OP.SPD.OP/DEL_SIGN/i_pipe/first_q ;
(* RTL_KEEP = "true" *)   wire \FLT_TO_FIX_OP.SPD.OP/INVALID_OP_P1_REG/i_pipe/first_q ;
  wire [22:0]\FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/first_q ;
  wire \FLT_TO_FIX_OP.SPD.OP/NEG_MANT_OVER_P0_DEL/i_pipe/first_q ;
(* RTL_KEEP = "true" *)   wire [1:0]\FLT_TO_FIX_OP.SPD.OP/OP_STATE_P1_REG/i_pipe/first_q ;
(* RTL_KEEP = "true" *)   wire \FLT_TO_FIX_OP.SPD.OP/OVERFLOW_P1_REG/i_pipe/first_q ;
  wire \FLT_TO_FIX_OP.SPD.OP/ROUND/O ;
  wire [17:0]\FLT_TO_FIX_OP.SPD.OP/ROUND/Q_DEL/i_pipe/first_q ;
  wire [15:0]\FLT_TO_FIX_OP.SPD.OP/ROUND_BYPASS_DEL/i_pipe/first_q ;
  wire \FLT_TO_FIX_OP.SPD.OP/SIGN_DEL/i_pipe/first_q ;
  wire \FLT_TO_FIX_OP.SPD.OP/SIGN_P0_REG/i_pipe/first_q ;
  wire [9:0]\FLT_TO_FIX_OP.SPD.OP/ZERO_DET_DIST_DEL/DEL/i_pipe/first_q ;
  wire \FLT_TO_FIX_OP.SPD.OP/a_sign_pza ;
  wire [1:0]\FLT_TO_FIX_OP.SPD.OP/op_state_pcntrl ;
  wire \FLT_TO_FIX_OP.SPD.OP/overflow_p1_updated2 ;
  wire GND_2;
  wire aclk;
  wire aresetn;
  wire ce_internal_core;
  wire combiner_data_valid;
(* RTL_KEEP = "true" *)   wire \i_nd_to_rdy/first_q ;
  wire lopt;
  wire lopt_1;
  wire lopt_2;
  wire lopt_3;
  wire lopt_4;
  wire lopt_5;
  wire lopt_6;
  wire [15:0]m_axis_result_tdata;
  wire m_axis_result_tlast;
  wire m_axis_result_tready;
  wire [7:0]m_axis_result_tuser;
  wire m_axis_result_tvalid;
  wire \n_0_CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1 ;
  wire \n_0_CHAIN_GEN[10].C_MUX.CARRY_MUX_i_1 ;
  wire \n_0_CHAIN_GEN[11].C_MUX.CARRY_MUX_i_1 ;
  wire \n_0_CHAIN_GEN[12].C_MUX.CARRY_MUX_i_1 ;
  wire \n_0_CHAIN_GEN[13].C_MUX.CARRY_MUX_i_1 ;
  wire \n_0_CHAIN_GEN[14].C_MUX.CARRY_MUX_i_1 ;
  wire \n_0_CHAIN_GEN[15].C_MUX.CARRY_MUX_i_1 ;
  wire \n_0_CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1 ;
  wire \n_0_CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1 ;
  wire \n_0_CHAIN_GEN[3].C_MUX.CARRY_MUX_i_1 ;
  wire \n_0_CHAIN_GEN[4].C_MUX.CARRY_MUX_i_1 ;
  wire \n_0_CHAIN_GEN[5].C_MUX.CARRY_MUX_i_1 ;
  wire \n_0_CHAIN_GEN[6].C_MUX.CARRY_MUX_i_1 ;
  wire \n_0_CHAIN_GEN[7].C_MUX.CARRY_MUX_i_1 ;
  wire \n_0_CHAIN_GEN[8].C_MUX.CARRY_MUX_i_1 ;
  wire \n_0_CHAIN_GEN[9].C_MUX.CARRY_MUX_i_1 ;
  wire \n_0_FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/EQ_ZERO/CARRY_ZERO_DET/CHAIN_GEN[1].C_MUX.CARRY_MUX ;
  wire \n_0_FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/EQ_ZERO/CARRY_ZERO_DET/CHAIN_GEN[2].C_MUX.CARRY_MUX ;
  wire \n_0_FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/EQ_ZERO/CARRY_ZERO_DET/CHAIN_GEN[3].CARRYS_DEL.NEED_DEL.CARRYS_FD ;
  wire \n_0_FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/EQ_ZERO/CARRY_ZERO_DET/CHAIN_GEN[3].C_MUX.CARRY_MUX ;
  wire \n_0_FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/EQ_ZERO/CARRY_ZERO_DET/CHAIN_GEN[4].C_MUX.CARRY_MUX ;
  wire \n_0_FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX1 ;
  wire \n_0_FLT_TO_FIX_OP.SPD.OP/OP_STATE_P1_REG/i_pipe/opt_has_pipe.i_pipe[3].pipe_reg[3][0]_srl2 ;
  wire \n_0_FLT_TO_FIX_OP.SPD.OP/OP_STATE_P1_REG/i_pipe/opt_has_pipe.i_pipe[3].pipe_reg[3][1]_srl2 ;
  wire \n_0_FLT_TO_FIX_OP.SPD.OP/RESULT[0]_i_1 ;
  wire \n_0_FLT_TO_FIX_OP.SPD.OP/RESULT[10]_i_1 ;
  wire \n_0_FLT_TO_FIX_OP.SPD.OP/RESULT[11]_i_1 ;
  wire \n_0_FLT_TO_FIX_OP.SPD.OP/RESULT[12]_i_1 ;
  wire \n_0_FLT_TO_FIX_OP.SPD.OP/RESULT[13]_i_1 ;
  wire \n_0_FLT_TO_FIX_OP.SPD.OP/RESULT[14]_i_1 ;
  wire \n_0_FLT_TO_FIX_OP.SPD.OP/RESULT[15]_i_1 ;
  wire \n_0_FLT_TO_FIX_OP.SPD.OP/RESULT[1]_i_1 ;
  wire \n_0_FLT_TO_FIX_OP.SPD.OP/RESULT[2]_i_1 ;
  wire \n_0_FLT_TO_FIX_OP.SPD.OP/RESULT[3]_i_1 ;
  wire \n_0_FLT_TO_FIX_OP.SPD.OP/RESULT[4]_i_1 ;
  wire \n_0_FLT_TO_FIX_OP.SPD.OP/RESULT[5]_i_1 ;
  wire \n_0_FLT_TO_FIX_OP.SPD.OP/RESULT[6]_i_1 ;
  wire \n_0_FLT_TO_FIX_OP.SPD.OP/RESULT[7]_i_1 ;
  wire \n_0_FLT_TO_FIX_OP.SPD.OP/RESULT[8]_i_1 ;
  wire \n_0_FLT_TO_FIX_OP.SPD.OP/RESULT[9]_i_1 ;
  wire \n_0_FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[0].C_MUX.CARRY_MUX ;
  wire \n_0_FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[10].C_MUX.CARRY_MUX ;
  wire \n_0_FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[10].Q_XOR.SUM_XOR ;
  wire \n_0_FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[11].C_MUX.CARRY_MUX ;
  wire \n_0_FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[11].Q_XOR.SUM_XOR ;
  wire \n_0_FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[12].C_MUX.CARRY_MUX ;
  wire \n_0_FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[12].Q_XOR.SUM_XOR ;
  wire \n_0_FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[13].C_MUX.CARRY_MUX ;
  wire \n_0_FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[13].Q_XOR.SUM_XOR ;
  wire \n_0_FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[14].C_MUX.CARRY_MUX ;
  wire \n_0_FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[14].Q_XOR.SUM_XOR ;
  wire \n_0_FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[15].C_MUX.CARRY_MUX ;
  wire \n_0_FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[15].Q_XOR.SUM_XOR ;
  wire \n_0_FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[16].Q_XOR.SUM_XOR ;
  wire \n_0_FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[17].Q_XOR.SUM_XOR ;
  wire \n_0_FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[1].C_MUX.CARRY_MUX ;
  wire \n_0_FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[1].Q_XOR.SUM_XOR ;
  wire \n_0_FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[2].C_MUX.CARRY_MUX ;
  wire \n_0_FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[2].Q_XOR.SUM_XOR ;
  wire \n_0_FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[3].C_MUX.CARRY_MUX ;
  wire \n_0_FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[3].Q_XOR.SUM_XOR ;
  wire \n_0_FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[4].C_MUX.CARRY_MUX ;
  wire \n_0_FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[4].Q_XOR.SUM_XOR ;
  wire \n_0_FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[5].C_MUX.CARRY_MUX ;
  wire \n_0_FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[5].Q_XOR.SUM_XOR ;
  wire \n_0_FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[6].C_MUX.CARRY_MUX ;
  wire \n_0_FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[6].Q_XOR.SUM_XOR ;
  wire \n_0_FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[7].C_MUX.CARRY_MUX ;
  wire \n_0_FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[7].Q_XOR.SUM_XOR ;
  wire \n_0_FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[8].C_MUX.CARRY_MUX ;
  wire \n_0_FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[8].Q_XOR.SUM_XOR ;
  wire \n_0_FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[9].C_MUX.CARRY_MUX ;
  wire \n_0_FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[9].Q_XOR.SUM_XOR ;
  wire \n_0_FLT_TO_FIX_OP.SPD.OP/SIGN_DEL/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][0] ;
  wire \n_0_HAS_ARESETN.sclr_i_i_1 ;
  wire \n_0_RESULT[14]_i_2 ;
  wire \n_0_RESULT[15]_i_2 ;
  wire \n_0_gen_has_z_tready.reg1_a_ready_i_2 ;
  wire \n_0_gen_has_z_tready.reg1_a_ready_i_3 ;
  wire \n_0_gen_has_z_tready.reg1_a_ready_i_4 ;
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
  wire \n_0_i_nd_to_rdy/opt_has_pipe.i_pipe[2].pipe_reg[2][0] ;
  wire \n_0_i_nd_to_rdy/opt_has_pipe.i_pipe[3].pipe_reg[3][0] ;
  wire \n_0_i_nd_to_rdy/opt_has_pipe.i_pipe[4].pipe_reg[4][0] ;
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
  wire \n_0_opt_has_pipe.first_q[0]_i_1 ;
  wire \n_0_opt_has_pipe.first_q[0]_i_1__0 ;
  wire \n_0_opt_has_pipe.first_q[0]_i_1__1 ;
  wire \n_0_opt_has_pipe.first_q[0]_i_1__10 ;
  wire \n_0_opt_has_pipe.first_q[0]_i_1__11 ;
  wire \n_0_opt_has_pipe.first_q[0]_i_1__2 ;
  wire \n_0_opt_has_pipe.first_q[0]_i_1__3 ;
  wire \n_0_opt_has_pipe.first_q[0]_i_1__4 ;
  wire \n_0_opt_has_pipe.first_q[0]_i_1__5 ;
  wire \n_0_opt_has_pipe.first_q[0]_i_1__6 ;
  wire \n_0_opt_has_pipe.first_q[0]_i_1__7 ;
  wire \n_0_opt_has_pipe.first_q[0]_i_1__8 ;
  wire \n_0_opt_has_pipe.first_q[0]_i_1__9 ;
  wire \n_0_opt_has_pipe.first_q[0]_i_2 ;
  wire \n_0_opt_has_pipe.first_q[0]_i_2__0 ;
  wire \n_0_opt_has_pipe.first_q[0]_i_2__1 ;
  wire \n_0_opt_has_pipe.first_q[0]_i_2__2 ;
  wire \n_0_opt_has_pipe.first_q[0]_i_2__3 ;
  wire \n_0_opt_has_pipe.first_q[0]_i_3 ;
  wire \n_0_opt_has_pipe.first_q[0]_i_3__0 ;
  wire \n_0_opt_has_pipe.first_q[0]_i_3__1 ;
  wire \n_0_opt_has_pipe.first_q[0]_i_4 ;
  wire \n_0_opt_has_pipe.first_q[0]_i_4__0 ;
  wire \n_0_opt_has_pipe.first_q[0]_i_4__1 ;
  wire \n_0_opt_has_pipe.first_q[0]_i_5 ;
  wire \n_0_opt_has_pipe.first_q[0]_i_5__0 ;
  wire \n_0_opt_has_pipe.first_q[0]_i_6 ;
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
  wire \n_0_opt_has_pipe.first_q[1]_i_1 ;
  wire \n_0_opt_has_pipe.first_q[1]_i_1__0 ;
  wire \n_0_opt_has_pipe.first_q[1]_i_1__1 ;
  wire \n_0_opt_has_pipe.first_q[1]_i_1__2 ;
  wire \n_0_opt_has_pipe.first_q[1]_i_1__3 ;
  wire \n_0_opt_has_pipe.first_q[1]_i_2 ;
  wire \n_0_opt_has_pipe.first_q[1]_i_2__0 ;
  wire \n_0_opt_has_pipe.first_q[2]_i_1 ;
  wire \n_0_opt_has_pipe.first_q[2]_i_1__0 ;
  wire \n_0_opt_has_pipe.first_q[2]_i_1__1 ;
  wire \n_0_opt_has_pipe.first_q[2]_i_1__2 ;
  wire \n_0_opt_has_pipe.first_q[2]_i_1__3 ;
  wire \n_0_opt_has_pipe.first_q[3]_i_1 ;
  wire \n_0_opt_has_pipe.first_q[3]_i_1__0 ;
  wire \n_0_opt_has_pipe.first_q[3]_i_1__1 ;
  wire \n_0_opt_has_pipe.first_q[3]_i_1__2 ;
  wire \n_0_opt_has_pipe.first_q[3]_i_1__3 ;
  wire \n_0_opt_has_pipe.first_q[4]_i_1 ;
  wire \n_0_opt_has_pipe.first_q[4]_i_1__0 ;
  wire \n_0_opt_has_pipe.first_q[4]_i_1__1 ;
  wire \n_0_opt_has_pipe.first_q[4]_i_1__2 ;
  wire \n_0_opt_has_pipe.first_q[4]_i_1__3 ;
  wire \n_0_opt_has_pipe.first_q[5]_i_1 ;
  wire \n_0_opt_has_pipe.first_q[5]_i_1__0 ;
  wire \n_0_opt_has_pipe.first_q[5]_i_1__1 ;
  wire \n_0_opt_has_pipe.first_q[5]_i_1__2 ;
  wire \n_0_opt_has_pipe.first_q[5]_i_1__3 ;
  wire \n_0_opt_has_pipe.first_q[6]_i_1 ;
  wire \n_0_opt_has_pipe.first_q[6]_i_1__0 ;
  wire \n_0_opt_has_pipe.first_q[6]_i_1__1 ;
  wire \n_0_opt_has_pipe.first_q[6]_i_1__2 ;
  wire \n_0_opt_has_pipe.first_q[7]_i_1 ;
  wire \n_0_opt_has_pipe.first_q[7]_i_1__0 ;
  wire \n_0_opt_has_pipe.first_q[7]_i_1__1 ;
  wire \n_0_opt_has_pipe.first_q[7]_i_1__2 ;
  wire \n_0_opt_has_pipe.first_q[8]_i_1 ;
  wire \n_0_opt_has_pipe.first_q[8]_i_1__0 ;
  wire \n_0_opt_has_pipe.first_q[9]_i_1 ;
  wire \n_0_opt_has_pipe.first_q[9]_i_1__0 ;
  wire \n_0_opt_has_pipe.first_q[9]_i_1__1 ;
  wire \n_0_opt_has_pipe.first_q[9]_i_1__2 ;
  wire \n_0_opt_has_pipe.first_q[9]_i_2 ;
  wire \n_1_opt_has_pipe.first_q_reg[0]_i_2 ;
  wire \n_2_opt_has_pipe.first_q_reg[0]_i_2 ;
  wire \n_3_opt_has_pipe.first_q_reg[0]_i_2 ;
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
  wire [31:0]p_2_out;
  wire \pipe[5] ;
  wire [31:0]reg1_a_tdata;
  wire [7:0]reg1_a_tuser;
  wire reg2_a_tlast;
  wire [7:0]reg2_a_tuser;
  wire [31:0]s_axis_a_tdata;
  wire s_axis_a_tlast;
  wire s_axis_a_tready;
  wire [7:0]s_axis_a_tuser;
  wire s_axis_a_tvalid;
  wire sclr_i;
  wire [3:0]\NLW_FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/EQ_ZERO/CARRY_ZERO_DET/CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED ;
  wire [3:2]\NLW_FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/EQ_ZERO/CARRY_ZERO_DET/CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_CO_UNCONNECTED ;
  wire [3:2]\NLW_FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/EQ_ZERO/CARRY_ZERO_DET/CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/EQ_ZERO/CARRY_ZERO_DET/CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED ;
  wire [3:2]\NLW_FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/EQ_ZERO/CARRY_ZERO_DET/CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_S_UNCONNECTED ;
  wire [3:0]\NLW_FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[16].C_MUX.CARRY_MUX_CARRY4_CO_UNCONNECTED ;
  wire [3:1]\NLW_FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[16].C_MUX.CARRY_MUX_CARRY4_DI_UNCONNECTED ;
  wire [3:2]\NLW_FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[16].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED ;
  wire [3:2]\NLW_FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[16].C_MUX.CARRY_MUX_CARRY4_S_UNCONNECTED ;
  wire [3:0]\NLW_opt_has_pipe.first_q_reg[0]_i_2_O_UNCONNECTED ;

  assign s_axis_b_tready = \<const1> ;
  assign s_axis_c_tready = \<const1> ;
  assign s_axis_operation_tready = \<const1> ;
LUT4 #(
    .INIT(16'h59AA)) 
     \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1 
       (.I0(\FLT_TO_FIX_OP.SPD.OP/a_sign_pza ),
        .I1(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[2].DEL_Z_D/i_pipe/first_q [0]),
        .I2(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DEL/i_pipe/first_q [1]),
        .I3(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DEL/i_pipe/first_q [0]),
        .O(\n_0_CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1 ));
LUT4 #(
    .INIT(16'h0001)) 
     \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__0 
       (.I0(\FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/first_q [3]),
        .I1(\FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/first_q [2]),
        .I2(\FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/first_q [0]),
        .I3(\FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/first_q [1]),
        .O(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/EQ_ZERO/chunk_det [0]));
LUT2 #(
    .INIT(4'h6)) 
     \CHAIN_GEN[10].C_MUX.CARRY_MUX_i_1 
       (.I0(\FLT_TO_FIX_OP.SPD.OP/a_sign_pza ),
        .I1(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DEL/i_pipe/first_q [10]),
        .O(\n_0_CHAIN_GEN[10].C_MUX.CARRY_MUX_i_1 ));
LUT2 #(
    .INIT(4'h6)) 
     \CHAIN_GEN[11].C_MUX.CARRY_MUX_i_1 
       (.I0(\FLT_TO_FIX_OP.SPD.OP/a_sign_pza ),
        .I1(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DEL/i_pipe/first_q [11]),
        .O(\n_0_CHAIN_GEN[11].C_MUX.CARRY_MUX_i_1 ));
LUT2 #(
    .INIT(4'h6)) 
     \CHAIN_GEN[12].C_MUX.CARRY_MUX_i_1 
       (.I0(\FLT_TO_FIX_OP.SPD.OP/a_sign_pza ),
        .I1(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DEL/i_pipe/first_q [12]),
        .O(\n_0_CHAIN_GEN[12].C_MUX.CARRY_MUX_i_1 ));
LUT2 #(
    .INIT(4'h6)) 
     \CHAIN_GEN[13].C_MUX.CARRY_MUX_i_1 
       (.I0(\FLT_TO_FIX_OP.SPD.OP/a_sign_pza ),
        .I1(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DEL/i_pipe/first_q [13]),
        .O(\n_0_CHAIN_GEN[13].C_MUX.CARRY_MUX_i_1 ));
LUT2 #(
    .INIT(4'h6)) 
     \CHAIN_GEN[14].C_MUX.CARRY_MUX_i_1 
       (.I0(\FLT_TO_FIX_OP.SPD.OP/a_sign_pza ),
        .I1(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DEL/i_pipe/first_q [14]),
        .O(\n_0_CHAIN_GEN[14].C_MUX.CARRY_MUX_i_1 ));
LUT2 #(
    .INIT(4'h6)) 
     \CHAIN_GEN[15].C_MUX.CARRY_MUX_i_1 
       (.I0(\FLT_TO_FIX_OP.SPD.OP/a_sign_pza ),
        .I1(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DEL/i_pipe/first_q [15]),
        .O(\n_0_CHAIN_GEN[15].C_MUX.CARRY_MUX_i_1 ));
LUT2 #(
    .INIT(4'h6)) 
     \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1 
       (.I0(\FLT_TO_FIX_OP.SPD.OP/a_sign_pza ),
        .I1(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DEL/i_pipe/first_q [1]),
        .O(\n_0_CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1 ));
LUT4 #(
    .INIT(16'h0001)) 
     \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__0 
       (.I0(\FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/first_q [7]),
        .I1(\FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/first_q [6]),
        .I2(\FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/first_q [4]),
        .I3(\FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/first_q [5]),
        .O(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/EQ_ZERO/chunk_det [1]));
LUT2 #(
    .INIT(4'h6)) 
     \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1 
       (.I0(\FLT_TO_FIX_OP.SPD.OP/a_sign_pza ),
        .I1(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DEL/i_pipe/first_q [2]),
        .O(\n_0_CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1 ));
LUT4 #(
    .INIT(16'h0001)) 
     \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__0 
       (.I0(\FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/first_q [11]),
        .I1(\FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/first_q [10]),
        .I2(\FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/first_q [8]),
        .I3(\FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/first_q [9]),
        .O(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/EQ_ZERO/chunk_det [2]));
LUT2 #(
    .INIT(4'h6)) 
     \CHAIN_GEN[3].C_MUX.CARRY_MUX_i_1 
       (.I0(\FLT_TO_FIX_OP.SPD.OP/a_sign_pza ),
        .I1(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DEL/i_pipe/first_q [3]),
        .O(\n_0_CHAIN_GEN[3].C_MUX.CARRY_MUX_i_1 ));
LUT4 #(
    .INIT(16'h0001)) 
     \CHAIN_GEN[3].C_MUX.CARRY_MUX_i_1__0 
       (.I0(\FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/first_q [15]),
        .I1(\FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/first_q [14]),
        .I2(\FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/first_q [12]),
        .I3(\FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/first_q [13]),
        .O(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/EQ_ZERO/chunk_det [3]));
LUT2 #(
    .INIT(4'h6)) 
     \CHAIN_GEN[4].C_MUX.CARRY_MUX_i_1 
       (.I0(\FLT_TO_FIX_OP.SPD.OP/a_sign_pza ),
        .I1(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DEL/i_pipe/first_q [4]),
        .O(\n_0_CHAIN_GEN[4].C_MUX.CARRY_MUX_i_1 ));
LUT4 #(
    .INIT(16'h0001)) 
     \CHAIN_GEN[4].C_MUX.CARRY_MUX_i_1__0 
       (.I0(\FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/first_q [19]),
        .I1(\FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/first_q [18]),
        .I2(\FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/first_q [16]),
        .I3(\FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/first_q [17]),
        .O(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/EQ_ZERO/chunk_det [4]));
LUT2 #(
    .INIT(4'h6)) 
     \CHAIN_GEN[5].C_MUX.CARRY_MUX_i_1 
       (.I0(\FLT_TO_FIX_OP.SPD.OP/a_sign_pza ),
        .I1(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DEL/i_pipe/first_q [5]),
        .O(\n_0_CHAIN_GEN[5].C_MUX.CARRY_MUX_i_1 ));
LUT2 #(
    .INIT(4'h6)) 
     \CHAIN_GEN[6].C_MUX.CARRY_MUX_i_1 
       (.I0(\FLT_TO_FIX_OP.SPD.OP/a_sign_pza ),
        .I1(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DEL/i_pipe/first_q [6]),
        .O(\n_0_CHAIN_GEN[6].C_MUX.CARRY_MUX_i_1 ));
LUT2 #(
    .INIT(4'h6)) 
     \CHAIN_GEN[7].C_MUX.CARRY_MUX_i_1 
       (.I0(\FLT_TO_FIX_OP.SPD.OP/a_sign_pza ),
        .I1(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DEL/i_pipe/first_q [7]),
        .O(\n_0_CHAIN_GEN[7].C_MUX.CARRY_MUX_i_1 ));
LUT2 #(
    .INIT(4'h6)) 
     \CHAIN_GEN[8].C_MUX.CARRY_MUX_i_1 
       (.I0(\FLT_TO_FIX_OP.SPD.OP/a_sign_pza ),
        .I1(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DEL/i_pipe/first_q [8]),
        .O(\n_0_CHAIN_GEN[8].C_MUX.CARRY_MUX_i_1 ));
LUT2 #(
    .INIT(4'h6)) 
     \CHAIN_GEN[9].C_MUX.CARRY_MUX_i_1 
       (.I0(\FLT_TO_FIX_OP.SPD.OP/a_sign_pza ),
        .I1(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DEL/i_pipe/first_q [9]),
        .O(\n_0_CHAIN_GEN[9].C_MUX.CARRY_MUX_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_DEL/i_pipe/opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [0]),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DEL/i_pipe/first_q [0]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_DEL/i_pipe/opt_has_pipe.first_q_reg[10] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [10]),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DEL/i_pipe/first_q [10]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_DEL/i_pipe/opt_has_pipe.first_q_reg[11] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [11]),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DEL/i_pipe/first_q [11]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_DEL/i_pipe/opt_has_pipe.first_q_reg[12] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [12]),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DEL/i_pipe/first_q [12]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_DEL/i_pipe/opt_has_pipe.first_q_reg[13] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [13]),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DEL/i_pipe/first_q [13]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_DEL/i_pipe/opt_has_pipe.first_q_reg[14] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [14]),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DEL/i_pipe/first_q [14]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_DEL/i_pipe/opt_has_pipe.first_q_reg[15] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [15]),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DEL/i_pipe/first_q [15]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_DEL/i_pipe/opt_has_pipe.first_q_reg[1] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [1]),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DEL/i_pipe/first_q [1]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_DEL/i_pipe/opt_has_pipe.first_q_reg[2] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [2]),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DEL/i_pipe/first_q [2]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_DEL/i_pipe/opt_has_pipe.first_q_reg[3] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [3]),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DEL/i_pipe/first_q [3]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_DEL/i_pipe/opt_has_pipe.first_q_reg[4] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [4]),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DEL/i_pipe/first_q [4]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_DEL/i_pipe/opt_has_pipe.first_q_reg[5] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [5]),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DEL/i_pipe/first_q [5]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_DEL/i_pipe/opt_has_pipe.first_q_reg[6] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [6]),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DEL/i_pipe/first_q [6]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_DEL/i_pipe/opt_has_pipe.first_q_reg[7] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [7]),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DEL/i_pipe/first_q [7]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_DEL/i_pipe/opt_has_pipe.first_q_reg[8] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [8]),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DEL/i_pipe/first_q [8]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_DEL/i_pipe/opt_has_pipe.first_q_reg[9] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [9]),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DEL/i_pipe/first_q [9]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_DIST_DEL/DEL/i_pipe/opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\n_0_opt_has_pipe.first_q[0]_i_1__4 ),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DIST_DEL/DEL/i_pipe/first_q [0]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_DIST_DEL/DEL/i_pipe/opt_has_pipe.first_q_reg[1] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(p_2_out[24]),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DIST_DEL/DEL/i_pipe/first_q [1]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_DIST_DEL/DEL/i_pipe/opt_has_pipe.first_q_reg[2] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[2]_i_1__0 ),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DIST_DEL/DEL/i_pipe/first_q [2]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_DIST_DEL/DEL/i_pipe/opt_has_pipe.first_q_reg[3] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\n_0_opt_has_pipe.first_q[3]_i_1__3 ),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DIST_DEL/DEL/i_pipe/first_q [3]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_DIST_DEL/DEL/i_pipe/opt_has_pipe.first_q_reg[4] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\n_0_opt_has_pipe.first_q[4]_i_1__0 ),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DIST_DEL/DEL/i_pipe/first_q [4]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_DIST_DEL/DEL/i_pipe/opt_has_pipe.first_q_reg[5] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\n_0_opt_has_pipe.first_q[5]_i_1__3 ),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DIST_DEL/DEL/i_pipe/first_q [5]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_DIST_DEL/DEL/i_pipe/opt_has_pipe.first_q_reg[6] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\n_0_opt_has_pipe.first_q[6]_i_1__1 ),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DIST_DEL/DEL/i_pipe/first_q [6]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_DIST_DEL/DEL/i_pipe/opt_has_pipe.first_q_reg[7] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\n_0_opt_has_pipe.first_q[7]_i_1 ),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DIST_DEL/DEL/i_pipe/first_q [7]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_DIST_DEL/DEL/i_pipe/opt_has_pipe.first_q_reg[8] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\n_0_opt_has_pipe.first_q[9]_i_1 ),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DIST_DEL/DEL/i_pipe/first_q [8]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_DIST_DEL/DEL/i_pipe/opt_has_pipe.first_q_reg[9] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\n_0_opt_has_pipe.first_q[9]_i_1 ),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DIST_DEL/DEL/i_pipe/first_q [9]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\n_0_opt_has_pipe.first_q[0]_i_1__6 ),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [0]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[10] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\n_0_opt_has_pipe.first_q[10]_i_1 ),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [10]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[11] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\n_0_opt_has_pipe.first_q[11]_i_1 ),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [11]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[12] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\n_0_opt_has_pipe.first_q[12]_i_1__0 ),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [12]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[13] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\n_0_opt_has_pipe.first_q[13]_i_1__0 ),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [13]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[14] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\n_0_opt_has_pipe.first_q[14]_i_1__0 ),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [14]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[15] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\n_0_opt_has_pipe.first_q[15]_i_1 ),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [15]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[1] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\n_0_opt_has_pipe.first_q[1]_i_1__1 ),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [1]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[2] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\n_0_opt_has_pipe.first_q[2]_i_1__2 ),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [2]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[3] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\n_0_opt_has_pipe.first_q[3]_i_1__1 ),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [3]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[4] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\n_0_opt_has_pipe.first_q[4]_i_1__2 ),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [4]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[5] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\n_0_opt_has_pipe.first_q[5]_i_1__1 ),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [5]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[6] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\n_0_opt_has_pipe.first_q[6]_i_1 ),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [6]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[7] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\n_0_opt_has_pipe.first_q[7]_i_1__1 ),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [7]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[8] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\n_0_opt_has_pipe.first_q[8]_i_1 ),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [8]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[9] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\n_0_opt_has_pipe.first_q[9]_i_1__1 ),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [9]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\n_0_opt_has_pipe.first_q[0]_i_1__7 ),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [0]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[10] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\n_0_opt_has_pipe.first_q[10]_i_1__0 ),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [10]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[11] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\n_0_opt_has_pipe.first_q[11]_i_1__0 ),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [11]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[12] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\n_0_opt_has_pipe.first_q[12]_i_1 ),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [12]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[13] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\n_0_opt_has_pipe.first_q[13]_i_1 ),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [13]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[14] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\n_0_opt_has_pipe.first_q[14]_i_1 ),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [14]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[15] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\n_0_opt_has_pipe.first_q[15]_i_1__0 ),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [15]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[1] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\n_0_opt_has_pipe.first_q[1]_i_1__2 ),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [1]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[2] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\n_0_opt_has_pipe.first_q[2]_i_1__3 ),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [2]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[3] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\n_0_opt_has_pipe.first_q[3]_i_1__2 ),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [3]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[4] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\n_0_opt_has_pipe.first_q[4]_i_1__3 ),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [4]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[5] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\n_0_opt_has_pipe.first_q[5]_i_1__2 ),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [5]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[6] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\n_0_opt_has_pipe.first_q[6]_i_1__0 ),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [6]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[7] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\n_0_opt_has_pipe.first_q[7]_i_1__2 ),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [7]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[8] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\n_0_opt_has_pipe.first_q[8]_i_1__0 ),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [8]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/opt_has_pipe.first_q_reg[9] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\n_0_opt_has_pipe.first_q[9]_i_1__2 ),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].DEL_SHIFT/i_pipe/first_q [9]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].SKEW_DIST_DEL.DEL_DIST/i_pipe/opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DIST_DEL/DEL/i_pipe/first_q [0]),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].SKEW_DIST_DEL.DEL_DIST/i_pipe/first_q [0]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].SKEW_DIST_DEL.DEL_DIST/i_pipe/opt_has_pipe.first_q_reg[1] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DIST_DEL/DEL/i_pipe/first_q [1]),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].SKEW_DIST_DEL.DEL_DIST/i_pipe/first_q [1]),
        .R(\<const0> ));
(* XILINX_LEGACY_PRIM = "FDE" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/EQ_ZERO/CARRY_ZERO_DET/CHAIN_GEN[0].CARRYS_DEL.NEED_DEL.CARRYS_FD 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/EQ_ZERO/CARRY_ZERO_DET/CI ),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/p_0_in16_in ),
        .R(GND_2));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* box_type = "PRIMITIVE" *) 
   CARRY4 \FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/EQ_ZERO/CARRY_ZERO_DET/CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4 
       (.CI(lopt),
        .CO({\n_0_FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/EQ_ZERO/CARRY_ZERO_DET/CHAIN_GEN[3].C_MUX.CARRY_MUX ,\n_0_FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/EQ_ZERO/CARRY_ZERO_DET/CHAIN_GEN[2].C_MUX.CARRY_MUX ,\n_0_FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/EQ_ZERO/CARRY_ZERO_DET/CHAIN_GEN[1].C_MUX.CARRY_MUX ,\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/EQ_ZERO/CARRY_ZERO_DET/CI }),
        .CYINIT(\<const1> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(\NLW_FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/EQ_ZERO/CARRY_ZERO_DET/CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED [3:0]),
        .S(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/EQ_ZERO/chunk_det [3:0]));
GND \FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/EQ_ZERO/CARRY_ZERO_DET/CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_GND 
       (.G(lopt));
(* XILINX_LEGACY_PRIM = "FDE" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/EQ_ZERO/CARRY_ZERO_DET/CHAIN_GEN[1].CARRYS_DEL.NEED_DEL.CARRYS_FD 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\n_0_FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/EQ_ZERO/CARRY_ZERO_DET/CHAIN_GEN[1].C_MUX.CARRY_MUX ),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/p_0_in13_in ),
        .R(GND_2));
(* XILINX_LEGACY_PRIM = "FDE" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/EQ_ZERO/CARRY_ZERO_DET/CHAIN_GEN[2].CARRYS_DEL.NEED_DEL.CARRYS_FD 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\n_0_FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/EQ_ZERO/CARRY_ZERO_DET/CHAIN_GEN[2].C_MUX.CARRY_MUX ),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/p_0_in10_in ),
        .R(GND_2));
(* XILINX_LEGACY_PRIM = "FDE" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/EQ_ZERO/CARRY_ZERO_DET/CHAIN_GEN[3].CARRYS_DEL.NEED_DEL.CARRYS_FD 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\n_0_FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/EQ_ZERO/CARRY_ZERO_DET/CHAIN_GEN[3].C_MUX.CARRY_MUX ),
        .Q(\n_0_FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/EQ_ZERO/CARRY_ZERO_DET/CHAIN_GEN[3].CARRYS_DEL.NEED_DEL.CARRYS_FD ),
        .R(GND_2));
(* XILINX_LEGACY_PRIM = "FDE" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/EQ_ZERO/CARRY_ZERO_DET/CHAIN_GEN[4].CARRYS_DEL.NEED_DEL.CARRYS_FD 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\n_0_FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/EQ_ZERO/CARRY_ZERO_DET/CHAIN_GEN[4].C_MUX.CARRY_MUX ),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/p_0_in7_in ),
        .R(GND_2));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* box_type = "PRIMITIVE" *) 
   CARRY4 \FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/EQ_ZERO/CARRY_ZERO_DET/CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4 
       (.CI(\n_0_FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/EQ_ZERO/CARRY_ZERO_DET/CHAIN_GEN[3].C_MUX.CARRY_MUX ),
        .CO({\NLW_FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/EQ_ZERO/CARRY_ZERO_DET/CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_CO_UNCONNECTED [3:2],\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/EQ_ZERO/CARRY_ZERO_DET/D ,\n_0_FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/EQ_ZERO/CARRY_ZERO_DET/CHAIN_GEN[4].C_MUX.CARRY_MUX }),
        .CYINIT(lopt_1),
        .DI({\NLW_FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/EQ_ZERO/CARRY_ZERO_DET/CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_DI_UNCONNECTED [3:2],\<const0> ,\<const0> }),
        .O(\NLW_FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/EQ_ZERO/CARRY_ZERO_DET/CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/EQ_ZERO/CARRY_ZERO_DET/CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_S_UNCONNECTED [3:2],\<const0> ,\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/EQ_ZERO/chunk_det [4]}));
GND \FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/EQ_ZERO/CARRY_ZERO_DET/CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_GND 
       (.G(lopt_1));
(* XILINX_LEGACY_PRIM = "FDE" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/EQ_ZERO/CARRY_ZERO_DET/CHAIN_GEN[5].CARRYS_DEL.NEED_DEL.CARRYS_FD 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/EQ_ZERO/CARRY_ZERO_DET/D ),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/p_0_in4_in ),
        .R(GND_2));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[0].DEL_Z_D/i_pipe/opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\n_0_opt_has_pipe.first_q[0]_i_1__3 ),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[0].DEL_Z_D/i_pipe/first_q [0]),
        .R(\<const0> ));
FDSE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[0].DEL_Z_D/i_pipe/opt_has_pipe.first_q_reg[10] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[0].DEL_Z_D/i_pipe/first_q [10]),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[0].DEL_Z_D/i_pipe/first_q [10]),
        .S(ce_internal_core));
FDSE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[0].DEL_Z_D/i_pipe/opt_has_pipe.first_q_reg[11] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[0].DEL_Z_D/i_pipe/first_q [11]),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[0].DEL_Z_D/i_pipe/first_q [11]),
        .S(ce_internal_core));
FDSE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[0].DEL_Z_D/i_pipe/opt_has_pipe.first_q_reg[12] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[0].DEL_Z_D/i_pipe/first_q [12]),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[0].DEL_Z_D/i_pipe/first_q [12]),
        .S(ce_internal_core));
FDSE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[0].DEL_Z_D/i_pipe/opt_has_pipe.first_q_reg[13] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[0].DEL_Z_D/i_pipe/first_q [13]),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[0].DEL_Z_D/i_pipe/first_q [13]),
        .S(ce_internal_core));
FDSE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[0].DEL_Z_D/i_pipe/opt_has_pipe.first_q_reg[14] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[0].DEL_Z_D/i_pipe/first_q [14]),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[0].DEL_Z_D/i_pipe/first_q [14]),
        .S(ce_internal_core));
FDSE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[0].DEL_Z_D/i_pipe/opt_has_pipe.first_q_reg[15] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[0].DEL_Z_D/i_pipe/first_q [15]),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[0].DEL_Z_D/i_pipe/first_q [15]),
        .S(ce_internal_core));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[0].DEL_Z_D/i_pipe/opt_has_pipe.first_q_reg[1] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\n_0_opt_has_pipe.first_q[1]_i_1 ),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[0].DEL_Z_D/i_pipe/first_q [1]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[0].DEL_Z_D/i_pipe/opt_has_pipe.first_q_reg[2] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\n_0_opt_has_pipe.first_q[2]_i_1__1 ),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[0].DEL_Z_D/i_pipe/first_q [2]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[0].DEL_Z_D/i_pipe/opt_has_pipe.first_q_reg[3] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\n_0_opt_has_pipe.first_q[3]_i_1__0 ),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[0].DEL_Z_D/i_pipe/first_q [3]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[0].DEL_Z_D/i_pipe/opt_has_pipe.first_q_reg[4] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\n_0_opt_has_pipe.first_q[4]_i_1 ),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[0].DEL_Z_D/i_pipe/first_q [4]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[0].DEL_Z_D/i_pipe/opt_has_pipe.first_q_reg[5] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\n_0_opt_has_pipe.first_q[5]_i_1__0 ),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[0].DEL_Z_D/i_pipe/first_q [5]),
        .R(\<const0> ));
FDSE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[0].DEL_Z_D/i_pipe/opt_has_pipe.first_q_reg[6] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[0].DEL_Z_D/i_pipe/first_q [6]),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[0].DEL_Z_D/i_pipe/first_q [6]),
        .S(ce_internal_core));
FDSE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[0].DEL_Z_D/i_pipe/opt_has_pipe.first_q_reg[7] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[0].DEL_Z_D/i_pipe/first_q [7]),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[0].DEL_Z_D/i_pipe/first_q [7]),
        .S(ce_internal_core));
FDSE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[0].DEL_Z_D/i_pipe/opt_has_pipe.first_q_reg[8] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[0].DEL_Z_D/i_pipe/first_q [8]),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[0].DEL_Z_D/i_pipe/first_q [8]),
        .S(ce_internal_core));
FDSE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[0].DEL_Z_D/i_pipe/opt_has_pipe.first_q_reg[9] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[0].DEL_Z_D/i_pipe/first_q [9]),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[0].DEL_Z_D/i_pipe/first_q [9]),
        .S(ce_internal_core));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[1].DEL_Z_D/i_pipe/opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\n_0_opt_has_pipe.first_q[0]_i_1__5 ),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[1].DEL_Z_D/i_pipe/first_q [0]),
        .R(\<const0> ));
FDSE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[1].DEL_Z_D/i_pipe/opt_has_pipe.first_q_reg[10] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[1].DEL_Z_D/i_pipe/first_q [10]),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[1].DEL_Z_D/i_pipe/first_q [10]),
        .S(ce_internal_core));
FDSE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[1].DEL_Z_D/i_pipe/opt_has_pipe.first_q_reg[11] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[1].DEL_Z_D/i_pipe/first_q [11]),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[1].DEL_Z_D/i_pipe/first_q [11]),
        .S(ce_internal_core));
FDSE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[1].DEL_Z_D/i_pipe/opt_has_pipe.first_q_reg[12] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[1].DEL_Z_D/i_pipe/first_q [12]),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[1].DEL_Z_D/i_pipe/first_q [12]),
        .S(ce_internal_core));
FDSE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[1].DEL_Z_D/i_pipe/opt_has_pipe.first_q_reg[13] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[1].DEL_Z_D/i_pipe/first_q [13]),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[1].DEL_Z_D/i_pipe/first_q [13]),
        .S(ce_internal_core));
FDSE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[1].DEL_Z_D/i_pipe/opt_has_pipe.first_q_reg[14] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[1].DEL_Z_D/i_pipe/first_q [14]),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[1].DEL_Z_D/i_pipe/first_q [14]),
        .S(ce_internal_core));
FDSE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[1].DEL_Z_D/i_pipe/opt_has_pipe.first_q_reg[15] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[1].DEL_Z_D/i_pipe/first_q [15]),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[1].DEL_Z_D/i_pipe/first_q [15]),
        .S(ce_internal_core));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[1].DEL_Z_D/i_pipe/opt_has_pipe.first_q_reg[1] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\n_0_opt_has_pipe.first_q[1]_i_1__0 ),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[1].DEL_Z_D/i_pipe/first_q [1]),
        .R(\<const0> ));
FDSE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[1].DEL_Z_D/i_pipe/opt_has_pipe.first_q_reg[2] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[1].DEL_Z_D/i_pipe/first_q [2]),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[1].DEL_Z_D/i_pipe/first_q [2]),
        .S(ce_internal_core));
FDSE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[1].DEL_Z_D/i_pipe/opt_has_pipe.first_q_reg[3] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[1].DEL_Z_D/i_pipe/first_q [3]),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[1].DEL_Z_D/i_pipe/first_q [3]),
        .S(ce_internal_core));
FDSE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[1].DEL_Z_D/i_pipe/opt_has_pipe.first_q_reg[4] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[1].DEL_Z_D/i_pipe/first_q [4]),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[1].DEL_Z_D/i_pipe/first_q [4]),
        .S(ce_internal_core));
FDSE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[1].DEL_Z_D/i_pipe/opt_has_pipe.first_q_reg[5] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[1].DEL_Z_D/i_pipe/first_q [5]),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[1].DEL_Z_D/i_pipe/first_q [5]),
        .S(ce_internal_core));
FDSE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[1].DEL_Z_D/i_pipe/opt_has_pipe.first_q_reg[6] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[1].DEL_Z_D/i_pipe/first_q [6]),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[1].DEL_Z_D/i_pipe/first_q [6]),
        .S(ce_internal_core));
FDSE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[1].DEL_Z_D/i_pipe/opt_has_pipe.first_q_reg[7] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[1].DEL_Z_D/i_pipe/first_q [7]),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[1].DEL_Z_D/i_pipe/first_q [7]),
        .S(ce_internal_core));
FDSE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[1].DEL_Z_D/i_pipe/opt_has_pipe.first_q_reg[8] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[1].DEL_Z_D/i_pipe/first_q [8]),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[1].DEL_Z_D/i_pipe/first_q [8]),
        .S(ce_internal_core));
FDSE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[1].DEL_Z_D/i_pipe/opt_has_pipe.first_q_reg[9] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[1].DEL_Z_D/i_pipe/first_q [9]),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[1].DEL_Z_D/i_pipe/first_q [9]),
        .S(ce_internal_core));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[1].SKEW_DIST_DEL.DEL_DIST/i_pipe/opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\FLT_TO_FIX_OP.SPD.OP/ZERO_DET_DIST_DEL/DEL/i_pipe/first_q [2]),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[1].SKEW_DIST_DEL.DEL_DIST/i_pipe/first_q [0]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[1].SKEW_DIST_DEL.DEL_DIST/i_pipe/opt_has_pipe.first_q_reg[1] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\FLT_TO_FIX_OP.SPD.OP/ZERO_DET_DIST_DEL/DEL/i_pipe/first_q [3]),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[1].SKEW_DIST_DEL.DEL_DIST/i_pipe/first_q [1]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[2].DEL_Z_D/i_pipe/opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/O ),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[2].DEL_Z_D/i_pipe/first_q [0]),
        .R(\<const0> ));
FDSE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[2].DEL_Z_D/i_pipe/opt_has_pipe.first_q_reg[10] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[2].DEL_Z_D/i_pipe/first_q [10]),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[2].DEL_Z_D/i_pipe/first_q [10]),
        .S(ce_internal_core));
FDSE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[2].DEL_Z_D/i_pipe/opt_has_pipe.first_q_reg[11] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[2].DEL_Z_D/i_pipe/first_q [11]),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[2].DEL_Z_D/i_pipe/first_q [11]),
        .S(ce_internal_core));
FDSE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[2].DEL_Z_D/i_pipe/opt_has_pipe.first_q_reg[12] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[2].DEL_Z_D/i_pipe/first_q [12]),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[2].DEL_Z_D/i_pipe/first_q [12]),
        .S(ce_internal_core));
FDSE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[2].DEL_Z_D/i_pipe/opt_has_pipe.first_q_reg[13] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[2].DEL_Z_D/i_pipe/first_q [13]),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[2].DEL_Z_D/i_pipe/first_q [13]),
        .S(ce_internal_core));
FDSE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[2].DEL_Z_D/i_pipe/opt_has_pipe.first_q_reg[14] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[2].DEL_Z_D/i_pipe/first_q [14]),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[2].DEL_Z_D/i_pipe/first_q [14]),
        .S(ce_internal_core));
FDSE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[2].DEL_Z_D/i_pipe/opt_has_pipe.first_q_reg[15] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[2].DEL_Z_D/i_pipe/first_q [15]),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[2].DEL_Z_D/i_pipe/first_q [15]),
        .S(ce_internal_core));
FDSE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[2].DEL_Z_D/i_pipe/opt_has_pipe.first_q_reg[1] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[2].DEL_Z_D/i_pipe/first_q [1]),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[2].DEL_Z_D/i_pipe/first_q [1]),
        .S(ce_internal_core));
FDSE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[2].DEL_Z_D/i_pipe/opt_has_pipe.first_q_reg[2] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[2].DEL_Z_D/i_pipe/first_q [2]),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[2].DEL_Z_D/i_pipe/first_q [2]),
        .S(ce_internal_core));
FDSE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[2].DEL_Z_D/i_pipe/opt_has_pipe.first_q_reg[3] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[2].DEL_Z_D/i_pipe/first_q [3]),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[2].DEL_Z_D/i_pipe/first_q [3]),
        .S(ce_internal_core));
FDSE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[2].DEL_Z_D/i_pipe/opt_has_pipe.first_q_reg[4] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[2].DEL_Z_D/i_pipe/first_q [4]),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[2].DEL_Z_D/i_pipe/first_q [4]),
        .S(ce_internal_core));
FDSE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[2].DEL_Z_D/i_pipe/opt_has_pipe.first_q_reg[5] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[2].DEL_Z_D/i_pipe/first_q [5]),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[2].DEL_Z_D/i_pipe/first_q [5]),
        .S(ce_internal_core));
FDSE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[2].DEL_Z_D/i_pipe/opt_has_pipe.first_q_reg[6] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[2].DEL_Z_D/i_pipe/first_q [6]),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[2].DEL_Z_D/i_pipe/first_q [6]),
        .S(ce_internal_core));
FDSE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[2].DEL_Z_D/i_pipe/opt_has_pipe.first_q_reg[7] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[2].DEL_Z_D/i_pipe/first_q [7]),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[2].DEL_Z_D/i_pipe/first_q [7]),
        .S(ce_internal_core));
FDSE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[2].DEL_Z_D/i_pipe/opt_has_pipe.first_q_reg[8] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[2].DEL_Z_D/i_pipe/first_q [8]),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[2].DEL_Z_D/i_pipe/first_q [8]),
        .S(ce_internal_core));
FDSE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[2].DEL_Z_D/i_pipe/opt_has_pipe.first_q_reg[9] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[2].DEL_Z_D/i_pipe/first_q [9]),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[2].DEL_Z_D/i_pipe/first_q [9]),
        .S(ce_internal_core));
(* box_type = "PRIMITIVE" *) 
   MUXF7 \FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0 
       (.I0(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[1].DEL_Z_D/i_pipe/first_q [0]),
        .I1(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[1].DEL_Z_D/i_pipe/first_q [1]),
        .O(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/I0 ),
        .S(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/ext_del_distance [4]));
(* box_type = "PRIMITIVE" *) 
   MUXF7 \FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX1 
       (.I0(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[1].DEL_Z_D/i_pipe/first_q [2]),
        .I1(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[1].DEL_Z_D/i_pipe/first_q [3]),
        .O(\n_0_FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX1 ),
        .S(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/ext_del_distance [4]));
(* box_type = "PRIMITIVE" *) 
   MUXF8 \FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX2 
       (.I0(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/I0 ),
        .I1(\n_0_FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX1 ),
        .O(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/O ),
        .S(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/ext_del_distance [5]));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[2].SKEW_DIST_DEL.DEL_DIST/i_pipe/opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\FLT_TO_FIX_OP.SPD.OP/ZERO_DET_DIST_DEL/DEL/i_pipe/first_q [4]),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[2].SKEW_DIST_DEL.DEL_DIST/i_pipe/first_q [0]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[2].SKEW_DIST_DEL.DEL_DIST/i_pipe/opt_has_pipe.first_q_reg[1] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\<const0> ),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[2].SKEW_DIST_DEL.DEL_DIST/i_pipe/first_q [1]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[2].SKEW_DIST_DEL.DEL_DIST/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][0] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[2].SKEW_DIST_DEL.DEL_DIST/i_pipe/first_q [0]),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/ext_del_distance [4]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[2].SKEW_DIST_DEL.DEL_DIST/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][1] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[2].SKEW_DIST_DEL.DEL_DIST/i_pipe/first_q [1]),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/ext_del_distance [5]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/A_MANT_ALL_ZERO_P0_DEL/i_pipe/opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\n_0_opt_has_pipe.first_q[0]_i_1__11 ),
        .Q(\FLT_TO_FIX_OP.SPD.OP/A_MANT_ALL_ZERO_P0_DEL/i_pipe/first_q ),
        .R(\<const0> ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/COND_DET/EXP_DET_LUT.EXP_ALL_ONE_DEL/i_pipe/opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\n_0_opt_has_pipe.first_q[0]_i_1__9 ),
        .Q(\FLT_TO_FIX_OP.SPD.OP/COND_DET/EXP_DET_LUT.EXP_ALL_ONE_DEL/i_pipe/first_q ),
        .R(\<const0> ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/COND_DET/EXP_DET_LUT.EXP_ALL_ZERO_DEL/i_pipe/opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\n_0_opt_has_pipe.first_q[0]_i_1__8 ),
        .Q(\FLT_TO_FIX_OP.SPD.OP/COND_DET/EXP_DET_LUT.EXP_ALL_ZERO_DEL/i_pipe/first_q ),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/DEL_SIGN/i_pipe/opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\FLT_TO_FIX_OP.SPD.OP/a_sign_pza ),
        .Q(\FLT_TO_FIX_OP.SPD.OP/DEL_SIGN/i_pipe/first_q ),
        .R(\<const0> ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/INVALID_OP_P1_REG/i_pipe/opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\n_0_opt_has_pipe.first_q[0]_i_1__2 ),
        .Q(\FLT_TO_FIX_OP.SPD.OP/INVALID_OP_P1_REG/i_pipe/first_q ),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(p_2_out[0]),
        .Q(\FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/first_q [0]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/opt_has_pipe.first_q_reg[10] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(p_2_out[10]),
        .Q(\FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/first_q [10]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/opt_has_pipe.first_q_reg[11] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(p_2_out[11]),
        .Q(\FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/first_q [11]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/opt_has_pipe.first_q_reg[12] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(p_2_out[12]),
        .Q(\FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/first_q [12]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/opt_has_pipe.first_q_reg[13] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(p_2_out[13]),
        .Q(\FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/first_q [13]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/opt_has_pipe.first_q_reg[14] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(p_2_out[14]),
        .Q(\FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/first_q [14]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/opt_has_pipe.first_q_reg[15] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(p_2_out[15]),
        .Q(\FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/first_q [15]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/opt_has_pipe.first_q_reg[16] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(p_2_out[16]),
        .Q(\FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/first_q [16]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/opt_has_pipe.first_q_reg[17] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(p_2_out[17]),
        .Q(\FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/first_q [17]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/opt_has_pipe.first_q_reg[18] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(p_2_out[18]),
        .Q(\FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/first_q [18]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/opt_has_pipe.first_q_reg[19] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(p_2_out[19]),
        .Q(\FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/first_q [19]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/opt_has_pipe.first_q_reg[1] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(p_2_out[1]),
        .Q(\FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/first_q [1]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/opt_has_pipe.first_q_reg[20] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(p_2_out[20]),
        .Q(\FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/first_q [20]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/opt_has_pipe.first_q_reg[21] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(p_2_out[21]),
        .Q(\FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/first_q [21]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/opt_has_pipe.first_q_reg[22] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(p_2_out[22]),
        .Q(\FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/first_q [22]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/opt_has_pipe.first_q_reg[2] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(p_2_out[2]),
        .Q(\FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/first_q [2]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/opt_has_pipe.first_q_reg[3] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(p_2_out[3]),
        .Q(\FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/first_q [3]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/opt_has_pipe.first_q_reg[4] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(p_2_out[4]),
        .Q(\FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/first_q [4]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/opt_has_pipe.first_q_reg[5] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(p_2_out[5]),
        .Q(\FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/first_q [5]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/opt_has_pipe.first_q_reg[6] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(p_2_out[6]),
        .Q(\FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/first_q [6]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/opt_has_pipe.first_q_reg[7] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(p_2_out[7]),
        .Q(\FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/first_q [7]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/opt_has_pipe.first_q_reg[8] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(p_2_out[8]),
        .Q(\FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/first_q [8]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/opt_has_pipe.first_q_reg[9] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(p_2_out[9]),
        .Q(\FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/first_q [9]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/NEG_MANT_OVER_P0_DEL/i_pipe/opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\n_0_opt_has_pipe.first_q[0]_i_1__10 ),
        .Q(\FLT_TO_FIX_OP.SPD.OP/NEG_MANT_OVER_P0_DEL/i_pipe/first_q ),
        .R(\<const0> ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/OP_STATE_P1_REG/i_pipe/opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[0]_i_1 ),
        .Q(\FLT_TO_FIX_OP.SPD.OP/OP_STATE_P1_REG/i_pipe/first_q [0]),
        .R(\<const0> ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/OP_STATE_P1_REG/i_pipe/opt_has_pipe.first_q_reg[1] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\n_0_opt_has_pipe.first_q[1]_i_1__3 ),
        .Q(\FLT_TO_FIX_OP.SPD.OP/OP_STATE_P1_REG/i_pipe/first_q [1]),
        .R(\<const0> ));
(* srl_bus_name = "U0/i_synth/\FLT_TO_FIX_OP.SPD.OP/OP_STATE_P1_REG/i_pipe/opt_has_pipe.i_pipe[3].pipe_reg[3] " *) 
   (* srl_name = "U0/i_synth/\FLT_TO_FIX_OP.SPD.OP/OP_STATE_P1_REG/i_pipe/opt_has_pipe.i_pipe[3].pipe_reg[3][0]_srl2 " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     \FLT_TO_FIX_OP.SPD.OP/OP_STATE_P1_REG/i_pipe/opt_has_pipe.i_pipe[3].pipe_reg[3][0]_srl2 
       (.A0(\<const1> ),
        .A1(\<const0> ),
        .A2(\<const0> ),
        .A3(\<const0> ),
        .CE(ce_internal_core),
        .CLK(aclk),
        .D(\FLT_TO_FIX_OP.SPD.OP/OP_STATE_P1_REG/i_pipe/first_q [0]),
        .Q(\n_0_FLT_TO_FIX_OP.SPD.OP/OP_STATE_P1_REG/i_pipe/opt_has_pipe.i_pipe[3].pipe_reg[3][0]_srl2 ));
(* srl_bus_name = "U0/i_synth/\FLT_TO_FIX_OP.SPD.OP/OP_STATE_P1_REG/i_pipe/opt_has_pipe.i_pipe[3].pipe_reg[3] " *) 
   (* srl_name = "U0/i_synth/\FLT_TO_FIX_OP.SPD.OP/OP_STATE_P1_REG/i_pipe/opt_has_pipe.i_pipe[3].pipe_reg[3][1]_srl2 " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     \FLT_TO_FIX_OP.SPD.OP/OP_STATE_P1_REG/i_pipe/opt_has_pipe.i_pipe[3].pipe_reg[3][1]_srl2 
       (.A0(\<const1> ),
        .A1(\<const0> ),
        .A2(\<const0> ),
        .A3(\<const0> ),
        .CE(ce_internal_core),
        .CLK(aclk),
        .D(\FLT_TO_FIX_OP.SPD.OP/OP_STATE_P1_REG/i_pipe/first_q [1]),
        .Q(\n_0_FLT_TO_FIX_OP.SPD.OP/OP_STATE_P1_REG/i_pipe/opt_has_pipe.i_pipe[3].pipe_reg[3][1]_srl2 ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/OP_STATE_P1_REG/i_pipe/opt_has_pipe.i_pipe[4].pipe_reg[4][0] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\n_0_FLT_TO_FIX_OP.SPD.OP/OP_STATE_P1_REG/i_pipe/opt_has_pipe.i_pipe[3].pipe_reg[3][0]_srl2 ),
        .Q(\FLT_TO_FIX_OP.SPD.OP/op_state_pcntrl [0]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/OP_STATE_P1_REG/i_pipe/opt_has_pipe.i_pipe[4].pipe_reg[4][1] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\n_0_FLT_TO_FIX_OP.SPD.OP/OP_STATE_P1_REG/i_pipe/opt_has_pipe.i_pipe[3].pipe_reg[3][1]_srl2 ),
        .Q(\FLT_TO_FIX_OP.SPD.OP/op_state_pcntrl [1]),
        .R(\<const0> ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/OVERFLOW_P1_REG/i_pipe/opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\n_0_opt_has_pipe.first_q[0]_i_1__1 ),
        .Q(\FLT_TO_FIX_OP.SPD.OP/OVERFLOW_P1_REG/i_pipe/first_q ),
        .R(\<const0> ));
LUT6 #(
    .INIT(64'h0000AA00FCFCAAFC)) 
     \FLT_TO_FIX_OP.SPD.OP/RESULT[0]_i_1 
       (.I0(m_axis_result_tdata[0]),
        .I1(\n_0_RESULT[14]_i_2 ),
        .I2(\FLT_TO_FIX_OP.SPD.OP/ROUND/Q_DEL/i_pipe/first_q [1]),
        .I3(m_axis_result_tvalid),
        .I4(m_axis_result_tready),
        .I5(\FLT_TO_FIX_OP.SPD.OP/op_state_pcntrl [0]),
        .O(\n_0_FLT_TO_FIX_OP.SPD.OP/RESULT[0]_i_1 ));
LUT6 #(
    .INIT(64'h0000AA00FCFCAAFC)) 
     \FLT_TO_FIX_OP.SPD.OP/RESULT[10]_i_1 
       (.I0(m_axis_result_tdata[10]),
        .I1(\n_0_RESULT[14]_i_2 ),
        .I2(\FLT_TO_FIX_OP.SPD.OP/ROUND/Q_DEL/i_pipe/first_q [11]),
        .I3(m_axis_result_tvalid),
        .I4(m_axis_result_tready),
        .I5(\FLT_TO_FIX_OP.SPD.OP/op_state_pcntrl [0]),
        .O(\n_0_FLT_TO_FIX_OP.SPD.OP/RESULT[10]_i_1 ));
LUT6 #(
    .INIT(64'h0000AA00FCFCAAFC)) 
     \FLT_TO_FIX_OP.SPD.OP/RESULT[11]_i_1 
       (.I0(m_axis_result_tdata[11]),
        .I1(\n_0_RESULT[14]_i_2 ),
        .I2(\FLT_TO_FIX_OP.SPD.OP/ROUND/Q_DEL/i_pipe/first_q [12]),
        .I3(m_axis_result_tvalid),
        .I4(m_axis_result_tready),
        .I5(\FLT_TO_FIX_OP.SPD.OP/op_state_pcntrl [0]),
        .O(\n_0_FLT_TO_FIX_OP.SPD.OP/RESULT[11]_i_1 ));
LUT6 #(
    .INIT(64'h0000AA00FCFCAAFC)) 
     \FLT_TO_FIX_OP.SPD.OP/RESULT[12]_i_1 
       (.I0(m_axis_result_tdata[12]),
        .I1(\n_0_RESULT[14]_i_2 ),
        .I2(\FLT_TO_FIX_OP.SPD.OP/ROUND/Q_DEL/i_pipe/first_q [13]),
        .I3(m_axis_result_tvalid),
        .I4(m_axis_result_tready),
        .I5(\FLT_TO_FIX_OP.SPD.OP/op_state_pcntrl [0]),
        .O(\n_0_FLT_TO_FIX_OP.SPD.OP/RESULT[12]_i_1 ));
LUT6 #(
    .INIT(64'h0000AA00FCFCAAFC)) 
     \FLT_TO_FIX_OP.SPD.OP/RESULT[13]_i_1 
       (.I0(m_axis_result_tdata[13]),
        .I1(\n_0_RESULT[14]_i_2 ),
        .I2(\FLT_TO_FIX_OP.SPD.OP/ROUND/Q_DEL/i_pipe/first_q [14]),
        .I3(m_axis_result_tvalid),
        .I4(m_axis_result_tready),
        .I5(\FLT_TO_FIX_OP.SPD.OP/op_state_pcntrl [0]),
        .O(\n_0_FLT_TO_FIX_OP.SPD.OP/RESULT[13]_i_1 ));
LUT6 #(
    .INIT(64'h0000AA00FCFCAAFC)) 
     \FLT_TO_FIX_OP.SPD.OP/RESULT[14]_i_1 
       (.I0(m_axis_result_tdata[14]),
        .I1(\n_0_RESULT[14]_i_2 ),
        .I2(\FLT_TO_FIX_OP.SPD.OP/ROUND/Q_DEL/i_pipe/first_q [15]),
        .I3(m_axis_result_tvalid),
        .I4(m_axis_result_tready),
        .I5(\FLT_TO_FIX_OP.SPD.OP/op_state_pcntrl [0]),
        .O(\n_0_FLT_TO_FIX_OP.SPD.OP/RESULT[14]_i_1 ));
LUT6 #(
    .INIT(64'hB88BB888B888B888)) 
     \FLT_TO_FIX_OP.SPD.OP/RESULT[15]_i_1 
       (.I0(m_axis_result_tdata[15]),
        .I1(\n_0_RESULT[15]_i_2 ),
        .I2(\FLT_TO_FIX_OP.SPD.OP/op_state_pcntrl [1]),
        .I3(\FLT_TO_FIX_OP.SPD.OP/op_state_pcntrl [0]),
        .I4(\FLT_TO_FIX_OP.SPD.OP/ROUND/Q_DEL/i_pipe/first_q [16]),
        .I5(\FLT_TO_FIX_OP.SPD.OP/DEL_SIGN/i_pipe/first_q ),
        .O(\n_0_FLT_TO_FIX_OP.SPD.OP/RESULT[15]_i_1 ));
LUT6 #(
    .INIT(64'h0000AA00FCFCAAFC)) 
     \FLT_TO_FIX_OP.SPD.OP/RESULT[1]_i_1 
       (.I0(m_axis_result_tdata[1]),
        .I1(\n_0_RESULT[14]_i_2 ),
        .I2(\FLT_TO_FIX_OP.SPD.OP/ROUND/Q_DEL/i_pipe/first_q [2]),
        .I3(m_axis_result_tvalid),
        .I4(m_axis_result_tready),
        .I5(\FLT_TO_FIX_OP.SPD.OP/op_state_pcntrl [0]),
        .O(\n_0_FLT_TO_FIX_OP.SPD.OP/RESULT[1]_i_1 ));
LUT6 #(
    .INIT(64'h0000AA00FCFCAAFC)) 
     \FLT_TO_FIX_OP.SPD.OP/RESULT[2]_i_1 
       (.I0(m_axis_result_tdata[2]),
        .I1(\n_0_RESULT[14]_i_2 ),
        .I2(\FLT_TO_FIX_OP.SPD.OP/ROUND/Q_DEL/i_pipe/first_q [3]),
        .I3(m_axis_result_tvalid),
        .I4(m_axis_result_tready),
        .I5(\FLT_TO_FIX_OP.SPD.OP/op_state_pcntrl [0]),
        .O(\n_0_FLT_TO_FIX_OP.SPD.OP/RESULT[2]_i_1 ));
LUT6 #(
    .INIT(64'h0000AA00FCFCAAFC)) 
     \FLT_TO_FIX_OP.SPD.OP/RESULT[3]_i_1 
       (.I0(m_axis_result_tdata[3]),
        .I1(\n_0_RESULT[14]_i_2 ),
        .I2(\FLT_TO_FIX_OP.SPD.OP/ROUND/Q_DEL/i_pipe/first_q [4]),
        .I3(m_axis_result_tvalid),
        .I4(m_axis_result_tready),
        .I5(\FLT_TO_FIX_OP.SPD.OP/op_state_pcntrl [0]),
        .O(\n_0_FLT_TO_FIX_OP.SPD.OP/RESULT[3]_i_1 ));
LUT6 #(
    .INIT(64'h0000AA00FCFCAAFC)) 
     \FLT_TO_FIX_OP.SPD.OP/RESULT[4]_i_1 
       (.I0(m_axis_result_tdata[4]),
        .I1(\n_0_RESULT[14]_i_2 ),
        .I2(\FLT_TO_FIX_OP.SPD.OP/ROUND/Q_DEL/i_pipe/first_q [5]),
        .I3(m_axis_result_tvalid),
        .I4(m_axis_result_tready),
        .I5(\FLT_TO_FIX_OP.SPD.OP/op_state_pcntrl [0]),
        .O(\n_0_FLT_TO_FIX_OP.SPD.OP/RESULT[4]_i_1 ));
LUT6 #(
    .INIT(64'h0000AA00FCFCAAFC)) 
     \FLT_TO_FIX_OP.SPD.OP/RESULT[5]_i_1 
       (.I0(m_axis_result_tdata[5]),
        .I1(\n_0_RESULT[14]_i_2 ),
        .I2(\FLT_TO_FIX_OP.SPD.OP/ROUND/Q_DEL/i_pipe/first_q [6]),
        .I3(m_axis_result_tvalid),
        .I4(m_axis_result_tready),
        .I5(\FLT_TO_FIX_OP.SPD.OP/op_state_pcntrl [0]),
        .O(\n_0_FLT_TO_FIX_OP.SPD.OP/RESULT[5]_i_1 ));
LUT6 #(
    .INIT(64'h0000AA00FCFCAAFC)) 
     \FLT_TO_FIX_OP.SPD.OP/RESULT[6]_i_1 
       (.I0(m_axis_result_tdata[6]),
        .I1(\n_0_RESULT[14]_i_2 ),
        .I2(\FLT_TO_FIX_OP.SPD.OP/ROUND/Q_DEL/i_pipe/first_q [7]),
        .I3(m_axis_result_tvalid),
        .I4(m_axis_result_tready),
        .I5(\FLT_TO_FIX_OP.SPD.OP/op_state_pcntrl [0]),
        .O(\n_0_FLT_TO_FIX_OP.SPD.OP/RESULT[6]_i_1 ));
LUT6 #(
    .INIT(64'h0000AA00FCFCAAFC)) 
     \FLT_TO_FIX_OP.SPD.OP/RESULT[7]_i_1 
       (.I0(m_axis_result_tdata[7]),
        .I1(\n_0_RESULT[14]_i_2 ),
        .I2(\FLT_TO_FIX_OP.SPD.OP/ROUND/Q_DEL/i_pipe/first_q [8]),
        .I3(m_axis_result_tvalid),
        .I4(m_axis_result_tready),
        .I5(\FLT_TO_FIX_OP.SPD.OP/op_state_pcntrl [0]),
        .O(\n_0_FLT_TO_FIX_OP.SPD.OP/RESULT[7]_i_1 ));
LUT6 #(
    .INIT(64'h0000AA00FCFCAAFC)) 
     \FLT_TO_FIX_OP.SPD.OP/RESULT[8]_i_1 
       (.I0(m_axis_result_tdata[8]),
        .I1(\n_0_RESULT[14]_i_2 ),
        .I2(\FLT_TO_FIX_OP.SPD.OP/ROUND/Q_DEL/i_pipe/first_q [9]),
        .I3(m_axis_result_tvalid),
        .I4(m_axis_result_tready),
        .I5(\FLT_TO_FIX_OP.SPD.OP/op_state_pcntrl [0]),
        .O(\n_0_FLT_TO_FIX_OP.SPD.OP/RESULT[8]_i_1 ));
LUT6 #(
    .INIT(64'h0000AA00FCFCAAFC)) 
     \FLT_TO_FIX_OP.SPD.OP/RESULT[9]_i_1 
       (.I0(m_axis_result_tdata[9]),
        .I1(\n_0_RESULT[14]_i_2 ),
        .I2(\FLT_TO_FIX_OP.SPD.OP/ROUND/Q_DEL/i_pipe/first_q [10]),
        .I3(m_axis_result_tvalid),
        .I4(m_axis_result_tready),
        .I5(\FLT_TO_FIX_OP.SPD.OP/op_state_pcntrl [0]),
        .O(\n_0_FLT_TO_FIX_OP.SPD.OP/RESULT[9]_i_1 ));
FDRE \FLT_TO_FIX_OP.SPD.OP/RESULT_reg[0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FLT_TO_FIX_OP.SPD.OP/RESULT[0]_i_1 ),
        .Q(m_axis_result_tdata[0]),
        .R(\<const0> ));
FDRE \FLT_TO_FIX_OP.SPD.OP/RESULT_reg[10] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FLT_TO_FIX_OP.SPD.OP/RESULT[10]_i_1 ),
        .Q(m_axis_result_tdata[10]),
        .R(\<const0> ));
FDRE \FLT_TO_FIX_OP.SPD.OP/RESULT_reg[11] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FLT_TO_FIX_OP.SPD.OP/RESULT[11]_i_1 ),
        .Q(m_axis_result_tdata[11]),
        .R(\<const0> ));
FDRE \FLT_TO_FIX_OP.SPD.OP/RESULT_reg[12] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FLT_TO_FIX_OP.SPD.OP/RESULT[12]_i_1 ),
        .Q(m_axis_result_tdata[12]),
        .R(\<const0> ));
FDRE \FLT_TO_FIX_OP.SPD.OP/RESULT_reg[13] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FLT_TO_FIX_OP.SPD.OP/RESULT[13]_i_1 ),
        .Q(m_axis_result_tdata[13]),
        .R(\<const0> ));
FDRE \FLT_TO_FIX_OP.SPD.OP/RESULT_reg[14] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FLT_TO_FIX_OP.SPD.OP/RESULT[14]_i_1 ),
        .Q(m_axis_result_tdata[14]),
        .R(\<const0> ));
FDRE \FLT_TO_FIX_OP.SPD.OP/RESULT_reg[15] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FLT_TO_FIX_OP.SPD.OP/RESULT[15]_i_1 ),
        .Q(m_axis_result_tdata[15]),
        .R(\<const0> ));
FDRE \FLT_TO_FIX_OP.SPD.OP/RESULT_reg[1] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FLT_TO_FIX_OP.SPD.OP/RESULT[1]_i_1 ),
        .Q(m_axis_result_tdata[1]),
        .R(\<const0> ));
FDRE \FLT_TO_FIX_OP.SPD.OP/RESULT_reg[2] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FLT_TO_FIX_OP.SPD.OP/RESULT[2]_i_1 ),
        .Q(m_axis_result_tdata[2]),
        .R(\<const0> ));
FDRE \FLT_TO_FIX_OP.SPD.OP/RESULT_reg[3] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FLT_TO_FIX_OP.SPD.OP/RESULT[3]_i_1 ),
        .Q(m_axis_result_tdata[3]),
        .R(\<const0> ));
FDRE \FLT_TO_FIX_OP.SPD.OP/RESULT_reg[4] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FLT_TO_FIX_OP.SPD.OP/RESULT[4]_i_1 ),
        .Q(m_axis_result_tdata[4]),
        .R(\<const0> ));
FDRE \FLT_TO_FIX_OP.SPD.OP/RESULT_reg[5] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FLT_TO_FIX_OP.SPD.OP/RESULT[5]_i_1 ),
        .Q(m_axis_result_tdata[5]),
        .R(\<const0> ));
FDRE \FLT_TO_FIX_OP.SPD.OP/RESULT_reg[6] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FLT_TO_FIX_OP.SPD.OP/RESULT[6]_i_1 ),
        .Q(m_axis_result_tdata[6]),
        .R(\<const0> ));
FDRE \FLT_TO_FIX_OP.SPD.OP/RESULT_reg[7] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FLT_TO_FIX_OP.SPD.OP/RESULT[7]_i_1 ),
        .Q(m_axis_result_tdata[7]),
        .R(\<const0> ));
FDRE \FLT_TO_FIX_OP.SPD.OP/RESULT_reg[8] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FLT_TO_FIX_OP.SPD.OP/RESULT[8]_i_1 ),
        .Q(m_axis_result_tdata[8]),
        .R(\<const0> ));
FDRE \FLT_TO_FIX_OP.SPD.OP/RESULT_reg[9] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_FLT_TO_FIX_OP.SPD.OP/RESULT[9]_i_1 ),
        .Q(m_axis_result_tdata[9]),
        .R(\<const0> ));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* box_type = "PRIMITIVE" *) 
   CARRY4 \FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4 
       (.CI(lopt_2),
        .CO({\n_0_FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[3].C_MUX.CARRY_MUX ,\n_0_FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[2].C_MUX.CARRY_MUX ,\n_0_FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[1].C_MUX.CARRY_MUX ,\n_0_FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[0].C_MUX.CARRY_MUX }),
        .CYINIT(\<const1> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\n_0_FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[3].Q_XOR.SUM_XOR ,\n_0_FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[2].Q_XOR.SUM_XOR ,\n_0_FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[1].Q_XOR.SUM_XOR ,\FLT_TO_FIX_OP.SPD.OP/ROUND/O }),
        .S({\n_0_CHAIN_GEN[3].C_MUX.CARRY_MUX_i_1 ,\n_0_CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1 ,\n_0_CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1 ,\n_0_CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1 }));
GND \FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_GND 
       (.G(lopt_2));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* box_type = "PRIMITIVE" *) 
   CARRY4 \FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[12].C_MUX.CARRY_MUX_CARRY4 
       (.CI(\n_0_FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[11].C_MUX.CARRY_MUX ),
        .CO({\n_0_FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[15].C_MUX.CARRY_MUX ,\n_0_FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[14].C_MUX.CARRY_MUX ,\n_0_FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[13].C_MUX.CARRY_MUX ,\n_0_FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[12].C_MUX.CARRY_MUX }),
        .CYINIT(lopt_5),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\n_0_FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[15].Q_XOR.SUM_XOR ,\n_0_FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[14].Q_XOR.SUM_XOR ,\n_0_FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[13].Q_XOR.SUM_XOR ,\n_0_FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[12].Q_XOR.SUM_XOR }),
        .S({\n_0_CHAIN_GEN[15].C_MUX.CARRY_MUX_i_1 ,\n_0_CHAIN_GEN[14].C_MUX.CARRY_MUX_i_1 ,\n_0_CHAIN_GEN[13].C_MUX.CARRY_MUX_i_1 ,\n_0_CHAIN_GEN[12].C_MUX.CARRY_MUX_i_1 }));
GND \FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[12].C_MUX.CARRY_MUX_CARRY4_GND 
       (.G(lopt_5));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* box_type = "PRIMITIVE" *) 
   CARRY4 \FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[16].C_MUX.CARRY_MUX_CARRY4 
       (.CI(\n_0_FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[15].C_MUX.CARRY_MUX ),
        .CO(\NLW_FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[16].C_MUX.CARRY_MUX_CARRY4_CO_UNCONNECTED [3:0]),
        .CYINIT(lopt_6),
        .DI({\NLW_FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[16].C_MUX.CARRY_MUX_CARRY4_DI_UNCONNECTED [3:1],\<const0> }),
        .O({\NLW_FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[16].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED [3:2],\n_0_FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[17].Q_XOR.SUM_XOR ,\n_0_FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[16].Q_XOR.SUM_XOR }),
        .S({\NLW_FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[16].C_MUX.CARRY_MUX_CARRY4_S_UNCONNECTED [3:2],\<const0> ,\FLT_TO_FIX_OP.SPD.OP/a_sign_pza }));
GND \FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[16].C_MUX.CARRY_MUX_CARRY4_GND 
       (.G(lopt_6));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* box_type = "PRIMITIVE" *) 
   CARRY4 \FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4 
       (.CI(\n_0_FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[3].C_MUX.CARRY_MUX ),
        .CO({\n_0_FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[7].C_MUX.CARRY_MUX ,\n_0_FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[6].C_MUX.CARRY_MUX ,\n_0_FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[5].C_MUX.CARRY_MUX ,\n_0_FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[4].C_MUX.CARRY_MUX }),
        .CYINIT(lopt_3),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\n_0_FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[7].Q_XOR.SUM_XOR ,\n_0_FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[6].Q_XOR.SUM_XOR ,\n_0_FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[5].Q_XOR.SUM_XOR ,\n_0_FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[4].Q_XOR.SUM_XOR }),
        .S({\n_0_CHAIN_GEN[7].C_MUX.CARRY_MUX_i_1 ,\n_0_CHAIN_GEN[6].C_MUX.CARRY_MUX_i_1 ,\n_0_CHAIN_GEN[5].C_MUX.CARRY_MUX_i_1 ,\n_0_CHAIN_GEN[4].C_MUX.CARRY_MUX_i_1 }));
GND \FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_GND 
       (.G(lopt_3));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* box_type = "PRIMITIVE" *) 
   CARRY4 \FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[8].C_MUX.CARRY_MUX_CARRY4 
       (.CI(\n_0_FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[7].C_MUX.CARRY_MUX ),
        .CO({\n_0_FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[11].C_MUX.CARRY_MUX ,\n_0_FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[10].C_MUX.CARRY_MUX ,\n_0_FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[9].C_MUX.CARRY_MUX ,\n_0_FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[8].C_MUX.CARRY_MUX }),
        .CYINIT(lopt_4),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\n_0_FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[11].Q_XOR.SUM_XOR ,\n_0_FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[10].Q_XOR.SUM_XOR ,\n_0_FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[9].Q_XOR.SUM_XOR ,\n_0_FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[8].Q_XOR.SUM_XOR }),
        .S({\n_0_CHAIN_GEN[11].C_MUX.CARRY_MUX_i_1 ,\n_0_CHAIN_GEN[10].C_MUX.CARRY_MUX_i_1 ,\n_0_CHAIN_GEN[9].C_MUX.CARRY_MUX_i_1 ,\n_0_CHAIN_GEN[8].C_MUX.CARRY_MUX_i_1 }));
GND \FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[8].C_MUX.CARRY_MUX_CARRY4_GND 
       (.G(lopt_4));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ROUND/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\FLT_TO_FIX_OP.SPD.OP/ROUND/O ),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ROUND/Q_DEL/i_pipe/first_q [0]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ROUND/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[10] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\n_0_FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[10].Q_XOR.SUM_XOR ),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ROUND/Q_DEL/i_pipe/first_q [10]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ROUND/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[11] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\n_0_FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[11].Q_XOR.SUM_XOR ),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ROUND/Q_DEL/i_pipe/first_q [11]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ROUND/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[12] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\n_0_FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[12].Q_XOR.SUM_XOR ),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ROUND/Q_DEL/i_pipe/first_q [12]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ROUND/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[13] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\n_0_FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[13].Q_XOR.SUM_XOR ),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ROUND/Q_DEL/i_pipe/first_q [13]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ROUND/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[14] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\n_0_FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[14].Q_XOR.SUM_XOR ),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ROUND/Q_DEL/i_pipe/first_q [14]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ROUND/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[15] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\n_0_FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[15].Q_XOR.SUM_XOR ),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ROUND/Q_DEL/i_pipe/first_q [15]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ROUND/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[16] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\n_0_FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[16].Q_XOR.SUM_XOR ),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ROUND/Q_DEL/i_pipe/first_q [16]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ROUND/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[17] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\n_0_FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[17].Q_XOR.SUM_XOR ),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ROUND/Q_DEL/i_pipe/first_q [17]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ROUND/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[1] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\n_0_FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[1].Q_XOR.SUM_XOR ),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ROUND/Q_DEL/i_pipe/first_q [1]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ROUND/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[2] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\n_0_FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[2].Q_XOR.SUM_XOR ),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ROUND/Q_DEL/i_pipe/first_q [2]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ROUND/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[3] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\n_0_FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[3].Q_XOR.SUM_XOR ),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ROUND/Q_DEL/i_pipe/first_q [3]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ROUND/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[4] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\n_0_FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[4].Q_XOR.SUM_XOR ),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ROUND/Q_DEL/i_pipe/first_q [4]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ROUND/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[5] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\n_0_FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[5].Q_XOR.SUM_XOR ),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ROUND/Q_DEL/i_pipe/first_q [5]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ROUND/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[6] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\n_0_FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[6].Q_XOR.SUM_XOR ),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ROUND/Q_DEL/i_pipe/first_q [6]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ROUND/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[7] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\n_0_FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[7].Q_XOR.SUM_XOR ),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ROUND/Q_DEL/i_pipe/first_q [7]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ROUND/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[8] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\n_0_FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[8].Q_XOR.SUM_XOR ),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ROUND/Q_DEL/i_pipe/first_q [8]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ROUND/Q_DEL/i_pipe/opt_has_pipe.first_q_reg[9] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\n_0_FLT_TO_FIX_OP.SPD.OP/ROUND/CHAIN_GEN[9].Q_XOR.SUM_XOR ),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ROUND/Q_DEL/i_pipe/first_q [9]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ROUND_BYPASS_DEL/i_pipe/opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DEL/i_pipe/first_q [1]),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ROUND_BYPASS_DEL/i_pipe/first_q [0]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ROUND_BYPASS_DEL/i_pipe/opt_has_pipe.first_q_reg[10] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DEL/i_pipe/first_q [11]),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ROUND_BYPASS_DEL/i_pipe/first_q [10]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ROUND_BYPASS_DEL/i_pipe/opt_has_pipe.first_q_reg[11] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DEL/i_pipe/first_q [12]),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ROUND_BYPASS_DEL/i_pipe/first_q [11]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ROUND_BYPASS_DEL/i_pipe/opt_has_pipe.first_q_reg[12] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DEL/i_pipe/first_q [13]),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ROUND_BYPASS_DEL/i_pipe/first_q [12]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ROUND_BYPASS_DEL/i_pipe/opt_has_pipe.first_q_reg[13] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DEL/i_pipe/first_q [14]),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ROUND_BYPASS_DEL/i_pipe/first_q [13]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ROUND_BYPASS_DEL/i_pipe/opt_has_pipe.first_q_reg[14] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DEL/i_pipe/first_q [15]),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ROUND_BYPASS_DEL/i_pipe/first_q [14]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ROUND_BYPASS_DEL/i_pipe/opt_has_pipe.first_q_reg[15] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\FLT_TO_FIX_OP.SPD.OP/a_sign_pza ),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ROUND_BYPASS_DEL/i_pipe/first_q [15]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ROUND_BYPASS_DEL/i_pipe/opt_has_pipe.first_q_reg[1] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DEL/i_pipe/first_q [2]),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ROUND_BYPASS_DEL/i_pipe/first_q [1]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ROUND_BYPASS_DEL/i_pipe/opt_has_pipe.first_q_reg[2] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DEL/i_pipe/first_q [3]),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ROUND_BYPASS_DEL/i_pipe/first_q [2]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ROUND_BYPASS_DEL/i_pipe/opt_has_pipe.first_q_reg[3] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DEL/i_pipe/first_q [4]),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ROUND_BYPASS_DEL/i_pipe/first_q [3]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ROUND_BYPASS_DEL/i_pipe/opt_has_pipe.first_q_reg[4] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DEL/i_pipe/first_q [5]),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ROUND_BYPASS_DEL/i_pipe/first_q [4]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ROUND_BYPASS_DEL/i_pipe/opt_has_pipe.first_q_reg[5] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DEL/i_pipe/first_q [6]),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ROUND_BYPASS_DEL/i_pipe/first_q [5]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ROUND_BYPASS_DEL/i_pipe/opt_has_pipe.first_q_reg[6] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DEL/i_pipe/first_q [7]),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ROUND_BYPASS_DEL/i_pipe/first_q [6]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ROUND_BYPASS_DEL/i_pipe/opt_has_pipe.first_q_reg[7] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DEL/i_pipe/first_q [8]),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ROUND_BYPASS_DEL/i_pipe/first_q [7]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ROUND_BYPASS_DEL/i_pipe/opt_has_pipe.first_q_reg[8] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DEL/i_pipe/first_q [9]),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ROUND_BYPASS_DEL/i_pipe/first_q [8]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ROUND_BYPASS_DEL/i_pipe/opt_has_pipe.first_q_reg[9] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DEL/i_pipe/first_q [10]),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ROUND_BYPASS_DEL/i_pipe/first_q [9]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/SIGN_DEL/i_pipe/opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\FLT_TO_FIX_OP.SPD.OP/SIGN_P0_REG/i_pipe/first_q ),
        .Q(\FLT_TO_FIX_OP.SPD.OP/SIGN_DEL/i_pipe/first_q ),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/SIGN_DEL/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][0] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\FLT_TO_FIX_OP.SPD.OP/SIGN_DEL/i_pipe/first_q ),
        .Q(\n_0_FLT_TO_FIX_OP.SPD.OP/SIGN_DEL/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][0] ),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/SIGN_DEL/i_pipe/opt_has_pipe.i_pipe[3].pipe_reg[3][0] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\n_0_FLT_TO_FIX_OP.SPD.OP/SIGN_DEL/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][0] ),
        .Q(\FLT_TO_FIX_OP.SPD.OP/a_sign_pza ),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/SIGN_P0_REG/i_pipe/opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(p_2_out[31]),
        .Q(\FLT_TO_FIX_OP.SPD.OP/SIGN_P0_REG/i_pipe/first_q ),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ZERO_DET_DIST_DEL/DEL/i_pipe/opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\n_0_opt_has_pipe.first_q[0]_i_1__4 ),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ZERO_DET_DIST_DEL/DEL/i_pipe/first_q [0]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ZERO_DET_DIST_DEL/DEL/i_pipe/opt_has_pipe.first_q_reg[1] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(p_2_out[24]),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ZERO_DET_DIST_DEL/DEL/i_pipe/first_q [1]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ZERO_DET_DIST_DEL/DEL/i_pipe/opt_has_pipe.first_q_reg[2] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[2]_i_1 ),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ZERO_DET_DIST_DEL/DEL/i_pipe/first_q [2]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ZERO_DET_DIST_DEL/DEL/i_pipe/opt_has_pipe.first_q_reg[3] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[3]_i_1 ),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ZERO_DET_DIST_DEL/DEL/i_pipe/first_q [3]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ZERO_DET_DIST_DEL/DEL/i_pipe/opt_has_pipe.first_q_reg[4] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\n_0_opt_has_pipe.first_q[4]_i_1__1 ),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ZERO_DET_DIST_DEL/DEL/i_pipe/first_q [4]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ZERO_DET_DIST_DEL/DEL/i_pipe/opt_has_pipe.first_q_reg[5] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\n_0_opt_has_pipe.first_q[5]_i_1 ),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ZERO_DET_DIST_DEL/DEL/i_pipe/first_q [5]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ZERO_DET_DIST_DEL/DEL/i_pipe/opt_has_pipe.first_q_reg[6] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\n_0_opt_has_pipe.first_q[6]_i_1__2 ),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ZERO_DET_DIST_DEL/DEL/i_pipe/first_q [6]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ZERO_DET_DIST_DEL/DEL/i_pipe/opt_has_pipe.first_q_reg[7] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\n_0_opt_has_pipe.first_q[7]_i_1__0 ),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ZERO_DET_DIST_DEL/DEL/i_pipe/first_q [7]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ZERO_DET_DIST_DEL/DEL/i_pipe/opt_has_pipe.first_q_reg[8] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\n_0_opt_has_pipe.first_q[9]_i_1__0 ),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ZERO_DET_DIST_DEL/DEL/i_pipe/first_q [8]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \FLT_TO_FIX_OP.SPD.OP/ZERO_DET_DIST_DEL/DEL/i_pipe/opt_has_pipe.first_q_reg[9] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\n_0_opt_has_pipe.first_q[9]_i_1__0 ),
        .Q(\FLT_TO_FIX_OP.SPD.OP/ZERO_DET_DIST_DEL/DEL/i_pipe/first_q [9]),
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
LUT3 #(
    .INIT(8'hBA)) 
     \RESULT[14]_i_2 
       (.I0(\FLT_TO_FIX_OP.SPD.OP/op_state_pcntrl [1]),
        .I1(\FLT_TO_FIX_OP.SPD.OP/DEL_SIGN/i_pipe/first_q ),
        .I2(\FLT_TO_FIX_OP.SPD.OP/ROUND/Q_DEL/i_pipe/first_q [16]),
        .O(\n_0_RESULT[14]_i_2 ));
LUT2 #(
    .INIT(4'h2)) 
     \RESULT[15]_i_2 
       (.I0(m_axis_result_tvalid),
        .I1(m_axis_result_tready),
        .O(\n_0_RESULT[15]_i_2 ));
VCC VCC
       (.P(\<const1> ));
(* SOFT_HLUTNM = "soft_lutpair24" *) 
   LUT3 #(
    .INIT(8'hA8)) 
     \gen_has_z_tready.reg1_a_ready_i_1 
       (.I0(\n_0_gen_has_z_tready.reg1_a_ready_i_2 ),
        .I1(\n_0_gen_has_z_tready.reg1_a_ready_i_3 ),
        .I2(\need_combiner.use_2to1.skid_buffer_combiner/reg2_b_valid_nxt ),
        .O(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_ready_nxt ));
LUT6 #(
    .INIT(64'h00F000007FFF7F7F)) 
     \gen_has_z_tready.reg1_a_ready_i_2 
       (.I0(s_axis_a_tready),
        .I1(s_axis_a_tvalid),
        .I2(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_valid ),
        .I3(\n_0_RESULT[15]_i_2 ),
        .I4(\need_combiner.use_2to1.skid_buffer_combiner/reg2_b_valid ),
        .I5(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .O(\n_0_gen_has_z_tready.reg1_a_ready_i_2 ));
LUT6 #(
    .INIT(64'h00001F0011111111)) 
     \gen_has_z_tready.reg1_a_ready_i_3 
       (.I0(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I1(\n_0_gen_has_z_tready.reg1_a_ready_i_4 ),
        .I2(\need_combiner.use_2to1.skid_buffer_combiner/reg2_b_valid ),
        .I3(combiner_data_valid),
        .I4(\n_0_RESULT[15]_i_2 ),
        .I5(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_valid ),
        .O(\n_0_gen_has_z_tready.reg1_a_ready_i_3 ));
(* SOFT_HLUTNM = "soft_lutpair2" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \gen_has_z_tready.reg1_a_ready_i_4 
       (.I0(s_axis_a_tready),
        .I1(s_axis_a_tvalid),
        .O(\n_0_gen_has_z_tready.reg1_a_ready_i_4 ));
LUT6 #(
    .INIT(64'h0080808000800080)) 
     \gen_has_z_tready.reg1_a_tdata[31]_i_1 
       (.I0(s_axis_a_tvalid),
        .I1(s_axis_a_tready),
        .I2(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_valid ),
        .I3(\need_combiner.use_2to1.skid_buffer_combiner/reg2_b_valid ),
        .I4(m_axis_result_tready),
        .I5(m_axis_result_tvalid),
        .O(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_tlast ));
(* SOFT_HLUTNM = "soft_lutpair2" *) 
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
    .INIT(64'hF3AAA2AAA2AAA2AA)) 
     \gen_has_z_tready.reg1_a_valid_i_1 
       (.I0(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg2_b_valid ),
        .I2(\n_0_RESULT[15]_i_2 ),
        .I3(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_valid ),
        .I4(s_axis_a_tvalid),
        .I5(s_axis_a_tready),
        .O(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid_nxt ));
(* SOFT_HLUTNM = "soft_lutpair25" *) 
   LUT3 #(
    .INIT(8'h07)) 
     \gen_has_z_tready.reg1_b_ready_i_1 
       (.I0(\n_0_gen_has_z_tready.reg1_a_ready_i_3 ),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg2_b_valid_nxt ),
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
(* SOFT_HLUTNM = "soft_lutpair19" *) 
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
(* SOFT_HLUTNM = "soft_lutpair10" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tdata[11]_i_1 
       (.I0(reg1_a_tdata[11]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tdata[11]),
        .O(\n_0_gen_has_z_tready.reg2_a_tdata[11]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair9" *) 
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
(* SOFT_HLUTNM = "soft_lutpair8" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tdata[14]_i_1 
       (.I0(reg1_a_tdata[14]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tdata[14]),
        .O(\n_0_gen_has_z_tready.reg2_a_tdata[14]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair6" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tdata[15]_i_1 
       (.I0(reg1_a_tdata[15]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tdata[15]),
        .O(\n_0_gen_has_z_tready.reg2_a_tdata[15]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair7" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tdata[16]_i_1 
       (.I0(reg1_a_tdata[16]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tdata[16]),
        .O(\n_0_gen_has_z_tready.reg2_a_tdata[16]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair4" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tdata[17]_i_1 
       (.I0(reg1_a_tdata[17]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tdata[17]),
        .O(\n_0_gen_has_z_tready.reg2_a_tdata[17]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair5" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tdata[18]_i_1 
       (.I0(reg1_a_tdata[18]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tdata[18]),
        .O(\n_0_gen_has_z_tready.reg2_a_tdata[18]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair12" *) 
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
(* SOFT_HLUTNM = "soft_lutpair11" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tdata[20]_i_1 
       (.I0(reg1_a_tdata[20]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tdata[20]),
        .O(\n_0_gen_has_z_tready.reg2_a_tdata[20]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair14" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tdata[21]_i_1 
       (.I0(reg1_a_tdata[21]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tdata[21]),
        .O(\n_0_gen_has_z_tready.reg2_a_tdata[21]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair13" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tdata[22]_i_1 
       (.I0(reg1_a_tdata[22]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tdata[22]),
        .O(\n_0_gen_has_z_tready.reg2_a_tdata[22]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair12" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tdata[23]_i_1 
       (.I0(reg1_a_tdata[23]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tdata[23]),
        .O(\n_0_gen_has_z_tready.reg2_a_tdata[23]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair11" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tdata[24]_i_1 
       (.I0(reg1_a_tdata[24]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tdata[24]),
        .O(\n_0_gen_has_z_tready.reg2_a_tdata[24]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair10" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tdata[25]_i_1 
       (.I0(reg1_a_tdata[25]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tdata[25]),
        .O(\n_0_gen_has_z_tready.reg2_a_tdata[25]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair9" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tdata[26]_i_1 
       (.I0(reg1_a_tdata[26]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tdata[26]),
        .O(\n_0_gen_has_z_tready.reg2_a_tdata[26]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair8" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tdata[27]_i_1 
       (.I0(reg1_a_tdata[27]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tdata[27]),
        .O(\n_0_gen_has_z_tready.reg2_a_tdata[27]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair7" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tdata[28]_i_1 
       (.I0(reg1_a_tdata[28]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tdata[28]),
        .O(\n_0_gen_has_z_tready.reg2_a_tdata[28]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair6" *) 
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
(* SOFT_HLUTNM = "soft_lutpair5" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tdata[30]_i_1 
       (.I0(reg1_a_tdata[30]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tdata[30]),
        .O(\n_0_gen_has_z_tready.reg2_a_tdata[30]_i_1 ));
LUT4 #(
    .INIT(16'hD0FF)) 
     \gen_has_z_tready.reg2_a_tdata[31]_i_1 
       (.I0(m_axis_result_tvalid),
        .I1(m_axis_result_tready),
        .I2(\need_combiner.use_2to1.skid_buffer_combiner/reg2_b_valid ),
        .I3(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_valid ),
        .O(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ));
(* SOFT_HLUTNM = "soft_lutpair4" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tdata[31]_i_2 
       (.I0(reg1_a_tdata[31]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tdata[31]),
        .O(\n_0_gen_has_z_tready.reg2_a_tdata[31]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair16" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tdata[3]_i_1 
       (.I0(reg1_a_tdata[3]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tdata[3]),
        .O(\n_0_gen_has_z_tready.reg2_a_tdata[3]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair19" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tdata[4]_i_1 
       (.I0(reg1_a_tdata[4]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tdata[4]),
        .O(\n_0_gen_has_z_tready.reg2_a_tdata[4]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair15" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tdata[5]_i_1 
       (.I0(reg1_a_tdata[5]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tdata[5]),
        .O(\n_0_gen_has_z_tready.reg2_a_tdata[5]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair18" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tdata[6]_i_1 
       (.I0(reg1_a_tdata[6]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tdata[6]),
        .O(\n_0_gen_has_z_tready.reg2_a_tdata[6]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair14" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tdata[7]_i_1 
       (.I0(reg1_a_tdata[7]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tdata[7]),
        .O(\n_0_gen_has_z_tready.reg2_a_tdata[7]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair17" *) 
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
(* SOFT_HLUTNM = "soft_lutpair23" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tuser[0]_i_1 
       (.I0(reg1_a_tuser[0]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tuser[0]),
        .O(\n_0_gen_has_z_tready.reg2_a_tuser[0]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair23" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tuser[1]_i_1 
       (.I0(reg1_a_tuser[1]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tuser[1]),
        .O(\n_0_gen_has_z_tready.reg2_a_tuser[1]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair22" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tuser[2]_i_1 
       (.I0(reg1_a_tuser[2]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tuser[2]),
        .O(\n_0_gen_has_z_tready.reg2_a_tuser[2]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair22" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tuser[3]_i_1 
       (.I0(reg1_a_tuser[3]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tuser[3]),
        .O(\n_0_gen_has_z_tready.reg2_a_tuser[3]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair21" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tuser[4]_i_1 
       (.I0(reg1_a_tuser[4]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tuser[4]),
        .O(\n_0_gen_has_z_tready.reg2_a_tuser[4]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair21" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tuser[5]_i_1 
       (.I0(reg1_a_tuser[5]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tuser[5]),
        .O(\n_0_gen_has_z_tready.reg2_a_tuser[5]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair20" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tuser[6]_i_1 
       (.I0(reg1_a_tuser[6]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tuser[6]),
        .O(\n_0_gen_has_z_tready.reg2_a_tuser[6]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair20" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gen_has_z_tready.reg2_a_tuser[7]_i_1 
       (.I0(reg1_a_tuser[7]),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/reg1_a_valid ),
        .I2(s_axis_a_tuser[7]),
        .O(\n_0_gen_has_z_tready.reg2_a_tuser[7]_i_1 ));
(* RETAIN_INVERTER *) 
   (* SOFT_HLUTNM = "soft_lutpair25" *) 
   LUT1 #(
    .INIT(2'h1)) 
     \gen_has_z_tready.reg2_a_valid_i_1 
       (.I0(\n_0_gen_has_z_tready.reg1_a_ready_i_3 ),
        .O(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_valid_nxt ));
LUT6 #(
    .INIT(64'hFFFFA8FFFCFCFCFC)) 
     \gen_has_z_tready.reg2_b_valid_i_1 
       (.I0(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_valid ),
        .I1(\need_combiner.use_2to1.skid_buffer_combiner/b_tx ),
        .I2(\need_combiner.use_2to1.skid_buffer_combiner/reg1_b_valid ),
        .I3(combiner_data_valid),
        .I4(\n_0_RESULT[15]_i_2 ),
        .I5(\need_combiner.use_2to1.skid_buffer_combiner/reg2_b_valid ),
        .O(\need_combiner.use_2to1.skid_buffer_combiner/reg2_b_valid_nxt ));
(* SOFT_HLUTNM = "soft_lutpair24" *) 
   LUT2 #(
    .INIT(4'h2)) 
     \gen_has_z_tready.z_valid_i_1 
       (.I0(\need_combiner.use_2to1.skid_buffer_combiner/reg2_b_valid_nxt ),
        .I1(\n_0_gen_has_z_tready.reg1_a_ready_i_3 ),
        .O(\need_combiner.use_2to1.skid_buffer_combiner/p_2_out ));
(* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \i_nd_to_rdy/opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_opt_has_pipe.first_q[0]_i_1__0 ),
        .Q(\i_nd_to_rdy/first_q ),
        .R(sclr_i));
FDRE #(
    .INIT(1'b0)) 
     \i_nd_to_rdy/opt_has_pipe.i_pipe[2].pipe_reg[2][0] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\i_nd_to_rdy/first_q ),
        .Q(\n_0_i_nd_to_rdy/opt_has_pipe.i_pipe[2].pipe_reg[2][0] ),
        .R(sclr_i));
FDRE #(
    .INIT(1'b0)) 
     \i_nd_to_rdy/opt_has_pipe.i_pipe[3].pipe_reg[3][0] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\n_0_i_nd_to_rdy/opt_has_pipe.i_pipe[2].pipe_reg[2][0] ),
        .Q(\n_0_i_nd_to_rdy/opt_has_pipe.i_pipe[3].pipe_reg[3][0] ),
        .R(sclr_i));
FDRE #(
    .INIT(1'b0)) 
     \i_nd_to_rdy/opt_has_pipe.i_pipe[4].pipe_reg[4][0] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\n_0_i_nd_to_rdy/opt_has_pipe.i_pipe[3].pipe_reg[3][0] ),
        .Q(\n_0_i_nd_to_rdy/opt_has_pipe.i_pipe[4].pipe_reg[4][0] ),
        .R(sclr_i));
FDRE #(
    .INIT(1'b0)) 
     \i_nd_to_rdy/opt_has_pipe.i_pipe[5].pipe_reg[5][0] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\n_0_i_nd_to_rdy/opt_has_pipe.i_pipe[4].pipe_reg[4][0] ),
        .Q(\pipe[5] ),
        .R(sclr_i));
FDRE #(
    .INIT(1'b0)) 
     \i_nd_to_rdy/opt_has_pipe.i_pipe[6].pipe_reg[6][0] 
       (.C(aclk),
        .CE(ce_internal_core),
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
        .Q(p_2_out[0]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[10] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[10]_i_1 ),
        .Q(p_2_out[10]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[11] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[11]_i_1 ),
        .Q(p_2_out[11]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[12] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[12]_i_1 ),
        .Q(p_2_out[12]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[13] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[13]_i_1 ),
        .Q(p_2_out[13]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[14] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[14]_i_1 ),
        .Q(p_2_out[14]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[15] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[15]_i_1 ),
        .Q(p_2_out[15]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[16] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[16]_i_1 ),
        .Q(p_2_out[16]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[17] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[17]_i_1 ),
        .Q(p_2_out[17]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[18] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[18]_i_1 ),
        .Q(p_2_out[18]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[19] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[19]_i_1 ),
        .Q(p_2_out[19]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[1] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[1]_i_1 ),
        .Q(p_2_out[1]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[20] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[20]_i_1 ),
        .Q(p_2_out[20]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[21] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[21]_i_1 ),
        .Q(p_2_out[21]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[22] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[22]_i_1 ),
        .Q(p_2_out[22]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[23] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[23]_i_1 ),
        .Q(p_2_out[23]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[24] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[24]_i_1 ),
        .Q(p_2_out[24]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[25] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[25]_i_1 ),
        .Q(p_2_out[25]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[26] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[26]_i_1 ),
        .Q(p_2_out[26]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[27] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[27]_i_1 ),
        .Q(p_2_out[27]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[28] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[28]_i_1 ),
        .Q(p_2_out[28]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[29] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[29]_i_1 ),
        .Q(p_2_out[29]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[2] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[2]_i_1 ),
        .Q(p_2_out[2]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[30] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[30]_i_1 ),
        .Q(p_2_out[30]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[31] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[31]_i_2 ),
        .Q(p_2_out[31]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[3] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[3]_i_1 ),
        .Q(p_2_out[3]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[4] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[4]_i_1 ),
        .Q(p_2_out[4]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[5] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[5]_i_1 ),
        .Q(p_2_out[5]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[6] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[6]_i_1 ),
        .Q(p_2_out[6]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[7] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[7]_i_1 ),
        .Q(p_2_out[7]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[8] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[8]_i_1 ),
        .Q(p_2_out[8]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_combiner.use_2to1.skid_buffer_combiner/gen_has_z_tready.reg2_a_tdata_reg[9] 
       (.C(aclk),
        .CE(\need_combiner.use_2to1.skid_buffer_combiner/reg2_a_tlast ),
        .D(\n_0_gen_has_z_tready.reg2_a_tdata[9]_i_1 ),
        .Q(p_2_out[9]),
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
        .CE(ce_internal_core),
        .D(reg2_a_tuser[0]),
        .Q(\need_user_delay.user_pipe/i_pipe/first_q [0]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_user_delay.user_pipe/i_pipe/opt_has_pipe.first_q_reg[1] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(reg2_a_tuser[1]),
        .Q(\need_user_delay.user_pipe/i_pipe/first_q [1]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_user_delay.user_pipe/i_pipe/opt_has_pipe.first_q_reg[2] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(reg2_a_tuser[2]),
        .Q(\need_user_delay.user_pipe/i_pipe/first_q [2]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_user_delay.user_pipe/i_pipe/opt_has_pipe.first_q_reg[3] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(reg2_a_tuser[3]),
        .Q(\need_user_delay.user_pipe/i_pipe/first_q [3]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_user_delay.user_pipe/i_pipe/opt_has_pipe.first_q_reg[4] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(reg2_a_tuser[4]),
        .Q(\need_user_delay.user_pipe/i_pipe/first_q [4]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_user_delay.user_pipe/i_pipe/opt_has_pipe.first_q_reg[5] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(reg2_a_tuser[5]),
        .Q(\need_user_delay.user_pipe/i_pipe/first_q [5]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_user_delay.user_pipe/i_pipe/opt_has_pipe.first_q_reg[6] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(reg2_a_tuser[6]),
        .Q(\need_user_delay.user_pipe/i_pipe/first_q [6]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_user_delay.user_pipe/i_pipe/opt_has_pipe.first_q_reg[7] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(reg2_a_tuser[7]),
        .Q(\need_user_delay.user_pipe/i_pipe/first_q [7]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_user_delay.user_pipe/i_pipe/opt_has_pipe.first_q_reg[8] 
       (.C(aclk),
        .CE(ce_internal_core),
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
        .CE(ce_internal_core),
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
        .CE(ce_internal_core),
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
        .CE(ce_internal_core),
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
        .CE(ce_internal_core),
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
        .CE(ce_internal_core),
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
        .CE(ce_internal_core),
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
        .CE(ce_internal_core),
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
        .CE(ce_internal_core),
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
        .CE(ce_internal_core),
        .CLK(aclk),
        .D(\need_user_delay.user_pipe/i_pipe/first_q [8]),
        .Q(\n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][8]_srl4 ));
FDRE #(
    .INIT(1'b0)) 
     \need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[6].pipe_reg[6][0] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][0]_srl4 ),
        .Q(m_axis_result_tuser[0]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[6].pipe_reg[6][1] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][1]_srl4 ),
        .Q(m_axis_result_tuser[1]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[6].pipe_reg[6][2] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][2]_srl4 ),
        .Q(m_axis_result_tuser[2]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[6].pipe_reg[6][3] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][3]_srl4 ),
        .Q(m_axis_result_tuser[3]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[6].pipe_reg[6][4] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][4]_srl4 ),
        .Q(m_axis_result_tuser[4]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[6].pipe_reg[6][5] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][5]_srl4 ),
        .Q(m_axis_result_tuser[5]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[6].pipe_reg[6][6] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][6]_srl4 ),
        .Q(m_axis_result_tuser[6]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[6].pipe_reg[6][7] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][7]_srl4 ),
        .Q(m_axis_result_tuser[7]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[6].pipe_reg[6][8] 
       (.C(aclk),
        .CE(ce_internal_core),
        .D(\n_0_need_user_delay.user_pipe/i_pipe/opt_has_pipe.i_pipe[5].pipe_reg[5][8]_srl4 ),
        .Q(m_axis_result_tlast),
        .R(\<const0> ));
LUT6 #(
    .INIT(64'hFFFF0000FFD0FFD0)) 
     \opt_has_pipe.first_q[0]_i_1 
       (.I0(\n_0_opt_has_pipe.first_q[0]_i_2 ),
        .I1(\n_0_opt_has_pipe.first_q[0]_i_3 ),
        .I2(\FLT_TO_FIX_OP.SPD.OP/SIGN_P0_REG/i_pipe/first_q ),
        .I3(\n_0_opt_has_pipe.first_q[0]_i_4__0 ),
        .I4(\FLT_TO_FIX_OP.SPD.OP/OP_STATE_P1_REG/i_pipe/first_q [0]),
        .I5(\n_0_RESULT[15]_i_2 ),
        .O(\n_0_opt_has_pipe.first_q[0]_i_1 ));
LUT4 #(
    .INIT(16'hFB08)) 
     \opt_has_pipe.first_q[0]_i_1__0 
       (.I0(\i_nd_to_rdy/first_q ),
        .I1(m_axis_result_tvalid),
        .I2(m_axis_result_tready),
        .I3(combiner_data_valid),
        .O(\n_0_opt_has_pipe.first_q[0]_i_1__0 ));
LUT6 #(
    .INIT(64'hAA2AAA2AAA2AFFFF)) 
     \opt_has_pipe.first_q[0]_i_1__1 
       (.I0(\n_0_opt_has_pipe.first_q[0]_i_3 ),
        .I1(\FLT_TO_FIX_OP.SPD.OP/overflow_p1_updated2 ),
        .I2(\FLT_TO_FIX_OP.SPD.OP/SIGN_P0_REG/i_pipe/first_q ),
        .I3(\FLT_TO_FIX_OP.SPD.OP/NEG_MANT_OVER_P0_DEL/i_pipe/first_q ),
        .I4(\n_0_opt_has_pipe.first_q[0]_i_2 ),
        .I5(\FLT_TO_FIX_OP.SPD.OP/COND_DET/EXP_DET_LUT.EXP_ALL_ZERO_DEL/i_pipe/first_q ),
        .O(\n_0_opt_has_pipe.first_q[0]_i_1__1 ));
(* SOFT_HLUTNM = "soft_lutpair0" *) 
   LUT5 #(
    .INIT(32'hFFEF0F0F)) 
     \opt_has_pipe.first_q[0]_i_1__10 
       (.I0(\n_0_opt_has_pipe.first_q[0]_i_2__3 ),
        .I1(p_2_out[0]),
        .I2(\n_0_opt_has_pipe.first_q[0]_i_3__0 ),
        .I3(p_2_out[8]),
        .I4(p_2_out[7]),
        .O(\n_0_opt_has_pipe.first_q[0]_i_1__10 ));
(* SOFT_HLUTNM = "soft_lutpair0" *) 
   LUT4 #(
    .INIT(16'h0010)) 
     \opt_has_pipe.first_q[0]_i_1__11 
       (.I0(\n_0_opt_has_pipe.first_q[0]_i_2__3 ),
        .I1(p_2_out[0]),
        .I2(\n_0_opt_has_pipe.first_q[0]_i_3__0 ),
        .I3(p_2_out[7]),
        .O(\n_0_opt_has_pipe.first_q[0]_i_1__11 ));
LUT3 #(
    .INIT(8'h2A)) 
     \opt_has_pipe.first_q[0]_i_1__2 
       (.I0(\FLT_TO_FIX_OP.SPD.OP/COND_DET/EXP_DET_LUT.EXP_ALL_ONE_DEL/i_pipe/first_q ),
        .I1(\FLT_TO_FIX_OP.SPD.OP/A_MANT_ALL_ZERO_P0_DEL/i_pipe/first_q ),
        .I2(\FLT_TO_FIX_OP.SPD.OP/COND_DET/EXP_DET_LUT.EXP_ALL_ZERO_DEL/i_pipe/first_q ),
        .O(\n_0_opt_has_pipe.first_q[0]_i_1__2 ));
LUT5 #(
    .INIT(32'h000755FF)) 
     \opt_has_pipe.first_q[0]_i_1__3 
       (.I0(\FLT_TO_FIX_OP.SPD.OP/ZERO_DET_DIST_DEL/DEL/i_pipe/first_q [0]),
        .I1(\FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/first_q [2]),
        .I2(\FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/first_q [1]),
        .I3(\FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/first_q [0]),
        .I4(\FLT_TO_FIX_OP.SPD.OP/ZERO_DET_DIST_DEL/DEL/i_pipe/first_q [1]),
        .O(\n_0_opt_has_pipe.first_q[0]_i_1__3 ));
LUT1 #(
    .INIT(2'h1)) 
     \opt_has_pipe.first_q[0]_i_1__4 
       (.I0(p_2_out[23]),
        .O(\n_0_opt_has_pipe.first_q[0]_i_1__4 ));
LUT6 #(
    .INIT(64'hB888BBBBB8888888)) 
     \opt_has_pipe.first_q[0]_i_1__5 
       (.I0(\n_0_opt_has_pipe.first_q[0]_i_2__0 ),
        .I1(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[1].SKEW_DIST_DEL.DEL_DIST/i_pipe/first_q [0]),
        .I2(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/p_0_in13_in ),
        .I3(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[0].DEL_Z_D/i_pipe/first_q [2]),
        .I4(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[1].SKEW_DIST_DEL.DEL_DIST/i_pipe/first_q [1]),
        .I5(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[0].DEL_Z_D/i_pipe/first_q [0]),
        .O(\n_0_opt_has_pipe.first_q[0]_i_1__5 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \opt_has_pipe.first_q[0]_i_1__6 
       (.I0(\FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/first_q [20]),
        .I1(\FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/first_q [12]),
        .I2(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DIST_DEL/DEL/i_pipe/first_q [2]),
        .I3(\FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/first_q [16]),
        .I4(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DIST_DEL/DEL/i_pipe/first_q [3]),
        .I5(\FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/first_q [8]),
        .O(\n_0_opt_has_pipe.first_q[0]_i_1__6 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \opt_has_pipe.first_q[0]_i_1__7 
       (.I0(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [3]),
        .I1(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [1]),
        .I2(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].SKEW_DIST_DEL.DEL_DIST/i_pipe/first_q [0]),
        .I3(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [2]),
        .I4(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].SKEW_DIST_DEL.DEL_DIST/i_pipe/first_q [1]),
        .I5(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [0]),
        .O(\n_0_opt_has_pipe.first_q[0]_i_1__7 ));
(* SOFT_HLUTNM = "soft_lutpair27" *) 
   LUT3 #(
    .INIT(8'h10)) 
     \opt_has_pipe.first_q[0]_i_1__8 
       (.I0(p_2_out[30]),
        .I1(p_2_out[23]),
        .I2(\n_0_opt_has_pipe.first_q[0]_i_2__1 ),
        .O(\n_0_opt_has_pipe.first_q[0]_i_1__8 ));
(* SOFT_HLUTNM = "soft_lutpair27" *) 
   LUT3 #(
    .INIT(8'h80)) 
     \opt_has_pipe.first_q[0]_i_1__9 
       (.I0(p_2_out[30]),
        .I1(p_2_out[23]),
        .I2(\n_0_opt_has_pipe.first_q[0]_i_2__2 ),
        .O(\n_0_opt_has_pipe.first_q[0]_i_1__9 ));
LUT2 #(
    .INIT(4'h7)) 
     \opt_has_pipe.first_q[0]_i_2 
       (.I0(\FLT_TO_FIX_OP.SPD.OP/COND_DET/EXP_DET_LUT.EXP_ALL_ONE_DEL/i_pipe/first_q ),
        .I1(\FLT_TO_FIX_OP.SPD.OP/A_MANT_ALL_ZERO_P0_DEL/i_pipe/first_q ),
        .O(\n_0_opt_has_pipe.first_q[0]_i_2 ));
LUT5 #(
    .INIT(32'h8F808080)) 
     \opt_has_pipe.first_q[0]_i_2__0 
       (.I0(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/p_0_in10_in ),
        .I1(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[0].DEL_Z_D/i_pipe/first_q [3]),
        .I2(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[1].SKEW_DIST_DEL.DEL_DIST/i_pipe/first_q [1]),
        .I3(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/p_0_in16_in ),
        .I4(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[0].DEL_Z_D/i_pipe/first_q [1]),
        .O(\n_0_opt_has_pipe.first_q[0]_i_2__0 ));
LUT6 #(
    .INIT(64'h0000000000000001)) 
     \opt_has_pipe.first_q[0]_i_2__1 
       (.I0(p_2_out[26]),
        .I1(p_2_out[27]),
        .I2(p_2_out[24]),
        .I3(p_2_out[25]),
        .I4(p_2_out[28]),
        .I5(p_2_out[29]),
        .O(\n_0_opt_has_pipe.first_q[0]_i_2__1 ));
LUT6 #(
    .INIT(64'h8000000000000000)) 
     \opt_has_pipe.first_q[0]_i_2__2 
       (.I0(p_2_out[26]),
        .I1(p_2_out[27]),
        .I2(p_2_out[24]),
        .I3(p_2_out[25]),
        .I4(p_2_out[28]),
        .I5(p_2_out[29]),
        .O(\n_0_opt_has_pipe.first_q[0]_i_2__2 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
     \opt_has_pipe.first_q[0]_i_2__3 
       (.I0(p_2_out[2]),
        .I1(p_2_out[1]),
        .I2(p_2_out[5]),
        .I3(p_2_out[6]),
        .I4(p_2_out[3]),
        .I5(p_2_out[4]),
        .O(\n_0_opt_has_pipe.first_q[0]_i_2__3 ));
LUT4 #(
    .INIT(16'h0070)) 
     \opt_has_pipe.first_q[0]_i_3 
       (.I0(\FLT_TO_FIX_OP.SPD.OP/A_MANT_ALL_ZERO_P0_DEL/i_pipe/first_q ),
        .I1(\FLT_TO_FIX_OP.SPD.OP/COND_DET/EXP_DET_LUT.EXP_ALL_ZERO_DEL/i_pipe/first_q ),
        .I2(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DIST_DEL/DEL/i_pipe/first_q [9]),
        .I3(\FLT_TO_FIX_OP.SPD.OP/COND_DET/EXP_DET_LUT.EXP_ALL_ONE_DEL/i_pipe/first_q ),
        .O(\n_0_opt_has_pipe.first_q[0]_i_3 ));
LUT5 #(
    .INIT(32'h01000000)) 
     \opt_has_pipe.first_q[0]_i_3__0 
       (.I0(p_2_out[8]),
        .I1(p_2_out[9]),
        .I2(p_2_out[10]),
        .I3(\n_0_opt_has_pipe.first_q[0]_i_4__1 ),
        .I4(\n_0_opt_has_pipe.first_q[0]_i_5__0 ),
        .O(\n_0_opt_has_pipe.first_q[0]_i_3__0 ));
LUT1 #(
    .INIT(2'h2)) 
     \opt_has_pipe.first_q[0]_i_3__1 
       (.I0(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DIST_DEL/DEL/i_pipe/first_q [9]),
        .O(\n_0_opt_has_pipe.first_q[0]_i_3__1 ));
LUT3 #(
    .INIT(8'h80)) 
     \opt_has_pipe.first_q[0]_i_4 
       (.I0(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DIST_DEL/DEL/i_pipe/first_q [7]),
        .I1(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DIST_DEL/DEL/i_pipe/first_q [6]),
        .I2(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DIST_DEL/DEL/i_pipe/first_q [8]),
        .O(\n_0_opt_has_pipe.first_q[0]_i_4 ));
LUT5 #(
    .INIT(32'hFFF4C4F4)) 
     \opt_has_pipe.first_q[0]_i_4__0 
       (.I0(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DIST_DEL/DEL/i_pipe/first_q [9]),
        .I1(\n_0_opt_has_pipe.first_q[1]_i_2__0 ),
        .I2(\FLT_TO_FIX_OP.SPD.OP/COND_DET/EXP_DET_LUT.EXP_ALL_ONE_DEL/i_pipe/first_q ),
        .I3(\FLT_TO_FIX_OP.SPD.OP/A_MANT_ALL_ZERO_P0_DEL/i_pipe/first_q ),
        .I4(\FLT_TO_FIX_OP.SPD.OP/COND_DET/EXP_DET_LUT.EXP_ALL_ZERO_DEL/i_pipe/first_q ),
        .O(\n_0_opt_has_pipe.first_q[0]_i_4__0 ));
LUT6 #(
    .INIT(64'h0000000000000001)) 
     \opt_has_pipe.first_q[0]_i_4__1 
       (.I0(p_2_out[18]),
        .I1(p_2_out[17]),
        .I2(p_2_out[21]),
        .I3(p_2_out[22]),
        .I4(p_2_out[19]),
        .I5(p_2_out[20]),
        .O(\n_0_opt_has_pipe.first_q[0]_i_4__1 ));
LUT3 #(
    .INIT(8'h80)) 
     \opt_has_pipe.first_q[0]_i_5 
       (.I0(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DIST_DEL/DEL/i_pipe/first_q [4]),
        .I1(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DIST_DEL/DEL/i_pipe/first_q [3]),
        .I2(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DIST_DEL/DEL/i_pipe/first_q [5]),
        .O(\n_0_opt_has_pipe.first_q[0]_i_5 ));
LUT6 #(
    .INIT(64'h0000000000000001)) 
     \opt_has_pipe.first_q[0]_i_5__0 
       (.I0(p_2_out[12]),
        .I1(p_2_out[11]),
        .I2(p_2_out[15]),
        .I3(p_2_out[16]),
        .I4(p_2_out[13]),
        .I5(p_2_out[14]),
        .O(\n_0_opt_has_pipe.first_q[0]_i_5__0 ));
LUT3 #(
    .INIT(8'h80)) 
     \opt_has_pipe.first_q[0]_i_6 
       (.I0(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DIST_DEL/DEL/i_pipe/first_q [1]),
        .I1(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DIST_DEL/DEL/i_pipe/first_q [0]),
        .I2(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DIST_DEL/DEL/i_pipe/first_q [2]),
        .O(\n_0_opt_has_pipe.first_q[0]_i_6 ));
LUT4 #(
    .INIT(16'h00E2)) 
     \opt_has_pipe.first_q[10]_i_1 
       (.I0(\FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/first_q [18]),
        .I1(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DIST_DEL/DEL/i_pipe/first_q [2]),
        .I2(\FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/first_q [22]),
        .I3(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DIST_DEL/DEL/i_pipe/first_q [3]),
        .O(\n_0_opt_has_pipe.first_q[10]_i_1 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \opt_has_pipe.first_q[10]_i_1__0 
       (.I0(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [13]),
        .I1(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [11]),
        .I2(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].SKEW_DIST_DEL.DEL_DIST/i_pipe/first_q [0]),
        .I3(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [12]),
        .I4(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].SKEW_DIST_DEL.DEL_DIST/i_pipe/first_q [1]),
        .I5(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [10]),
        .O(\n_0_opt_has_pipe.first_q[10]_i_1__0 ));
LUT3 #(
    .INIT(8'h0E)) 
     \opt_has_pipe.first_q[11]_i_1 
       (.I0(\FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/first_q [19]),
        .I1(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DIST_DEL/DEL/i_pipe/first_q [2]),
        .I2(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DIST_DEL/DEL/i_pipe/first_q [3]),
        .O(\n_0_opt_has_pipe.first_q[11]_i_1 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \opt_has_pipe.first_q[11]_i_1__0 
       (.I0(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [14]),
        .I1(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [12]),
        .I2(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].SKEW_DIST_DEL.DEL_DIST/i_pipe/first_q [0]),
        .I3(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [13]),
        .I4(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].SKEW_DIST_DEL.DEL_DIST/i_pipe/first_q [1]),
        .I5(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [11]),
        .O(\n_0_opt_has_pipe.first_q[11]_i_1__0 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \opt_has_pipe.first_q[12]_i_1 
       (.I0(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [15]),
        .I1(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [13]),
        .I2(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].SKEW_DIST_DEL.DEL_DIST/i_pipe/first_q [0]),
        .I3(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [14]),
        .I4(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].SKEW_DIST_DEL.DEL_DIST/i_pipe/first_q [1]),
        .I5(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [12]),
        .O(\n_0_opt_has_pipe.first_q[12]_i_1 ));
LUT3 #(
    .INIT(8'h04)) 
     \opt_has_pipe.first_q[12]_i_1__0 
       (.I0(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DIST_DEL/DEL/i_pipe/first_q [3]),
        .I1(\FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/first_q [20]),
        .I2(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DIST_DEL/DEL/i_pipe/first_q [2]),
        .O(\n_0_opt_has_pipe.first_q[12]_i_1__0 ));
LUT5 #(
    .INIT(32'h30BB3088)) 
     \opt_has_pipe.first_q[13]_i_1 
       (.I0(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [14]),
        .I1(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].SKEW_DIST_DEL.DEL_DIST/i_pipe/first_q [0]),
        .I2(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [15]),
        .I3(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].SKEW_DIST_DEL.DEL_DIST/i_pipe/first_q [1]),
        .I4(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [13]),
        .O(\n_0_opt_has_pipe.first_q[13]_i_1 ));
LUT3 #(
    .INIT(8'h04)) 
     \opt_has_pipe.first_q[13]_i_1__0 
       (.I0(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DIST_DEL/DEL/i_pipe/first_q [3]),
        .I1(\FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/first_q [21]),
        .I2(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DIST_DEL/DEL/i_pipe/first_q [2]),
        .O(\n_0_opt_has_pipe.first_q[13]_i_1__0 ));
LUT4 #(
    .INIT(16'h00E2)) 
     \opt_has_pipe.first_q[14]_i_1 
       (.I0(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [14]),
        .I1(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].SKEW_DIST_DEL.DEL_DIST/i_pipe/first_q [0]),
        .I2(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [15]),
        .I3(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].SKEW_DIST_DEL.DEL_DIST/i_pipe/first_q [1]),
        .O(\n_0_opt_has_pipe.first_q[14]_i_1 ));
LUT3 #(
    .INIT(8'h04)) 
     \opt_has_pipe.first_q[14]_i_1__0 
       (.I0(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DIST_DEL/DEL/i_pipe/first_q [3]),
        .I1(\FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/first_q [22]),
        .I2(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DIST_DEL/DEL/i_pipe/first_q [2]),
        .O(\n_0_opt_has_pipe.first_q[14]_i_1__0 ));
LUT2 #(
    .INIT(4'h1)) 
     \opt_has_pipe.first_q[15]_i_1 
       (.I0(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DIST_DEL/DEL/i_pipe/first_q [2]),
        .I1(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DIST_DEL/DEL/i_pipe/first_q [3]),
        .O(\n_0_opt_has_pipe.first_q[15]_i_1 ));
LUT3 #(
    .INIT(8'h04)) 
     \opt_has_pipe.first_q[15]_i_1__0 
       (.I0(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].SKEW_DIST_DEL.DEL_DIST/i_pipe/first_q [0]),
        .I1(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [15]),
        .I2(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].SKEW_DIST_DEL.DEL_DIST/i_pipe/first_q [1]),
        .O(\n_0_opt_has_pipe.first_q[15]_i_1__0 ));
LUT5 #(
    .INIT(32'h000755FF)) 
     \opt_has_pipe.first_q[1]_i_1 
       (.I0(\FLT_TO_FIX_OP.SPD.OP/ZERO_DET_DIST_DEL/DEL/i_pipe/first_q [0]),
        .I1(\FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/first_q [6]),
        .I2(\FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/first_q [5]),
        .I3(\FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/first_q [4]),
        .I4(\FLT_TO_FIX_OP.SPD.OP/ZERO_DET_DIST_DEL/DEL/i_pipe/first_q [1]),
        .O(\n_0_opt_has_pipe.first_q[1]_i_1 ));
LUT6 #(
    .INIT(64'hB888FFFFB8880000)) 
     \opt_has_pipe.first_q[1]_i_1__0 
       (.I0(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[0].DEL_Z_D/i_pipe/first_q [7]),
        .I1(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[1].SKEW_DIST_DEL.DEL_DIST/i_pipe/first_q [1]),
        .I2(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/p_0_in7_in ),
        .I3(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[0].DEL_Z_D/i_pipe/first_q [5]),
        .I4(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[1].SKEW_DIST_DEL.DEL_DIST/i_pipe/first_q [0]),
        .I5(\n_0_opt_has_pipe.first_q[1]_i_2 ),
        .O(\n_0_opt_has_pipe.first_q[1]_i_1__0 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \opt_has_pipe.first_q[1]_i_1__1 
       (.I0(\FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/first_q [21]),
        .I1(\FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/first_q [13]),
        .I2(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DIST_DEL/DEL/i_pipe/first_q [2]),
        .I3(\FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/first_q [17]),
        .I4(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DIST_DEL/DEL/i_pipe/first_q [3]),
        .I5(\FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/first_q [9]),
        .O(\n_0_opt_has_pipe.first_q[1]_i_1__1 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \opt_has_pipe.first_q[1]_i_1__2 
       (.I0(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [4]),
        .I1(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [2]),
        .I2(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].SKEW_DIST_DEL.DEL_DIST/i_pipe/first_q [0]),
        .I3(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [3]),
        .I4(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].SKEW_DIST_DEL.DEL_DIST/i_pipe/first_q [1]),
        .I5(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [1]),
        .O(\n_0_opt_has_pipe.first_q[1]_i_1__2 ));
LUT5 #(
    .INIT(32'h02220EEE)) 
     \opt_has_pipe.first_q[1]_i_1__3 
       (.I0(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DIST_DEL/DEL/i_pipe/first_q [9]),
        .I1(\FLT_TO_FIX_OP.SPD.OP/COND_DET/EXP_DET_LUT.EXP_ALL_ONE_DEL/i_pipe/first_q ),
        .I2(\FLT_TO_FIX_OP.SPD.OP/A_MANT_ALL_ZERO_P0_DEL/i_pipe/first_q ),
        .I3(\FLT_TO_FIX_OP.SPD.OP/COND_DET/EXP_DET_LUT.EXP_ALL_ZERO_DEL/i_pipe/first_q ),
        .I4(\n_0_opt_has_pipe.first_q[1]_i_2__0 ),
        .O(\n_0_opt_has_pipe.first_q[1]_i_1__3 ));
LUT5 #(
    .INIT(32'h8F808080)) 
     \opt_has_pipe.first_q[1]_i_2 
       (.I0(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/p_0_in4_in ),
        .I1(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[0].DEL_Z_D/i_pipe/first_q [6]),
        .I2(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[1].SKEW_DIST_DEL.DEL_DIST/i_pipe/first_q [1]),
        .I3(\n_0_FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/EQ_ZERO/CARRY_ZERO_DET/CHAIN_GEN[3].CARRYS_DEL.NEED_DEL.CARRYS_FD ),
        .I4(\FLT_TO_FIX_OP.SPD.OP/ALIGN_Z_D/MUX_LOOP[0].DEL_Z_D/i_pipe/first_q [4]),
        .O(\n_0_opt_has_pipe.first_q[1]_i_2 ));
LUT6 #(
    .INIT(64'h5555555555555554)) 
     \opt_has_pipe.first_q[1]_i_2__0 
       (.I0(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DIST_DEL/DEL/i_pipe/first_q [9]),
        .I1(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DIST_DEL/DEL/i_pipe/first_q [7]),
        .I2(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DIST_DEL/DEL/i_pipe/first_q [5]),
        .I3(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DIST_DEL/DEL/i_pipe/first_q [6]),
        .I4(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DIST_DEL/DEL/i_pipe/first_q [8]),
        .I5(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DIST_DEL/DEL/i_pipe/first_q [4]),
        .O(\n_0_opt_has_pipe.first_q[1]_i_2__0 ));
LUT5 #(
    .INIT(32'h99F99909)) 
     \opt_has_pipe.first_q[2]_i_1 
       (.I0(p_2_out[24]),
        .I1(p_2_out[25]),
        .I2(m_axis_result_tvalid),
        .I3(m_axis_result_tready),
        .I4(\FLT_TO_FIX_OP.SPD.OP/ZERO_DET_DIST_DEL/DEL/i_pipe/first_q [2]),
        .O(\n_0_opt_has_pipe.first_q[2]_i_1 ));
LUT5 #(
    .INIT(32'hC3C3AAC3)) 
     \opt_has_pipe.first_q[2]_i_1__0 
       (.I0(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DIST_DEL/DEL/i_pipe/first_q [2]),
        .I1(p_2_out[24]),
        .I2(p_2_out[25]),
        .I3(m_axis_result_tvalid),
        .I4(m_axis_result_tready),
        .O(\n_0_opt_has_pipe.first_q[2]_i_1__0 ));
LUT5 #(
    .INIT(32'h000755FF)) 
     \opt_has_pipe.first_q[2]_i_1__1 
       (.I0(\FLT_TO_FIX_OP.SPD.OP/ZERO_DET_DIST_DEL/DEL/i_pipe/first_q [0]),
        .I1(\FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/first_q [10]),
        .I2(\FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/first_q [9]),
        .I3(\FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/first_q [8]),
        .I4(\FLT_TO_FIX_OP.SPD.OP/ZERO_DET_DIST_DEL/DEL/i_pipe/first_q [1]),
        .O(\n_0_opt_has_pipe.first_q[2]_i_1__1 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \opt_has_pipe.first_q[2]_i_1__2 
       (.I0(\FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/first_q [22]),
        .I1(\FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/first_q [14]),
        .I2(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DIST_DEL/DEL/i_pipe/first_q [2]),
        .I3(\FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/first_q [18]),
        .I4(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DIST_DEL/DEL/i_pipe/first_q [3]),
        .I5(\FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/first_q [10]),
        .O(\n_0_opt_has_pipe.first_q[2]_i_1__2 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \opt_has_pipe.first_q[2]_i_1__3 
       (.I0(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [5]),
        .I1(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [3]),
        .I2(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].SKEW_DIST_DEL.DEL_DIST/i_pipe/first_q [0]),
        .I3(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [4]),
        .I4(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].SKEW_DIST_DEL.DEL_DIST/i_pipe/first_q [1]),
        .I5(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [2]),
        .O(\n_0_opt_has_pipe.first_q[2]_i_1__3 ));
LUT6 #(
    .INIT(64'h6A6AFF6A6A6A006A)) 
     \opt_has_pipe.first_q[3]_i_1 
       (.I0(p_2_out[26]),
        .I1(p_2_out[25]),
        .I2(p_2_out[24]),
        .I3(m_axis_result_tvalid),
        .I4(m_axis_result_tready),
        .I5(\FLT_TO_FIX_OP.SPD.OP/ZERO_DET_DIST_DEL/DEL/i_pipe/first_q [3]),
        .O(\n_0_opt_has_pipe.first_q[3]_i_1 ));
LUT5 #(
    .INIT(32'h000755FF)) 
     \opt_has_pipe.first_q[3]_i_1__0 
       (.I0(\FLT_TO_FIX_OP.SPD.OP/ZERO_DET_DIST_DEL/DEL/i_pipe/first_q [0]),
        .I1(\FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/first_q [14]),
        .I2(\FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/first_q [13]),
        .I3(\FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/first_q [12]),
        .I4(\FLT_TO_FIX_OP.SPD.OP/ZERO_DET_DIST_DEL/DEL/i_pipe/first_q [1]),
        .O(\n_0_opt_has_pipe.first_q[3]_i_1__0 ));
LUT5 #(
    .INIT(32'hFFE2CCE2)) 
     \opt_has_pipe.first_q[3]_i_1__1 
       (.I0(\FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/first_q [11]),
        .I1(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DIST_DEL/DEL/i_pipe/first_q [2]),
        .I2(\FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/first_q [15]),
        .I3(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DIST_DEL/DEL/i_pipe/first_q [3]),
        .I4(\FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/first_q [19]),
        .O(\n_0_opt_has_pipe.first_q[3]_i_1__1 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \opt_has_pipe.first_q[3]_i_1__2 
       (.I0(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [6]),
        .I1(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [4]),
        .I2(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].SKEW_DIST_DEL.DEL_DIST/i_pipe/first_q [0]),
        .I3(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [5]),
        .I4(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].SKEW_DIST_DEL.DEL_DIST/i_pipe/first_q [1]),
        .I5(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [3]),
        .O(\n_0_opt_has_pipe.first_q[3]_i_1__2 ));
(* SOFT_HLUTNM = "soft_lutpair26" *) 
   LUT3 #(
    .INIT(8'h95)) 
     \opt_has_pipe.first_q[3]_i_1__3 
       (.I0(p_2_out[26]),
        .I1(p_2_out[25]),
        .I2(p_2_out[24]),
        .O(\n_0_opt_has_pipe.first_q[3]_i_1__3 ));
LUT5 #(
    .INIT(32'h000755FF)) 
     \opt_has_pipe.first_q[4]_i_1 
       (.I0(\FLT_TO_FIX_OP.SPD.OP/ZERO_DET_DIST_DEL/DEL/i_pipe/first_q [0]),
        .I1(\FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/first_q [18]),
        .I2(\FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/first_q [17]),
        .I3(\FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/first_q [16]),
        .I4(\FLT_TO_FIX_OP.SPD.OP/ZERO_DET_DIST_DEL/DEL/i_pipe/first_q [1]),
        .O(\n_0_opt_has_pipe.first_q[4]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair3" *) 
   LUT4 #(
    .INIT(16'h6AAA)) 
     \opt_has_pipe.first_q[4]_i_1__0 
       (.I0(p_2_out[27]),
        .I1(p_2_out[26]),
        .I2(p_2_out[24]),
        .I3(p_2_out[25]),
        .O(\n_0_opt_has_pipe.first_q[4]_i_1__0 ));
(* SOFT_HLUTNM = "soft_lutpair3" *) 
   LUT4 #(
    .INIT(16'hAA95)) 
     \opt_has_pipe.first_q[4]_i_1__1 
       (.I0(p_2_out[27]),
        .I1(p_2_out[24]),
        .I2(p_2_out[25]),
        .I3(p_2_out[26]),
        .O(\n_0_opt_has_pipe.first_q[4]_i_1__1 ));
LUT5 #(
    .INIT(32'h30BB3088)) 
     \opt_has_pipe.first_q[4]_i_1__2 
       (.I0(\FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/first_q [16]),
        .I1(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DIST_DEL/DEL/i_pipe/first_q [2]),
        .I2(\FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/first_q [20]),
        .I3(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DIST_DEL/DEL/i_pipe/first_q [3]),
        .I4(\FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/first_q [12]),
        .O(\n_0_opt_has_pipe.first_q[4]_i_1__2 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \opt_has_pipe.first_q[4]_i_1__3 
       (.I0(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [7]),
        .I1(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [5]),
        .I2(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].SKEW_DIST_DEL.DEL_DIST/i_pipe/first_q [0]),
        .I3(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [6]),
        .I4(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].SKEW_DIST_DEL.DEL_DIST/i_pipe/first_q [1]),
        .I5(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [4]),
        .O(\n_0_opt_has_pipe.first_q[4]_i_1__3 ));
(* SOFT_HLUTNM = "soft_lutpair1" *) 
   LUT5 #(
    .INIT(32'h5666AAAA)) 
     \opt_has_pipe.first_q[5]_i_1 
       (.I0(p_2_out[28]),
        .I1(p_2_out[26]),
        .I2(p_2_out[25]),
        .I3(p_2_out[24]),
        .I4(p_2_out[27]),
        .O(\n_0_opt_has_pipe.first_q[5]_i_1 ));
LUT5 #(
    .INIT(32'h00157777)) 
     \opt_has_pipe.first_q[5]_i_1__0 
       (.I0(\FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/first_q [20]),
        .I1(\FLT_TO_FIX_OP.SPD.OP/ZERO_DET_DIST_DEL/DEL/i_pipe/first_q [0]),
        .I2(\FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/first_q [22]),
        .I3(\FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/first_q [21]),
        .I4(\FLT_TO_FIX_OP.SPD.OP/ZERO_DET_DIST_DEL/DEL/i_pipe/first_q [1]),
        .O(\n_0_opt_has_pipe.first_q[5]_i_1__0 ));
LUT5 #(
    .INIT(32'h30BB3088)) 
     \opt_has_pipe.first_q[5]_i_1__1 
       (.I0(\FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/first_q [17]),
        .I1(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DIST_DEL/DEL/i_pipe/first_q [2]),
        .I2(\FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/first_q [21]),
        .I3(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DIST_DEL/DEL/i_pipe/first_q [3]),
        .I4(\FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/first_q [13]),
        .O(\n_0_opt_has_pipe.first_q[5]_i_1__1 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \opt_has_pipe.first_q[5]_i_1__2 
       (.I0(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [8]),
        .I1(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [6]),
        .I2(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].SKEW_DIST_DEL.DEL_DIST/i_pipe/first_q [0]),
        .I3(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [7]),
        .I4(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].SKEW_DIST_DEL.DEL_DIST/i_pipe/first_q [1]),
        .I5(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [5]),
        .O(\n_0_opt_has_pipe.first_q[5]_i_1__2 ));
(* SOFT_HLUTNM = "soft_lutpair1" *) 
   LUT5 #(
    .INIT(32'h55556AAA)) 
     \opt_has_pipe.first_q[5]_i_1__3 
       (.I0(p_2_out[28]),
        .I1(p_2_out[25]),
        .I2(p_2_out[24]),
        .I3(p_2_out[26]),
        .I4(p_2_out[27]),
        .O(\n_0_opt_has_pipe.first_q[5]_i_1__3 ));
LUT5 #(
    .INIT(32'h30BB3088)) 
     \opt_has_pipe.first_q[6]_i_1 
       (.I0(\FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/first_q [18]),
        .I1(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DIST_DEL/DEL/i_pipe/first_q [2]),
        .I2(\FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/first_q [22]),
        .I3(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DIST_DEL/DEL/i_pipe/first_q [3]),
        .I4(\FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/first_q [14]),
        .O(\n_0_opt_has_pipe.first_q[6]_i_1 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \opt_has_pipe.first_q[6]_i_1__0 
       (.I0(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [9]),
        .I1(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [7]),
        .I2(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].SKEW_DIST_DEL.DEL_DIST/i_pipe/first_q [0]),
        .I3(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [8]),
        .I4(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].SKEW_DIST_DEL.DEL_DIST/i_pipe/first_q [1]),
        .I5(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [6]),
        .O(\n_0_opt_has_pipe.first_q[6]_i_1__0 ));
LUT6 #(
    .INIT(64'h5556565656565656)) 
     \opt_has_pipe.first_q[6]_i_1__1 
       (.I0(p_2_out[29]),
        .I1(p_2_out[28]),
        .I2(p_2_out[27]),
        .I3(p_2_out[26]),
        .I4(p_2_out[24]),
        .I5(p_2_out[25]),
        .O(\n_0_opt_has_pipe.first_q[6]_i_1__1 ));
LUT6 #(
    .INIT(64'h5555555566666AAA)) 
     \opt_has_pipe.first_q[6]_i_1__2 
       (.I0(p_2_out[29]),
        .I1(p_2_out[27]),
        .I2(p_2_out[24]),
        .I3(p_2_out[25]),
        .I4(p_2_out[26]),
        .I5(p_2_out[28]),
        .O(\n_0_opt_has_pipe.first_q[6]_i_1__2 ));
LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA999)) 
     \opt_has_pipe.first_q[7]_i_1 
       (.I0(p_2_out[30]),
        .I1(p_2_out[29]),
        .I2(\n_0_opt_has_pipe.first_q[9]_i_2 ),
        .I3(p_2_out[26]),
        .I4(p_2_out[27]),
        .I5(p_2_out[28]),
        .O(\n_0_opt_has_pipe.first_q[7]_i_1 ));
LUT6 #(
    .INIT(64'hAAAAAAA9A9A9A9A9)) 
     \opt_has_pipe.first_q[7]_i_1__0 
       (.I0(p_2_out[30]),
        .I1(p_2_out[29]),
        .I2(p_2_out[28]),
        .I3(p_2_out[26]),
        .I4(\n_0_opt_has_pipe.first_q[9]_i_2 ),
        .I5(p_2_out[27]),
        .O(\n_0_opt_has_pipe.first_q[7]_i_1__0 ));
LUT4 #(
    .INIT(16'h33B8)) 
     \opt_has_pipe.first_q[7]_i_1__1 
       (.I0(\FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/first_q [19]),
        .I1(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DIST_DEL/DEL/i_pipe/first_q [2]),
        .I2(\FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/first_q [15]),
        .I3(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DIST_DEL/DEL/i_pipe/first_q [3]),
        .O(\n_0_opt_has_pipe.first_q[7]_i_1__1 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \opt_has_pipe.first_q[7]_i_1__2 
       (.I0(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [10]),
        .I1(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [8]),
        .I2(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].SKEW_DIST_DEL.DEL_DIST/i_pipe/first_q [0]),
        .I3(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [9]),
        .I4(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].SKEW_DIST_DEL.DEL_DIST/i_pipe/first_q [1]),
        .I5(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [7]),
        .O(\n_0_opt_has_pipe.first_q[7]_i_1__2 ));
LUT4 #(
    .INIT(16'h00E2)) 
     \opt_has_pipe.first_q[8]_i_1 
       (.I0(\FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/first_q [16]),
        .I1(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DIST_DEL/DEL/i_pipe/first_q [2]),
        .I2(\FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/first_q [20]),
        .I3(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DIST_DEL/DEL/i_pipe/first_q [3]),
        .O(\n_0_opt_has_pipe.first_q[8]_i_1 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \opt_has_pipe.first_q[8]_i_1__0 
       (.I0(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [11]),
        .I1(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [9]),
        .I2(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].SKEW_DIST_DEL.DEL_DIST/i_pipe/first_q [0]),
        .I3(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [10]),
        .I4(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].SKEW_DIST_DEL.DEL_DIST/i_pipe/first_q [1]),
        .I5(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [8]),
        .O(\n_0_opt_has_pipe.first_q[8]_i_1__0 ));
LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA888)) 
     \opt_has_pipe.first_q[9]_i_1 
       (.I0(p_2_out[30]),
        .I1(p_2_out[29]),
        .I2(\n_0_opt_has_pipe.first_q[9]_i_2 ),
        .I3(p_2_out[26]),
        .I4(p_2_out[27]),
        .I5(p_2_out[28]),
        .O(\n_0_opt_has_pipe.first_q[9]_i_1 ));
LUT6 #(
    .INIT(64'hAAAAAAA8A8A8A8A8)) 
     \opt_has_pipe.first_q[9]_i_1__0 
       (.I0(p_2_out[30]),
        .I1(p_2_out[29]),
        .I2(p_2_out[28]),
        .I3(p_2_out[26]),
        .I4(\n_0_opt_has_pipe.first_q[9]_i_2 ),
        .I5(p_2_out[27]),
        .O(\n_0_opt_has_pipe.first_q[9]_i_1__0 ));
LUT4 #(
    .INIT(16'h00E2)) 
     \opt_has_pipe.first_q[9]_i_1__1 
       (.I0(\FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/first_q [17]),
        .I1(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DIST_DEL/DEL/i_pipe/first_q [2]),
        .I2(\FLT_TO_FIX_OP.SPD.OP/MANT_P0_REG/i_pipe/first_q [21]),
        .I3(\FLT_TO_FIX_OP.SPD.OP/ALIGN_DIST_DEL/DEL/i_pipe/first_q [3]),
        .O(\n_0_opt_has_pipe.first_q[9]_i_1__1 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \opt_has_pipe.first_q[9]_i_1__2 
       (.I0(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [12]),
        .I1(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [10]),
        .I2(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].SKEW_DIST_DEL.DEL_DIST/i_pipe/first_q [0]),
        .I3(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [11]),
        .I4(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[1].SKEW_DIST_DEL.DEL_DIST/i_pipe/first_q [1]),
        .I5(\FLT_TO_FIX_OP.SPD.OP/ALIGN_SHIFT/MUX_LOOP[0].DEL_SHIFT/i_pipe/first_q [9]),
        .O(\n_0_opt_has_pipe.first_q[9]_i_1__2 ));
(* SOFT_HLUTNM = "soft_lutpair26" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \opt_has_pipe.first_q[9]_i_2 
       (.I0(p_2_out[24]),
        .I1(p_2_out[25]),
        .O(\n_0_opt_has_pipe.first_q[9]_i_2 ));
CARRY4 \opt_has_pipe.first_q_reg[0]_i_2 
       (.CI(\<const0> ),
        .CO({\FLT_TO_FIX_OP.SPD.OP/overflow_p1_updated2 ,\n_1_opt_has_pipe.first_q_reg[0]_i_2 ,\n_2_opt_has_pipe.first_q_reg[0]_i_2 ,\n_3_opt_has_pipe.first_q_reg[0]_i_2 }),
        .CYINIT(\<const1> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(\NLW_opt_has_pipe.first_q_reg[0]_i_2_O_UNCONNECTED [3:0]),
        .S({\n_0_opt_has_pipe.first_q[0]_i_3__1 ,\n_0_opt_has_pipe.first_q[0]_i_4 ,\n_0_opt_has_pipe.first_q[0]_i_5 ,\n_0_opt_has_pipe.first_q[0]_i_6 }));
LUT2 #(
    .INIT(4'hB)) 
     \opt_has_pipe.i_pipe[6].pipe[6][0]_i_1 
       (.I0(m_axis_result_tready),
        .I1(m_axis_result_tvalid),
        .O(ce_internal_core));
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
