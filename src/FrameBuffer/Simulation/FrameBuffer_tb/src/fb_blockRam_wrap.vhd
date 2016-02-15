library IEEE; 
use IEEE.STD_LOGIC_1164.ALL;
library work;
use work.tel2000.all;

--ATTENTION awuser, aruser, awid, arid sont déconnecter

entity fb_ram_wrap is
  port (
  --Clk and Reste
  aclk       : in std_logic;
  aresetn    : in std_logic;
    
  --MIG PORT (M0)
   axi4_ram_mosi : in t_axi4_a32_d128_mosi;
   axi4_ram_miso : out t_axi4_a32_d128_miso
    
  );
end fb_ram_wrap;

architecture sim of fb_ram_wrap is

COMPONENT blk_mem_gen_0
  PORT (
    s_aclk : IN STD_LOGIC;
    s_aresetn : IN STD_LOGIC;
    s_axi_awid : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_awaddr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_awlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    s_axi_awsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s_axi_awburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_awvalid : IN STD_LOGIC;
    s_axi_awready : OUT STD_LOGIC;
    s_axi_wdata : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
    s_axi_wstrb : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    s_axi_wlast : IN STD_LOGIC;
    s_axi_wvalid : IN STD_LOGIC;
    s_axi_wready : OUT STD_LOGIC;
    s_axi_bid : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_bvalid : OUT STD_LOGIC;
    s_axi_bready : IN STD_LOGIC;
    s_axi_arid : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_araddr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_arlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    s_axi_arsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s_axi_arburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_arvalid : IN STD_LOGIC;
    s_axi_arready : OUT STD_LOGIC;
    s_axi_rid : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_rdata : OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
    s_axi_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_rlast : OUT STD_LOGIC;
    s_axi_rvalid : OUT STD_LOGIC;
    s_axi_rready : IN STD_LOGIC
  );
END COMPONENT;
ATTRIBUTE SYN_BLACK_BOX : BOOLEAN;
ATTRIBUTE SYN_BLACK_BOX OF blk_mem_gen_0 : COMPONENT IS TRUE;
ATTRIBUTE BLACK_BOX_PAD_PIN : STRING;
ATTRIBUTE BLACK_BOX_PAD_PIN OF blk_mem_gen_0 : COMPONENT IS "s_aclk,s_aresetn,s_axi_awid[3:0],s_axi_awaddr[31:0],s_axi_awlen[7:0],s_axi_awsize[2:0],s_axi_awburst[1:0],s_axi_awvalid,s_axi_awready,s_axi_wdata[127:0],s_axi_wstrb[15:0],s_axi_wlast,s_axi_wvalid,s_axi_wready,s_axi_bid[3:0],s_axi_bresp[1:0],s_axi_bvalid,s_axi_bready,s_axi_arid[3:0],s_axi_araddr[31:0],s_axi_arlen[7:0],s_axi_arsize[2:0],s_axi_arburst[1:0],s_axi_arvalid,s_axi_arready,s_axi_rid[3:0],s_axi_rdata[127:0],s_axi_rresp[1:0],s_axi_rlast,s_axi_rvalid,s_axi_rready";



begin



BR_wrap : blk_mem_gen_0
  PORT MAP (
    s_aclk        => aclk,
    s_aresetn     => aresetn,
    s_axi_awid    => axi4_ram_mosi.awid,
    s_axi_awaddr  => axi4_ram_mosi.awaddr,
    s_axi_awlen   => axi4_ram_mosi.awlen,
    s_axi_awsize  => axi4_ram_mosi.awsize,
    s_axi_awburst => axi4_ram_mosi.awburst,
    s_axi_awvalid => axi4_ram_mosi.awvalid,
    s_axi_awready => axi4_ram_miso.awready,
    s_axi_wdata   => axi4_ram_mosi.wdata,
    s_axi_wstrb   => axi4_ram_mosi.wstrb,
    s_axi_wlast   => axi4_ram_mosi.wlast,
    s_axi_wvalid  => axi4_ram_mosi.wvalid,
    s_axi_wready  => axi4_ram_miso.wready,
    s_axi_bid     => axi4_ram_miso.bid,
    s_axi_bresp   => axi4_ram_miso.bresp,
    s_axi_bvalid  => axi4_ram_miso.bvalid,
    s_axi_bready  => axi4_ram_mosi.bready,
    s_axi_arid    => axi4_ram_mosi.arid,
    s_axi_araddr  => axi4_ram_mosi.araddr,
    s_axi_arlen   => axi4_ram_mosi.arlen,
    s_axi_arsize  => axi4_ram_mosi.arsize,
    s_axi_arburst => axi4_ram_mosi.arburst,
    s_axi_arvalid => axi4_ram_mosi.arvalid,
    s_axi_arready => axi4_ram_miso.arready,
    s_axi_rid     => axi4_ram_miso.rid,
    s_axi_rdata   => axi4_ram_miso.rdata,
    s_axi_rresp   => axi4_ram_miso.rresp,
    s_axi_rlast   => axi4_ram_miso.rlast,
    s_axi_rvalid  => axi4_ram_miso.rvalid,
    s_axi_rready  => axi4_ram_mosi.rready
  );
  
end sim;