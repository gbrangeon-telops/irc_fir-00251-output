// Copyright 1986-1999, 2001-2013 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2013.4 (win64) Build 353583 Mon Dec  9 17:49:19 MST 2013
// Date        : Wed May 29 14:03:53 2019
// Host        : TELOPSX running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode synth_stub d:/Telops/FIR-00251-Output/IP/2013/160/v_scaler_0/v_scaler_0_stub.v
// Design      : v_scaler_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k160tfbg676-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module v_scaler_0(s_axis_video_aclk, core_clk, m_axis_video_aclk, s_axis_video_tdata, s_axis_video_tready, s_axis_video_aresetn, s_axis_video_tvalid, s_axis_video_tlast, s_axis_video_tuser, m_axis_video_tdata, m_axis_video_tvalid, m_axis_video_tready, m_axis_video_aresetn, m_axis_video_tlast, m_axis_video_tuser, irq, core_aresetn, s_axi_awaddr, s_axi_aclk, s_axi_aresetn, s_axi_awvalid, s_axi_awready, s_axi_wdata, s_axi_wstrb, s_axi_wvalid, s_axi_wready, s_axi_bresp, s_axi_bvalid, s_axi_bready, s_axi_araddr, s_axi_arvalid, s_axi_arready, s_axi_rdata, s_axi_rresp, s_axi_rvalid, s_axi_rready)
/* synthesis syn_black_box black_box_pad_pin="s_axis_video_aclk,core_clk,m_axis_video_aclk,s_axis_video_tdata[23:0],s_axis_video_tready,s_axis_video_aresetn,s_axis_video_tvalid,s_axis_video_tlast,s_axis_video_tuser,m_axis_video_tdata[23:0],m_axis_video_tvalid,m_axis_video_tready,m_axis_video_aresetn,m_axis_video_tlast,m_axis_video_tuser,irq,core_aresetn,s_axi_awaddr[8:0],s_axi_aclk,s_axi_aresetn,s_axi_awvalid,s_axi_awready,s_axi_wdata[31:0],s_axi_wstrb[3:0],s_axi_wvalid,s_axi_wready,s_axi_bresp[1:0],s_axi_bvalid,s_axi_bready,s_axi_araddr[8:0],s_axi_arvalid,s_axi_arready,s_axi_rdata[31:0],s_axi_rresp[1:0],s_axi_rvalid,s_axi_rready" */;
  input s_axis_video_aclk;
  input core_clk;
  input m_axis_video_aclk;
  input [23:0]s_axis_video_tdata;
  output s_axis_video_tready;
  input s_axis_video_aresetn;
  input s_axis_video_tvalid;
  input s_axis_video_tlast;
  input s_axis_video_tuser;
  output [23:0]m_axis_video_tdata;
  output m_axis_video_tvalid;
  input m_axis_video_tready;
  input m_axis_video_aresetn;
  output m_axis_video_tlast;
  output m_axis_video_tuser;
  output irq;
  input core_aresetn;
  input [8:0]s_axi_awaddr;
  input s_axi_aclk;
  input s_axi_aresetn;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [8:0]s_axi_araddr;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
endmodule
