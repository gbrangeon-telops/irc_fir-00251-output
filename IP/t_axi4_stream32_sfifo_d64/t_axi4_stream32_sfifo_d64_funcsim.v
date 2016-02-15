// Copyright 1986-1999, 2001-2013 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2013.4 (win64) Build 353583 Mon Dec  9 17:49:19 MST 2013
// Date        : Fri Nov 20 14:47:39 2015
// Host        : TELOPSX running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim
//               d:/Telops/fir-00251-Output/IP/t_axi4_stream32_sfifo_d64/t_axi4_stream32_sfifo_d64_funcsim.v
// Design      : t_axi4_stream32_sfifo_d64
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k70tfbg676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v11_0,Vivado 2013.4" *) (* CHECK_LICENSE_TYPE = "t_axi4_stream32_sfifo_d64,fifo_generator_v11_0,{}" *) 
(* core_generation_info = "t_axi4_stream32_sfifo_d64,fifo_generator_v11_0,{x_ipProduct=Vivado 2013.4,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=fifo_generator,x_ipVersion=11.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,C_COMMON_CLOCK=1,C_COUNT_TYPE=0,C_DATA_COUNT_WIDTH=10,C_DEFAULT_VALUE=BlankString,C_DIN_WIDTH=18,C_DOUT_RST_VAL=0,C_DOUT_WIDTH=18,C_ENABLE_RLOCS=0,C_FAMILY=kintex7,C_FULL_FLAGS_RST_VAL=1,C_HAS_ALMOST_EMPTY=0,C_HAS_ALMOST_FULL=0,C_HAS_BACKUP=0,C_HAS_DATA_COUNT=0,C_HAS_INT_CLK=0,C_HAS_MEMINIT_FILE=0,C_HAS_OVERFLOW=1,C_HAS_RD_DATA_COUNT=0,C_HAS_RD_RST=0,C_HAS_RST=1,C_HAS_SRST=0,C_HAS_UNDERFLOW=0,C_HAS_VALID=0,C_HAS_WR_ACK=0,C_HAS_WR_DATA_COUNT=0,C_HAS_WR_RST=0,C_IMPLEMENTATION_TYPE=0,C_INIT_WR_PNTR_VAL=0,C_MEMORY_TYPE=1,C_MIF_FILE_NAME=BlankString,C_OPTIMIZATION_MODE=0,C_OVERFLOW_LOW=0,C_PRELOAD_LATENCY=1,C_PRELOAD_REGS=0,C_PRIM_FIFO_TYPE=4kx4,C_PROG_EMPTY_THRESH_ASSERT_VAL=2,C_PROG_EMPTY_THRESH_NEGATE_VAL=3,C_PROG_EMPTY_TYPE=0,C_PROG_FULL_THRESH_ASSERT_VAL=1022,C_PROG_FULL_THRESH_NEGATE_VAL=1021,C_PROG_FULL_TYPE=0,C_RD_DATA_COUNT_WIDTH=10,C_RD_DEPTH=1024,C_RD_FREQ=1,C_RD_PNTR_WIDTH=10,C_UNDERFLOW_LOW=0,C_USE_DOUT_RST=1,C_USE_ECC=0,C_USE_EMBEDDED_REG=0,C_USE_FIFO16_FLAGS=0,C_USE_FWFT_DATA_COUNT=0,C_VALID_LOW=0,C_WR_ACK_LOW=0,C_WR_DATA_COUNT_WIDTH=10,C_WR_DEPTH=1024,C_WR_FREQ=1,C_WR_PNTR_WIDTH=10,C_WR_RESPONSE_LATENCY=1,C_MSGON_VAL=1,C_ENABLE_RST_SYNC=1,C_ERROR_INJECTION_TYPE=0,C_SYNCHRONIZER_STAGE=2,C_INTERFACE_TYPE=1,C_AXI_TYPE=1,C_HAS_AXI_WR_CHANNEL=1,C_HAS_AXI_RD_CHANNEL=1,C_HAS_SLAVE_CE=0,C_HAS_MASTER_CE=0,C_ADD_NGC_CONSTRAINT=0,C_USE_COMMON_OVERFLOW=0,C_USE_COMMON_UNDERFLOW=0,C_USE_DEFAULT_SETTINGS=0,C_AXI_ID_WIDTH=1,C_AXI_ADDR_WIDTH=32,C_AXI_DATA_WIDTH=64,C_HAS_AXI_AWUSER=0,C_HAS_AXI_WUSER=0,C_HAS_AXI_BUSER=0,C_HAS_AXI_ARUSER=0,C_HAS_AXI_RUSER=0,C_AXI_ARUSER_WIDTH=1,C_AXI_AWUSER_WIDTH=1,C_AXI_WUSER_WIDTH=1,C_AXI_BUSER_WIDTH=1,C_AXI_RUSER_WIDTH=1,C_HAS_AXI_ID=0,C_HAS_AXIS_TDATA=1,C_HAS_AXIS_TID=1,C_HAS_AXIS_TDEST=1,C_HAS_AXIS_TUSER=1,C_HAS_AXIS_TREADY=1,C_HAS_AXIS_TLAST=1,C_HAS_AXIS_TSTRB=1,C_HAS_AXIS_TKEEP=1,C_AXIS_TDATA_WIDTH=32,C_AXIS_TID_WIDTH=1,C_AXIS_TDEST_WIDTH=3,C_AXIS_TUSER_WIDTH=8,C_AXIS_TSTRB_WIDTH=4,C_AXIS_TKEEP_WIDTH=4,C_WACH_TYPE=0,C_WDCH_TYPE=0,C_WRCH_TYPE=0,C_RACH_TYPE=0,C_RDCH_TYPE=0,C_AXIS_TYPE=0,C_IMPLEMENTATION_TYPE_WACH=2,C_IMPLEMENTATION_TYPE_WDCH=1,C_IMPLEMENTATION_TYPE_WRCH=2,C_IMPLEMENTATION_TYPE_RACH=2,C_IMPLEMENTATION_TYPE_RDCH=1,C_IMPLEMENTATION_TYPE_AXIS=2,C_APPLICATION_TYPE_WACH=0,C_APPLICATION_TYPE_WDCH=0,C_APPLICATION_TYPE_WRCH=0,C_APPLICATION_TYPE_RACH=0,C_APPLICATION_TYPE_RDCH=0,C_APPLICATION_TYPE_AXIS=0,C_PRIM_FIFO_TYPE_WACH=512x36,C_PRIM_FIFO_TYPE_WDCH=1kx36,C_PRIM_FIFO_TYPE_WRCH=512x36,C_PRIM_FIFO_TYPE_RACH=512x36,C_PRIM_FIFO_TYPE_RDCH=1kx36,C_PRIM_FIFO_TYPE_AXIS=512x72,C_USE_ECC_WACH=0,C_USE_ECC_WDCH=0,C_USE_ECC_WRCH=0,C_USE_ECC_RACH=0,C_USE_ECC_RDCH=0,C_USE_ECC_AXIS=0,C_ERROR_INJECTION_TYPE_WACH=0,C_ERROR_INJECTION_TYPE_WDCH=0,C_ERROR_INJECTION_TYPE_WRCH=0,C_ERROR_INJECTION_TYPE_RACH=0,C_ERROR_INJECTION_TYPE_RDCH=0,C_ERROR_INJECTION_TYPE_AXIS=0,C_DIN_WIDTH_WACH=32,C_DIN_WIDTH_WDCH=64,C_DIN_WIDTH_WRCH=2,C_DIN_WIDTH_RACH=32,C_DIN_WIDTH_RDCH=64,C_DIN_WIDTH_AXIS=53,C_WR_DEPTH_WACH=16,C_WR_DEPTH_WDCH=1024,C_WR_DEPTH_WRCH=16,C_WR_DEPTH_RACH=16,C_WR_DEPTH_RDCH=1024,C_WR_DEPTH_AXIS=64,C_WR_PNTR_WIDTH_WACH=4,C_WR_PNTR_WIDTH_WDCH=10,C_WR_PNTR_WIDTH_WRCH=4,C_WR_PNTR_WIDTH_RACH=4,C_WR_PNTR_WIDTH_RDCH=10,C_WR_PNTR_WIDTH_AXIS=6,C_HAS_DATA_COUNTS_WACH=0,C_HAS_DATA_COUNTS_WDCH=0,C_HAS_DATA_COUNTS_WRCH=0,C_HAS_DATA_COUNTS_RACH=0,C_HAS_DATA_COUNTS_RDCH=0,C_HAS_DATA_COUNTS_AXIS=0,C_HAS_PROG_FLAGS_WACH=0,C_HAS_PROG_FLAGS_WDCH=0,C_HAS_PROG_FLAGS_WRCH=0,C_HAS_PROG_FLAGS_RACH=0,C_HAS_PROG_FLAGS_RDCH=0,C_HAS_PROG_FLAGS_AXIS=0,C_PROG_FULL_TYPE_WACH=0,C_PROG_FULL_TYPE_WDCH=0,C_PROG_FULL_TYPE_WRCH=0,C_PROG_FULL_TYPE_RACH=0,C_PROG_FULL_TYPE_RDCH=0,C_PROG_FULL_TYPE_AXIS=0,C_PROG_FULL_THRESH_ASSERT_VAL_WACH=15,C_PROG_FULL_THRESH_ASSERT_VAL_WDCH=1023,C_PROG_FULL_THRESH_ASSERT_VAL_WRCH=15,C_PROG_FULL_THRESH_ASSERT_VAL_RACH=15,C_PROG_FULL_THRESH_ASSERT_VAL_RDCH=1023,C_PROG_FULL_THRESH_ASSERT_VAL_AXIS=63,C_PROG_EMPTY_TYPE_WACH=0,C_PROG_EMPTY_TYPE_WDCH=0,C_PROG_EMPTY_TYPE_WRCH=0,C_PROG_EMPTY_TYPE_RACH=0,C_PROG_EMPTY_TYPE_RDCH=0,C_PROG_EMPTY_TYPE_AXIS=0,C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH=14,C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH=1022,C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH=14,C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH=14,C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH=1022,C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS=62,C_REG_SLICE_MODE_WACH=0,C_REG_SLICE_MODE_WDCH=0,C_REG_SLICE_MODE_WRCH=0,C_REG_SLICE_MODE_RACH=0,C_REG_SLICE_MODE_RDCH=0,C_REG_SLICE_MODE_AXIS=0,C_AXI_LEN_WIDTH=8,C_AXI_LOCK_WIDTH=1}" *) 
(* NotValidForBitStream *)
module t_axi4_stream32_sfifo_d64
   (s_aclk,
    s_aresetn,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    axis_overflow);
  input s_aclk;
  input s_aresetn;
  input s_axis_tvalid;
  output s_axis_tready;
  input [31:0]s_axis_tdata;
  input [3:0]s_axis_tstrb;
  input [3:0]s_axis_tkeep;
  input s_axis_tlast;
  input [0:0]s_axis_tid;
  input [2:0]s_axis_tdest;
  input [7:0]s_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output [31:0]m_axis_tdata;
  output [3:0]m_axis_tstrb;
  output [3:0]m_axis_tkeep;
  output m_axis_tlast;
  output [0:0]m_axis_tid;
  output [2:0]m_axis_tdest;
  output [7:0]m_axis_tuser;
  output axis_overflow;

  wire \<const0> ;
  wire axis_overflow;
  wire [31:0]m_axis_tdata;
  wire [2:0]m_axis_tdest;
  wire [0:0]m_axis_tid;
  wire [3:0]m_axis_tkeep;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire [3:0]m_axis_tstrb;
  wire [7:0]m_axis_tuser;
  wire m_axis_tvalid;
  wire s_aclk;
  wire s_aresetn;
  wire [31:0]s_axis_tdata;
  wire [2:0]s_axis_tdest;
  wire [0:0]s_axis_tid;
  wire [3:0]s_axis_tkeep;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire [3:0]s_axis_tstrb;
  wire [7:0]s_axis_tuser;
  wire s_axis_tvalid;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_empty_UNCONNECTED;
  wire NLW_U0_full_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_rd_rst_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_valid_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire NLW_U0_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [6:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [6:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [6:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [9:0]NLW_U0_data_count_UNCONNECTED;
  wire [17:0]NLW_U0_dout_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [9:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [9:0]NLW_U0_wr_data_count_UNCONNECTED;

GND GND
       (.G(\<const0> ));
(* C_ADD_NGC_CONSTRAINT = "0" *) 
   (* C_APPLICATION_TYPE_AXIS = "0" *) 
   (* C_APPLICATION_TYPE_RACH = "0" *) 
   (* C_APPLICATION_TYPE_RDCH = "0" *) 
   (* C_APPLICATION_TYPE_WACH = "0" *) 
   (* C_APPLICATION_TYPE_WDCH = "0" *) 
   (* C_APPLICATION_TYPE_WRCH = "0" *) 
   (* C_AXIS_TDATA_WIDTH = "32" *) 
   (* C_AXIS_TDEST_WIDTH = "3" *) 
   (* C_AXIS_TID_WIDTH = "1" *) 
   (* C_AXIS_TKEEP_WIDTH = "4" *) 
   (* C_AXIS_TSTRB_WIDTH = "4" *) 
   (* C_AXIS_TUSER_WIDTH = "8" *) 
   (* C_AXIS_TYPE = "0" *) 
   (* C_AXI_ADDR_WIDTH = "32" *) 
   (* C_AXI_ARUSER_WIDTH = "1" *) 
   (* C_AXI_AWUSER_WIDTH = "1" *) 
   (* C_AXI_BUSER_WIDTH = "1" *) 
   (* C_AXI_DATA_WIDTH = "64" *) 
   (* C_AXI_ID_WIDTH = "1" *) 
   (* C_AXI_LEN_WIDTH = "8" *) 
   (* C_AXI_LOCK_WIDTH = "1" *) 
   (* C_AXI_RUSER_WIDTH = "1" *) 
   (* C_AXI_TYPE = "1" *) 
   (* C_AXI_WUSER_WIDTH = "1" *) 
   (* C_COMMON_CLOCK = "1" *) 
   (* C_COUNT_TYPE = "0" *) 
   (* C_DATA_COUNT_WIDTH = "10" *) 
   (* C_DEFAULT_VALUE = "BlankString" *) 
   (* C_DIN_WIDTH = "18" *) 
   (* C_DIN_WIDTH_AXIS = "53" *) 
   (* C_DIN_WIDTH_RACH = "32" *) 
   (* C_DIN_WIDTH_RDCH = "64" *) 
   (* C_DIN_WIDTH_WACH = "32" *) 
   (* C_DIN_WIDTH_WDCH = "64" *) 
   (* C_DIN_WIDTH_WRCH = "2" *) 
   (* C_DOUT_RST_VAL = "0" *) 
   (* C_DOUT_WIDTH = "18" *) 
   (* C_ENABLE_RLOCS = "0" *) 
   (* C_ENABLE_RST_SYNC = "1" *) 
   (* C_ERROR_INJECTION_TYPE = "0" *) 
   (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
   (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
   (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
   (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
   (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
   (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
   (* C_FAMILY = "kintex7" *) 
   (* C_FULL_FLAGS_RST_VAL = "1" *) 
   (* C_HAS_ALMOST_EMPTY = "0" *) 
   (* C_HAS_ALMOST_FULL = "0" *) 
   (* C_HAS_AXIS_TDATA = "1" *) 
   (* C_HAS_AXIS_TDEST = "1" *) 
   (* C_HAS_AXIS_TID = "1" *) 
   (* C_HAS_AXIS_TKEEP = "1" *) 
   (* C_HAS_AXIS_TLAST = "1" *) 
   (* C_HAS_AXIS_TREADY = "1" *) 
   (* C_HAS_AXIS_TSTRB = "1" *) 
   (* C_HAS_AXIS_TUSER = "1" *) 
   (* C_HAS_AXI_ARUSER = "0" *) 
   (* C_HAS_AXI_AWUSER = "0" *) 
   (* C_HAS_AXI_BUSER = "0" *) 
   (* C_HAS_AXI_ID = "0" *) 
   (* C_HAS_AXI_RD_CHANNEL = "1" *) 
   (* C_HAS_AXI_RUSER = "0" *) 
   (* C_HAS_AXI_WR_CHANNEL = "1" *) 
   (* C_HAS_AXI_WUSER = "0" *) 
   (* C_HAS_BACKUP = "0" *) 
   (* C_HAS_DATA_COUNT = "0" *) 
   (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
   (* C_HAS_DATA_COUNTS_RACH = "0" *) 
   (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
   (* C_HAS_DATA_COUNTS_WACH = "0" *) 
   (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
   (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
   (* C_HAS_INT_CLK = "0" *) 
   (* C_HAS_MASTER_CE = "0" *) 
   (* C_HAS_MEMINIT_FILE = "0" *) 
   (* C_HAS_OVERFLOW = "1" *) 
   (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
   (* C_HAS_PROG_FLAGS_RACH = "0" *) 
   (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
   (* C_HAS_PROG_FLAGS_WACH = "0" *) 
   (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
   (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
   (* C_HAS_RD_DATA_COUNT = "0" *) 
   (* C_HAS_RD_RST = "0" *) 
   (* C_HAS_RST = "1" *) 
   (* C_HAS_SLAVE_CE = "0" *) 
   (* C_HAS_SRST = "0" *) 
   (* C_HAS_UNDERFLOW = "0" *) 
   (* C_HAS_VALID = "0" *) 
   (* C_HAS_WR_ACK = "0" *) 
   (* C_HAS_WR_DATA_COUNT = "0" *) 
   (* C_HAS_WR_RST = "0" *) 
   (* C_IMPLEMENTATION_TYPE = "0" *) 
   (* C_IMPLEMENTATION_TYPE_AXIS = "2" *) 
   (* C_IMPLEMENTATION_TYPE_RACH = "2" *) 
   (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
   (* C_IMPLEMENTATION_TYPE_WACH = "2" *) 
   (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
   (* C_IMPLEMENTATION_TYPE_WRCH = "2" *) 
   (* C_INIT_WR_PNTR_VAL = "0" *) 
   (* C_INTERFACE_TYPE = "1" *) 
   (* C_MEMORY_TYPE = "1" *) 
   (* C_MIF_FILE_NAME = "BlankString" *) 
   (* C_MSGON_VAL = "1" *) 
   (* C_OPTIMIZATION_MODE = "0" *) 
   (* C_OVERFLOW_LOW = "0" *) 
   (* C_PRELOAD_LATENCY = "1" *) 
   (* C_PRELOAD_REGS = "0" *) 
   (* C_PRIM_FIFO_TYPE = "4kx4" *) 
   (* C_PRIM_FIFO_TYPE_AXIS = "512x72" *) 
   (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
   (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
   (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
   (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
   (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
   (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) 
   (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "62" *) 
   (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "14" *) 
   (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
   (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "14" *) 
   (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
   (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "14" *) 
   (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) 
   (* C_PROG_EMPTY_TYPE = "0" *) 
   (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
   (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
   (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
   (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
   (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
   (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
   (* C_PROG_FULL_THRESH_ASSERT_VAL = "1022" *) 
   (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "63" *) 
   (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "15" *) 
   (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
   (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "15" *) 
   (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
   (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "15" *) 
   (* C_PROG_FULL_THRESH_NEGATE_VAL = "1021" *) 
   (* C_PROG_FULL_TYPE = "0" *) 
   (* C_PROG_FULL_TYPE_AXIS = "0" *) 
   (* C_PROG_FULL_TYPE_RACH = "0" *) 
   (* C_PROG_FULL_TYPE_RDCH = "0" *) 
   (* C_PROG_FULL_TYPE_WACH = "0" *) 
   (* C_PROG_FULL_TYPE_WDCH = "0" *) 
   (* C_PROG_FULL_TYPE_WRCH = "0" *) 
   (* C_RACH_TYPE = "0" *) 
   (* C_RDCH_TYPE = "0" *) 
   (* C_RD_DATA_COUNT_WIDTH = "10" *) 
   (* C_RD_DEPTH = "1024" *) 
   (* C_RD_FREQ = "1" *) 
   (* C_RD_PNTR_WIDTH = "10" *) 
   (* C_REG_SLICE_MODE_AXIS = "0" *) 
   (* C_REG_SLICE_MODE_RACH = "0" *) 
   (* C_REG_SLICE_MODE_RDCH = "0" *) 
   (* C_REG_SLICE_MODE_WACH = "0" *) 
   (* C_REG_SLICE_MODE_WDCH = "0" *) 
   (* C_REG_SLICE_MODE_WRCH = "0" *) 
   (* C_SYNCHRONIZER_STAGE = "2" *) 
   (* C_UNDERFLOW_LOW = "0" *) 
   (* C_USE_COMMON_OVERFLOW = "0" *) 
   (* C_USE_COMMON_UNDERFLOW = "0" *) 
   (* C_USE_DEFAULT_SETTINGS = "0" *) 
   (* C_USE_DOUT_RST = "1" *) 
   (* C_USE_ECC = "0" *) 
   (* C_USE_ECC_AXIS = "0" *) 
   (* C_USE_ECC_RACH = "0" *) 
   (* C_USE_ECC_RDCH = "0" *) 
   (* C_USE_ECC_WACH = "0" *) 
   (* C_USE_ECC_WDCH = "0" *) 
   (* C_USE_ECC_WRCH = "0" *) 
   (* C_USE_EMBEDDED_REG = "0" *) 
   (* C_USE_FIFO16_FLAGS = "0" *) 
   (* C_USE_FWFT_DATA_COUNT = "0" *) 
   (* C_VALID_LOW = "0" *) 
   (* C_WACH_TYPE = "0" *) 
   (* C_WDCH_TYPE = "0" *) 
   (* C_WRCH_TYPE = "0" *) 
   (* C_WR_ACK_LOW = "0" *) 
   (* C_WR_DATA_COUNT_WIDTH = "10" *) 
   (* C_WR_DEPTH = "1024" *) 
   (* C_WR_DEPTH_AXIS = "64" *) 
   (* C_WR_DEPTH_RACH = "16" *) 
   (* C_WR_DEPTH_RDCH = "1024" *) 
   (* C_WR_DEPTH_WACH = "16" *) 
   (* C_WR_DEPTH_WDCH = "1024" *) 
   (* C_WR_DEPTH_WRCH = "16" *) 
   (* C_WR_FREQ = "1" *) 
   (* C_WR_PNTR_WIDTH = "10" *) 
   (* C_WR_PNTR_WIDTH_AXIS = "6" *) 
   (* C_WR_PNTR_WIDTH_RACH = "4" *) 
   (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
   (* C_WR_PNTR_WIDTH_WACH = "4" *) 
   (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
   (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
   (* C_WR_RESPONSE_LATENCY = "1" *) 
   t_axi4_stream32_sfifo_d64fifo_generator_v11_0__parameterized0 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(\<const0> ),
        .axi_ar_injectsbiterr(\<const0> ),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(\<const0> ),
        .axi_aw_injectsbiterr(\<const0> ),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(\<const0> ),
        .axi_b_injectsbiterr(\<const0> ),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(\<const0> ),
        .axi_r_injectsbiterr(\<const0> ),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(\<const0> ),
        .axi_w_injectsbiterr(\<const0> ),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[6:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(\<const0> ),
        .axis_injectsbiterr(\<const0> ),
        .axis_overflow(axis_overflow),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[6:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[6:0]),
        .backup(\<const0> ),
        .backup_marker(\<const0> ),
        .clk(\<const0> ),
        .data_count(NLW_U0_data_count_UNCONNECTED[9:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .dout(NLW_U0_dout_UNCONNECTED[17:0]),
        .empty(NLW_U0_empty_UNCONNECTED),
        .full(NLW_U0_full_UNCONNECTED),
        .injectdbiterr(\<const0> ),
        .injectsbiterr(\<const0> ),
        .int_clk(\<const0> ),
        .m_aclk(\<const0> ),
        .m_aclk_en(\<const0> ),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(\<const0> ),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(\<const0> ),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(\<const0> ),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({\<const0> ,\<const0> }),
        .m_axi_buser(\<const0> ),
        .m_axi_bvalid(\<const0> ),
        .m_axi_rdata({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .m_axi_rid(\<const0> ),
        .m_axi_rlast(\<const0> ),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({\<const0> ,\<const0> }),
        .m_axi_ruser(\<const0> ),
        .m_axi_rvalid(\<const0> ),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(\<const0> ),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tdest(m_axis_tdest),
        .m_axis_tid(m_axis_tid),
        .m_axis_tkeep(m_axis_tkeep),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tstrb(m_axis_tstrb),
        .m_axis_tuser(m_axis_tuser),
        .m_axis_tvalid(m_axis_tvalid),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .prog_empty_thresh_assert({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .prog_empty_thresh_negate({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .prog_full_thresh_assert({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .prog_full_thresh_negate({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .rd_clk(\<const0> ),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[9:0]),
        .rd_en(\<const0> ),
        .rd_rst(\<const0> ),
        .rd_rst_busy(NLW_U0_rd_rst_busy_UNCONNECTED),
        .rst(\<const0> ),
        .s_aclk(s_aclk),
        .s_aclk_en(\<const0> ),
        .s_aresetn(s_aresetn),
        .s_axi_araddr({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .s_axi_arburst({\<const0> ,\<const0> }),
        .s_axi_arcache({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .s_axi_arid(\<const0> ),
        .s_axi_arlen({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .s_axi_arlock(\<const0> ),
        .s_axi_arprot({\<const0> ,\<const0> ,\<const0> }),
        .s_axi_arqos({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .s_axi_arsize({\<const0> ,\<const0> ,\<const0> }),
        .s_axi_aruser(\<const0> ),
        .s_axi_arvalid(\<const0> ),
        .s_axi_awaddr({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .s_axi_awburst({\<const0> ,\<const0> }),
        .s_axi_awcache({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .s_axi_awid(\<const0> ),
        .s_axi_awlen({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .s_axi_awlock(\<const0> ),
        .s_axi_awprot({\<const0> ,\<const0> ,\<const0> }),
        .s_axi_awqos({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .s_axi_awsize({\<const0> ,\<const0> ,\<const0> }),
        .s_axi_awuser(\<const0> ),
        .s_axi_awvalid(\<const0> ),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(\<const0> ),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(\<const0> ),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .s_axi_wid(\<const0> ),
        .s_axi_wlast(\<const0> ),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .s_axi_wuser(\<const0> ),
        .s_axi_wvalid(\<const0> ),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tdest(s_axis_tdest),
        .s_axis_tid(s_axis_tid),
        .s_axis_tkeep(s_axis_tkeep),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tstrb(s_axis_tstrb),
        .s_axis_tuser(s_axis_tuser),
        .s_axis_tvalid(s_axis_tvalid),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .srst(\<const0> ),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(\<const0> ),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[9:0]),
        .wr_en(\<const0> ),
        .wr_rst(\<const0> ),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
endmodule

module t_axi4_stream32_sfifo_d64dmem
   (D,
    I1,
    s_aclk,
    E,
    DI,
    O2,
    Q);
  output [52:0]D;
  input I1;
  input s_aclk;
  input [0:0]E;
  input [52:0]DI;
  input [5:0]O2;
  input [5:0]Q;

  wire \<const0> ;
  wire [52:0]D;
  wire [52:0]DI;
  wire [0:0]E;
  wire I1;
  wire [5:0]O2;
  wire [5:0]Q;
  wire [52:0]p_0_out;
  wire s_aclk;
  wire NLW_RAM_reg_0_63_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_12_14_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_15_17_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_18_20_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_21_23_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_24_26_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_27_29_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_30_32_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_33_35_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_36_38_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_39_41_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_42_44_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_45_47_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_48_50_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_51_52_DOC_UNCONNECTED;
  wire NLW_RAM_reg_0_63_51_52_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_9_11_DOD_UNCONNECTED;

GND GND
       (.G(\<const0> ));
RAM64M RAM_reg_0_63_0_2
       (.ADDRA(O2),
        .ADDRB(O2),
        .ADDRC(O2),
        .ADDRD(Q),
        .DIA(DI[0]),
        .DIB(DI[1]),
        .DIC(DI[2]),
        .DID(\<const0> ),
        .DOA(p_0_out[0]),
        .DOB(p_0_out[1]),
        .DOC(p_0_out[2]),
        .DOD(NLW_RAM_reg_0_63_0_2_DOD_UNCONNECTED),
        .WCLK(s_aclk),
        .WE(E));
RAM64M RAM_reg_0_63_12_14
       (.ADDRA(O2),
        .ADDRB(O2),
        .ADDRC(O2),
        .ADDRD(Q),
        .DIA(DI[12]),
        .DIB(DI[13]),
        .DIC(DI[14]),
        .DID(\<const0> ),
        .DOA(p_0_out[12]),
        .DOB(p_0_out[13]),
        .DOC(p_0_out[14]),
        .DOD(NLW_RAM_reg_0_63_12_14_DOD_UNCONNECTED),
        .WCLK(s_aclk),
        .WE(E));
RAM64M RAM_reg_0_63_15_17
       (.ADDRA(O2),
        .ADDRB(O2),
        .ADDRC(O2),
        .ADDRD(Q),
        .DIA(DI[15]),
        .DIB(DI[16]),
        .DIC(DI[17]),
        .DID(\<const0> ),
        .DOA(p_0_out[15]),
        .DOB(p_0_out[16]),
        .DOC(p_0_out[17]),
        .DOD(NLW_RAM_reg_0_63_15_17_DOD_UNCONNECTED),
        .WCLK(s_aclk),
        .WE(E));
RAM64M RAM_reg_0_63_18_20
       (.ADDRA(O2),
        .ADDRB(O2),
        .ADDRC(O2),
        .ADDRD(Q),
        .DIA(DI[18]),
        .DIB(DI[19]),
        .DIC(DI[20]),
        .DID(\<const0> ),
        .DOA(p_0_out[18]),
        .DOB(p_0_out[19]),
        .DOC(p_0_out[20]),
        .DOD(NLW_RAM_reg_0_63_18_20_DOD_UNCONNECTED),
        .WCLK(s_aclk),
        .WE(E));
RAM64M RAM_reg_0_63_21_23
       (.ADDRA(O2),
        .ADDRB(O2),
        .ADDRC(O2),
        .ADDRD(Q),
        .DIA(DI[21]),
        .DIB(DI[22]),
        .DIC(DI[23]),
        .DID(\<const0> ),
        .DOA(p_0_out[21]),
        .DOB(p_0_out[22]),
        .DOC(p_0_out[23]),
        .DOD(NLW_RAM_reg_0_63_21_23_DOD_UNCONNECTED),
        .WCLK(s_aclk),
        .WE(E));
RAM64M RAM_reg_0_63_24_26
       (.ADDRA(O2),
        .ADDRB(O2),
        .ADDRC(O2),
        .ADDRD(Q),
        .DIA(DI[24]),
        .DIB(DI[25]),
        .DIC(DI[26]),
        .DID(\<const0> ),
        .DOA(p_0_out[24]),
        .DOB(p_0_out[25]),
        .DOC(p_0_out[26]),
        .DOD(NLW_RAM_reg_0_63_24_26_DOD_UNCONNECTED),
        .WCLK(s_aclk),
        .WE(E));
RAM64M RAM_reg_0_63_27_29
       (.ADDRA(O2),
        .ADDRB(O2),
        .ADDRC(O2),
        .ADDRD(Q),
        .DIA(DI[27]),
        .DIB(DI[28]),
        .DIC(DI[29]),
        .DID(\<const0> ),
        .DOA(p_0_out[27]),
        .DOB(p_0_out[28]),
        .DOC(p_0_out[29]),
        .DOD(NLW_RAM_reg_0_63_27_29_DOD_UNCONNECTED),
        .WCLK(s_aclk),
        .WE(E));
RAM64M RAM_reg_0_63_30_32
       (.ADDRA(O2),
        .ADDRB(O2),
        .ADDRC(O2),
        .ADDRD(Q),
        .DIA(DI[30]),
        .DIB(DI[31]),
        .DIC(DI[32]),
        .DID(\<const0> ),
        .DOA(p_0_out[30]),
        .DOB(p_0_out[31]),
        .DOC(p_0_out[32]),
        .DOD(NLW_RAM_reg_0_63_30_32_DOD_UNCONNECTED),
        .WCLK(s_aclk),
        .WE(E));
RAM64M RAM_reg_0_63_33_35
       (.ADDRA(O2),
        .ADDRB(O2),
        .ADDRC(O2),
        .ADDRD(Q),
        .DIA(DI[33]),
        .DIB(DI[34]),
        .DIC(DI[35]),
        .DID(\<const0> ),
        .DOA(p_0_out[33]),
        .DOB(p_0_out[34]),
        .DOC(p_0_out[35]),
        .DOD(NLW_RAM_reg_0_63_33_35_DOD_UNCONNECTED),
        .WCLK(s_aclk),
        .WE(E));
RAM64M RAM_reg_0_63_36_38
       (.ADDRA(O2),
        .ADDRB(O2),
        .ADDRC(O2),
        .ADDRD(Q),
        .DIA(DI[36]),
        .DIB(DI[37]),
        .DIC(DI[38]),
        .DID(\<const0> ),
        .DOA(p_0_out[36]),
        .DOB(p_0_out[37]),
        .DOC(p_0_out[38]),
        .DOD(NLW_RAM_reg_0_63_36_38_DOD_UNCONNECTED),
        .WCLK(s_aclk),
        .WE(E));
RAM64M RAM_reg_0_63_39_41
       (.ADDRA(O2),
        .ADDRB(O2),
        .ADDRC(O2),
        .ADDRD(Q),
        .DIA(DI[39]),
        .DIB(DI[40]),
        .DIC(DI[41]),
        .DID(\<const0> ),
        .DOA(p_0_out[39]),
        .DOB(p_0_out[40]),
        .DOC(p_0_out[41]),
        .DOD(NLW_RAM_reg_0_63_39_41_DOD_UNCONNECTED),
        .WCLK(s_aclk),
        .WE(E));
RAM64M RAM_reg_0_63_3_5
       (.ADDRA(O2),
        .ADDRB(O2),
        .ADDRC(O2),
        .ADDRD(Q),
        .DIA(DI[3]),
        .DIB(DI[4]),
        .DIC(DI[5]),
        .DID(\<const0> ),
        .DOA(p_0_out[3]),
        .DOB(p_0_out[4]),
        .DOC(p_0_out[5]),
        .DOD(NLW_RAM_reg_0_63_3_5_DOD_UNCONNECTED),
        .WCLK(s_aclk),
        .WE(E));
RAM64M RAM_reg_0_63_42_44
       (.ADDRA(O2),
        .ADDRB(O2),
        .ADDRC(O2),
        .ADDRD(Q),
        .DIA(DI[42]),
        .DIB(DI[43]),
        .DIC(DI[44]),
        .DID(\<const0> ),
        .DOA(p_0_out[42]),
        .DOB(p_0_out[43]),
        .DOC(p_0_out[44]),
        .DOD(NLW_RAM_reg_0_63_42_44_DOD_UNCONNECTED),
        .WCLK(s_aclk),
        .WE(E));
RAM64M RAM_reg_0_63_45_47
       (.ADDRA(O2),
        .ADDRB(O2),
        .ADDRC(O2),
        .ADDRD(Q),
        .DIA(DI[45]),
        .DIB(DI[46]),
        .DIC(DI[47]),
        .DID(\<const0> ),
        .DOA(p_0_out[45]),
        .DOB(p_0_out[46]),
        .DOC(p_0_out[47]),
        .DOD(NLW_RAM_reg_0_63_45_47_DOD_UNCONNECTED),
        .WCLK(s_aclk),
        .WE(E));
RAM64M RAM_reg_0_63_48_50
       (.ADDRA(O2),
        .ADDRB(O2),
        .ADDRC(O2),
        .ADDRD(Q),
        .DIA(DI[48]),
        .DIB(DI[49]),
        .DIC(DI[50]),
        .DID(\<const0> ),
        .DOA(p_0_out[48]),
        .DOB(p_0_out[49]),
        .DOC(p_0_out[50]),
        .DOD(NLW_RAM_reg_0_63_48_50_DOD_UNCONNECTED),
        .WCLK(s_aclk),
        .WE(E));
RAM64M RAM_reg_0_63_51_52
       (.ADDRA(O2),
        .ADDRB(O2),
        .ADDRC(O2),
        .ADDRD(Q),
        .DIA(DI[51]),
        .DIB(DI[52]),
        .DIC(\<const0> ),
        .DID(\<const0> ),
        .DOA(p_0_out[51]),
        .DOB(p_0_out[52]),
        .DOC(NLW_RAM_reg_0_63_51_52_DOC_UNCONNECTED),
        .DOD(NLW_RAM_reg_0_63_51_52_DOD_UNCONNECTED),
        .WCLK(s_aclk),
        .WE(E));
RAM64M RAM_reg_0_63_6_8
       (.ADDRA(O2),
        .ADDRB(O2),
        .ADDRC(O2),
        .ADDRD(Q),
        .DIA(DI[6]),
        .DIB(DI[7]),
        .DIC(DI[8]),
        .DID(\<const0> ),
        .DOA(p_0_out[6]),
        .DOB(p_0_out[7]),
        .DOC(p_0_out[8]),
        .DOD(NLW_RAM_reg_0_63_6_8_DOD_UNCONNECTED),
        .WCLK(s_aclk),
        .WE(E));
RAM64M RAM_reg_0_63_9_11
       (.ADDRA(O2),
        .ADDRB(O2),
        .ADDRC(O2),
        .ADDRD(Q),
        .DIA(DI[9]),
        .DIB(DI[10]),
        .DIC(DI[11]),
        .DID(\<const0> ),
        .DOA(p_0_out[9]),
        .DOB(p_0_out[10]),
        .DOC(p_0_out[11]),
        .DOD(NLW_RAM_reg_0_63_9_11_DOD_UNCONNECTED),
        .WCLK(s_aclk),
        .WE(E));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[0] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[0]),
        .Q(D[0]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[10] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[10]),
        .Q(D[10]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[11] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[11]),
        .Q(D[11]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[12] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[12]),
        .Q(D[12]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[13] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[13]),
        .Q(D[13]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[14] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[14]),
        .Q(D[14]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[15] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[15]),
        .Q(D[15]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[16] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[16]),
        .Q(D[16]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[17] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[17]),
        .Q(D[17]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[18] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[18]),
        .Q(D[18]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[19] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[19]),
        .Q(D[19]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[1] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[1]),
        .Q(D[1]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[20] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[20]),
        .Q(D[20]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[21] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[21]),
        .Q(D[21]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[22] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[22]),
        .Q(D[22]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[23] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[23]),
        .Q(D[23]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[24] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[24]),
        .Q(D[24]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[25] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[25]),
        .Q(D[25]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[26] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[26]),
        .Q(D[26]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[27] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[27]),
        .Q(D[27]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[28] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[28]),
        .Q(D[28]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[29] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[29]),
        .Q(D[29]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[2] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[2]),
        .Q(D[2]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[30] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[30]),
        .Q(D[30]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[31] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[31]),
        .Q(D[31]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[32] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[32]),
        .Q(D[32]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[33] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[33]),
        .Q(D[33]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[34] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[34]),
        .Q(D[34]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[35] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[35]),
        .Q(D[35]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[36] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[36]),
        .Q(D[36]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[37] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[37]),
        .Q(D[37]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[38] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[38]),
        .Q(D[38]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[39] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[39]),
        .Q(D[39]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[3] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[3]),
        .Q(D[3]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[40] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[40]),
        .Q(D[40]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[41] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[41]),
        .Q(D[41]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[42] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[42]),
        .Q(D[42]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[43] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[43]),
        .Q(D[43]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[44] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[44]),
        .Q(D[44]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[45] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[45]),
        .Q(D[45]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[46] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[46]),
        .Q(D[46]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[47] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[47]),
        .Q(D[47]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[48] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[48]),
        .Q(D[48]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[49] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[49]),
        .Q(D[49]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[4] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[4]),
        .Q(D[4]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[50] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[50]),
        .Q(D[50]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[51] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[51]),
        .Q(D[51]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[52] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[52]),
        .Q(D[52]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[5] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[5]),
        .Q(D[5]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[6] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[6]),
        .Q(D[6]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[7] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[7]),
        .Q(D[7]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[8] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[8]),
        .Q(D[8]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[9] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[9]),
        .Q(D[9]),
        .R(\<const0> ));
endmodule

module t_axi4_stream32_sfifo_d64fifo_generator_ramfifo
   (Q,
    axis_overflow,
    s_axis_tready,
    m_axis_tvalid,
    m_axis_tready,
    s_aclk,
    DI,
    s_axis_tvalid,
    s_aresetn);
  output [52:0]Q;
  output axis_overflow;
  output s_axis_tready;
  output m_axis_tvalid;
  input m_axis_tready;
  input s_aclk;
  input [52:0]DI;
  input s_axis_tvalid;
  input s_aresetn;

  wire [52:0]DI;
  wire [52:0]Q;
  wire RD_RST;
  wire RST;
  wire axis_overflow;
  wire \gwss.wsts/ram_full_comb ;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire \n_0_gntv_or_sync_fifo.gl0.rd ;
  wire \n_1_gntv_or_sync_fifo.gl0.rd ;
  wire \n_2_gntv_or_sync_fifo.gl0.wr ;
  wire n_2_rstblk;
  wire n_4_rstblk;
  wire [5:0]p_19_out;
  wire p_1_out;
  wire p_3_out;
  wire [5:0]p_8_out;
  wire rst_d2;
  wire s_aclk;
  wire s_aresetn;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire [5:5]wr_pntr_plus1;

t_axi4_stream32_sfifo_d64rd_logic \gntv_or_sync_fifo.gl0.rd 
       (.E(\n_1_gntv_or_sync_fifo.gl0.rd ),
        .I1(p_8_out),
        .I2(wr_pntr_plus1),
        .I3(\n_2_gntv_or_sync_fifo.gl0.wr ),
        .I4(n_2_rstblk),
        .O1(\n_0_gntv_or_sync_fifo.gl0.rd ),
        .O2(p_19_out),
        .Q({RD_RST,n_4_rstblk}),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .p_1_out(p_1_out),
        .ram_full_comb(\gwss.wsts/ram_full_comb ),
        .s_aclk(s_aclk),
        .s_axis_tvalid(s_axis_tvalid));
t_axi4_stream32_sfifo_d64wr_logic \gntv_or_sync_fifo.gl0.wr 
       (.AR(RST),
        .E(p_3_out),
        .O1(\n_2_gntv_or_sync_fifo.gl0.wr ),
        .O2(p_19_out[4:0]),
        .O3(p_8_out),
        .Q(wr_pntr_plus1),
        .axis_overflow(axis_overflow),
        .p_1_out(p_1_out),
        .ram_full_comb(\gwss.wsts/ram_full_comb ),
        .rst_d2(rst_d2),
        .s_aclk(s_aclk),
        .s_axis_tready(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid));
t_axi4_stream32_sfifo_d64memory \gntv_or_sync_fifo.mem 
       (.DI(DI),
        .E(p_3_out),
        .I1(\n_0_gntv_or_sync_fifo.gl0.rd ),
        .I2(\n_1_gntv_or_sync_fifo.gl0.rd ),
        .O1(Q),
        .O2(p_19_out),
        .Q(p_8_out),
        .s_aclk(s_aclk));
t_axi4_stream32_sfifo_d64reset_blk_ramfifo rstblk
       (.AR(RST),
        .O1(n_2_rstblk),
        .Q({RD_RST,n_4_rstblk}),
        .p_1_out(p_1_out),
        .rst_d2(rst_d2),
        .s_aclk(s_aclk),
        .s_aresetn(s_aresetn));
endmodule

module t_axi4_stream32_sfifo_d64fifo_generator_top
   (Q,
    axis_overflow,
    s_axis_tready,
    m_axis_tvalid,
    m_axis_tready,
    s_aclk,
    DI,
    s_axis_tvalid,
    s_aresetn);
  output [52:0]Q;
  output axis_overflow;
  output s_axis_tready;
  output m_axis_tvalid;
  input m_axis_tready;
  input s_aclk;
  input [52:0]DI;
  input s_axis_tvalid;
  input s_aresetn;

  wire [52:0]DI;
  wire [52:0]Q;
  wire axis_overflow;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire s_aclk;
  wire s_aresetn;
  wire s_axis_tready;
  wire s_axis_tvalid;

t_axi4_stream32_sfifo_d64fifo_generator_ramfifo \grf.rf 
       (.DI(DI),
        .Q(Q),
        .axis_overflow(axis_overflow),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .s_aclk(s_aclk),
        .s_aresetn(s_aresetn),
        .s_axis_tready(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "fifo_generator_v11_0" *) (* C_COMMON_CLOCK = "1" *) (* C_COUNT_TYPE = "0" *) 
(* C_DATA_COUNT_WIDTH = "10" *) (* C_DEFAULT_VALUE = "BlankString" *) (* C_DIN_WIDTH = "18" *) 
(* C_DOUT_RST_VAL = "0" *) (* C_DOUT_WIDTH = "18" *) (* C_ENABLE_RLOCS = "0" *) 
(* C_FAMILY = "kintex7" *) (* C_FULL_FLAGS_RST_VAL = "1" *) (* C_HAS_ALMOST_EMPTY = "0" *) 
(* C_HAS_ALMOST_FULL = "0" *) (* C_HAS_BACKUP = "0" *) (* C_HAS_DATA_COUNT = "0" *) 
(* C_HAS_INT_CLK = "0" *) (* C_HAS_MEMINIT_FILE = "0" *) (* C_HAS_OVERFLOW = "1" *) 
(* C_HAS_RD_DATA_COUNT = "0" *) (* C_HAS_RD_RST = "0" *) (* C_HAS_RST = "1" *) 
(* C_HAS_SRST = "0" *) (* C_HAS_UNDERFLOW = "0" *) (* C_HAS_VALID = "0" *) 
(* C_HAS_WR_ACK = "0" *) (* C_HAS_WR_DATA_COUNT = "0" *) (* C_HAS_WR_RST = "0" *) 
(* C_IMPLEMENTATION_TYPE = "0" *) (* C_INIT_WR_PNTR_VAL = "0" *) (* C_MEMORY_TYPE = "1" *) 
(* C_MIF_FILE_NAME = "BlankString" *) (* C_OPTIMIZATION_MODE = "0" *) (* C_OVERFLOW_LOW = "0" *) 
(* C_PRELOAD_LATENCY = "1" *) (* C_PRELOAD_REGS = "0" *) (* C_PRIM_FIFO_TYPE = "4kx4" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) (* C_PROG_EMPTY_TYPE = "0" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL = "1022" *) (* C_PROG_FULL_THRESH_NEGATE_VAL = "1021" *) (* C_PROG_FULL_TYPE = "0" *) 
(* C_RD_DATA_COUNT_WIDTH = "10" *) (* C_RD_DEPTH = "1024" *) (* C_RD_FREQ = "1" *) 
(* C_RD_PNTR_WIDTH = "10" *) (* C_UNDERFLOW_LOW = "0" *) (* C_USE_DOUT_RST = "1" *) 
(* C_USE_ECC = "0" *) (* C_USE_EMBEDDED_REG = "0" *) (* C_USE_FIFO16_FLAGS = "0" *) 
(* C_USE_FWFT_DATA_COUNT = "0" *) (* C_VALID_LOW = "0" *) (* C_WR_ACK_LOW = "0" *) 
(* C_WR_DATA_COUNT_WIDTH = "10" *) (* C_WR_DEPTH = "1024" *) (* C_WR_FREQ = "1" *) 
(* C_WR_PNTR_WIDTH = "10" *) (* C_WR_RESPONSE_LATENCY = "1" *) (* C_MSGON_VAL = "1" *) 
(* C_ENABLE_RST_SYNC = "1" *) (* C_ERROR_INJECTION_TYPE = "0" *) (* C_SYNCHRONIZER_STAGE = "2" *) 
(* C_INTERFACE_TYPE = "1" *) (* C_AXI_TYPE = "1" *) (* C_HAS_AXI_WR_CHANNEL = "1" *) 
(* C_HAS_AXI_RD_CHANNEL = "1" *) (* C_HAS_SLAVE_CE = "0" *) (* C_HAS_MASTER_CE = "0" *) 
(* C_ADD_NGC_CONSTRAINT = "0" *) (* C_USE_COMMON_OVERFLOW = "0" *) (* C_USE_COMMON_UNDERFLOW = "0" *) 
(* C_USE_DEFAULT_SETTINGS = "0" *) (* C_AXI_ID_WIDTH = "1" *) (* C_AXI_ADDR_WIDTH = "32" *) 
(* C_AXI_DATA_WIDTH = "64" *) (* C_AXI_LEN_WIDTH = "8" *) (* C_AXI_LOCK_WIDTH = "1" *) 
(* C_HAS_AXI_ID = "0" *) (* C_HAS_AXI_AWUSER = "0" *) (* C_HAS_AXI_WUSER = "0" *) 
(* C_HAS_AXI_BUSER = "0" *) (* C_HAS_AXI_ARUSER = "0" *) (* C_HAS_AXI_RUSER = "0" *) 
(* C_AXI_ARUSER_WIDTH = "1" *) (* C_AXI_AWUSER_WIDTH = "1" *) (* C_AXI_WUSER_WIDTH = "1" *) 
(* C_AXI_BUSER_WIDTH = "1" *) (* C_AXI_RUSER_WIDTH = "1" *) (* C_HAS_AXIS_TDATA = "1" *) 
(* C_HAS_AXIS_TID = "1" *) (* C_HAS_AXIS_TDEST = "1" *) (* C_HAS_AXIS_TUSER = "1" *) 
(* C_HAS_AXIS_TREADY = "1" *) (* C_HAS_AXIS_TLAST = "1" *) (* C_HAS_AXIS_TSTRB = "1" *) 
(* C_HAS_AXIS_TKEEP = "1" *) (* C_AXIS_TDATA_WIDTH = "32" *) (* C_AXIS_TID_WIDTH = "1" *) 
(* C_AXIS_TDEST_WIDTH = "3" *) (* C_AXIS_TUSER_WIDTH = "8" *) (* C_AXIS_TSTRB_WIDTH = "4" *) 
(* C_AXIS_TKEEP_WIDTH = "4" *) (* C_WACH_TYPE = "0" *) (* C_WDCH_TYPE = "0" *) 
(* C_WRCH_TYPE = "0" *) (* C_RACH_TYPE = "0" *) (* C_RDCH_TYPE = "0" *) 
(* C_AXIS_TYPE = "0" *) (* C_IMPLEMENTATION_TYPE_WACH = "2" *) (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
(* C_IMPLEMENTATION_TYPE_WRCH = "2" *) (* C_IMPLEMENTATION_TYPE_RACH = "2" *) (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
(* C_IMPLEMENTATION_TYPE_AXIS = "2" *) (* C_APPLICATION_TYPE_WACH = "0" *) (* C_APPLICATION_TYPE_WDCH = "0" *) 
(* C_APPLICATION_TYPE_WRCH = "0" *) (* C_APPLICATION_TYPE_RACH = "0" *) (* C_APPLICATION_TYPE_RDCH = "0" *) 
(* C_APPLICATION_TYPE_AXIS = "0" *) (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
(* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
(* C_PRIM_FIFO_TYPE_AXIS = "512x72" *) (* C_USE_ECC_WACH = "0" *) (* C_USE_ECC_WDCH = "0" *) 
(* C_USE_ECC_WRCH = "0" *) (* C_USE_ECC_RACH = "0" *) (* C_USE_ECC_RDCH = "0" *) 
(* C_USE_ECC_AXIS = "0" *) (* C_ERROR_INJECTION_TYPE_WACH = "0" *) (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
(* C_ERROR_INJECTION_TYPE_WRCH = "0" *) (* C_ERROR_INJECTION_TYPE_RACH = "0" *) (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
(* C_ERROR_INJECTION_TYPE_AXIS = "0" *) (* C_DIN_WIDTH_WACH = "32" *) (* C_DIN_WIDTH_WDCH = "64" *) 
(* C_DIN_WIDTH_WRCH = "2" *) (* C_DIN_WIDTH_RACH = "32" *) (* C_DIN_WIDTH_RDCH = "64" *) 
(* C_DIN_WIDTH_AXIS = "53" *) (* C_WR_DEPTH_WACH = "16" *) (* C_WR_DEPTH_WDCH = "1024" *) 
(* C_WR_DEPTH_WRCH = "16" *) (* C_WR_DEPTH_RACH = "16" *) (* C_WR_DEPTH_RDCH = "1024" *) 
(* C_WR_DEPTH_AXIS = "64" *) (* C_WR_PNTR_WIDTH_WACH = "4" *) (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
(* C_WR_PNTR_WIDTH_WRCH = "4" *) (* C_WR_PNTR_WIDTH_RACH = "4" *) (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
(* C_WR_PNTR_WIDTH_AXIS = "6" *) (* C_HAS_DATA_COUNTS_WACH = "0" *) (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
(* C_HAS_DATA_COUNTS_WRCH = "0" *) (* C_HAS_DATA_COUNTS_RACH = "0" *) (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
(* C_HAS_DATA_COUNTS_AXIS = "0" *) (* C_HAS_PROG_FLAGS_WACH = "0" *) (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
(* C_HAS_PROG_FLAGS_WRCH = "0" *) (* C_HAS_PROG_FLAGS_RACH = "0" *) (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
(* C_HAS_PROG_FLAGS_AXIS = "0" *) (* C_PROG_FULL_TYPE_WACH = "0" *) (* C_PROG_FULL_TYPE_WDCH = "0" *) 
(* C_PROG_FULL_TYPE_WRCH = "0" *) (* C_PROG_FULL_TYPE_RACH = "0" *) (* C_PROG_FULL_TYPE_RDCH = "0" *) 
(* C_PROG_FULL_TYPE_AXIS = "0" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "15" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "15" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "15" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "63" *) (* C_PROG_EMPTY_TYPE_WACH = "0" *) (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
(* C_PROG_EMPTY_TYPE_WRCH = "0" *) (* C_PROG_EMPTY_TYPE_RACH = "0" *) (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
(* C_PROG_EMPTY_TYPE_AXIS = "0" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "14" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "14" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "14" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "62" *) (* C_REG_SLICE_MODE_WACH = "0" *) (* C_REG_SLICE_MODE_WDCH = "0" *) 
(* C_REG_SLICE_MODE_WRCH = "0" *) (* C_REG_SLICE_MODE_RACH = "0" *) (* C_REG_SLICE_MODE_RDCH = "0" *) 
(* C_REG_SLICE_MODE_AXIS = "0" *) 
module t_axi4_stream32_sfifo_d64fifo_generator_v11_0__parameterized0
   (backup,
    backup_marker,
    clk,
    rst,
    srst,
    wr_clk,
    wr_rst,
    rd_clk,
    rd_rst,
    din,
    wr_en,
    rd_en,
    prog_empty_thresh,
    prog_empty_thresh_assert,
    prog_empty_thresh_negate,
    prog_full_thresh,
    prog_full_thresh_assert,
    prog_full_thresh_negate,
    int_clk,
    injectdbiterr,
    injectsbiterr,
    dout,
    full,
    almost_full,
    wr_ack,
    overflow,
    empty,
    almost_empty,
    valid,
    underflow,
    data_count,
    rd_data_count,
    wr_data_count,
    prog_full,
    prog_empty,
    sbiterr,
    dbiterr,
    wr_rst_busy,
    rd_rst_busy,
    m_aclk,
    s_aclk,
    s_aresetn,
    m_aclk_en,
    s_aclk_en,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awregion,
    s_axi_awuser,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wid,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wuser,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_buser,
    s_axi_bvalid,
    s_axi_bready,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awregion,
    m_axi_awuser,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wuser,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_buser,
    m_axi_bvalid,
    m_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_arregion,
    s_axi_aruser,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_ruser,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_arregion,
    m_axi_aruser,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_ruser,
    m_axi_rvalid,
    m_axi_rready,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    axi_aw_injectsbiterr,
    axi_aw_injectdbiterr,
    axi_aw_prog_full_thresh,
    axi_aw_prog_empty_thresh,
    axi_aw_data_count,
    axi_aw_wr_data_count,
    axi_aw_rd_data_count,
    axi_aw_sbiterr,
    axi_aw_dbiterr,
    axi_aw_overflow,
    axi_aw_underflow,
    axi_aw_prog_full,
    axi_aw_prog_empty,
    axi_w_injectsbiterr,
    axi_w_injectdbiterr,
    axi_w_prog_full_thresh,
    axi_w_prog_empty_thresh,
    axi_w_data_count,
    axi_w_wr_data_count,
    axi_w_rd_data_count,
    axi_w_sbiterr,
    axi_w_dbiterr,
    axi_w_overflow,
    axi_w_underflow,
    axi_w_prog_full,
    axi_w_prog_empty,
    axi_b_injectsbiterr,
    axi_b_injectdbiterr,
    axi_b_prog_full_thresh,
    axi_b_prog_empty_thresh,
    axi_b_data_count,
    axi_b_wr_data_count,
    axi_b_rd_data_count,
    axi_b_sbiterr,
    axi_b_dbiterr,
    axi_b_overflow,
    axi_b_underflow,
    axi_b_prog_full,
    axi_b_prog_empty,
    axi_ar_injectsbiterr,
    axi_ar_injectdbiterr,
    axi_ar_prog_full_thresh,
    axi_ar_prog_empty_thresh,
    axi_ar_data_count,
    axi_ar_wr_data_count,
    axi_ar_rd_data_count,
    axi_ar_sbiterr,
    axi_ar_dbiterr,
    axi_ar_overflow,
    axi_ar_underflow,
    axi_ar_prog_full,
    axi_ar_prog_empty,
    axi_r_injectsbiterr,
    axi_r_injectdbiterr,
    axi_r_prog_full_thresh,
    axi_r_prog_empty_thresh,
    axi_r_data_count,
    axi_r_wr_data_count,
    axi_r_rd_data_count,
    axi_r_sbiterr,
    axi_r_dbiterr,
    axi_r_overflow,
    axi_r_underflow,
    axi_r_prog_full,
    axi_r_prog_empty,
    axis_injectsbiterr,
    axis_injectdbiterr,
    axis_prog_full_thresh,
    axis_prog_empty_thresh,
    axis_data_count,
    axis_wr_data_count,
    axis_rd_data_count,
    axis_sbiterr,
    axis_dbiterr,
    axis_overflow,
    axis_underflow,
    axis_prog_full,
    axis_prog_empty);
  input backup;
  input backup_marker;
  input clk;
  input rst;
  input srst;
  input wr_clk;
  input wr_rst;
  input rd_clk;
  input rd_rst;
  input [17:0]din;
  input wr_en;
  input rd_en;
  input [9:0]prog_empty_thresh;
  input [9:0]prog_empty_thresh_assert;
  input [9:0]prog_empty_thresh_negate;
  input [9:0]prog_full_thresh;
  input [9:0]prog_full_thresh_assert;
  input [9:0]prog_full_thresh_negate;
  input int_clk;
  input injectdbiterr;
  input injectsbiterr;
  output [17:0]dout;
  output full;
  output almost_full;
  output wr_ack;
  output overflow;
  output empty;
  output almost_empty;
  output valid;
  output underflow;
  output [9:0]data_count;
  output [9:0]rd_data_count;
  output [9:0]wr_data_count;
  output prog_full;
  output prog_empty;
  output sbiterr;
  output dbiterr;
  output wr_rst_busy;
  output rd_rst_busy;
  input m_aclk;
  input s_aclk;
  input s_aresetn;
  input m_aclk_en;
  input s_aclk_en;
  input [0:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;
  input [3:0]s_axi_awregion;
  input [0:0]s_axi_awuser;
  input s_axi_awvalid;
  output s_axi_awready;
  input [0:0]s_axi_wid;
  input [63:0]s_axi_wdata;
  input [7:0]s_axi_wstrb;
  input s_axi_wlast;
  input [0:0]s_axi_wuser;
  input s_axi_wvalid;
  output s_axi_wready;
  output [0:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output [0:0]s_axi_buser;
  output s_axi_bvalid;
  input s_axi_bready;
  output [0:0]m_axi_awid;
  output [31:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  output [3:0]m_axi_awregion;
  output [0:0]m_axi_awuser;
  output m_axi_awvalid;
  input m_axi_awready;
  output [0:0]m_axi_wid;
  output [63:0]m_axi_wdata;
  output [7:0]m_axi_wstrb;
  output m_axi_wlast;
  output [0:0]m_axi_wuser;
  output m_axi_wvalid;
  input m_axi_wready;
  input [0:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input [0:0]m_axi_buser;
  input m_axi_bvalid;
  output m_axi_bready;
  input [0:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arqos;
  input [3:0]s_axi_arregion;
  input [0:0]s_axi_aruser;
  input s_axi_arvalid;
  output s_axi_arready;
  output [0:0]s_axi_rid;
  output [63:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output [0:0]s_axi_ruser;
  output s_axi_rvalid;
  input s_axi_rready;
  output [0:0]m_axi_arid;
  output [31:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arqos;
  output [3:0]m_axi_arregion;
  output [0:0]m_axi_aruser;
  output m_axi_arvalid;
  input m_axi_arready;
  input [0:0]m_axi_rid;
  input [63:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input [0:0]m_axi_ruser;
  input m_axi_rvalid;
  output m_axi_rready;
  input s_axis_tvalid;
  output s_axis_tready;
  input [31:0]s_axis_tdata;
  input [3:0]s_axis_tstrb;
  input [3:0]s_axis_tkeep;
  input s_axis_tlast;
  input [0:0]s_axis_tid;
  input [2:0]s_axis_tdest;
  input [7:0]s_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output [31:0]m_axis_tdata;
  output [3:0]m_axis_tstrb;
  output [3:0]m_axis_tkeep;
  output m_axis_tlast;
  output [0:0]m_axis_tid;
  output [2:0]m_axis_tdest;
  output [7:0]m_axis_tuser;
  input axi_aw_injectsbiterr;
  input axi_aw_injectdbiterr;
  input [3:0]axi_aw_prog_full_thresh;
  input [3:0]axi_aw_prog_empty_thresh;
  output [4:0]axi_aw_data_count;
  output [4:0]axi_aw_wr_data_count;
  output [4:0]axi_aw_rd_data_count;
  output axi_aw_sbiterr;
  output axi_aw_dbiterr;
  output axi_aw_overflow;
  output axi_aw_underflow;
  output axi_aw_prog_full;
  output axi_aw_prog_empty;
  input axi_w_injectsbiterr;
  input axi_w_injectdbiterr;
  input [9:0]axi_w_prog_full_thresh;
  input [9:0]axi_w_prog_empty_thresh;
  output [10:0]axi_w_data_count;
  output [10:0]axi_w_wr_data_count;
  output [10:0]axi_w_rd_data_count;
  output axi_w_sbiterr;
  output axi_w_dbiterr;
  output axi_w_overflow;
  output axi_w_underflow;
  output axi_w_prog_full;
  output axi_w_prog_empty;
  input axi_b_injectsbiterr;
  input axi_b_injectdbiterr;
  input [3:0]axi_b_prog_full_thresh;
  input [3:0]axi_b_prog_empty_thresh;
  output [4:0]axi_b_data_count;
  output [4:0]axi_b_wr_data_count;
  output [4:0]axi_b_rd_data_count;
  output axi_b_sbiterr;
  output axi_b_dbiterr;
  output axi_b_overflow;
  output axi_b_underflow;
  output axi_b_prog_full;
  output axi_b_prog_empty;
  input axi_ar_injectsbiterr;
  input axi_ar_injectdbiterr;
  input [3:0]axi_ar_prog_full_thresh;
  input [3:0]axi_ar_prog_empty_thresh;
  output [4:0]axi_ar_data_count;
  output [4:0]axi_ar_wr_data_count;
  output [4:0]axi_ar_rd_data_count;
  output axi_ar_sbiterr;
  output axi_ar_dbiterr;
  output axi_ar_overflow;
  output axi_ar_underflow;
  output axi_ar_prog_full;
  output axi_ar_prog_empty;
  input axi_r_injectsbiterr;
  input axi_r_injectdbiterr;
  input [9:0]axi_r_prog_full_thresh;
  input [9:0]axi_r_prog_empty_thresh;
  output [10:0]axi_r_data_count;
  output [10:0]axi_r_wr_data_count;
  output [10:0]axi_r_rd_data_count;
  output axi_r_sbiterr;
  output axi_r_dbiterr;
  output axi_r_overflow;
  output axi_r_underflow;
  output axi_r_prog_full;
  output axi_r_prog_empty;
  input axis_injectsbiterr;
  input axis_injectdbiterr;
  input [5:0]axis_prog_full_thresh;
  input [5:0]axis_prog_empty_thresh;
  output [6:0]axis_data_count;
  output [6:0]axis_wr_data_count;
  output [6:0]axis_rd_data_count;
  output axis_sbiterr;
  output axis_dbiterr;
  output axis_overflow;
  output axis_underflow;
  output axis_prog_full;
  output axis_prog_empty;

  wire \<const0> ;
  wire \<const1> ;
  wire axi_ar_injectdbiterr;
  wire axi_ar_injectsbiterr;
  wire [3:0]axi_ar_prog_empty_thresh;
  wire [3:0]axi_ar_prog_full_thresh;
  wire axi_aw_injectdbiterr;
  wire axi_aw_injectsbiterr;
  wire [3:0]axi_aw_prog_empty_thresh;
  wire [3:0]axi_aw_prog_full_thresh;
  wire axi_b_injectdbiterr;
  wire axi_b_injectsbiterr;
  wire [3:0]axi_b_prog_empty_thresh;
  wire [3:0]axi_b_prog_full_thresh;
  wire axi_r_injectdbiterr;
  wire axi_r_injectsbiterr;
  wire [9:0]axi_r_prog_empty_thresh;
  wire [9:0]axi_r_prog_full_thresh;
  wire axi_w_injectdbiterr;
  wire axi_w_injectsbiterr;
  wire [9:0]axi_w_prog_empty_thresh;
  wire [9:0]axi_w_prog_full_thresh;
  wire axis_injectdbiterr;
  wire axis_injectsbiterr;
  wire axis_overflow;
  wire [5:0]axis_prog_empty_thresh;
  wire [5:0]axis_prog_full_thresh;
  wire backup;
  wire backup_marker;
  wire clk;
  wire [17:0]din;
  wire injectdbiterr;
  wire injectsbiterr;
  wire int_clk;
  wire m_aclk;
  wire m_aclk_en;
  wire m_axi_arready;
  wire m_axi_awready;
  wire [0:0]m_axi_bid;
  wire [1:0]m_axi_bresp;
  wire [0:0]m_axi_buser;
  wire m_axi_bvalid;
  wire [63:0]m_axi_rdata;
  wire [0:0]m_axi_rid;
  wire m_axi_rlast;
  wire [1:0]m_axi_rresp;
  wire [0:0]m_axi_ruser;
  wire m_axi_rvalid;
  wire m_axi_wready;
  wire [31:0]m_axis_tdata;
  wire [2:0]m_axis_tdest;
  wire [0:0]m_axis_tid;
  wire [3:0]m_axis_tkeep;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire [3:0]m_axis_tstrb;
  wire [7:0]m_axis_tuser;
  wire m_axis_tvalid;
  wire [9:0]prog_empty_thresh;
  wire [9:0]prog_empty_thresh_assert;
  wire [9:0]prog_empty_thresh_negate;
  wire [9:0]prog_full_thresh;
  wire [9:0]prog_full_thresh_assert;
  wire [9:0]prog_full_thresh_negate;
  wire rd_clk;
  wire rd_en;
  wire rd_rst;
  wire rst;
  wire s_aclk;
  wire s_aclk_en;
  wire s_aresetn;
  wire [31:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arcache;
  wire [0:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire [0:0]s_axi_arlock;
  wire [2:0]s_axi_arprot;
  wire [3:0]s_axi_arqos;
  wire [3:0]s_axi_arregion;
  wire [2:0]s_axi_arsize;
  wire [0:0]s_axi_aruser;
  wire s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [0:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire [0:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire [3:0]s_axi_awregion;
  wire [2:0]s_axi_awsize;
  wire [0:0]s_axi_awuser;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_rready;
  wire [63:0]s_axi_wdata;
  wire [0:0]s_axi_wid;
  wire s_axi_wlast;
  wire [7:0]s_axi_wstrb;
  wire [0:0]s_axi_wuser;
  wire s_axi_wvalid;
  wire [31:0]s_axis_tdata;
  wire [2:0]s_axis_tdest;
  wire [0:0]s_axis_tid;
  wire [3:0]s_axis_tkeep;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire [3:0]s_axis_tstrb;
  wire [7:0]s_axis_tuser;
  wire s_axis_tvalid;
  wire srst;
  wire wr_clk;
  wire wr_en;
  wire wr_rst;

  assign almost_empty = \<const1> ;
  assign almost_full = \<const0> ;
  assign axi_ar_data_count[4] = \<const0> ;
  assign axi_ar_data_count[3] = \<const0> ;
  assign axi_ar_data_count[2] = \<const0> ;
  assign axi_ar_data_count[1] = \<const0> ;
  assign axi_ar_data_count[0] = \<const0> ;
  assign axi_ar_dbiterr = \<const0> ;
  assign axi_ar_overflow = \<const0> ;
  assign axi_ar_prog_empty = \<const1> ;
  assign axi_ar_prog_full = \<const0> ;
  assign axi_ar_rd_data_count[4] = \<const0> ;
  assign axi_ar_rd_data_count[3] = \<const0> ;
  assign axi_ar_rd_data_count[2] = \<const0> ;
  assign axi_ar_rd_data_count[1] = \<const0> ;
  assign axi_ar_rd_data_count[0] = \<const0> ;
  assign axi_ar_sbiterr = \<const0> ;
  assign axi_ar_underflow = \<const0> ;
  assign axi_ar_wr_data_count[4] = \<const0> ;
  assign axi_ar_wr_data_count[3] = \<const0> ;
  assign axi_ar_wr_data_count[2] = \<const0> ;
  assign axi_ar_wr_data_count[1] = \<const0> ;
  assign axi_ar_wr_data_count[0] = \<const0> ;
  assign axi_aw_data_count[4] = \<const0> ;
  assign axi_aw_data_count[3] = \<const0> ;
  assign axi_aw_data_count[2] = \<const0> ;
  assign axi_aw_data_count[1] = \<const0> ;
  assign axi_aw_data_count[0] = \<const0> ;
  assign axi_aw_dbiterr = \<const0> ;
  assign axi_aw_overflow = \<const0> ;
  assign axi_aw_prog_empty = \<const1> ;
  assign axi_aw_prog_full = \<const0> ;
  assign axi_aw_rd_data_count[4] = \<const0> ;
  assign axi_aw_rd_data_count[3] = \<const0> ;
  assign axi_aw_rd_data_count[2] = \<const0> ;
  assign axi_aw_rd_data_count[1] = \<const0> ;
  assign axi_aw_rd_data_count[0] = \<const0> ;
  assign axi_aw_sbiterr = \<const0> ;
  assign axi_aw_underflow = \<const0> ;
  assign axi_aw_wr_data_count[4] = \<const0> ;
  assign axi_aw_wr_data_count[3] = \<const0> ;
  assign axi_aw_wr_data_count[2] = \<const0> ;
  assign axi_aw_wr_data_count[1] = \<const0> ;
  assign axi_aw_wr_data_count[0] = \<const0> ;
  assign axi_b_data_count[4] = \<const0> ;
  assign axi_b_data_count[3] = \<const0> ;
  assign axi_b_data_count[2] = \<const0> ;
  assign axi_b_data_count[1] = \<const0> ;
  assign axi_b_data_count[0] = \<const0> ;
  assign axi_b_dbiterr = \<const0> ;
  assign axi_b_overflow = \<const0> ;
  assign axi_b_prog_empty = \<const1> ;
  assign axi_b_prog_full = \<const0> ;
  assign axi_b_rd_data_count[4] = \<const0> ;
  assign axi_b_rd_data_count[3] = \<const0> ;
  assign axi_b_rd_data_count[2] = \<const0> ;
  assign axi_b_rd_data_count[1] = \<const0> ;
  assign axi_b_rd_data_count[0] = \<const0> ;
  assign axi_b_sbiterr = \<const0> ;
  assign axi_b_underflow = \<const0> ;
  assign axi_b_wr_data_count[4] = \<const0> ;
  assign axi_b_wr_data_count[3] = \<const0> ;
  assign axi_b_wr_data_count[2] = \<const0> ;
  assign axi_b_wr_data_count[1] = \<const0> ;
  assign axi_b_wr_data_count[0] = \<const0> ;
  assign axi_r_data_count[10] = \<const0> ;
  assign axi_r_data_count[9] = \<const0> ;
  assign axi_r_data_count[8] = \<const0> ;
  assign axi_r_data_count[7] = \<const0> ;
  assign axi_r_data_count[6] = \<const0> ;
  assign axi_r_data_count[5] = \<const0> ;
  assign axi_r_data_count[4] = \<const0> ;
  assign axi_r_data_count[3] = \<const0> ;
  assign axi_r_data_count[2] = \<const0> ;
  assign axi_r_data_count[1] = \<const0> ;
  assign axi_r_data_count[0] = \<const0> ;
  assign axi_r_dbiterr = \<const0> ;
  assign axi_r_overflow = \<const0> ;
  assign axi_r_prog_empty = \<const1> ;
  assign axi_r_prog_full = \<const0> ;
  assign axi_r_rd_data_count[10] = \<const0> ;
  assign axi_r_rd_data_count[9] = \<const0> ;
  assign axi_r_rd_data_count[8] = \<const0> ;
  assign axi_r_rd_data_count[7] = \<const0> ;
  assign axi_r_rd_data_count[6] = \<const0> ;
  assign axi_r_rd_data_count[5] = \<const0> ;
  assign axi_r_rd_data_count[4] = \<const0> ;
  assign axi_r_rd_data_count[3] = \<const0> ;
  assign axi_r_rd_data_count[2] = \<const0> ;
  assign axi_r_rd_data_count[1] = \<const0> ;
  assign axi_r_rd_data_count[0] = \<const0> ;
  assign axi_r_sbiterr = \<const0> ;
  assign axi_r_underflow = \<const0> ;
  assign axi_r_wr_data_count[10] = \<const0> ;
  assign axi_r_wr_data_count[9] = \<const0> ;
  assign axi_r_wr_data_count[8] = \<const0> ;
  assign axi_r_wr_data_count[7] = \<const0> ;
  assign axi_r_wr_data_count[6] = \<const0> ;
  assign axi_r_wr_data_count[5] = \<const0> ;
  assign axi_r_wr_data_count[4] = \<const0> ;
  assign axi_r_wr_data_count[3] = \<const0> ;
  assign axi_r_wr_data_count[2] = \<const0> ;
  assign axi_r_wr_data_count[1] = \<const0> ;
  assign axi_r_wr_data_count[0] = \<const0> ;
  assign axi_w_data_count[10] = \<const0> ;
  assign axi_w_data_count[9] = \<const0> ;
  assign axi_w_data_count[8] = \<const0> ;
  assign axi_w_data_count[7] = \<const0> ;
  assign axi_w_data_count[6] = \<const0> ;
  assign axi_w_data_count[5] = \<const0> ;
  assign axi_w_data_count[4] = \<const0> ;
  assign axi_w_data_count[3] = \<const0> ;
  assign axi_w_data_count[2] = \<const0> ;
  assign axi_w_data_count[1] = \<const0> ;
  assign axi_w_data_count[0] = \<const0> ;
  assign axi_w_dbiterr = \<const0> ;
  assign axi_w_overflow = \<const0> ;
  assign axi_w_prog_empty = \<const1> ;
  assign axi_w_prog_full = \<const0> ;
  assign axi_w_rd_data_count[10] = \<const0> ;
  assign axi_w_rd_data_count[9] = \<const0> ;
  assign axi_w_rd_data_count[8] = \<const0> ;
  assign axi_w_rd_data_count[7] = \<const0> ;
  assign axi_w_rd_data_count[6] = \<const0> ;
  assign axi_w_rd_data_count[5] = \<const0> ;
  assign axi_w_rd_data_count[4] = \<const0> ;
  assign axi_w_rd_data_count[3] = \<const0> ;
  assign axi_w_rd_data_count[2] = \<const0> ;
  assign axi_w_rd_data_count[1] = \<const0> ;
  assign axi_w_rd_data_count[0] = \<const0> ;
  assign axi_w_sbiterr = \<const0> ;
  assign axi_w_underflow = \<const0> ;
  assign axi_w_wr_data_count[10] = \<const0> ;
  assign axi_w_wr_data_count[9] = \<const0> ;
  assign axi_w_wr_data_count[8] = \<const0> ;
  assign axi_w_wr_data_count[7] = \<const0> ;
  assign axi_w_wr_data_count[6] = \<const0> ;
  assign axi_w_wr_data_count[5] = \<const0> ;
  assign axi_w_wr_data_count[4] = \<const0> ;
  assign axi_w_wr_data_count[3] = \<const0> ;
  assign axi_w_wr_data_count[2] = \<const0> ;
  assign axi_w_wr_data_count[1] = \<const0> ;
  assign axi_w_wr_data_count[0] = \<const0> ;
  assign axis_data_count[6] = \<const0> ;
  assign axis_data_count[5] = \<const0> ;
  assign axis_data_count[4] = \<const0> ;
  assign axis_data_count[3] = \<const0> ;
  assign axis_data_count[2] = \<const0> ;
  assign axis_data_count[1] = \<const0> ;
  assign axis_data_count[0] = \<const0> ;
  assign axis_dbiterr = \<const0> ;
  assign axis_prog_empty = \<const0> ;
  assign axis_prog_full = \<const0> ;
  assign axis_rd_data_count[6] = \<const0> ;
  assign axis_rd_data_count[5] = \<const0> ;
  assign axis_rd_data_count[4] = \<const0> ;
  assign axis_rd_data_count[3] = \<const0> ;
  assign axis_rd_data_count[2] = \<const0> ;
  assign axis_rd_data_count[1] = \<const0> ;
  assign axis_rd_data_count[0] = \<const0> ;
  assign axis_sbiterr = \<const0> ;
  assign axis_underflow = \<const0> ;
  assign axis_wr_data_count[6] = \<const0> ;
  assign axis_wr_data_count[5] = \<const0> ;
  assign axis_wr_data_count[4] = \<const0> ;
  assign axis_wr_data_count[3] = \<const0> ;
  assign axis_wr_data_count[2] = \<const0> ;
  assign axis_wr_data_count[1] = \<const0> ;
  assign axis_wr_data_count[0] = \<const0> ;
  assign data_count[9] = \<const0> ;
  assign data_count[8] = \<const0> ;
  assign data_count[7] = \<const0> ;
  assign data_count[6] = \<const0> ;
  assign data_count[5] = \<const0> ;
  assign data_count[4] = \<const0> ;
  assign data_count[3] = \<const0> ;
  assign data_count[2] = \<const0> ;
  assign data_count[1] = \<const0> ;
  assign data_count[0] = \<const0> ;
  assign dbiterr = \<const0> ;
  assign dout[17] = \<const0> ;
  assign dout[16] = \<const0> ;
  assign dout[15] = \<const0> ;
  assign dout[14] = \<const0> ;
  assign dout[13] = \<const0> ;
  assign dout[12] = \<const0> ;
  assign dout[11] = \<const0> ;
  assign dout[10] = \<const0> ;
  assign dout[9] = \<const0> ;
  assign dout[8] = \<const0> ;
  assign dout[7] = \<const0> ;
  assign dout[6] = \<const0> ;
  assign dout[5] = \<const0> ;
  assign dout[4] = \<const0> ;
  assign dout[3] = \<const0> ;
  assign dout[2] = \<const0> ;
  assign dout[1] = \<const0> ;
  assign dout[0] = \<const0> ;
  assign empty = \<const1> ;
  assign full = \<const0> ;
  assign m_axi_araddr[31] = \<const0> ;
  assign m_axi_araddr[30] = \<const0> ;
  assign m_axi_araddr[29] = \<const0> ;
  assign m_axi_araddr[28] = \<const0> ;
  assign m_axi_araddr[27] = \<const0> ;
  assign m_axi_araddr[26] = \<const0> ;
  assign m_axi_araddr[25] = \<const0> ;
  assign m_axi_araddr[24] = \<const0> ;
  assign m_axi_araddr[23] = \<const0> ;
  assign m_axi_araddr[22] = \<const0> ;
  assign m_axi_araddr[21] = \<const0> ;
  assign m_axi_araddr[20] = \<const0> ;
  assign m_axi_araddr[19] = \<const0> ;
  assign m_axi_araddr[18] = \<const0> ;
  assign m_axi_araddr[17] = \<const0> ;
  assign m_axi_araddr[16] = \<const0> ;
  assign m_axi_araddr[15] = \<const0> ;
  assign m_axi_araddr[14] = \<const0> ;
  assign m_axi_araddr[13] = \<const0> ;
  assign m_axi_araddr[12] = \<const0> ;
  assign m_axi_araddr[11] = \<const0> ;
  assign m_axi_araddr[10] = \<const0> ;
  assign m_axi_araddr[9] = \<const0> ;
  assign m_axi_araddr[8] = \<const0> ;
  assign m_axi_araddr[7] = \<const0> ;
  assign m_axi_araddr[6] = \<const0> ;
  assign m_axi_araddr[5] = \<const0> ;
  assign m_axi_araddr[4] = \<const0> ;
  assign m_axi_araddr[3] = \<const0> ;
  assign m_axi_araddr[2] = \<const0> ;
  assign m_axi_araddr[1] = \<const0> ;
  assign m_axi_araddr[0] = \<const0> ;
  assign m_axi_arburst[1] = \<const0> ;
  assign m_axi_arburst[0] = \<const0> ;
  assign m_axi_arcache[3] = \<const0> ;
  assign m_axi_arcache[2] = \<const0> ;
  assign m_axi_arcache[1] = \<const0> ;
  assign m_axi_arcache[0] = \<const0> ;
  assign m_axi_arid[0] = \<const0> ;
  assign m_axi_arlen[7] = \<const0> ;
  assign m_axi_arlen[6] = \<const0> ;
  assign m_axi_arlen[5] = \<const0> ;
  assign m_axi_arlen[4] = \<const0> ;
  assign m_axi_arlen[3] = \<const0> ;
  assign m_axi_arlen[2] = \<const0> ;
  assign m_axi_arlen[1] = \<const0> ;
  assign m_axi_arlen[0] = \<const0> ;
  assign m_axi_arlock[0] = \<const0> ;
  assign m_axi_arprot[2] = \<const0> ;
  assign m_axi_arprot[1] = \<const0> ;
  assign m_axi_arprot[0] = \<const0> ;
  assign m_axi_arqos[3] = \<const0> ;
  assign m_axi_arqos[2] = \<const0> ;
  assign m_axi_arqos[1] = \<const0> ;
  assign m_axi_arqos[0] = \<const0> ;
  assign m_axi_arregion[3] = \<const0> ;
  assign m_axi_arregion[2] = \<const0> ;
  assign m_axi_arregion[1] = \<const0> ;
  assign m_axi_arregion[0] = \<const0> ;
  assign m_axi_arsize[2] = \<const0> ;
  assign m_axi_arsize[1] = \<const0> ;
  assign m_axi_arsize[0] = \<const0> ;
  assign m_axi_aruser[0] = \<const0> ;
  assign m_axi_arvalid = \<const0> ;
  assign m_axi_awaddr[31] = \<const0> ;
  assign m_axi_awaddr[30] = \<const0> ;
  assign m_axi_awaddr[29] = \<const0> ;
  assign m_axi_awaddr[28] = \<const0> ;
  assign m_axi_awaddr[27] = \<const0> ;
  assign m_axi_awaddr[26] = \<const0> ;
  assign m_axi_awaddr[25] = \<const0> ;
  assign m_axi_awaddr[24] = \<const0> ;
  assign m_axi_awaddr[23] = \<const0> ;
  assign m_axi_awaddr[22] = \<const0> ;
  assign m_axi_awaddr[21] = \<const0> ;
  assign m_axi_awaddr[20] = \<const0> ;
  assign m_axi_awaddr[19] = \<const0> ;
  assign m_axi_awaddr[18] = \<const0> ;
  assign m_axi_awaddr[17] = \<const0> ;
  assign m_axi_awaddr[16] = \<const0> ;
  assign m_axi_awaddr[15] = \<const0> ;
  assign m_axi_awaddr[14] = \<const0> ;
  assign m_axi_awaddr[13] = \<const0> ;
  assign m_axi_awaddr[12] = \<const0> ;
  assign m_axi_awaddr[11] = \<const0> ;
  assign m_axi_awaddr[10] = \<const0> ;
  assign m_axi_awaddr[9] = \<const0> ;
  assign m_axi_awaddr[8] = \<const0> ;
  assign m_axi_awaddr[7] = \<const0> ;
  assign m_axi_awaddr[6] = \<const0> ;
  assign m_axi_awaddr[5] = \<const0> ;
  assign m_axi_awaddr[4] = \<const0> ;
  assign m_axi_awaddr[3] = \<const0> ;
  assign m_axi_awaddr[2] = \<const0> ;
  assign m_axi_awaddr[1] = \<const0> ;
  assign m_axi_awaddr[0] = \<const0> ;
  assign m_axi_awburst[1] = \<const0> ;
  assign m_axi_awburst[0] = \<const0> ;
  assign m_axi_awcache[3] = \<const0> ;
  assign m_axi_awcache[2] = \<const0> ;
  assign m_axi_awcache[1] = \<const0> ;
  assign m_axi_awcache[0] = \<const0> ;
  assign m_axi_awid[0] = \<const0> ;
  assign m_axi_awlen[7] = \<const0> ;
  assign m_axi_awlen[6] = \<const0> ;
  assign m_axi_awlen[5] = \<const0> ;
  assign m_axi_awlen[4] = \<const0> ;
  assign m_axi_awlen[3] = \<const0> ;
  assign m_axi_awlen[2] = \<const0> ;
  assign m_axi_awlen[1] = \<const0> ;
  assign m_axi_awlen[0] = \<const0> ;
  assign m_axi_awlock[0] = \<const0> ;
  assign m_axi_awprot[2] = \<const0> ;
  assign m_axi_awprot[1] = \<const0> ;
  assign m_axi_awprot[0] = \<const0> ;
  assign m_axi_awqos[3] = \<const0> ;
  assign m_axi_awqos[2] = \<const0> ;
  assign m_axi_awqos[1] = \<const0> ;
  assign m_axi_awqos[0] = \<const0> ;
  assign m_axi_awregion[3] = \<const0> ;
  assign m_axi_awregion[2] = \<const0> ;
  assign m_axi_awregion[1] = \<const0> ;
  assign m_axi_awregion[0] = \<const0> ;
  assign m_axi_awsize[2] = \<const0> ;
  assign m_axi_awsize[1] = \<const0> ;
  assign m_axi_awsize[0] = \<const0> ;
  assign m_axi_awuser[0] = \<const0> ;
  assign m_axi_awvalid = \<const0> ;
  assign m_axi_bready = \<const0> ;
  assign m_axi_rready = \<const0> ;
  assign m_axi_wdata[63] = \<const0> ;
  assign m_axi_wdata[62] = \<const0> ;
  assign m_axi_wdata[61] = \<const0> ;
  assign m_axi_wdata[60] = \<const0> ;
  assign m_axi_wdata[59] = \<const0> ;
  assign m_axi_wdata[58] = \<const0> ;
  assign m_axi_wdata[57] = \<const0> ;
  assign m_axi_wdata[56] = \<const0> ;
  assign m_axi_wdata[55] = \<const0> ;
  assign m_axi_wdata[54] = \<const0> ;
  assign m_axi_wdata[53] = \<const0> ;
  assign m_axi_wdata[52] = \<const0> ;
  assign m_axi_wdata[51] = \<const0> ;
  assign m_axi_wdata[50] = \<const0> ;
  assign m_axi_wdata[49] = \<const0> ;
  assign m_axi_wdata[48] = \<const0> ;
  assign m_axi_wdata[47] = \<const0> ;
  assign m_axi_wdata[46] = \<const0> ;
  assign m_axi_wdata[45] = \<const0> ;
  assign m_axi_wdata[44] = \<const0> ;
  assign m_axi_wdata[43] = \<const0> ;
  assign m_axi_wdata[42] = \<const0> ;
  assign m_axi_wdata[41] = \<const0> ;
  assign m_axi_wdata[40] = \<const0> ;
  assign m_axi_wdata[39] = \<const0> ;
  assign m_axi_wdata[38] = \<const0> ;
  assign m_axi_wdata[37] = \<const0> ;
  assign m_axi_wdata[36] = \<const0> ;
  assign m_axi_wdata[35] = \<const0> ;
  assign m_axi_wdata[34] = \<const0> ;
  assign m_axi_wdata[33] = \<const0> ;
  assign m_axi_wdata[32] = \<const0> ;
  assign m_axi_wdata[31] = \<const0> ;
  assign m_axi_wdata[30] = \<const0> ;
  assign m_axi_wdata[29] = \<const0> ;
  assign m_axi_wdata[28] = \<const0> ;
  assign m_axi_wdata[27] = \<const0> ;
  assign m_axi_wdata[26] = \<const0> ;
  assign m_axi_wdata[25] = \<const0> ;
  assign m_axi_wdata[24] = \<const0> ;
  assign m_axi_wdata[23] = \<const0> ;
  assign m_axi_wdata[22] = \<const0> ;
  assign m_axi_wdata[21] = \<const0> ;
  assign m_axi_wdata[20] = \<const0> ;
  assign m_axi_wdata[19] = \<const0> ;
  assign m_axi_wdata[18] = \<const0> ;
  assign m_axi_wdata[17] = \<const0> ;
  assign m_axi_wdata[16] = \<const0> ;
  assign m_axi_wdata[15] = \<const0> ;
  assign m_axi_wdata[14] = \<const0> ;
  assign m_axi_wdata[13] = \<const0> ;
  assign m_axi_wdata[12] = \<const0> ;
  assign m_axi_wdata[11] = \<const0> ;
  assign m_axi_wdata[10] = \<const0> ;
  assign m_axi_wdata[9] = \<const0> ;
  assign m_axi_wdata[8] = \<const0> ;
  assign m_axi_wdata[7] = \<const0> ;
  assign m_axi_wdata[6] = \<const0> ;
  assign m_axi_wdata[5] = \<const0> ;
  assign m_axi_wdata[4] = \<const0> ;
  assign m_axi_wdata[3] = \<const0> ;
  assign m_axi_wdata[2] = \<const0> ;
  assign m_axi_wdata[1] = \<const0> ;
  assign m_axi_wdata[0] = \<const0> ;
  assign m_axi_wid[0] = \<const0> ;
  assign m_axi_wlast = \<const0> ;
  assign m_axi_wstrb[7] = \<const0> ;
  assign m_axi_wstrb[6] = \<const0> ;
  assign m_axi_wstrb[5] = \<const0> ;
  assign m_axi_wstrb[4] = \<const0> ;
  assign m_axi_wstrb[3] = \<const0> ;
  assign m_axi_wstrb[2] = \<const0> ;
  assign m_axi_wstrb[1] = \<const0> ;
  assign m_axi_wstrb[0] = \<const0> ;
  assign m_axi_wuser[0] = \<const0> ;
  assign m_axi_wvalid = \<const0> ;
  assign overflow = \<const0> ;
  assign prog_empty = \<const1> ;
  assign prog_full = \<const0> ;
  assign rd_data_count[9] = \<const0> ;
  assign rd_data_count[8] = \<const0> ;
  assign rd_data_count[7] = \<const0> ;
  assign rd_data_count[6] = \<const0> ;
  assign rd_data_count[5] = \<const0> ;
  assign rd_data_count[4] = \<const0> ;
  assign rd_data_count[3] = \<const0> ;
  assign rd_data_count[2] = \<const0> ;
  assign rd_data_count[1] = \<const0> ;
  assign rd_data_count[0] = \<const0> ;
  assign rd_rst_busy = \<const0> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_buser[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_rdata[63] = \<const0> ;
  assign s_axi_rdata[62] = \<const0> ;
  assign s_axi_rdata[61] = \<const0> ;
  assign s_axi_rdata[60] = \<const0> ;
  assign s_axi_rdata[59] = \<const0> ;
  assign s_axi_rdata[58] = \<const0> ;
  assign s_axi_rdata[57] = \<const0> ;
  assign s_axi_rdata[56] = \<const0> ;
  assign s_axi_rdata[55] = \<const0> ;
  assign s_axi_rdata[54] = \<const0> ;
  assign s_axi_rdata[53] = \<const0> ;
  assign s_axi_rdata[52] = \<const0> ;
  assign s_axi_rdata[51] = \<const0> ;
  assign s_axi_rdata[50] = \<const0> ;
  assign s_axi_rdata[49] = \<const0> ;
  assign s_axi_rdata[48] = \<const0> ;
  assign s_axi_rdata[47] = \<const0> ;
  assign s_axi_rdata[46] = \<const0> ;
  assign s_axi_rdata[45] = \<const0> ;
  assign s_axi_rdata[44] = \<const0> ;
  assign s_axi_rdata[43] = \<const0> ;
  assign s_axi_rdata[42] = \<const0> ;
  assign s_axi_rdata[41] = \<const0> ;
  assign s_axi_rdata[40] = \<const0> ;
  assign s_axi_rdata[39] = \<const0> ;
  assign s_axi_rdata[38] = \<const0> ;
  assign s_axi_rdata[37] = \<const0> ;
  assign s_axi_rdata[36] = \<const0> ;
  assign s_axi_rdata[35] = \<const0> ;
  assign s_axi_rdata[34] = \<const0> ;
  assign s_axi_rdata[33] = \<const0> ;
  assign s_axi_rdata[32] = \<const0> ;
  assign s_axi_rdata[31] = \<const0> ;
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_ruser[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_wready = \<const0> ;
  assign sbiterr = \<const0> ;
  assign underflow = \<const0> ;
  assign valid = \<const0> ;
  assign wr_ack = \<const0> ;
  assign wr_data_count[9] = \<const0> ;
  assign wr_data_count[8] = \<const0> ;
  assign wr_data_count[7] = \<const0> ;
  assign wr_data_count[6] = \<const0> ;
  assign wr_data_count[5] = \<const0> ;
  assign wr_data_count[4] = \<const0> ;
  assign wr_data_count[3] = \<const0> ;
  assign wr_data_count[2] = \<const0> ;
  assign wr_data_count[1] = \<const0> ;
  assign wr_data_count[0] = \<const0> ;
  assign wr_rst_busy = \<const0> ;
GND GND
       (.G(\<const0> ));
VCC VCC
       (.P(\<const1> ));
t_axi4_stream32_sfifo_d64fifo_generator_v11_0_synth inst_fifo_gen
       (.DI({s_axis_tdata,s_axis_tstrb,s_axis_tkeep,s_axis_tid,s_axis_tdest,s_axis_tuser,s_axis_tlast}),
        .Q({m_axis_tdata,m_axis_tstrb,m_axis_tkeep,m_axis_tid,m_axis_tdest,m_axis_tuser,m_axis_tlast}),
        .axis_overflow(axis_overflow),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .s_aclk(s_aclk),
        .s_aresetn(s_aresetn),
        .s_axis_tready(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

module t_axi4_stream32_sfifo_d64fifo_generator_v11_0_synth
   (Q,
    axis_overflow,
    s_axis_tready,
    m_axis_tvalid,
    m_axis_tready,
    s_aclk,
    DI,
    s_axis_tvalid,
    s_aresetn);
  output [52:0]Q;
  output axis_overflow;
  output s_axis_tready;
  output m_axis_tvalid;
  input m_axis_tready;
  input s_aclk;
  input [52:0]DI;
  input s_axis_tvalid;
  input s_aresetn;

  wire [52:0]DI;
  wire [52:0]Q;
  wire axis_overflow;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire s_aclk;
  wire s_aresetn;
  wire s_axis_tready;
  wire s_axis_tvalid;

t_axi4_stream32_sfifo_d64fifo_generator_top \gaxis_fifo.gaxisf.axisf 
       (.DI(DI),
        .Q(Q),
        .axis_overflow(axis_overflow),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .s_aclk(s_aclk),
        .s_aresetn(s_aresetn),
        .s_axis_tready(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

module t_axi4_stream32_sfifo_d64memory
   (O1,
    I1,
    s_aclk,
    E,
    DI,
    O2,
    Q,
    I2);
  output [52:0]O1;
  input I1;
  input s_aclk;
  input [0:0]E;
  input [52:0]DI;
  input [5:0]O2;
  input [5:0]Q;
  input [0:0]I2;

  wire \<const0> ;
  wire [52:0]DI;
  wire [0:0]E;
  wire I1;
  wire [0:0]I2;
  wire [52:0]O1;
  wire [5:0]O2;
  wire [5:0]Q;
  wire [52:0]p_0_out;
  wire s_aclk;

GND GND
       (.G(\<const0> ));
t_axi4_stream32_sfifo_d64dmem \gdm.dm 
       (.D(p_0_out),
        .DI(DI),
        .E(E),
        .I1(I1),
        .O2(O2),
        .Q(Q),
        .s_aclk(s_aclk));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[0] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[0]),
        .Q(O1[0]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[10] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[10]),
        .Q(O1[10]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[11] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[11]),
        .Q(O1[11]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[12] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[12]),
        .Q(O1[12]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[13] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[13]),
        .Q(O1[13]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[14] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[14]),
        .Q(O1[14]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[15] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[15]),
        .Q(O1[15]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[16] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[16]),
        .Q(O1[16]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[17] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[17]),
        .Q(O1[17]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[18] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[18]),
        .Q(O1[18]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[19] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[19]),
        .Q(O1[19]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[1] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[1]),
        .Q(O1[1]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[20] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[20]),
        .Q(O1[20]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[21] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[21]),
        .Q(O1[21]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[22] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[22]),
        .Q(O1[22]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[23] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[23]),
        .Q(O1[23]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[24] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[24]),
        .Q(O1[24]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[25] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[25]),
        .Q(O1[25]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[26] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[26]),
        .Q(O1[26]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[27] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[27]),
        .Q(O1[27]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[28] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[28]),
        .Q(O1[28]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[29] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[29]),
        .Q(O1[29]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[2] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[2]),
        .Q(O1[2]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[30] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[30]),
        .Q(O1[30]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[31] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[31]),
        .Q(O1[31]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[32] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[32]),
        .Q(O1[32]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[33] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[33]),
        .Q(O1[33]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[34] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[34]),
        .Q(O1[34]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[35] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[35]),
        .Q(O1[35]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[36] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[36]),
        .Q(O1[36]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[37] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[37]),
        .Q(O1[37]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[38] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[38]),
        .Q(O1[38]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[39] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[39]),
        .Q(O1[39]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[3] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[3]),
        .Q(O1[3]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[40] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[40]),
        .Q(O1[40]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[41] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[41]),
        .Q(O1[41]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[42] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[42]),
        .Q(O1[42]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[43] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[43]),
        .Q(O1[43]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[44] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[44]),
        .Q(O1[44]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[45] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[45]),
        .Q(O1[45]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[46] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[46]),
        .Q(O1[46]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[47] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[47]),
        .Q(O1[47]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[48] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[48]),
        .Q(O1[48]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[49] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[49]),
        .Q(O1[49]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[4] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[4]),
        .Q(O1[4]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[50] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[50]),
        .Q(O1[50]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[51] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[51]),
        .Q(O1[51]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[52] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[52]),
        .Q(O1[52]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[5] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[5]),
        .Q(O1[5]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[6] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[6]),
        .Q(O1[6]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[7] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[7]),
        .Q(O1[7]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[8] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[8]),
        .Q(O1[8]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[9] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[9]),
        .Q(O1[9]),
        .R(\<const0> ));
endmodule

module t_axi4_stream32_sfifo_d64rd_bin_cntr
   (Q,
    O1,
    ram_full_comb,
    O2,
    I1,
    I2,
    p_17_out,
    s_axis_tvalid,
    p_1_out,
    I3,
    I4,
    I5,
    I6,
    E,
    s_aclk,
    I7);
  output [0:0]Q;
  output O1;
  output ram_full_comb;
  output [5:0]O2;
  input [5:0]I1;
  input I2;
  input p_17_out;
  input s_axis_tvalid;
  input p_1_out;
  input [0:0]I3;
  input I4;
  input I5;
  input I6;
  input [0:0]E;
  input s_aclk;
  input [0:0]I7;

  wire [0:0]E;
  wire [5:0]I1;
  wire I2;
  wire [0:0]I3;
  wire I4;
  wire I5;
  wire I6;
  wire [0:0]I7;
  wire O1;
  wire [5:0]O2;
  wire [0:0]Q;
  wire n_0_ram_empty_fb_i_i_2;
  wire n_0_ram_empty_fb_i_i_3;
  wire n_0_ram_empty_fb_i_i_5;
  wire n_0_ram_empty_fb_i_i_6;
  wire n_0_ram_empty_fb_i_i_7;
  wire p_17_out;
  wire p_1_out;
  wire [5:0]plusOp;
  wire ram_full_comb;
  wire [4:0]rd_pntr_plus1;
  wire s_aclk;
  wire s_axis_tvalid;

LUT1 #(
    .INIT(2'h1)) 
     \gc0.count[0]_i_1 
       (.I0(rd_pntr_plus1[0]),
        .O(plusOp[0]));
(* SOFT_HLUTNM = "soft_lutpair1" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \gc0.count[1]_i_1 
       (.I0(rd_pntr_plus1[0]),
        .I1(rd_pntr_plus1[1]),
        .O(plusOp[1]));
(* SOFT_HLUTNM = "soft_lutpair1" *) 
   LUT3 #(
    .INIT(8'h6A)) 
     \gc0.count[2]_i_1 
       (.I0(rd_pntr_plus1[2]),
        .I1(rd_pntr_plus1[0]),
        .I2(rd_pntr_plus1[1]),
        .O(plusOp[2]));
(* SOFT_HLUTNM = "soft_lutpair0" *) 
   LUT4 #(
    .INIT(16'h7F80)) 
     \gc0.count[3]_i_1 
       (.I0(rd_pntr_plus1[1]),
        .I1(rd_pntr_plus1[0]),
        .I2(rd_pntr_plus1[2]),
        .I3(rd_pntr_plus1[3]),
        .O(plusOp[3]));
(* SOFT_HLUTNM = "soft_lutpair0" *) 
   LUT5 #(
    .INIT(32'h6AAAAAAA)) 
     \gc0.count[4]_i_1 
       (.I0(rd_pntr_plus1[4]),
        .I1(rd_pntr_plus1[1]),
        .I2(rd_pntr_plus1[0]),
        .I3(rd_pntr_plus1[2]),
        .I4(rd_pntr_plus1[3]),
        .O(plusOp[4]));
LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
     \gc0.count[5]_i_1 
       (.I0(Q),
        .I1(rd_pntr_plus1[3]),
        .I2(rd_pntr_plus1[2]),
        .I3(rd_pntr_plus1[0]),
        .I4(rd_pntr_plus1[1]),
        .I5(rd_pntr_plus1[4]),
        .O(plusOp[5]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_d1_reg[0] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I7),
        .D(rd_pntr_plus1[0]),
        .Q(O2[0]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_d1_reg[1] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I7),
        .D(rd_pntr_plus1[1]),
        .Q(O2[1]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_d1_reg[2] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I7),
        .D(rd_pntr_plus1[2]),
        .Q(O2[2]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_d1_reg[3] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I7),
        .D(rd_pntr_plus1[3]),
        .Q(O2[3]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_d1_reg[4] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I7),
        .D(rd_pntr_plus1[4]),
        .Q(O2[4]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_d1_reg[5] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I7),
        .D(Q),
        .Q(O2[5]));
(* counter = "2" *) 
   FDPE #(
    .INIT(1'b1)) 
     \gc0.count_reg[0] 
       (.C(s_aclk),
        .CE(E),
        .D(plusOp[0]),
        .PRE(I7),
        .Q(rd_pntr_plus1[0]));
(* counter = "2" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gc0.count_reg[1] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I7),
        .D(plusOp[1]),
        .Q(rd_pntr_plus1[1]));
(* counter = "2" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gc0.count_reg[2] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I7),
        .D(plusOp[2]),
        .Q(rd_pntr_plus1[2]));
(* counter = "2" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gc0.count_reg[3] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I7),
        .D(plusOp[3]),
        .Q(rd_pntr_plus1[3]));
(* counter = "2" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gc0.count_reg[4] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I7),
        .D(plusOp[4]),
        .Q(rd_pntr_plus1[4]));
(* counter = "2" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gc0.count_reg[5] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I7),
        .D(plusOp[5]),
        .Q(Q));
LUT5 #(
    .INIT(32'hFAFAC0FA)) 
     ram_empty_fb_i_i_1
       (.I0(n_0_ram_empty_fb_i_i_2),
        .I1(n_0_ram_empty_fb_i_i_3),
        .I2(p_17_out),
        .I3(s_axis_tvalid),
        .I4(p_1_out),
        .O(O1));
LUT6 #(
    .INIT(64'h9009000000000000)) 
     ram_empty_fb_i_i_2
       (.I0(rd_pntr_plus1[0]),
        .I1(I1[0]),
        .I2(rd_pntr_plus1[1]),
        .I3(I1[1]),
        .I4(I2),
        .I5(n_0_ram_empty_fb_i_i_5),
        .O(n_0_ram_empty_fb_i_i_2));
LUT6 #(
    .INIT(64'hBEFFFFBEFFFFFFFF)) 
     ram_empty_fb_i_i_3
       (.I0(n_0_ram_empty_fb_i_i_6),
        .I1(O2[2]),
        .I2(I1[2]),
        .I3(O2[3]),
        .I4(I1[3]),
        .I5(n_0_ram_empty_fb_i_i_7),
        .O(n_0_ram_empty_fb_i_i_3));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     ram_empty_fb_i_i_5
       (.I0(rd_pntr_plus1[4]),
        .I1(I1[4]),
        .I2(rd_pntr_plus1[2]),
        .I3(I1[2]),
        .I4(I1[3]),
        .I5(rd_pntr_plus1[3]),
        .O(n_0_ram_empty_fb_i_i_5));
LUT4 #(
    .INIT(16'h6FF6)) 
     ram_empty_fb_i_i_6
       (.I0(O2[0]),
        .I1(I1[0]),
        .I2(O2[1]),
        .I3(I1[1]),
        .O(n_0_ram_empty_fb_i_i_6));
LUT4 #(
    .INIT(16'h9009)) 
     ram_empty_fb_i_i_7
       (.I0(O2[5]),
        .I1(I1[5]),
        .I2(O2[4]),
        .I3(I1[4]),
        .O(n_0_ram_empty_fb_i_i_7));
LUT6 #(
    .INIT(64'h0090FFFF009000FF)) 
     ram_full_fb_i_i_1
       (.I0(I3),
        .I1(O2[5]),
        .I2(I4),
        .I3(I5),
        .I4(I6),
        .I5(n_0_ram_empty_fb_i_i_3),
        .O(ram_full_comb));
endmodule

module t_axi4_stream32_sfifo_d64rd_fwft
   (O1,
    O2,
    E,
    O3,
    m_axis_tvalid,
    s_aclk,
    Q,
    I1,
    I2,
    m_axis_tready,
    p_17_out);
  output O1;
  output O2;
  output [0:0]E;
  output [0:0]O3;
  output m_axis_tvalid;
  input s_aclk;
  input [1:0]Q;
  input [0:0]I1;
  input [0:0]I2;
  input m_axis_tready;
  input p_17_out;

  wire \<const1> ;
  wire [0:0]E;
  wire [0:0]I1;
  wire [0:0]I2;
  wire O1;
  wire O2;
  wire [0:0]O3;
  wire [1:0]Q;
  wire [0:0]curr_fwft_state;
  wire empty_fwft_fb;
  wire empty_fwft_i;
  wire empty_fwft_i0;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire \n_0_gpregsm1.curr_fwft_state[1]_i_1 ;
  wire \n_0_gpregsm1.curr_fwft_state_reg[1] ;
  wire [0:0]next_fwft_state;
  wire p_17_out;
  wire s_aclk;

VCC VCC
       (.P(\<const1> ));
LUT4 #(
    .INIT(16'hCF08)) 
     empty_fwft_fb_i_1
       (.I0(m_axis_tready),
        .I1(curr_fwft_state),
        .I2(\n_0_gpregsm1.curr_fwft_state_reg[1] ),
        .I3(empty_fwft_fb),
        .O(empty_fwft_i0));
(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     empty_fwft_fb_reg
       (.C(s_aclk),
        .CE(\<const1> ),
        .D(empty_fwft_i0),
        .PRE(Q[1]),
        .Q(empty_fwft_fb));
(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     empty_fwft_i_reg
       (.C(s_aclk),
        .CE(\<const1> ),
        .D(empty_fwft_i0),
        .PRE(Q[1]),
        .Q(empty_fwft_i));
(* SOFT_HLUTNM = "soft_lutpair3" *) 
   LUT4 #(
    .INIT(16'h4555)) 
     \gc0.count_d1[5]_i_1 
       (.I0(p_17_out),
        .I1(m_axis_tready),
        .I2(curr_fwft_state),
        .I3(\n_0_gpregsm1.curr_fwft_state_reg[1] ),
        .O(E));
(* SOFT_HLUTNM = "soft_lutpair4" *) 
   LUT4 #(
    .INIT(16'h00D0)) 
     \goreg_dm.dout_i[52]_i_1 
       (.I0(curr_fwft_state),
        .I1(m_axis_tready),
        .I2(\n_0_gpregsm1.curr_fwft_state_reg[1] ),
        .I3(Q[0]),
        .O(O3));
(* SOFT_HLUTNM = "soft_lutpair3" *) 
   LUT4 #(
    .INIT(16'h4555)) 
     \gpr1.dout_i[52]_i_1 
       (.I0(p_17_out),
        .I1(m_axis_tready),
        .I2(curr_fwft_state),
        .I3(\n_0_gpregsm1.curr_fwft_state_reg[1] ),
        .O(O2));
(* SOFT_HLUTNM = "soft_lutpair2" *) 
   LUT3 #(
    .INIT(8'hAE)) 
     \gpregsm1.curr_fwft_state[0]_i_1 
       (.I0(\n_0_gpregsm1.curr_fwft_state_reg[1] ),
        .I1(curr_fwft_state),
        .I2(m_axis_tready),
        .O(next_fwft_state));
(* SOFT_HLUTNM = "soft_lutpair4" *) 
   LUT4 #(
    .INIT(16'h40FF)) 
     \gpregsm1.curr_fwft_state[1]_i_1 
       (.I0(m_axis_tready),
        .I1(curr_fwft_state),
        .I2(\n_0_gpregsm1.curr_fwft_state_reg[1] ),
        .I3(p_17_out),
        .O(\n_0_gpregsm1.curr_fwft_state[1]_i_1 ));
(* equivalent_register_removal = "no" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gpregsm1.curr_fwft_state_reg[0] 
       (.C(s_aclk),
        .CE(\<const1> ),
        .CLR(Q[1]),
        .D(next_fwft_state),
        .Q(curr_fwft_state));
(* equivalent_register_removal = "no" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gpregsm1.curr_fwft_state_reg[1] 
       (.C(s_aclk),
        .CE(\<const1> ),
        .CLR(Q[1]),
        .D(\n_0_gpregsm1.curr_fwft_state[1]_i_1 ),
        .Q(\n_0_gpregsm1.curr_fwft_state_reg[1] ));
LUT1 #(
    .INIT(2'h1)) 
     m_axis_tvalid_INST_0
       (.I0(empty_fwft_i),
        .O(m_axis_tvalid));
(* SOFT_HLUTNM = "soft_lutpair2" *) 
   LUT5 #(
    .INIT(32'h90999999)) 
     ram_empty_fb_i_i_4
       (.I0(I1),
        .I1(I2),
        .I2(m_axis_tready),
        .I3(curr_fwft_state),
        .I4(\n_0_gpregsm1.curr_fwft_state_reg[1] ),
        .O(O1));
endmodule

module t_axi4_stream32_sfifo_d64rd_logic
   (O1,
    E,
    ram_full_comb,
    O2,
    m_axis_tvalid,
    s_aclk,
    Q,
    I1,
    m_axis_tready,
    s_axis_tvalid,
    p_1_out,
    I2,
    I3,
    I4);
  output O1;
  output [0:0]E;
  output ram_full_comb;
  output [5:0]O2;
  output m_axis_tvalid;
  input s_aclk;
  input [1:0]Q;
  input [5:0]I1;
  input m_axis_tready;
  input s_axis_tvalid;
  input p_1_out;
  input [0:0]I2;
  input I3;
  input I4;

  wire [0:0]E;
  wire [5:0]I1;
  wire [0:0]I2;
  wire I3;
  wire I4;
  wire O1;
  wire [5:0]O2;
  wire [1:0]Q;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire \n_0_gr1.rfwft ;
  wire n_1_rpntr;
  wire \n_2_gr1.rfwft ;
  wire p_17_out;
  wire p_1_out;
  wire ram_full_comb;
  wire [5:5]rd_pntr_plus1;
  wire s_aclk;
  wire s_axis_tvalid;

t_axi4_stream32_sfifo_d64rd_fwft \gr1.rfwft 
       (.E(\n_2_gr1.rfwft ),
        .I1(I1[5]),
        .I2(rd_pntr_plus1),
        .O1(\n_0_gr1.rfwft ),
        .O2(O1),
        .O3(E),
        .Q(Q),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .p_17_out(p_17_out),
        .s_aclk(s_aclk));
t_axi4_stream32_sfifo_d64rd_status_flags_ss \grss.rsts 
       (.I1(n_1_rpntr),
        .Q(Q[1]),
        .p_17_out(p_17_out),
        .s_aclk(s_aclk));
t_axi4_stream32_sfifo_d64rd_bin_cntr rpntr
       (.E(\n_2_gr1.rfwft ),
        .I1(I1),
        .I2(\n_0_gr1.rfwft ),
        .I3(I2),
        .I4(I3),
        .I5(O1),
        .I6(I4),
        .I7(Q[1]),
        .O1(n_1_rpntr),
        .O2(O2),
        .Q(rd_pntr_plus1),
        .p_17_out(p_17_out),
        .p_1_out(p_1_out),
        .ram_full_comb(ram_full_comb),
        .s_aclk(s_aclk),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

module t_axi4_stream32_sfifo_d64rd_status_flags_ss
   (p_17_out,
    I1,
    s_aclk,
    Q);
  output p_17_out;
  input I1;
  input s_aclk;
  input [0:0]Q;

  wire \<const1> ;
  wire I1;
  wire [0:0]Q;
  wire p_17_out;
  wire s_aclk;

VCC VCC
       (.P(\<const1> ));
(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     ram_empty_fb_i_reg
       (.C(s_aclk),
        .CE(\<const1> ),
        .D(I1),
        .PRE(Q),
        .Q(p_17_out));
endmodule

module t_axi4_stream32_sfifo_d64reset_blk_ramfifo
   (AR,
    rst_d2,
    O1,
    Q,
    s_aclk,
    p_1_out,
    s_aresetn);
  output [0:0]AR;
  output rst_d2;
  output O1;
  output [1:0]Q;
  input s_aclk;
  input p_1_out;
  input s_aresetn;

  wire \<const0> ;
  wire \<const1> ;
  wire [0:0]AR;
  wire O1;
  wire [1:0]Q;
  wire inverted_reset;
  wire \n_0_ngwrdrst.grst.g7serrst.rd_rst_asreg_i_1 ;
  wire \n_0_ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1 ;
  wire \n_0_ngwrdrst.grst.g7serrst.wr_rst_asreg_i_1 ;
  wire \n_0_ngwrdrst.grst.g7serrst.wr_rst_reg[1]_i_1 ;
  wire p_1_out;
  wire rd_rst_asreg;
  wire rd_rst_asreg_d1;
  wire rd_rst_asreg_d2;
  wire rst_d1;
  wire rst_d2;
  wire rst_d3;
  wire rst_full_gen_i;
  wire s_aclk;
  wire s_aresetn;
  wire wr_rst_asreg;
  wire wr_rst_asreg_d1;
  wire wr_rst_asreg_d2;

GND GND
       (.G(\<const0> ));
VCC VCC
       (.P(\<const1> ));
LUT1 #(
    .INIT(2'h1)) 
     \grstd1.grst_full.grst_f.RST_FULL_GEN_i_1 
       (.I0(s_aresetn),
        .O(inverted_reset));
FDCE #(
    .INIT(1'b0)) 
     \grstd1.grst_full.grst_f.RST_FULL_GEN_reg 
       (.C(s_aclk),
        .CE(\<const1> ),
        .CLR(inverted_reset),
        .D(rst_d3),
        .Q(rst_full_gen_i));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDPE #(
    .INIT(1'b1)) 
     \grstd1.grst_full.grst_f.rst_d1_reg 
       (.C(s_aclk),
        .CE(\<const1> ),
        .D(\<const0> ),
        .PRE(inverted_reset),
        .Q(rst_d1));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDPE #(
    .INIT(1'b1)) 
     \grstd1.grst_full.grst_f.rst_d2_reg 
       (.C(s_aclk),
        .CE(\<const1> ),
        .D(rst_d1),
        .PRE(inverted_reset),
        .Q(rst_d2));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDPE #(
    .INIT(1'b1)) 
     \grstd1.grst_full.grst_f.rst_d3_reg 
       (.C(s_aclk),
        .CE(\<const1> ),
        .D(rst_d2),
        .PRE(inverted_reset),
        .Q(rst_d3));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDRE #(
    .INIT(1'b0)) 
     \ngwrdrst.grst.g7serrst.rd_rst_asreg_d1_reg 
       (.C(s_aclk),
        .CE(\<const1> ),
        .D(rd_rst_asreg),
        .Q(rd_rst_asreg_d1),
        .R(\<const0> ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDRE #(
    .INIT(1'b0)) 
     \ngwrdrst.grst.g7serrst.rd_rst_asreg_d2_reg 
       (.C(s_aclk),
        .CE(\<const1> ),
        .D(rd_rst_asreg_d1),
        .Q(rd_rst_asreg_d2),
        .R(\<const0> ));
LUT2 #(
    .INIT(4'h2)) 
     \ngwrdrst.grst.g7serrst.rd_rst_asreg_i_1 
       (.I0(rd_rst_asreg),
        .I1(rd_rst_asreg_d1),
        .O(\n_0_ngwrdrst.grst.g7serrst.rd_rst_asreg_i_1 ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDPE \ngwrdrst.grst.g7serrst.rd_rst_asreg_reg 
       (.C(s_aclk),
        .CE(\<const1> ),
        .D(\n_0_ngwrdrst.grst.g7serrst.rd_rst_asreg_i_1 ),
        .PRE(inverted_reset),
        .Q(rd_rst_asreg));
LUT2 #(
    .INIT(4'h2)) 
     \ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1 
       (.I0(rd_rst_asreg),
        .I1(rd_rst_asreg_d2),
        .O(\n_0_ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1 ));
(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] 
       (.C(s_aclk),
        .CE(\<const1> ),
        .D(\<const0> ),
        .PRE(\n_0_ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1 ),
        .Q(Q[0]));
(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] 
       (.C(s_aclk),
        .CE(\<const1> ),
        .D(\<const0> ),
        .PRE(\n_0_ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1 ),
        .Q(Q[1]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDRE #(
    .INIT(1'b0)) 
     \ngwrdrst.grst.g7serrst.wr_rst_asreg_d1_reg 
       (.C(s_aclk),
        .CE(\<const1> ),
        .D(wr_rst_asreg),
        .Q(wr_rst_asreg_d1),
        .R(\<const0> ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDRE #(
    .INIT(1'b0)) 
     \ngwrdrst.grst.g7serrst.wr_rst_asreg_d2_reg 
       (.C(s_aclk),
        .CE(\<const1> ),
        .D(wr_rst_asreg_d1),
        .Q(wr_rst_asreg_d2),
        .R(\<const0> ));
LUT2 #(
    .INIT(4'h2)) 
     \ngwrdrst.grst.g7serrst.wr_rst_asreg_i_1 
       (.I0(wr_rst_asreg),
        .I1(wr_rst_asreg_d1),
        .O(\n_0_ngwrdrst.grst.g7serrst.wr_rst_asreg_i_1 ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDPE \ngwrdrst.grst.g7serrst.wr_rst_asreg_reg 
       (.C(s_aclk),
        .CE(\<const1> ),
        .D(\n_0_ngwrdrst.grst.g7serrst.wr_rst_asreg_i_1 ),
        .PRE(inverted_reset),
        .Q(wr_rst_asreg));
LUT2 #(
    .INIT(4'h2)) 
     \ngwrdrst.grst.g7serrst.wr_rst_reg[1]_i_1 
       (.I0(wr_rst_asreg),
        .I1(wr_rst_asreg_d2),
        .O(\n_0_ngwrdrst.grst.g7serrst.wr_rst_reg[1]_i_1 ));
(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] 
       (.C(s_aclk),
        .CE(\<const1> ),
        .D(\<const0> ),
        .PRE(\n_0_ngwrdrst.grst.g7serrst.wr_rst_reg[1]_i_1 ),
        .Q(AR));
LUT2 #(
    .INIT(4'hB)) 
     ram_full_fb_i_i_3
       (.I0(rst_full_gen_i),
        .I1(p_1_out),
        .O(O1));
endmodule

module t_axi4_stream32_sfifo_d64wr_bin_cntr
   (O1,
    Q,
    O3,
    O2,
    E,
    s_aclk,
    AR);
  output O1;
  output [0:0]Q;
  output [5:0]O3;
  input [4:0]O2;
  input [0:0]E;
  input s_aclk;
  input [0:0]AR;

  wire [0:0]AR;
  wire [0:0]E;
  wire O1;
  wire [4:0]O2;
  wire [5:0]O3;
  wire [0:0]Q;
  wire n_0_ram_full_fb_i_i_4;
  wire [5:0]plusOp__0;
  wire s_aclk;
  wire [4:0]wr_pntr_plus1;

LUT1 #(
    .INIT(2'h1)) 
     \gcc0.gc0.count[0]_i_1 
       (.I0(wr_pntr_plus1[0]),
        .O(plusOp__0[0]));
(* SOFT_HLUTNM = "soft_lutpair6" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \gcc0.gc0.count[1]_i_1 
       (.I0(wr_pntr_plus1[0]),
        .I1(wr_pntr_plus1[1]),
        .O(plusOp__0[1]));
(* SOFT_HLUTNM = "soft_lutpair6" *) 
   LUT3 #(
    .INIT(8'h6A)) 
     \gcc0.gc0.count[2]_i_1 
       (.I0(wr_pntr_plus1[2]),
        .I1(wr_pntr_plus1[0]),
        .I2(wr_pntr_plus1[1]),
        .O(plusOp__0[2]));
(* SOFT_HLUTNM = "soft_lutpair5" *) 
   LUT4 #(
    .INIT(16'h7F80)) 
     \gcc0.gc0.count[3]_i_1 
       (.I0(wr_pntr_plus1[1]),
        .I1(wr_pntr_plus1[0]),
        .I2(wr_pntr_plus1[2]),
        .I3(wr_pntr_plus1[3]),
        .O(plusOp__0[3]));
(* SOFT_HLUTNM = "soft_lutpair5" *) 
   LUT5 #(
    .INIT(32'h6AAAAAAA)) 
     \gcc0.gc0.count[4]_i_1 
       (.I0(wr_pntr_plus1[4]),
        .I1(wr_pntr_plus1[1]),
        .I2(wr_pntr_plus1[0]),
        .I3(wr_pntr_plus1[2]),
        .I4(wr_pntr_plus1[3]),
        .O(plusOp__0[4]));
LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
     \gcc0.gc0.count[5]_i_1 
       (.I0(Q),
        .I1(wr_pntr_plus1[3]),
        .I2(wr_pntr_plus1[2]),
        .I3(wr_pntr_plus1[0]),
        .I4(wr_pntr_plus1[1]),
        .I5(wr_pntr_plus1[4]),
        .O(plusOp__0[5]));
FDCE #(
    .INIT(1'b0)) 
     \gcc0.gc0.count_d1_reg[0] 
       (.C(s_aclk),
        .CE(E),
        .CLR(AR),
        .D(wr_pntr_plus1[0]),
        .Q(O3[0]));
FDCE #(
    .INIT(1'b0)) 
     \gcc0.gc0.count_d1_reg[1] 
       (.C(s_aclk),
        .CE(E),
        .CLR(AR),
        .D(wr_pntr_plus1[1]),
        .Q(O3[1]));
FDCE #(
    .INIT(1'b0)) 
     \gcc0.gc0.count_d1_reg[2] 
       (.C(s_aclk),
        .CE(E),
        .CLR(AR),
        .D(wr_pntr_plus1[2]),
        .Q(O3[2]));
FDCE #(
    .INIT(1'b0)) 
     \gcc0.gc0.count_d1_reg[3] 
       (.C(s_aclk),
        .CE(E),
        .CLR(AR),
        .D(wr_pntr_plus1[3]),
        .Q(O3[3]));
FDCE #(
    .INIT(1'b0)) 
     \gcc0.gc0.count_d1_reg[4] 
       (.C(s_aclk),
        .CE(E),
        .CLR(AR),
        .D(wr_pntr_plus1[4]),
        .Q(O3[4]));
FDCE #(
    .INIT(1'b0)) 
     \gcc0.gc0.count_d1_reg[5] 
       (.C(s_aclk),
        .CE(E),
        .CLR(AR),
        .D(Q),
        .Q(O3[5]));
(* counter = "3" *) 
   FDPE #(
    .INIT(1'b1)) 
     \gcc0.gc0.count_reg[0] 
       (.C(s_aclk),
        .CE(E),
        .D(plusOp__0[0]),
        .PRE(AR),
        .Q(wr_pntr_plus1[0]));
(* counter = "3" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gcc0.gc0.count_reg[1] 
       (.C(s_aclk),
        .CE(E),
        .CLR(AR),
        .D(plusOp__0[1]),
        .Q(wr_pntr_plus1[1]));
(* counter = "3" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gcc0.gc0.count_reg[2] 
       (.C(s_aclk),
        .CE(E),
        .CLR(AR),
        .D(plusOp__0[2]),
        .Q(wr_pntr_plus1[2]));
(* counter = "3" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gcc0.gc0.count_reg[3] 
       (.C(s_aclk),
        .CE(E),
        .CLR(AR),
        .D(plusOp__0[3]),
        .Q(wr_pntr_plus1[3]));
(* counter = "3" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gcc0.gc0.count_reg[4] 
       (.C(s_aclk),
        .CE(E),
        .CLR(AR),
        .D(plusOp__0[4]),
        .Q(wr_pntr_plus1[4]));
(* counter = "3" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gcc0.gc0.count_reg[5] 
       (.C(s_aclk),
        .CE(E),
        .CLR(AR),
        .D(plusOp__0[5]),
        .Q(Q));
LUT6 #(
    .INIT(64'h8200000000008200)) 
     ram_full_fb_i_i_2
       (.I0(n_0_ram_full_fb_i_i_4),
        .I1(wr_pntr_plus1[1]),
        .I2(O2[1]),
        .I3(E),
        .I4(O2[0]),
        .I5(wr_pntr_plus1[0]),
        .O(O1));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     ram_full_fb_i_i_4
       (.I0(wr_pntr_plus1[2]),
        .I1(O2[2]),
        .I2(wr_pntr_plus1[3]),
        .I3(O2[3]),
        .I4(O2[4]),
        .I5(wr_pntr_plus1[4]),
        .O(n_0_ram_full_fb_i_i_4));
endmodule

module t_axi4_stream32_sfifo_d64wr_handshaking_flags
   (axis_overflow,
    I1,
    s_aclk);
  output axis_overflow;
  input I1;
  input s_aclk;

  wire \<const0> ;
  wire \<const1> ;
  wire I1;
  wire axis_overflow;
  wire s_aclk;

GND GND
       (.G(\<const0> ));
VCC VCC
       (.P(\<const1> ));
FDRE #(
    .INIT(1'b0)) 
     \gof.gof1.overflow_i_reg 
       (.C(s_aclk),
        .CE(\<const1> ),
        .D(I1),
        .Q(axis_overflow),
        .R(\<const0> ));
endmodule

module t_axi4_stream32_sfifo_d64wr_logic
   (p_1_out,
    axis_overflow,
    O1,
    Q,
    E,
    s_axis_tready,
    O3,
    ram_full_comb,
    s_aclk,
    rst_d2,
    O2,
    s_axis_tvalid,
    AR);
  output p_1_out;
  output axis_overflow;
  output O1;
  output [0:0]Q;
  output [0:0]E;
  output s_axis_tready;
  output [5:0]O3;
  input ram_full_comb;
  input s_aclk;
  input rst_d2;
  input [4:0]O2;
  input s_axis_tvalid;
  input [0:0]AR;

  wire [0:0]AR;
  wire [0:0]E;
  wire O1;
  wire [4:0]O2;
  wire [5:0]O3;
  wire [0:0]Q;
  wire axis_overflow;
  wire \n_1_gwss.wsts ;
  wire p_1_out;
  wire ram_full_comb;
  wire rst_d2;
  wire s_aclk;
  wire s_axis_tready;
  wire s_axis_tvalid;

t_axi4_stream32_sfifo_d64wr_handshaking_flags \gwhf.whf 
       (.I1(\n_1_gwss.wsts ),
        .axis_overflow(axis_overflow),
        .s_aclk(s_aclk));
t_axi4_stream32_sfifo_d64wr_status_flags_ss \gwss.wsts 
       (.E(E),
        .O1(\n_1_gwss.wsts ),
        .p_1_out(p_1_out),
        .ram_full_comb(ram_full_comb),
        .rst_d2(rst_d2),
        .s_aclk(s_aclk),
        .s_axis_tready(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid));
t_axi4_stream32_sfifo_d64wr_bin_cntr wpntr
       (.AR(AR),
        .E(E),
        .O1(O1),
        .O2(O2),
        .O3(O3),
        .Q(Q),
        .s_aclk(s_aclk));
endmodule

module t_axi4_stream32_sfifo_d64wr_status_flags_ss
   (p_1_out,
    O1,
    E,
    s_axis_tready,
    ram_full_comb,
    s_aclk,
    rst_d2,
    s_axis_tvalid);
  output p_1_out;
  output O1;
  output [0:0]E;
  output s_axis_tready;
  input ram_full_comb;
  input s_aclk;
  input rst_d2;
  input s_axis_tvalid;

  wire \<const1> ;
  wire [0:0]E;
  wire O1;
  wire p_1_out;
  wire ram_full_comb;
  wire ram_full_i;
  wire rst_d2;
  wire s_aclk;
  wire s_axis_tready;
  wire s_axis_tvalid;

LUT2 #(
    .INIT(4'h2)) 
     RAM_reg_0_63_0_2_i_1
       (.I0(s_axis_tvalid),
        .I1(p_1_out),
        .O(E));
VCC VCC
       (.P(\<const1> ));
LUT2 #(
    .INIT(4'h8)) 
     \gof.gof1.overflow_i_i_1 
       (.I0(p_1_out),
        .I1(s_axis_tvalid),
        .O(O1));
(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     ram_full_fb_i_reg
       (.C(s_aclk),
        .CE(\<const1> ),
        .D(ram_full_comb),
        .PRE(rst_d2),
        .Q(p_1_out));
(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     ram_full_i_reg
       (.C(s_aclk),
        .CE(\<const1> ),
        .D(ram_full_comb),
        .PRE(rst_d2),
        .Q(ram_full_i));
LUT1 #(
    .INIT(2'h1)) 
     s_axis_tready_INST_0
       (.I0(ram_full_i),
        .O(s_axis_tready));
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
