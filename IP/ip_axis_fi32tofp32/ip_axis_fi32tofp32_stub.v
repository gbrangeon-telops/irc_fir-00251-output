// Copyright 1986-1999, 2001-2013 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2013.4 (win64) Build 353583 Mon Dec  9 17:49:19 MST 2013
// Date        : Tue Nov 17 10:39:25 2015
// Host        : TELOPSX running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode synth_stub
//               d:/Telops/fir-00251-Output/IP/ip_axis_fi32tofp32/ip_axis_fi32tofp32_stub.v
// Design      : ip_axis_fi32tofp32
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k70tfbg676-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module ip_axis_fi32tofp32(aclk, aresetn, s_axis_a_tvalid, s_axis_a_tready, s_axis_a_tdata, s_axis_a_tuser, s_axis_a_tlast, m_axis_result_tvalid, m_axis_result_tready, m_axis_result_tdata, m_axis_result_tuser, m_axis_result_tlast)
/* synthesis syn_black_box black_box_pad_pin="aclk,aresetn,s_axis_a_tvalid,s_axis_a_tready,s_axis_a_tdata[31:0],s_axis_a_tuser[7:0],s_axis_a_tlast,m_axis_result_tvalid,m_axis_result_tready,m_axis_result_tdata[31:0],m_axis_result_tuser[7:0],m_axis_result_tlast" */;
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
endmodule
