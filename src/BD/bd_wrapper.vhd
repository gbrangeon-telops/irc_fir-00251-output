-------------------------------------------------------------------------------
--
-- Title       : bd_wrapper
-- Design      : FIR_00251
-- Author      : 
-- Company     : 
--
-------------------------------------------------------------------------------
--
-- File        : d:\Telops\FIR-00251-Proc\aldec\src\bd_wrapper.vhd
-- Generated   : Mon Jan  6 13:43:39 2014
-- From        : interface description file
-- By          : Itf2Vhdl ver. 1.22
--
-------------------------------------------------------------------------------
--
-- Description : 
--
-------------------------------------------------------------------------------



library IEEE;
use IEEE.STD_LOGIC_1164.all;
use work.TEL2000.all;

entity bd_wrapper is
	port(
	AXIL_CLINK_MOSI : out t_axi4_lite_mosi;
	AXIL_CLINK_MISO : in t_axi4_lite_miso;
   
   AXIL_MGT_MOSI : out t_axi4_lite_mosi;
	AXIL_MGT_MISO : in t_axi4_lite_miso;
   
   AXIL_FB_CTRL_MOSI : out t_axi4_lite_mosi;
	AXIL_FB_CTRL_MISO : in t_axi4_lite_miso;
   
   AXIL_PLEORA_CTRL_MOSI : out t_axi4_lite_mosi;
	AXIL_PLEORA_CTRL_MISO : in t_axi4_lite_miso; 

	AXIL_SDI_CTRL_MOSI : out t_axi4_lite_mosi;
	AXIL_SDI_CTRL_MISO : in t_axi4_lite_miso;

   UART_PROC_TX : out STD_LOGIC;
   UART_PROC_RX : in STD_LOGIC;
   
   UART_STORAGE_RX : in STD_LOGIC;
   UART_STORAGE_TX : out STD_LOGIC;
    
   FB_DDR3_addr : out STD_LOGIC_VECTOR ( 14 downto 0 );
   FB_DDR3_ba : out STD_LOGIC_VECTOR ( 2 downto 0 );
   FB_DDR3_cas_n : out STD_LOGIC;
   FB_DDR3_ck_n : out STD_LOGIC_VECTOR ( 0 to 0 );
   FB_DDR3_ck_p : out STD_LOGIC_VECTOR ( 0 to 0 );
   FB_DDR3_cke : out STD_LOGIC_VECTOR ( 0 to 0 );
   FB_DDR3_cs_n : out STD_LOGIC_VECTOR ( 0 to 0 );
   FB_DDR3_dm : out STD_LOGIC_VECTOR ( 1 downto 0 );
   FB_DDR3_dq : inout STD_LOGIC_VECTOR ( 15 downto 0 );
   FB_DDR3_dqs_n : inout STD_LOGIC_VECTOR ( 1 downto 0 );
   FB_DDR3_dqs_p : inout STD_LOGIC_VECTOR ( 1 downto 0 );
   FB_DDR3_odt : out STD_LOGIC_VECTOR ( 0 to 0 );
   FB_DDR3_ras_n : out STD_LOGIC;
   FB_DDR3_reset_n : out STD_LOGIC;
   FB_DDR3_we_n : out STD_LOGIC;
    
   FB_GIGE_MM2S_mosi : in t_axi4_a32_read_mosi;
   FB_GIGE_MM2S_miso : out t_axi4_d32_read_miso;
   FB_GIGE_S2MM_mosi : in t_axi4_a32_d128_write_mosi;
   FB_GIGE_S2MM_miso : out t_axi4_write_miso;
    
   FB_SDI_MM2S_mosi : in t_axi4_a32_read_mosi;
   FB_SDI_MM2S_miso : out t_axi4_d32_read_miso;
   FB_SDI_S2MM_mosi : in t_axi4_a32_d128_write_mosi;
   FB_SDI_S2MM_miso : out t_axi4_write_miso;


   LED : OUT STD_LOGIC;
   
   --QSPI
   QSPI_PROM_IO0_IO : inout STD_LOGIC;
   QSPI_PROM_IO1_IO : inout STD_LOGIC;
   QSPI_PROM_IO2_IO : inout STD_LOGIC;
   QSPI_PROM_IO3_IO : inout STD_LOGIC;
   QSPI_PROM_SS_IO : inout STD_LOGIC;
   
   CLK_50 : out STD_LOGIC;
   CLK_DATA : out STD_LOGIC;
   CLK_DATA_N : out STD_LOGIC;
   CLK_MB : out STD_LOGIC;
   CLK_CORE_SCALER : out STD_LOGIC;
   
   VN : in STD_LOGIC;
   VP : in STD_LOGIC;
   SYS_CLK_2_P : in STD_LOGIC;
   SYS_CLK_2_N : in STD_LOGIC;
   AXI_ARESETN : out STD_LOGIC;
   AGC_INTR : in STD_LOGIC
	);
end bd_wrapper;




architecture bd_wrapper of bd_wrapper is

component core_wrapper is
  port (
    AGC_INTR : in STD_LOGIC_VECTOR ( 0 to 0 );
    AXIL_CLINK_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    AXIL_CLINK_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    AXIL_CLINK_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    AXIL_CLINK_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    AXIL_CLINK_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    AXIL_CLINK_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    AXIL_CLINK_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    AXIL_CLINK_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    AXIL_CLINK_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    AXIL_CLINK_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    AXIL_CLINK_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    AXIL_CLINK_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AXIL_CLINK_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    AXIL_CLINK_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    AXIL_CLINK_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    AXIL_CLINK_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    AXIL_CLINK_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    AXIL_CLINK_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    AXIL_CLINK_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    AXIL_FB_CTRL_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    AXIL_FB_CTRL_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    AXIL_FB_CTRL_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    AXIL_FB_CTRL_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    AXIL_FB_CTRL_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    AXIL_FB_CTRL_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    AXIL_FB_CTRL_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    AXIL_FB_CTRL_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    AXIL_FB_CTRL_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    AXIL_FB_CTRL_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    AXIL_FB_CTRL_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    AXIL_FB_CTRL_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AXIL_FB_CTRL_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    AXIL_FB_CTRL_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    AXIL_FB_CTRL_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    AXIL_FB_CTRL_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    AXIL_FB_CTRL_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    AXIL_FB_CTRL_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    AXIL_FB_CTRL_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    AXIL_MGT_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    AXIL_MGT_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    AXIL_MGT_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    AXIL_MGT_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    AXIL_MGT_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    AXIL_MGT_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    AXIL_MGT_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    AXIL_MGT_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    AXIL_MGT_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    AXIL_MGT_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    AXIL_MGT_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    AXIL_MGT_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AXIL_MGT_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    AXIL_MGT_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    AXIL_MGT_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    AXIL_MGT_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    AXIL_MGT_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    AXIL_MGT_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    AXIL_MGT_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    AXIL_PLEORA_CTRL_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    AXIL_PLEORA_CTRL_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    AXIL_PLEORA_CTRL_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    AXIL_PLEORA_CTRL_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    AXIL_PLEORA_CTRL_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    AXIL_PLEORA_CTRL_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    AXIL_PLEORA_CTRL_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    AXIL_PLEORA_CTRL_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    AXIL_PLEORA_CTRL_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    AXIL_PLEORA_CTRL_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    AXIL_PLEORA_CTRL_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    AXIL_PLEORA_CTRL_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AXIL_PLEORA_CTRL_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    AXIL_PLEORA_CTRL_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    AXIL_PLEORA_CTRL_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    AXIL_PLEORA_CTRL_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    AXIL_PLEORA_CTRL_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    AXIL_PLEORA_CTRL_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    AXIL_PLEORA_CTRL_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    AXIL_SDI_CTRL_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    AXIL_SDI_CTRL_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    AXIL_SDI_CTRL_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    AXIL_SDI_CTRL_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    AXIL_SDI_CTRL_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    AXIL_SDI_CTRL_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    AXIL_SDI_CTRL_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    AXIL_SDI_CTRL_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    AXIL_SDI_CTRL_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    AXIL_SDI_CTRL_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    AXIL_SDI_CTRL_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    AXIL_SDI_CTRL_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AXIL_SDI_CTRL_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    AXIL_SDI_CTRL_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    AXIL_SDI_CTRL_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    AXIL_SDI_CTRL_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    AXIL_SDI_CTRL_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    AXIL_SDI_CTRL_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    AXIL_SDI_CTRL_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    AXI_ARESETN : out STD_LOGIC_VECTOR ( 0 to 0 );
    FB_DDR3_addr : out STD_LOGIC_VECTOR ( 14 downto 0 );
    FB_DDR3_ba : out STD_LOGIC_VECTOR ( 2 downto 0 );
    FB_DDR3_cas_n : out STD_LOGIC;
    FB_DDR3_ck_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    FB_DDR3_ck_p : out STD_LOGIC_VECTOR ( 0 to 0 );
    FB_DDR3_cke : out STD_LOGIC_VECTOR ( 0 to 0 );
    FB_DDR3_cs_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    FB_DDR3_dm : out STD_LOGIC_VECTOR ( 1 downto 0 );
    FB_DDR3_dq : inout STD_LOGIC_VECTOR ( 15 downto 0 );
    FB_DDR3_dqs_n : inout STD_LOGIC_VECTOR ( 1 downto 0 );
    FB_DDR3_dqs_p : inout STD_LOGIC_VECTOR ( 1 downto 0 );
    FB_DDR3_odt : out STD_LOGIC_VECTOR ( 0 to 0 );
    FB_DDR3_ras_n : out STD_LOGIC;
    FB_DDR3_reset_n : out STD_LOGIC;
    FB_DDR3_we_n : out STD_LOGIC;
    UART_PROC_RX : in STD_LOGIC;
    UART_PROC_TX : out STD_LOGIC;
    SYS_CLK_clk_n : in STD_LOGIC;
    SYS_CLK_clk_p : in STD_LOGIC;
    S_FB_GIGE_MM2S_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_FB_GIGE_MM2S_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_FB_GIGE_MM2S_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_FB_GIGE_MM2S_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_FB_GIGE_MM2S_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_FB_GIGE_MM2S_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_FB_GIGE_MM2S_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_FB_GIGE_MM2S_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_FB_GIGE_MM2S_arready : out STD_LOGIC;
    S_FB_GIGE_MM2S_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_FB_GIGE_MM2S_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_FB_GIGE_MM2S_arvalid : in STD_LOGIC;
    S_FB_GIGE_MM2S_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_FB_GIGE_MM2S_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_FB_GIGE_MM2S_rlast : out STD_LOGIC;
    S_FB_GIGE_MM2S_rready : in STD_LOGIC;
    S_FB_GIGE_MM2S_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_FB_GIGE_MM2S_rvalid : out STD_LOGIC;
    S_FB_GIGE_S2MM_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_FB_GIGE_S2MM_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_FB_GIGE_S2MM_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_FB_GIGE_S2MM_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_FB_GIGE_S2MM_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_FB_GIGE_S2MM_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_FB_GIGE_S2MM_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_FB_GIGE_S2MM_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_FB_GIGE_S2MM_awready : out STD_LOGIC;
    S_FB_GIGE_S2MM_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_FB_GIGE_S2MM_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_FB_GIGE_S2MM_awvalid : in STD_LOGIC;
    S_FB_GIGE_S2MM_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_FB_GIGE_S2MM_bready : in STD_LOGIC;
    S_FB_GIGE_S2MM_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_FB_GIGE_S2MM_bvalid : out STD_LOGIC;
    S_FB_GIGE_S2MM_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    S_FB_GIGE_S2MM_wlast : in STD_LOGIC;
    S_FB_GIGE_S2MM_wready : out STD_LOGIC;
    S_FB_GIGE_S2MM_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S_FB_GIGE_S2MM_wvalid : in STD_LOGIC;
    S_FB_SDI_MM2S_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_FB_SDI_MM2S_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_FB_SDI_MM2S_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_FB_SDI_MM2S_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_FB_SDI_MM2S_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_FB_SDI_MM2S_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_FB_SDI_MM2S_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_FB_SDI_MM2S_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_FB_SDI_MM2S_arready : out STD_LOGIC;
    S_FB_SDI_MM2S_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_FB_SDI_MM2S_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_FB_SDI_MM2S_arvalid : in STD_LOGIC;
    S_FB_SDI_MM2S_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_FB_SDI_MM2S_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_FB_SDI_MM2S_rlast : out STD_LOGIC;
    S_FB_SDI_MM2S_rready : in STD_LOGIC;
    S_FB_SDI_MM2S_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_FB_SDI_MM2S_rvalid : out STD_LOGIC;
    S_FB_SDI_S2MM_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_FB_SDI_S2MM_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_FB_SDI_S2MM_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_FB_SDI_S2MM_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_FB_SDI_S2MM_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_FB_SDI_S2MM_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_FB_SDI_S2MM_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_FB_SDI_S2MM_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_FB_SDI_S2MM_awready : out STD_LOGIC;
    S_FB_SDI_S2MM_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_FB_SDI_S2MM_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_FB_SDI_S2MM_awvalid : in STD_LOGIC;
    S_FB_SDI_S2MM_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_FB_SDI_S2MM_bready : in STD_LOGIC;
    S_FB_SDI_S2MM_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_FB_SDI_S2MM_bvalid : out STD_LOGIC;
    S_FB_SDI_S2MM_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    S_FB_SDI_S2MM_wlast : in STD_LOGIC;
    S_FB_SDI_S2MM_wready : out STD_LOGIC;
    S_FB_SDI_S2MM_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S_FB_SDI_S2MM_wvalid : in STD_LOGIC;
	
    UART_STORAGE_RX : in STD_LOGIC;
    UART_STORAGE_TX : out STD_LOGIC;
    clk_mb : out STD_LOGIC;
    clk_core_scaler : out STD_LOGIC;
    clk_50 : out STD_LOGIC;
    clk_data : out STD_LOGIC;
    clk_data_n : out STD_LOGIC;
    led_tri_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    QSPI_PROM_IO0_IO : inout STD_LOGIC; 
    QSPI_PROM_IO1_IO : inout STD_LOGIC;
    QSPI_PROM_IO2_IO : inout STD_LOGIC;
    QSPI_PROM_IO3_IO : inout STD_LOGIC;
    QSPI_PROM_SS_IO : inout STD_LOGIC_VECTOR ( 0 to 0 );

    vn : in STD_LOGIC;
    vp : in STD_LOGIC
  );
end component;

begin
	-- enter your statements here --
core_wrapper_i: component core_wrapper
port map (
      --CLINK CTRL
      AXIL_CLINK_araddr    =>    AXIL_CLINK_MOSI.araddr,
      AXIL_CLINK_arprot    =>    AXIL_CLINK_MOSI.arprot,
      AXIL_CLINK_arvalid(0)   => AXIL_CLINK_MOSI.arvalid,
      AXIL_CLINK_awaddr    =>    AXIL_CLINK_MOSI.awaddr,
      AXIL_CLINK_awprot    =>    AXIL_CLINK_MOSI.awprot,
      AXIL_CLINK_awvalid(0)   => AXIL_CLINK_MOSI.awvalid,
      AXIL_CLINK_bready(0)    => AXIL_CLINK_MOSI.bready,
      AXIL_CLINK_rready(0)    => AXIL_CLINK_MOSI.rready,
      AXIL_CLINK_wdata     =>    AXIL_CLINK_MOSI.wdata,
      AXIL_CLINK_wstrb     =>    AXIL_CLINK_MOSI.wstrb,
      AXIL_CLINK_wvalid(0)    => AXIL_CLINK_MOSI.wvalid,
      
      AXIL_CLINK_arready(0)   => AXIL_CLINK_MISO.arready,
      AXIL_CLINK_awready(0)   => AXIL_CLINK_MISO.awready,
      AXIL_CLINK_bresp     =>    AXIL_CLINK_MISO.bresp ,
      AXIL_CLINK_bvalid(0)    => AXIL_CLINK_MISO.bvalid,
      AXIL_CLINK_rdata     =>    AXIL_CLINK_MISO.rdata,
      AXIL_CLINK_rresp     =>    AXIL_CLINK_MISO.rresp,
      AXIL_CLINK_rvalid(0)    => AXIL_CLINK_MISO.rvalid,
      AXIL_CLINK_wready(0)    => AXIL_CLINK_MISO.wready,
      
      --MGT CTRL
      AXIL_MGT_araddr         => AXIL_MGT_MOSI.araddr,
      AXIL_MGT_arprot         => AXIL_MGT_MOSI.arprot,
      AXIL_MGT_arvalid(0)     => AXIL_MGT_MOSI.arvalid,
      AXIL_MGT_awaddr         => AXIL_MGT_MOSI.awaddr,
      AXIL_MGT_awprot         => AXIL_MGT_MOSI.awprot,
      AXIL_MGT_awvalid(0)     => AXIL_MGT_MOSI.awvalid,
      AXIL_MGT_bready(0)      => AXIL_MGT_MOSI.bready,
      AXIL_MGT_rready(0)      => AXIL_MGT_MOSI.rready,
      AXIL_MGT_wdata          => AXIL_MGT_MOSI.wdata,
      AXIL_MGT_wstrb          => AXIL_MGT_MOSI.wstrb,
      AXIL_MGT_wvalid(0)      => AXIL_MGT_MOSI.wvalid,
      
      AXIL_MGT_arready(0)     => AXIL_MGT_MISO.arready,
      AXIL_MGT_awready(0)     => AXIL_MGT_MISO.awready,
      AXIL_MGT_bresp          => AXIL_MGT_MISO.bresp ,
      AXIL_MGT_bvalid(0)      => AXIL_MGT_MISO.bvalid,
      AXIL_MGT_rdata          => AXIL_MGT_MISO.rdata,
      AXIL_MGT_rresp          => AXIL_MGT_MISO.rresp,
      AXIL_MGT_rvalid(0)      => AXIL_MGT_MISO.rvalid,
      AXIL_MGT_wready(0)      => AXIL_MGT_MISO.wready,      
      
      -- FB_CTRL
      AXIL_FB_CTRL_araddr         => AXIL_FB_CTRL_MOSI.araddr,
      AXIL_FB_CTRL_arprot         => AXIL_FB_CTRL_MOSI.arprot,
      AXIL_FB_CTRL_arvalid(0)     => AXIL_FB_CTRL_MOSI.arvalid,
      AXIL_FB_CTRL_awaddr         => AXIL_FB_CTRL_MOSI.awaddr,
      AXIL_FB_CTRL_awprot         => AXIL_FB_CTRL_MOSI.awprot,
      AXIL_FB_CTRL_awvalid(0)     => AXIL_FB_CTRL_MOSI.awvalid,
      AXIL_FB_CTRL_bready(0)      => AXIL_FB_CTRL_MOSI.bready,
      AXIL_FB_CTRL_rready(0)      => AXIL_FB_CTRL_MOSI.rready,
      AXIL_FB_CTRL_wdata          => AXIL_FB_CTRL_MOSI.wdata,
      AXIL_FB_CTRL_wstrb          => AXIL_FB_CTRL_MOSI.wstrb,
      AXIL_FB_CTRL_wvalid(0)      => AXIL_FB_CTRL_MOSI.wvalid,
      
      AXIL_FB_CTRL_arready(0)     => AXIL_FB_CTRL_MISO.arready,
      AXIL_FB_CTRL_awready(0)     => AXIL_FB_CTRL_MISO.awready,
      AXIL_FB_CTRL_bresp          => AXIL_FB_CTRL_MISO.bresp ,
      AXIL_FB_CTRL_bvalid(0)      => AXIL_FB_CTRL_MISO.bvalid,
      AXIL_FB_CTRL_rdata          => AXIL_FB_CTRL_MISO.rdata,
      AXIL_FB_CTRL_rresp          => AXIL_FB_CTRL_MISO.rresp,
      AXIL_FB_CTRL_rvalid(0)      => AXIL_FB_CTRL_MISO.rvalid,
      AXIL_FB_CTRL_wready(0)      => AXIL_FB_CTRL_MISO.wready,
      
      -- PLEORA_CTRL
      AXIL_PLEORA_CTRL_araddr         => AXIL_PLEORA_CTRL_MOSI.araddr,
      AXIL_PLEORA_CTRL_arprot         => AXIL_PLEORA_CTRL_MOSI.arprot,
      AXIL_PLEORA_CTRL_arvalid(0)     => AXIL_PLEORA_CTRL_MOSI.arvalid,
      AXIL_PLEORA_CTRL_awaddr         => AXIL_PLEORA_CTRL_MOSI.awaddr,
      AXIL_PLEORA_CTRL_awprot         => AXIL_PLEORA_CTRL_MOSI.awprot,
      AXIL_PLEORA_CTRL_awvalid(0)     => AXIL_PLEORA_CTRL_MOSI.awvalid,
      AXIL_PLEORA_CTRL_bready(0)      => AXIL_PLEORA_CTRL_MOSI.bready,
      AXIL_PLEORA_CTRL_rready(0)      => AXIL_PLEORA_CTRL_MOSI.rready,
      AXIL_PLEORA_CTRL_wdata          => AXIL_PLEORA_CTRL_MOSI.wdata,
      AXIL_PLEORA_CTRL_wstrb          => AXIL_PLEORA_CTRL_MOSI.wstrb,
      AXIL_PLEORA_CTRL_wvalid(0)      => AXIL_PLEORA_CTRL_MOSI.wvalid,
      
      AXIL_PLEORA_CTRL_arready(0)     => AXIL_PLEORA_CTRL_MISO.arready,
      AXIL_PLEORA_CTRL_awready(0)     => AXIL_PLEORA_CTRL_MISO.awready,
      AXIL_PLEORA_CTRL_bresp          => AXIL_PLEORA_CTRL_MISO.bresp ,
      AXIL_PLEORA_CTRL_bvalid(0)      => AXIL_PLEORA_CTRL_MISO.bvalid,
      AXIL_PLEORA_CTRL_rdata          => AXIL_PLEORA_CTRL_MISO.rdata,
      AXIL_PLEORA_CTRL_rresp          => AXIL_PLEORA_CTRL_MISO.rresp,
      AXIL_PLEORA_CTRL_rvalid(0)      => AXIL_PLEORA_CTRL_MISO.rvalid,
      AXIL_PLEORA_CTRL_wready(0)      => AXIL_PLEORA_CTRL_MISO.wready,
      
    --FPGA UART WRAPPER
    
    UART_PROC_TX 			=> UART_PROC_TX,
    UART_PROC_RX			=> UART_PROC_RX,

    
    --STORAGE UART WRAPPER
    
    UART_STORAGE_RX => UART_STORAGE_RX,
    UART_STORAGE_TX => UART_STORAGE_TX,
    
    --FB Mem
    FB_DDR3_addr    => FB_DDR3_addr,    
    FB_DDR3_ba      => FB_DDR3_ba,      
    FB_DDR3_cas_n   => FB_DDR3_cas_n,   
    FB_DDR3_ck_n    => FB_DDR3_ck_n,    
    FB_DDR3_ck_p    => FB_DDR3_ck_p,    
    FB_DDR3_cke     => FB_DDR3_cke,     
    FB_DDR3_cs_n    => FB_DDR3_cs_n,    
    FB_DDR3_dm      => FB_DDR3_dm,      
    FB_DDR3_dq      => FB_DDR3_dq,      
    FB_DDR3_dqs_n   => FB_DDR3_dqs_n,   
    FB_DDR3_dqs_p   => FB_DDR3_dqs_p,   
    FB_DDR3_odt     => FB_DDR3_odt,     
    FB_DDR3_ras_n   => FB_DDR3_ras_n,   
    FB_DDR3_reset_n => FB_DDR3_reset_n, 
    FB_DDR3_we_n    => FB_DDR3_we_n,
    
    clk_50     => CLK_50,
    clk_data     => CLK_DATA,
    clk_data_n   => CLK_DATA_N,
    clk_mb    => CLK_MB,
    clk_core_scaler    => CLK_CORE_SCALER,

    vn       => vn,       
    vp       => vp,
    
    led_tri_o(0) => LED,

	SYS_CLK_clk_n => SYS_CLK_2_N,
   SYS_CLK_clk_p => SYS_CLK_2_P,
   AXI_ARESETN(0) => AXI_ARESETN,
   
   AGC_INTR(0) => AGC_INTR,
    
    
   --GIGE MM2S interface
    S_FB_GIGE_MM2S_araddr       => FB_GIGE_MM2S_mosi.araddr  ,
    S_FB_GIGE_MM2S_arid(0)      => FB_GIGE_MM2S_mosi.arid(0)  ,
    S_FB_GIGE_MM2S_arburst      => FB_GIGE_MM2S_mosi.arburst ,
    S_FB_GIGE_MM2S_arcache      => FB_GIGE_MM2S_mosi.arcache ,
    S_FB_GIGE_MM2S_arlen        => FB_GIGE_MM2S_mosi.arlen   ,
    S_FB_GIGE_MM2S_arlock       => FB_GIGE_MM2S_mosi.arlock  ,
    S_FB_GIGE_MM2S_arprot       => FB_GIGE_MM2S_mosi.arprot  ,
    S_FB_GIGE_MM2S_arqos        => FB_GIGE_MM2S_mosi.arqos   ,  
    S_FB_GIGE_MM2S_arregion     => FB_GIGE_MM2S_mosi.arregion,
    S_FB_GIGE_MM2S_arsize       => FB_GIGE_MM2S_mosi.arsize  ,
    S_FB_GIGE_MM2S_arvalid      => FB_GIGE_MM2S_mosi.arvalid ,
    S_FB_GIGE_MM2S_rready       => FB_GIGE_MM2S_mosi.rready  ,
        
    S_FB_GIGE_MM2S_arready      => FB_GIGE_MM2S_miso.arready ,
    S_FB_GIGE_MM2S_rid(0)       => FB_GIGE_MM2S_miso.rid(0) ,
    S_FB_GIGE_MM2S_rdata        => FB_GIGE_MM2S_miso.rdata  ,
    S_FB_GIGE_MM2S_rlast        => FB_GIGE_MM2S_miso.rlast  ,
    S_FB_GIGE_MM2S_rresp        => FB_GIGE_MM2S_miso.rresp  ,
    S_FB_GIGE_MM2S_rvalid       => FB_GIGE_MM2S_miso.rvalid ,

    --GIGE S2MM interface
    S_FB_GIGE_S2MM_awaddr       => FB_GIGE_S2MM_mosi.awaddr  ,
    S_FB_GIGE_S2MM_awid(0)      => FB_GIGE_S2MM_mosi.awid(0) ,
    S_FB_GIGE_S2MM_awburst      => FB_GIGE_S2MM_mosi.awburst ,
    S_FB_GIGE_S2MM_awcache      => FB_GIGE_S2MM_mosi.awcache ,
    S_FB_GIGE_S2MM_awlen        => FB_GIGE_S2MM_mosi.awlen   ,
    S_FB_GIGE_S2MM_awlock       => FB_GIGE_S2MM_mosi.awlock  ,
    S_FB_GIGE_S2MM_awprot       => FB_GIGE_S2MM_mosi.awprot  ,
    S_FB_GIGE_S2MM_awqos        => FB_GIGE_S2MM_mosi.awqos   , 
    S_FB_GIGE_S2MM_awregion     => FB_GIGE_S2MM_mosi.awregion,
    S_FB_GIGE_S2MM_awsize       => FB_GIGE_S2MM_mosi.awsize  ,
    S_FB_GIGE_S2MM_awvalid      => FB_GIGE_S2MM_mosi.awvalid ,
    S_FB_GIGE_S2MM_bready       => FB_GIGE_S2MM_mosi.bready  ,
    S_FB_GIGE_S2MM_wdata        => FB_GIGE_S2MM_mosi.wdata   ,
    S_FB_GIGE_S2MM_wlast        => FB_GIGE_S2MM_mosi.wlast   ,
    S_FB_GIGE_S2MM_wstrb        => FB_GIGE_S2MM_mosi.wstrb   ,
    S_FB_GIGE_S2MM_wvalid       => FB_GIGE_S2MM_mosi.wvalid  ,
        
    S_FB_GIGE_S2MM_awready      => FB_GIGE_S2MM_miso.awready ,
    S_FB_GIGE_S2MM_bresp        => FB_GIGE_S2MM_miso.bresp  ,
    S_FB_GIGE_S2MM_bvalid       => FB_GIGE_S2MM_miso.bvalid ,
    S_FB_GIGE_S2MM_wready       => FB_GIGE_S2MM_miso.wready,
    
    --QSPI
    QSPI_PROM_IO0_IO => QSPI_PROM_IO0_IO,
    QSPI_PROM_IO1_IO => QSPI_PROM_IO1_IO,
    QSPI_PROM_IO2_IO => QSPI_PROM_IO2_IO,
    QSPI_PROM_IO3_IO => QSPI_PROM_IO3_IO,
    QSPI_PROM_SS_IO(0) => QSPI_PROM_SS_IO,
    

    
   -- SDI_CTRL
   AXIL_SDI_CTRL_araddr         => AXIL_SDI_CTRL_MOSI.araddr,
   AXIL_SDI_CTRL_arprot         => AXIL_SDI_CTRL_MOSI.arprot,
   AXIL_SDI_CTRL_arvalid(0)     => AXIL_SDI_CTRL_MOSI.arvalid,
   AXIL_SDI_CTRL_awaddr         => AXIL_SDI_CTRL_MOSI.awaddr,
   AXIL_SDI_CTRL_awprot         => AXIL_SDI_CTRL_MOSI.awprot,
   AXIL_SDI_CTRL_awvalid(0)     => AXIL_SDI_CTRL_MOSI.awvalid,
   AXIL_SDI_CTRL_bready(0)      => AXIL_SDI_CTRL_MOSI.bready,
   AXIL_SDI_CTRL_rready(0)      => AXIL_SDI_CTRL_MOSI.rready,
   AXIL_SDI_CTRL_wdata          => AXIL_SDI_CTRL_MOSI.wdata,
   AXIL_SDI_CTRL_wstrb          => AXIL_SDI_CTRL_MOSI.wstrb,
   AXIL_SDI_CTRL_wvalid(0)      => AXIL_SDI_CTRL_MOSI.wvalid,
   
   AXIL_SDI_CTRL_arready(0)     => AXIL_SDI_CTRL_MISO.arready,
   AXIL_SDI_CTRL_awready(0)     => AXIL_SDI_CTRL_MISO.awready,
   AXIL_SDI_CTRL_bresp          => AXIL_SDI_CTRL_MISO.bresp ,
   AXIL_SDI_CTRL_bvalid(0)      => AXIL_SDI_CTRL_MISO.bvalid,
   AXIL_SDI_CTRL_rdata          => AXIL_SDI_CTRL_MISO.rdata,
   AXIL_SDI_CTRL_rresp          => AXIL_SDI_CTRL_MISO.rresp,
   AXIL_SDI_CTRL_rvalid(0)      => AXIL_SDI_CTRL_MISO.rvalid,
   AXIL_SDI_CTRL_wready(0)      => AXIL_SDI_CTRL_MISO.wready,
    
   --SDI MM2S interface
   S_FB_SDI_MM2S_araddr       => FB_SDI_MM2S_mosi.araddr  ,
   S_FB_SDI_MM2S_arid(0)      => FB_SDI_MM2S_mosi.arid(0)  ,
   S_FB_SDI_MM2S_arburst      => FB_SDI_MM2S_mosi.arburst ,
   S_FB_SDI_MM2S_arcache      => FB_SDI_MM2S_mosi.arcache ,
   S_FB_SDI_MM2S_arlen        => FB_SDI_MM2S_mosi.arlen   ,
   S_FB_SDI_MM2S_arlock       => FB_SDI_MM2S_mosi.arlock  ,
   S_FB_SDI_MM2S_arprot       => FB_SDI_MM2S_mosi.arprot  ,
   S_FB_SDI_MM2S_arqos        => FB_SDI_MM2S_mosi.arqos   ,  
   S_FB_SDI_MM2S_arregion     => FB_SDI_MM2S_mosi.arregion,
   S_FB_SDI_MM2S_arsize       => FB_SDI_MM2S_mosi.arsize  ,
   S_FB_SDI_MM2S_arvalid      => FB_SDI_MM2S_mosi.arvalid ,
   S_FB_SDI_MM2S_rready       => FB_SDI_MM2S_mosi.rready  ,
        
   S_FB_SDI_MM2S_arready      => FB_SDI_MM2S_miso.arready ,
   S_FB_SDI_MM2S_rid(0)       => FB_SDI_MM2S_miso.rid(0) ,
   S_FB_SDI_MM2S_rdata        => FB_SDI_MM2S_miso.rdata  ,
   S_FB_SDI_MM2S_rlast        => FB_SDI_MM2S_miso.rlast  ,
   S_FB_SDI_MM2S_rresp        => FB_SDI_MM2S_miso.rresp  ,
   S_FB_SDI_MM2S_rvalid       => FB_SDI_MM2S_miso.rvalid ,

   --SDI S2MM interface
   S_FB_SDI_S2MM_awaddr       => FB_SDI_S2MM_mosi.awaddr  ,
   S_FB_SDI_S2MM_awid(0)      => FB_SDI_S2MM_mosi.awid(0) ,
   S_FB_SDI_S2MM_awburst      => FB_SDI_S2MM_mosi.awburst ,
   S_FB_SDI_S2MM_awcache      => FB_SDI_S2MM_mosi.awcache ,
   S_FB_SDI_S2MM_awlen        => FB_SDI_S2MM_mosi.awlen   ,
   S_FB_SDI_S2MM_awlock       => FB_SDI_S2MM_mosi.awlock  ,
   S_FB_SDI_S2MM_awprot       => FB_SDI_S2MM_mosi.awprot  ,
   S_FB_SDI_S2MM_awqos        => FB_SDI_S2MM_mosi.awqos   , 
   S_FB_SDI_S2MM_awregion     => FB_SDI_S2MM_mosi.awregion,
   S_FB_SDI_S2MM_awsize       => FB_SDI_S2MM_mosi.awsize  ,
   S_FB_SDI_S2MM_awvalid      => FB_SDI_S2MM_mosi.awvalid ,
   S_FB_SDI_S2MM_bready       => FB_SDI_S2MM_mosi.bready  ,
   S_FB_SDI_S2MM_wdata        => FB_SDI_S2MM_mosi.wdata   ,
   S_FB_SDI_S2MM_wlast        => FB_SDI_S2MM_mosi.wlast   ,
   S_FB_SDI_S2MM_wstrb        => FB_SDI_S2MM_mosi.wstrb   ,
   S_FB_SDI_S2MM_wvalid       => FB_SDI_S2MM_mosi.wvalid  ,
        
   S_FB_SDI_S2MM_awready      => FB_SDI_S2MM_miso.awready ,
   S_FB_SDI_S2MM_bresp        => FB_SDI_S2MM_miso.bresp  ,
   S_FB_SDI_S2MM_bvalid       => FB_SDI_S2MM_miso.bvalid ,
   S_FB_SDI_S2MM_wready       => FB_SDI_S2MM_miso.wready
);											

end bd_wrapper;
