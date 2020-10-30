library IEEE; 
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
library work;
use work.tel2000.all;

--library ieee;
--use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
--use work.tel2000.all;
--use work.FB_Define.all;

--ATTENTION awuser, aruser, awid, arid sont déconnecter

entity sdi_datamover_wrapper is
  port (
  --Clk and Reste
  aclk : IN STD_LOGIC;
  aresetn : in std_logic;
  
  overflow : in std_logic;
  --mm2s
  axis_mm2s_cmd_mosi : in t_axi4_stream_mosi_cmd32;
  axis_mm2s_cmd_miso : out t_axi4_stream_miso;
  
  axis_mm2s_sts_mosi : out t_axi4_stream_mosi_status;
  axis_mm2s_sts_miso : in  t_axi4_stream_miso;
  
  axi_mm2s_mosi : out t_axi4_a32_read_mosi;
  axi_mm2s_miso : in t_axi4_d32_read_miso;
  
  axis_data_read_mosi : out t_axi4_stream_mosi32;
  axis_data_read_miso : in t_axi4_stream_miso;
  
  --s2mm
  axis_s2mm_cmd_mosi : in t_axi4_stream_mosi_cmd32;
  axis_s2mm_cmd_miso : out t_axi4_stream_miso;
  
  axis_s2mm_sts_mosi : out t_axi4_stream_mosi_status;
  axis_s2mm_sts_miso : in t_axi4_stream_miso;
  
  axi_s2mm_mosi : out t_axi4_a32_d128_write_mosi;
  axi_s2mm_miso : in t_axi4_write_miso;
  
  axis_data_write_mosi : in t_axi4_stream_mosi64;
  axis_data_write_miso : out t_axi4_stream_miso;

  mm2s_err : OUT STD_LOGIC;
  s2mm_err : OUT STD_LOGIC
  );
end sdi_datamover_wrapper;

architecture rtl of sdi_datamover_wrapper is

component axi_sdi_fb_datamover
  port (
    m_axi_mm2s_aclk : IN STD_LOGIC;
    m_axi_mm2s_aresetn : IN STD_LOGIC;
    mm2s_err : OUT STD_LOGIC;
    m_axis_mm2s_cmdsts_aclk : IN STD_LOGIC;
    m_axis_mm2s_cmdsts_aresetn : IN STD_LOGIC;
    s_axis_mm2s_cmd_tvalid : IN STD_LOGIC;
    s_axis_mm2s_cmd_tready : OUT STD_LOGIC;
    s_axis_mm2s_cmd_tdata : IN STD_LOGIC_VECTOR(71 DOWNTO 0);
    m_axis_mm2s_sts_tvalid : OUT STD_LOGIC;
    m_axis_mm2s_sts_tready : IN STD_LOGIC;
    m_axis_mm2s_sts_tdata : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axis_mm2s_sts_tkeep : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    m_axis_mm2s_sts_tlast : OUT STD_LOGIC;
    m_axi_mm2s_arid : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_mm2s_araddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_mm2s_arlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi_mm2s_arsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_mm2s_arburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_mm2s_arprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_mm2s_arcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_mm2s_aruser : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_mm2s_arvalid : OUT STD_LOGIC;
    m_axi_mm2s_arready : IN STD_LOGIC;
    m_axi_mm2s_rdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_mm2s_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_mm2s_rlast : IN STD_LOGIC;
    m_axi_mm2s_rvalid : IN STD_LOGIC;
    m_axi_mm2s_rready : OUT STD_LOGIC;
    m_axis_mm2s_tdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axis_mm2s_tkeep : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axis_mm2s_tlast : OUT STD_LOGIC;
    m_axis_mm2s_tvalid : OUT STD_LOGIC;
    m_axis_mm2s_tready : IN STD_LOGIC;
    m_axi_s2mm_aclk : IN STD_LOGIC;
    m_axi_s2mm_aresetn : IN STD_LOGIC;
    s2mm_err : OUT STD_LOGIC;
    m_axis_s2mm_cmdsts_awclk : IN STD_LOGIC;
    m_axis_s2mm_cmdsts_aresetn : IN STD_LOGIC;
    s_axis_s2mm_cmd_tvalid : IN STD_LOGIC;
    s_axis_s2mm_cmd_tready : OUT STD_LOGIC;
    s_axis_s2mm_cmd_tdata : IN STD_LOGIC_VECTOR(71 DOWNTO 0);
    m_axis_s2mm_sts_tvalid : OUT STD_LOGIC;
    m_axis_s2mm_sts_tready : IN STD_LOGIC;
    m_axis_s2mm_sts_tdata : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axis_s2mm_sts_tkeep : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    m_axis_s2mm_sts_tlast : OUT STD_LOGIC;
    m_axi_s2mm_awid : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_s2mm_awaddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_s2mm_awlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi_s2mm_awsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_s2mm_awburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_s2mm_awprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_s2mm_awcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_s2mm_awuser : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_s2mm_awvalid : OUT STD_LOGIC;
    m_axi_s2mm_awready : IN STD_LOGIC;
    m_axi_s2mm_wdata : OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
    m_axi_s2mm_wstrb : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    m_axi_s2mm_wlast : OUT STD_LOGIC;
    m_axi_s2mm_wvalid : OUT STD_LOGIC;
    m_axi_s2mm_wready : IN STD_LOGIC;
    m_axi_s2mm_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_s2mm_bvalid : IN STD_LOGIC;
    m_axi_s2mm_bready : OUT STD_LOGIC;
    s_axis_s2mm_tdata : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    s_axis_s2mm_tkeep : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    s_axis_s2mm_tlast : IN STD_LOGIC;
    s_axis_s2mm_tvalid : IN STD_LOGIC;
    s_axis_s2mm_tready : OUT STD_LOGIC
  );
end component;	

signal dataMoverTData : std_logic_vector(31 downto 0);
signal dataMoverTKeep : std_logic_vector(3 downto 0);

signal dataCount : std_logic_vector(23 downto 0);
signal internal_tlast : std_logic;
signal dataCountOut : std_logic_vector(23 downto 0);
signal overflowPixelCountOut : std_logic_vector(23 downto 0);
signal clkCountOneFrameStart : std_logic;
signal clkCountOneFrameOut : std_logic_vector(31 downto 0);

signal s2mm_tready : std_logic;
signal s2mm_tready_countProcess : std_logic;

signal tlastDetect : std_logic;
signal overflowDetect : std_logic;
signal overflowVector : std_logic_vector(0 downto 0);
signal tvalidVector : std_logic_vector(0 downto 0);
signal rx_tready : std_logic_vector(0 downto 0);
signal overflowRisingEdgeDetect : std_logic_vector(2 downto 0);

 
begin  

fb_datamover : axi_sdi_fb_datamover
  PORT MAP (
  --ACLK AND RESET
    m_axi_mm2s_aclk              => aclk,
    m_axi_mm2s_aresetn           => aresetn,
    m_axis_mm2s_cmdsts_aclk      => aclk,
    m_axis_mm2s_cmdsts_aresetn   => aresetn,
    m_axi_s2mm_aclk              => aclk,
    m_axi_s2mm_aresetn           => aresetn,
    m_axis_s2mm_cmdsts_awclk     => aclk,
    m_axis_s2mm_cmdsts_aresetn   => aresetn,
    --ERROR
    s2mm_err                     => s2mm_err,
    mm2s_err                     => mm2s_err,
    
    --STREAM
    s_axis_mm2s_cmd_tvalid       => axis_mm2s_cmd_mosi.tvalid,
    s_axis_mm2s_cmd_tready       => axis_mm2s_cmd_miso.tready,
    s_axis_mm2s_cmd_tdata        => axis_mm2s_cmd_mosi.tdata,

    m_axis_mm2s_sts_tvalid       => axis_mm2s_sts_mosi.tvalid,
    m_axis_mm2s_sts_tready       => axis_mm2s_sts_miso.tready,
    m_axis_mm2s_sts_tdata        => axis_mm2s_sts_mosi.tdata,
    m_axis_mm2s_sts_tkeep        => axis_mm2s_sts_mosi.tkeep,
    m_axis_mm2s_sts_tlast        => axis_mm2s_sts_mosi.tlast,
    
    m_axi_mm2s_arid              => axi_mm2s_mosi.arid,
    m_axi_mm2s_araddr            => axi_mm2s_mosi.araddr,
    m_axi_mm2s_arlen             => axi_mm2s_mosi.arlen,
    m_axi_mm2s_arsize            => axi_mm2s_mosi.arsize,
    m_axi_mm2s_arburst           => axi_mm2s_mosi.arburst,
    m_axi_mm2s_arprot            => axi_mm2s_mosi.arprot,
    m_axi_mm2s_arcache           => axi_mm2s_mosi.arcache,
    m_axi_mm2s_arvalid           => axi_mm2s_mosi.arvalid,
    m_axi_mm2s_arready           => axi_mm2s_miso.arready,
    m_axi_mm2s_rdata             => axi_mm2s_miso.rdata,
    m_axi_mm2s_rresp             => axi_mm2s_miso.rresp,
    m_axi_mm2s_rlast             => axi_mm2s_miso.rlast,
    m_axi_mm2s_rvalid            => axi_mm2s_miso.rvalid,
    m_axi_mm2s_rready            => axi_mm2s_mosi.rready,
    
    m_axis_mm2s_tdata            => axis_data_read_mosi.tdata,
    m_axis_mm2s_tkeep            => axis_data_read_mosi.tkeep,
    m_axis_mm2s_tlast            => axis_data_read_mosi.tlast,
    m_axis_mm2s_tvalid           => axis_data_read_mosi.tvalid,
    m_axis_mm2s_tready           => axis_data_read_miso.tready,
    

    
    s_axis_s2mm_cmd_tvalid       => axis_s2mm_cmd_mosi.tvalid,
    s_axis_s2mm_cmd_tready       => axis_s2mm_cmd_miso.tready,
    s_axis_s2mm_cmd_tdata        => axis_s2mm_cmd_mosi.tdata,
    
    m_axis_s2mm_sts_tvalid       => axis_s2mm_sts_mosi.tvalid,
    m_axis_s2mm_sts_tready       => axis_s2mm_sts_miso.tready,
    m_axis_s2mm_sts_tdata        => axis_s2mm_sts_mosi.tdata,
    m_axis_s2mm_sts_tkeep        => axis_s2mm_sts_mosi.tkeep,
    m_axis_s2mm_sts_tlast        => axis_s2mm_sts_mosi.tlast,
    
    m_axi_s2mm_awid              => axi_s2mm_mosi.awid,
    m_axi_s2mm_awaddr            => axi_s2mm_mosi.awaddr,
    m_axi_s2mm_awlen             => axi_s2mm_mosi.awlen,
    m_axi_s2mm_awsize            => axi_s2mm_mosi.awsize,
    m_axi_s2mm_awburst           => axi_s2mm_mosi.awburst,
    m_axi_s2mm_awprot            => axi_s2mm_mosi.awprot,
    m_axi_s2mm_awcache           => axi_s2mm_mosi.awcache,
    m_axi_s2mm_awvalid           => axi_s2mm_mosi.awvalid,
    m_axi_s2mm_awready           => axi_s2mm_miso.awready,
    m_axi_s2mm_wdata             => axi_s2mm_mosi.wdata,
    m_axi_s2mm_wstrb             => axi_s2mm_mosi.wstrb,
    m_axi_s2mm_wlast             => axi_s2mm_mosi.wlast,
    m_axi_s2mm_wvalid            => axi_s2mm_mosi.wvalid,
    m_axi_s2mm_wready            => axi_s2mm_miso.wready,
    m_axi_s2mm_bresp             => axi_s2mm_miso.bresp,
    m_axi_s2mm_bvalid            => axi_s2mm_miso.bvalid,
    m_axi_s2mm_bready            => axi_s2mm_mosi.bready,

    s_axis_s2mm_tdata            => axis_data_write_mosi.tdata,
    s_axis_s2mm_tkeep            => axis_data_write_mosi.tkeep, 
	 s_axis_s2mm_tlast            => axis_data_write_mosi.tlast, 
    s_axis_s2mm_tvalid           => axis_data_write_mosi.tvalid,
	 s_axis_s2mm_tready           => axis_data_write_miso.tready
  );
  
	axis_data_read_mosi.TSTRB <= (others => '1');
	axis_data_read_mosi.TID <= (others => '0');
	axis_data_read_mosi.TDEST <= (others => '0');
	axis_data_read_mosi.TUSER <= (others => '0');
end rtl;