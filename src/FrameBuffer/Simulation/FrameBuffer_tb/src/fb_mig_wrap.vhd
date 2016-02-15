library IEEE; 
use IEEE.STD_LOGIC_1164.ALL;
library work;
use work.tel2000.all;

--ATTENTION awuser, aruser, awid, arid sont déconnecter

entity fb_mig_wrap is
  port (
  --Clk and Reste
    sys_clk_p : in STD_LOGIC;
    sys_clk_n : in STD_LOGIC;
    ui_clk : out STD_LOGIC;
    ui_clk_sync_rst : out STD_LOGIC;
    mmcm_locked : out STD_LOGIC;
    sys_rst : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    
  --MIG PORT (M0)
   axi4_mig_mosi : in t_axi4_a32_d128_mosi;
   axi4_mig_miso : out t_axi4_a32_d128_miso;
  
  --DDR
    ddr3_dq : inout STD_LOGIC_VECTOR ( 15 downto 0 );
    ddr3_dqs_n : inout STD_LOGIC_VECTOR ( 1 downto 0 );
    ddr3_dqs_p : inout STD_LOGIC_VECTOR ( 1 downto 0 );
    ddr3_addr : out STD_LOGIC_VECTOR ( 14 downto 0 );
    ddr3_ba : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ddr3_ras_n : out STD_LOGIC;
    ddr3_cas_n : out STD_LOGIC;
    ddr3_we_n : out STD_LOGIC;
    ddr3_reset_n : out STD_LOGIC;
    ddr3_ck_p : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr3_ck_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr3_cke : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr3_cs_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr3_dm : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ddr3_odt : out STD_LOGIC_VECTOR ( 0 to 0 );
    
   --others
   app_sr_active : out STD_LOGIC;
   app_ref_ack : out STD_LOGIC;
   app_zq_ack : out STD_LOGIC;
   init_calib_complete : out STD_LOGIC;
    device_temp_i : in STD_LOGIC_VECTOR ( 11 downto 0 )      
  );
end fb_mig_wrap;

architecture sim of fb_mig_wrap is

component core_mig_7series_0_0 is
  port (
    ddr3_dq : inout STD_LOGIC_VECTOR ( 15 downto 0 );
    ddr3_dqs_n : inout STD_LOGIC_VECTOR ( 1 downto 0 );
    ddr3_dqs_p : inout STD_LOGIC_VECTOR ( 1 downto 0 );
    ddr3_addr : out STD_LOGIC_VECTOR ( 14 downto 0 );
    ddr3_ba : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ddr3_ras_n : out STD_LOGIC;
    ddr3_cas_n : out STD_LOGIC;
    ddr3_we_n : out STD_LOGIC;
    ddr3_reset_n : out STD_LOGIC;
    ddr3_ck_p : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr3_ck_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr3_cke : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr3_cs_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr3_dm : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ddr3_odt : out STD_LOGIC_VECTOR ( 0 to 0 );
    sys_clk_p : in STD_LOGIC;
    sys_clk_n : in STD_LOGIC;
    ui_clk : out STD_LOGIC;
    ui_clk_sync_rst : out STD_LOGIC;
    mmcm_locked : out STD_LOGIC;
    aresetn : in STD_LOGIC;
    app_sr_active : out STD_LOGIC;
    app_ref_ack : out STD_LOGIC;
    app_zq_ack : out STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 28 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 28 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    init_calib_complete : out STD_LOGIC;
    device_temp_i : in STD_LOGIC_VECTOR ( 11 downto 0 );
    sys_rst : in STD_LOGIC
  );

end component core_mig_7series_0_0;

begin



mig_wrap : core_mig_7series_0_0
  PORT MAP (
    ddr3_dq             => ddr3_dq     ,
    ddr3_dqs_n          => ddr3_dqs_n  ,
    ddr3_dqs_p          => ddr3_dqs_p  ,
    ddr3_addr           => ddr3_addr   ,
    ddr3_ba             => ddr3_ba     ,
    ddr3_ras_n          => ddr3_ras_n  ,
    ddr3_cas_n          => ddr3_cas_n  ,
    ddr3_we_n           => ddr3_we_n   ,
    ddr3_reset_n        => ddr3_reset_n,
    ddr3_ck_p           => ddr3_ck_p   ,
    ddr3_ck_n           => ddr3_ck_n   ,
    ddr3_cke            => ddr3_cke    ,
    ddr3_cs_n           => ddr3_cs_n   ,
    ddr3_dm             => ddr3_dm     ,
    ddr3_odt            => ddr3_odt    ,
    
    sys_clk_p           => sys_clk_p      ,
    sys_clk_n           => sys_clk_n      ,
    ui_clk              => ui_clk         ,
    ui_clk_sync_rst     => ui_clk_sync_rst,
    mmcm_locked         => mmcm_locked    ,
    aresetn             => aresetn        ,
    app_sr_active       => app_sr_active  ,
    app_ref_ack         => app_ref_ack    ,
    app_zq_ack          => app_zq_ack     ,
    
    s_axi_awid          => (others => '0')   ,
    s_axi_awaddr        => axi4_mig_mosi.awaddr(28 downto 0) ,
    s_axi_awlen         => axi4_mig_mosi.awlen  ,
    s_axi_awsize        => axi4_mig_mosi.awsize ,
    s_axi_awburst       => axi4_mig_mosi.awburst,
    s_axi_awlock        => axi4_mig_mosi.awlock ,
    s_axi_awcache       => axi4_mig_mosi.awcache,
    s_axi_awprot        => axi4_mig_mosi.awprot ,
    s_axi_awqos         => axi4_mig_mosi.awqos  ,
    s_axi_awvalid       => axi4_mig_mosi.awvalid,
    s_axi_awready       => axi4_mig_miso.awready,
    s_axi_wdata         => axi4_mig_mosi.wdata  ,
    s_axi_wstrb         => axi4_mig_mosi.wstrb  ,
    s_axi_wlast         => axi4_mig_mosi.wlast  ,
    s_axi_wvalid        => axi4_mig_mosi.wvalid ,
    s_axi_wready        => axi4_mig_miso.wready ,
    s_axi_bready        => axi4_mig_mosi.bready ,
    --s_axi_bid           => axi4_mig_mosi.bid    ,
    s_axi_bresp         => axi4_mig_miso.bresp  ,
    s_axi_bvalid        => axi4_mig_miso.bvalid ,
    s_axi_arid          => (others => '0')   ,
    s_axi_araddr        => axi4_mig_mosi.araddr(28 downto 0) ,
    s_axi_arlen         => axi4_mig_mosi.arlen  ,
    s_axi_arsize        => axi4_mig_mosi.arsize ,
    s_axi_arburst       => axi4_mig_mosi.arburst,
    s_axi_arlock        => axi4_mig_mosi.arlock ,
    s_axi_arcache       => axi4_mig_mosi.arcache,
    s_axi_arprot        => axi4_mig_mosi.arprot ,
    s_axi_arqos         => axi4_mig_mosi.arqos  ,
    s_axi_arvalid       => axi4_mig_mosi.arvalid,
    s_axi_arready       => axi4_mig_miso .arready,
    s_axi_rready        => axi4_mig_mosi.rready ,
    --s_axi_rid           => axi4_mig_mosi.rid    ,
    s_axi_rdata         => axi4_mig_miso.rdata  ,
    --s_axi_rresp         => axi4_mig_mosi.rresp  ,
    s_axi_rlast         => axi4_mig_miso.rlast  ,
    s_axi_rvalid        => axi4_mig_miso.rvalid ,
    
    init_calib_complete => init_calib_complete ,
    device_temp_i       => device_temp_i       ,
    sys_rst             => sys_rst             
  );
end sim;