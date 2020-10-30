-- (c) Copyright 1995-2020 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:ip:v_scaler:8.1
-- IP Revision: 2

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

LIBRARY v_scaler_v8_1;
USE v_scaler_v8_1.v_scaler;

ENTITY v_scaler_0 IS
  PORT (
    s_axis_video_aclk : IN STD_LOGIC;
    core_clk : IN STD_LOGIC;
    m_axis_video_aclk : IN STD_LOGIC;
    s_axis_video_tdata : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
    s_axis_video_tready : OUT STD_LOGIC;
    s_axis_video_aresetn : IN STD_LOGIC;
    s_axis_video_tvalid : IN STD_LOGIC;
    s_axis_video_tlast : IN STD_LOGIC;
    s_axis_video_tuser : IN STD_LOGIC;
    m_axis_video_tdata : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
    m_axis_video_tvalid : OUT STD_LOGIC;
    m_axis_video_tready : IN STD_LOGIC;
    m_axis_video_aresetn : IN STD_LOGIC;
    m_axis_video_tlast : OUT STD_LOGIC;
    m_axis_video_tuser : OUT STD_LOGIC;
    irq : OUT STD_LOGIC;
    core_aresetn : IN STD_LOGIC;
    s_axi_awaddr : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
    s_axi_aclk : IN STD_LOGIC;
    s_axi_aresetn : IN STD_LOGIC;
    s_axi_awvalid : IN STD_LOGIC;
    s_axi_awready : OUT STD_LOGIC;
    s_axi_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_wvalid : IN STD_LOGIC;
    s_axi_wready : OUT STD_LOGIC;
    s_axi_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_bvalid : OUT STD_LOGIC;
    s_axi_bready : IN STD_LOGIC;
    s_axi_araddr : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
    s_axi_arvalid : IN STD_LOGIC;
    s_axi_arready : OUT STD_LOGIC;
    s_axi_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_rvalid : OUT STD_LOGIC;
    s_axi_rready : IN STD_LOGIC
  );
END v_scaler_0;

ARCHITECTURE v_scaler_0_arch OF v_scaler_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : string;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF v_scaler_0_arch: ARCHITECTURE IS "yes";

  COMPONENT v_scaler IS
    GENERIC (
      C_HAS_AXI4_LITE : INTEGER;
      C_HAS_IRQ : INTEGER;
      C_HAS_INTC_IF : INTEGER;
      C_HAS_DEBUG : INTEGER;
      C_FAMILY : STRING;
      C_S_AXIS_VIDEO_DATA_WIDTH : INTEGER;
      C_M_AXIS_VIDEO_DATA_WIDTH : INTEGER;
      C_S_AXIS_VIDEO_TDATA_WIDTH : INTEGER;
      C_M_AXIS_VIDEO_TDATA_WIDTH : INTEGER;
      C_M_VIDEO_FORMAT : INTEGER;
      C_S_VIDEO_FORMAT : INTEGER;
      C_M_AXIS_TUSER_WIDTH : INTEGER;
      C_S_AXIS_TUSER_WIDTH : INTEGER;
      C_MAX_ACTIVE_COLS : INTEGER;
      C_S_AXI_ADDR_WIDTH : INTEGER;
      C_S_AXI_DATA_WIDTH : INTEGER;
      C_S_AXI_CLK_FREQ_HZ : INTEGER;
      C_MIF : STRING;
      C_ELABORATION_DIR : STRING;
      C_AUTO_HW_CONFIG : INTEGER;
      C_CHROMA_FORMAT : INTEGER;
      C_LOADABLE_COEFS : INTEGER;
      C_MANUAL_HWC_VAL : INTEGER;
      C_MAX_COEF_SETS : INTEGER;
      C_MAX_LINES_IN_PER_FRAME : INTEGER;
      C_MAX_LINES_OUT_PER_FRAME : INTEGER;
      C_MAX_PHASES : INTEGER;
      C_MAX_SAMPLES_IN_PER_LINE : INTEGER;
      C_MAX_SAMPLES_OUT_PER_LINE : INTEGER;
      C_NUM_CHANNELS : INTEGER;
      C_NUM_H_TAPS : INTEGER;
      C_NUM_V_TAPS : INTEGER;
      C_READABLE_COEFS : INTEGER;
      C_SEPARATE_HV_COEFS : INTEGER;
      C_SEPARATE_YC_COEFS : INTEGER;
      C_TARGET_MAX_FRAME_RATE : INTEGER;
      C_TGT_CORE_CLK_FREQ : INTEGER;
      C_APERTURE_END_LINE : INTEGER;
      C_APERTURE_END_PIXEL : INTEGER;
      C_APERTURE_START_LINE : INTEGER;
      C_APERTURE_START_PIXEL : INTEGER;
      C_HSF : INTEGER;
      C_NUM_H_PHASES : INTEGER;
      C_NUM_V_PHASES : INTEGER;
      C_OUTPUT_H_SIZE : INTEGER;
      C_OUTPUT_V_SIZE : INTEGER;
      C_SOURCE_H_SIZE : INTEGER;
      C_SOURCE_V_SIZE : INTEGER;
      C_VSF : INTEGER
    );
    PORT (
      s_axis_video_aclk : IN STD_LOGIC;
      core_clk : IN STD_LOGIC;
      m_axis_video_aclk : IN STD_LOGIC;
      s_axis_video_tdata : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
      s_axis_video_tready : OUT STD_LOGIC;
      s_axis_video_aresetn : IN STD_LOGIC;
      s_axis_video_tvalid : IN STD_LOGIC;
      s_axis_video_tlast : IN STD_LOGIC;
      s_axis_video_tuser : IN STD_LOGIC;
      m_axis_video_tdata : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
      m_axis_video_tvalid : OUT STD_LOGIC;
      m_axis_video_tready : IN STD_LOGIC;
      m_axis_video_aresetn : IN STD_LOGIC;
      m_axis_video_tlast : OUT STD_LOGIC;
      m_axis_video_tuser : OUT STD_LOGIC;
      intc_if : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      irq : OUT STD_LOGIC;
      core_aresetn : IN STD_LOGIC;
      s_axi_awaddr : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
      s_axi_aclk : IN STD_LOGIC;
      s_axi_aresetn : IN STD_LOGIC;
      s_axi_awvalid : IN STD_LOGIC;
      s_axi_awready : OUT STD_LOGIC;
      s_axi_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_wvalid : IN STD_LOGIC;
      s_axi_wready : OUT STD_LOGIC;
      s_axi_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_bvalid : OUT STD_LOGIC;
      s_axi_bready : IN STD_LOGIC;
      s_axi_araddr : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
      s_axi_arvalid : IN STD_LOGIC;
      s_axi_arready : OUT STD_LOGIC;
      s_axi_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_rvalid : OUT STD_LOGIC;
      s_axi_rready : IN STD_LOGIC
    );
  END COMPONENT v_scaler;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF v_scaler_0_arch: ARCHITECTURE IS "v_scaler,Vivado 2013.4";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF v_scaler_0_arch : ARCHITECTURE IS "v_scaler_0,v_scaler,{v_scaler=BOUGHT}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF v_scaler_0_arch: ARCHITECTURE IS "v_scaler_0,v_scaler,{x_ipProduct=Vivado 2013.4,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=v_scaler,x_ipVersion=8.1,x_ipCoreRevision=2,x_ipLanguage=VHDL,x_ipLicense=v_scaler@2012.06(bought),C_HAS_AXI4_LITE=1,C_HAS_IRQ=1,C_HAS_INTC_IF=0,C_HAS_DEBUG=0,C_FAMILY=kintex7,C_S_AXIS_VIDEO_DATA_WIDTH=10,C_M_AXIS_VIDEO_DATA_WIDTH=10,C_S_AXIS_VIDEO_TDATA_WIDTH=24,C_M_AXIS_VIDEO_TDATA_WIDTH=24,C_M_VIDEO_FORMAT=2,C_S_VIDEO_FORMAT=12,C_M_AXIS_TUSER_WIDTH=1,C_S_AXIS_TUSER_WIDTH=1,C_MAX_ACTIVE_COLS=2048,C_S_AXI_ADDR_WIDTH=9,C_S_AXI_DATA_WIDTH=32,C_S_AXI_CLK_FREQ_HZ=100000000,C_MIF=v_scaler_0.mif,C_ELABORATION_DIR=./,C_AUTO_HW_CONFIG=0,C_CHROMA_FORMAT=2,C_LOADABLE_COEFS=1,C_MANUAL_HWC_VAL=3,C_MAX_COEF_SETS=1,C_MAX_LINES_IN_PER_FRAME=1536,C_MAX_LINES_OUT_PER_FRAME=1080,C_MAX_PHASES=4,C_MAX_SAMPLES_IN_PER_LINE=1920,C_MAX_SAMPLES_OUT_PER_LINE=1920,C_NUM_CHANNELS=2,C_NUM_H_TAPS=2,C_NUM_V_TAPS=2,C_READABLE_COEFS=0,C_SEPARATE_HV_COEFS=0,C_SEPARATE_YC_COEFS=0,C_TARGET_MAX_FRAME_RATE=60,C_TGT_CORE_CLK_FREQ=210,C_APERTURE_END_LINE=719,C_APERTURE_END_PIXEL=1279,C_APERTURE_START_LINE=0,C_APERTURE_START_PIXEL=0,C_HSF=1048576,C_NUM_H_PHASES=4,C_NUM_V_PHASES=4,C_OUTPUT_H_SIZE=1280,C_OUTPUT_V_SIZE=720,C_SOURCE_H_SIZE=1280,C_SOURCE_V_SIZE=720,C_VSF=1048576}";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_video_aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 s_axis_video_aclk_intf CLK";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_video_aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 m_axis_video_aclk_intf CLK";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_video_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 video_in TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_video_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 video_in TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_video_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 video_in TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_video_tlast: SIGNAL IS "xilinx.com:interface:axis:1.0 video_in TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_video_tuser: SIGNAL IS "xilinx.com:interface:axis:1.0 video_in TUSER";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_video_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 video_out TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_video_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 video_out TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_video_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 video_out TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_video_tlast: SIGNAL IS "xilinx.com:interface:axis:1.0 video_out TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_video_tuser: SIGNAL IS "xilinx.com:interface:axis:1.0 video_out TUSER";
  ATTRIBUTE X_INTERFACE_INFO OF irq: SIGNAL IS "xilinx.com:signal:interrupt:1.0 IRQ INTERRUPT";
  ATTRIBUTE X_INTERFACE_INFO OF core_aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 core_aresetn_intf RST";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 ctrl AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 s_axi_aclk_intf CLK";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 s_axi_aresetn_intf RST";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 ctrl AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 ctrl AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 ctrl WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_wstrb: SIGNAL IS "xilinx.com:interface:aximm:1.0 ctrl WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 ctrl WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 ctrl WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 ctrl BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 ctrl BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 ctrl BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 ctrl ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 ctrl ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 ctrl ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 ctrl RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 ctrl RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 ctrl RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 ctrl RREADY";
BEGIN
  U0 : v_scaler
    GENERIC MAP (
      C_HAS_AXI4_LITE => 1,
      C_HAS_IRQ => 1,
      C_HAS_INTC_IF => 0,
      C_HAS_DEBUG => 0,
      C_FAMILY => "kintex7",
      C_S_AXIS_VIDEO_DATA_WIDTH => 10,
      C_M_AXIS_VIDEO_DATA_WIDTH => 10,
      C_S_AXIS_VIDEO_TDATA_WIDTH => 24,
      C_M_AXIS_VIDEO_TDATA_WIDTH => 24,
      C_M_VIDEO_FORMAT => 2,
      C_S_VIDEO_FORMAT => 12,
      C_M_AXIS_TUSER_WIDTH => 1,
      C_S_AXIS_TUSER_WIDTH => 1,
      C_MAX_ACTIVE_COLS => 2048,
      C_S_AXI_ADDR_WIDTH => 9,
      C_S_AXI_DATA_WIDTH => 32,
      C_S_AXI_CLK_FREQ_HZ => 100000000,
      C_MIF => "v_scaler_0.mif",
      C_ELABORATION_DIR => "./",
      C_AUTO_HW_CONFIG => 0,
      C_CHROMA_FORMAT => 2,
      C_LOADABLE_COEFS => 1,
      C_MANUAL_HWC_VAL => 3,
      C_MAX_COEF_SETS => 1,
      C_MAX_LINES_IN_PER_FRAME => 1536,
      C_MAX_LINES_OUT_PER_FRAME => 1080,
      C_MAX_PHASES => 4,
      C_MAX_SAMPLES_IN_PER_LINE => 1920,
      C_MAX_SAMPLES_OUT_PER_LINE => 1920,
      C_NUM_CHANNELS => 2,
      C_NUM_H_TAPS => 2,
      C_NUM_V_TAPS => 2,
      C_READABLE_COEFS => 0,
      C_SEPARATE_HV_COEFS => 0,
      C_SEPARATE_YC_COEFS => 0,
      C_TARGET_MAX_FRAME_RATE => 60,
      C_TGT_CORE_CLK_FREQ => 210,
      C_APERTURE_END_LINE => 719,
      C_APERTURE_END_PIXEL => 1279,
      C_APERTURE_START_LINE => 0,
      C_APERTURE_START_PIXEL => 0,
      C_HSF => 1048576,
      C_NUM_H_PHASES => 4,
      C_NUM_V_PHASES => 4,
      C_OUTPUT_H_SIZE => 1280,
      C_OUTPUT_V_SIZE => 720,
      C_SOURCE_H_SIZE => 1280,
      C_SOURCE_V_SIZE => 720,
      C_VSF => 1048576
    )
    PORT MAP (
      s_axis_video_aclk => s_axis_video_aclk,
      core_clk => core_clk,
      m_axis_video_aclk => m_axis_video_aclk,
      s_axis_video_tdata => s_axis_video_tdata,
      s_axis_video_tready => s_axis_video_tready,
      s_axis_video_aresetn => s_axis_video_aresetn,
      s_axis_video_tvalid => s_axis_video_tvalid,
      s_axis_video_tlast => s_axis_video_tlast,
      s_axis_video_tuser => s_axis_video_tuser,
      m_axis_video_tdata => m_axis_video_tdata,
      m_axis_video_tvalid => m_axis_video_tvalid,
      m_axis_video_tready => m_axis_video_tready,
      m_axis_video_aresetn => m_axis_video_aresetn,
      m_axis_video_tlast => m_axis_video_tlast,
      m_axis_video_tuser => m_axis_video_tuser,
      irq => irq,
      core_aresetn => core_aresetn,
      s_axi_awaddr => s_axi_awaddr,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_awready => s_axi_awready,
      s_axi_wdata => s_axi_wdata,
      s_axi_wstrb => s_axi_wstrb,
      s_axi_wvalid => s_axi_wvalid,
      s_axi_wready => s_axi_wready,
      s_axi_bresp => s_axi_bresp,
      s_axi_bvalid => s_axi_bvalid,
      s_axi_bready => s_axi_bready,
      s_axi_araddr => s_axi_araddr,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_arready => s_axi_arready,
      s_axi_rdata => s_axi_rdata,
      s_axi_rresp => s_axi_rresp,
      s_axi_rvalid => s_axi_rvalid,
      s_axi_rready => s_axi_rready
    );
END v_scaler_0_arch;
