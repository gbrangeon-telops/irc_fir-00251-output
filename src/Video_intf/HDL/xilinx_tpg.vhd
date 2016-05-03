library ieee;
use ieee.std_logic_1164.all;
use work.tel2000.all;


entity xilinx_tpg is
   port(
      --clk and reset
      video_clk      : in std_logic;
      axil_clk       : in std_logic;
      video_aresetn  : in std_logic;
      core_aresetn   : in std_logic;
      enable         : in std_logic;
             
      axil_mosi: in t_axi4_lite_mosi;
      axil_miso: out t_axi4_lite_miso;
	  
	  AXIS_MOSI     : out t_axi4_stream_mosi32;
      AXIS_MISO     : in t_axi4_stream_miso
   );
end xilinx_tpg;

architecture rtl of xilinx_tpg is

signal axis_video_tdata_i : std_logic_vector(23 downto 0);
signal axis_video_tvalid_i : std_logic;
signal axis_video_tready_i : std_logic;

component v_tpg_0
  port (
    aclk : in std_logic;
    aclken : in std_logic;
    aresetn : in std_logic;
    irq : out std_logic;
    m_axis_video_tdata : out std_logic_vector(23 downto 0);
    m_axis_video_tvalid : out std_logic;
    m_axis_video_tready : in std_logic;
    m_axis_video_tlast : out std_logic;
    m_axis_video_tuser : out std_logic;
    s_axi_aclk : in std_logic;
    s_axi_aclken : in std_logic;
    s_axi_aresetn : in std_logic;
    s_axi_awaddr : in std_logic_vector(8 downto 0);
    s_axi_awvalid : in std_logic;
    s_axi_awready : out std_logic;
    s_axi_wdata : in std_logic_vector(31 downto 0);
    s_axi_wstrb : in std_logic_vector(3 downto 0);
    s_axi_wvalid : in std_logic;
    s_axi_wready : out std_logic;
    s_axi_bresp : out std_logic_vector(1 downto 0);
    s_axi_bvalid : out std_logic;
    s_axi_bready : in std_logic;
    s_axi_araddr : in std_logic_vector(8 downto 0);
    s_axi_arvalid : in std_logic;
    s_axi_arready : out std_logic;
    s_axi_rdata : out std_logic_vector(31 downto 0);
    s_axi_rresp : out std_logic_vector(1 downto 0);
    s_axi_rvalid : out std_logic;
    s_axi_rready : in std_logic
  );
end component;

begin

  U1 : v_tpg_0
  port map (
    aclk => video_clk,
    aclken => '1',
    aresetn => video_aresetn,
    m_axis_video_tdata => axis_video_tdata_i,
    m_axis_video_tvalid => axis_video_tvalid_i,
    m_axis_video_tready => axis_video_tready_i,
    m_axis_video_tlast => open,
    m_axis_video_tuser => open,
    s_axi_aclk => axil_clk,
    s_axi_aclken => '1',
    s_axi_aresetn => core_aresetn,
    s_axi_awaddr => axil_mosi.AWADDR(8 DOWNTO 0),
    s_axi_awvalid => axil_mosi.AWVALID,
    s_axi_awready => axil_miso.AWREADY,
    s_axi_wdata => axil_mosi.WDATA,
    s_axi_wstrb => axil_mosi.WSTRB,
    s_axi_wvalid => axil_mosi.WVALID,
    s_axi_wready => axil_miso.WREADY,
    s_axi_bresp => axil_miso.BRESP,
    s_axi_bvalid => axil_miso.BVALID,
    s_axi_bready => axil_mosi.BREADY,
    s_axi_araddr => axil_mosi.ARADDR(8 DOWNTO 0),
    s_axi_arvalid => axil_mosi.ARVALID,
    s_axi_arready => axil_miso.ARREADY,
    s_axi_rdata => axil_miso.RDATA,
    s_axi_rresp => axil_miso.RRESP,
    s_axi_rvalid => axil_miso.RVALID,
    s_axi_rready => axil_mosi.RREADY
  );
  
  AXIS_MOSI.TDATA <= "00000000" & axis_video_tdata_i;
  AXIS_MOSI.TVALID <= '0' when (enable = '0')
  						  else axis_video_tvalid_i;

  axis_video_tready_i <= '0' when (enable = '0')
  						  else AXIS_MISO.TREADY;
  
  AXIS_MOSI.TKEEP <= (others => '1');
  AXIS_MOSI.TSTRB <= (others => '1');
  AXIS_MOSI.TID <= (others => '0');
  AXIS_MOSI.TDEST <= (others => '0');
  AXIS_MOSI.TUSER <= (others => '0');
  AXIS_MOSI.TLAST <= '0';
  
end rtl;
