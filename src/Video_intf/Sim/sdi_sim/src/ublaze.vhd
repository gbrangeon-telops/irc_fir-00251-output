----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/13/2014 09:26:29 AM
-- Design Name: 
-- Module Name: ublaze_sim - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.all;

use work.tel2000.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ublaze is
port(
    AXIL_MOSI : out t_axi4_lite_mosi;
    AXIL_MISO : in t_axi4_lite_miso;
    
    TEST_RDY    : out std_logic;

    CLK160 : out STD_LOGIC;
    CLK100 : out STD_LOGIC;
    
    MGT_REFCLK_P : out std_logic;
    MGT_REFCLK_N : out std_logic;
    
    width : out std_logic_vector(31 downto 0);
    heigth : out std_logic_vector(31 downto 0);

    ARESETN : out std_logic
 );
end ublaze;

architecture Behavioral of ublaze is

-- CLK and RESET
signal clk160_o : std_logic := '0';
signal clk100_o : std_logic := '0';
signal clk_mgt_o : std_logic :='0';
signal rstn_i : std_logic := '0';

signal ReadValue : std_logic_vector(31 downto 0) := (others => '0');
signal read_value : std_logic_vector(31 downto 0);
signal write_value : std_logic_vector(31 downto 0);
signal write_value_u : unsigned(31 downto 0);

-- CLK and RESET
constant clk160_per : time := 6.25 ns;
constant clk100_per : time := 10 ns;
constant mgt_per : time := 6.734 ns;

--+-----------------
-- MB CTRL
--------------------
constant C_S_AXI_DATA_WIDTH : integer := 32;
constant C_S_AXI_ADDR_WIDTH : integer := 32;
constant ADDR_LSB           : integer := 2;   -- 4 bytes access
constant OPT_MEM_ADDR_BITS  : integer := 29;   -- Number of supplement biT

----------------------------   
-- Address of registers
----------------------------
constant S0_offset : unsigned(31 downto 0) := x"00000000";
constant S1_offset : unsigned(31 downto 0) := x"00010000";
constant S2_offset : unsigned(31 downto 0) := x"00020000";

                  
constant INPUT_IMG_WIDTH_ADDR           : std_logic_vector(31 downto 0) := std_logic_vector(S0_offset + to_unsigned(0,ADDR_LSB + OPT_MEM_ADDR_BITS + 1));
constant INPUT_IMG_HEIGTH_ADDR          : std_logic_vector(31 downto 0) := std_logic_vector(S0_offset + to_unsigned(4,ADDR_LSB + OPT_MEM_ADDR_BITS + 1));
constant INPUT_IMG_SIZE_ADDR            : std_logic_vector(31 downto 0) := std_logic_vector(S0_offset + to_unsigned(8,ADDR_LSB + OPT_MEM_ADDR_BITS + 1));
constant OUTPUT_IMG_WIDTH_ADDR          : std_logic_vector(31 downto 0) := std_logic_vector(S0_offset + to_unsigned(12,ADDR_LSB + OPT_MEM_ADDR_BITS + 1));
constant OUTPUT_IMG_HEIGTH_ADDR         : std_logic_vector(31 downto 0) := std_logic_vector(S0_offset + to_unsigned(16,ADDR_LSB + OPT_MEM_ADDR_BITS + 1));
constant OUTPUT_IMG_SIZE_ADDR           : std_logic_vector(31 downto 0) := std_logic_vector(S0_offset + to_unsigned(20,ADDR_LSB + OPT_MEM_ADDR_BITS + 1));
constant NB_FRAME_VALID_ADDR            : std_logic_vector(31 downto 0) := std_logic_vector(S0_offset + to_unsigned(24,ADDR_LSB + OPT_MEM_ADDR_BITS + 1));
  
constant SDI_IMG_V_START_ADDR           : std_logic_vector(31 downto 0) := std_logic_vector(S0_offset + to_unsigned(28,ADDR_LSB + OPT_MEM_ADDR_BITS + 1));
constant SDI_IMG_V_STOP_ADDR            : std_logic_vector(31 downto 0) := std_logic_vector(S0_offset + to_unsigned(32,ADDR_LSB + OPT_MEM_ADDR_BITS + 1));
constant SDI_IMG_H_START_ADDR           : std_logic_vector(31 downto 0) := std_logic_vector(S0_offset + to_unsigned(36,ADDR_LSB + OPT_MEM_ADDR_BITS + 1));
constant SDI_IMG_H_STOP_ADDR            : std_logic_vector(31 downto 0) := std_logic_vector(S0_offset + to_unsigned(40,ADDR_LSB + OPT_MEM_ADDR_BITS + 1));
constant SDI_X_FLIP_ADDR                : std_logic_vector(31 downto 0) := std_logic_vector(S0_offset + to_unsigned(44,ADDR_LSB + OPT_MEM_ADDR_BITS + 1));
constant SDI_Y_FLIP_ADDR                : std_logic_vector(31 downto 0) := std_logic_vector(S0_offset + to_unsigned(48,ADDR_LSB + OPT_MEM_ADDR_BITS + 1));

constant SDI_FB_BASEADDR_ADDR           : std_logic_vector(31 downto 0) := std_logic_vector(S0_offset + to_unsigned(52,ADDR_LSB + OPT_MEM_ADDR_BITS + 1));
constant SDI_FB_MODE_ADDR               : std_logic_vector(31 downto 0) := std_logic_vector(S0_offset + to_unsigned(56,ADDR_LSB + OPT_MEM_ADDR_BITS + 1));
constant SDI_FB_HDR_SIZE_ADDR           : std_logic_vector(31 downto 0) := std_logic_vector(S0_offset + to_unsigned(60,ADDR_LSB + OPT_MEM_ADDR_BITS + 1));
constant SDI_FB_PATTERNSELEC_ADDR       : std_logic_vector(31 downto 0) := std_logic_vector(S0_offset + to_unsigned(64,ADDR_LSB + OPT_MEM_ADDR_BITS + 1));

constant CMAP_START_ADDR                : std_logic_vector(31 downto 0) := std_logic_vector(S0_offset + to_unsigned(68,ADDR_LSB + OPT_MEM_ADDR_BITS + 1));
constant CMAP_LUTSIZE_ADDR              : std_logic_vector(31 downto 0) := std_logic_vector(S0_offset + to_unsigned(72,ADDR_LSB + OPT_MEM_ADDR_BITS + 1));
constant CMAP_END_ADDR                  : std_logic_vector(31 downto 0) := std_logic_vector(S0_offset + to_unsigned(76,ADDR_LSB + OPT_MEM_ADDR_BITS + 1));
constant CMAP_XMIN_ADDR                 : std_logic_vector(31 downto 0) := std_logic_vector(S0_offset + to_unsigned(80,ADDR_LSB + OPT_MEM_ADDR_BITS + 1));
constant CMAP_XRANGE_ADDR               : std_logic_vector(31 downto 0) := std_logic_vector(S0_offset + to_unsigned(84,ADDR_LSB + OPT_MEM_ADDR_BITS + 1));

constant SDI_RESETN_ADDR                : std_logic_vector(31 downto 0) := std_logic_vector(S0_offset + to_unsigned(88,ADDR_LSB + OPT_MEM_ADDR_BITS + 1));
constant FB_CONFIGVALID_ADDR            : std_logic_vector(31 downto 0) := std_logic_vector(S0_offset + to_unsigned(92,ADDR_LSB + OPT_MEM_ADDR_BITS + 1));

constant XSCL_CTL_ADDR                       : std_logic_vector(31 downto 0) := std_logic_vector(S2_offset + to_unsigned(0 ,ADDR_LSB + OPT_MEM_ADDR_BITS + 1));
constant XSCL_STATUS_ADDR                    : std_logic_vector(31 downto 0) := std_logic_vector(S2_offset + to_unsigned(4 ,ADDR_LSB + OPT_MEM_ADDR_BITS + 1));
constant XSCL_ERROR_ADDR                     : std_logic_vector(31 downto 0) := std_logic_vector(S2_offset + to_unsigned(8 ,ADDR_LSB + OPT_MEM_ADDR_BITS + 1));
constant IRQ_ENABLE_ADDR                     : std_logic_vector(31 downto 0) := std_logic_vector(S2_offset + to_unsigned(12 ,ADDR_LSB + OPT_MEM_ADDR_BITS + 1));
constant XSCL_VER_ADDR                       : std_logic_vector(31 downto 0) := std_logic_vector(S2_offset + to_unsigned(16 ,ADDR_LSB + OPT_MEM_ADDR_BITS + 1));
constant XSCL_HSF_ADDR                       : std_logic_vector(31 downto 0) := std_logic_vector(S2_offset + to_unsigned(256 ,ADDR_LSB + OPT_MEM_ADDR_BITS + 1));
constant XSCL_VSF_ADDR                       : std_logic_vector(31 downto 0) := std_logic_vector(S2_offset + to_unsigned(260 ,ADDR_LSB + OPT_MEM_ADDR_BITS + 1));
constant XSCL_SRCSIZE_ADDR                   : std_logic_vector(31 downto 0) := std_logic_vector(S2_offset + to_unsigned(264 ,ADDR_LSB + OPT_MEM_ADDR_BITS + 1));
constant XSCL_APTHORI_ADDR                   : std_logic_vector(31 downto 0) := std_logic_vector(S2_offset + to_unsigned(268 ,ADDR_LSB + OPT_MEM_ADDR_BITS + 1));
constant XSCL_APTVERT_ADDR                   : std_logic_vector(31 downto 0) := std_logic_vector(S2_offset + to_unsigned(272 ,ADDR_LSB + OPT_MEM_ADDR_BITS + 1));
constant XSCL_OUTSIZE_ADDR                   : std_logic_vector(31 downto 0) := std_logic_vector(S2_offset + to_unsigned(276 ,ADDR_LSB + OPT_MEM_ADDR_BITS + 1));
constant XSCL_NUMPHASE_ADDR                  : std_logic_vector(31 downto 0) := std_logic_vector(S2_offset + to_unsigned(280 ,ADDR_LSB + OPT_MEM_ADDR_BITS + 1));
constant XSCL_COEFSETS_ADDR                  : std_logic_vector(31 downto 0) := std_logic_vector(S2_offset + to_unsigned(284 ,ADDR_LSB + OPT_MEM_ADDR_BITS + 1));
constant XSCL_FRCTLUMALEFT_ADDR              : std_logic_vector(31 downto 0) := std_logic_vector(S2_offset + to_unsigned(288 ,ADDR_LSB + OPT_MEM_ADDR_BITS + 1));
constant XSCL_FRCTCHROMALEFT_ADDR            : std_logic_vector(31 downto 0) := std_logic_vector(S2_offset + to_unsigned(292 ,ADDR_LSB + OPT_MEM_ADDR_BITS + 1));
constant XSCL_FRCTLUMATOP_ADDR               : std_logic_vector(31 downto 0) := std_logic_vector(S2_offset + to_unsigned(296 ,ADDR_LSB + OPT_MEM_ADDR_BITS + 1));
constant XSCL_FRCTCHROMATOP_ADDR             : std_logic_vector(31 downto 0) := std_logic_vector(S2_offset + to_unsigned(300 ,ADDR_LSB + OPT_MEM_ADDR_BITS + 1));
constant XSCL_COEFFSETADDR_ADDR              : std_logic_vector(31 downto 0) := std_logic_vector(S2_offset + to_unsigned(304 ,ADDR_LSB + OPT_MEM_ADDR_BITS + 1));
constant XSCL_COEFFVALUE_ADDR                : std_logic_vector(31 downto 0) := std_logic_vector(S2_offset + to_unsigned(308 ,ADDR_LSB + OPT_MEM_ADDR_BITS + 1));
constant XSCL_COEFF_SET_BANK_ADDR            : std_logic_vector(31 downto 0) := std_logic_vector(S2_offset + to_unsigned(312 ,ADDR_LSB + OPT_MEM_ADDR_BITS + 1));
constant XSCL_COEF_MEM_ADDR                  : std_logic_vector(31 downto 0) := std_logic_vector(S2_offset + to_unsigned(316 ,ADDR_LSB + OPT_MEM_ADDR_BITS + 1));

---------------------
--TEST param value
---------------------
constant input_img_width : integer := 64;
constant input_img_heigth : integer := 8;
constant input_img_size : integer := input_img_width*input_img_heigth;
constant input_pattern :integer := 0;--0 is VideoStream, 1 is TElops_Pattern


---------------------
--SCALER CONSTANT
---------------------                                                       
type CoefArray is array (0  to 3) of std_logic_vector(31 downto 0);
signal coefbuf : CoefArray;

constant  XSCL_CTL_REGUPDATE : std_logic_vector(31 downto 0) := x"00000002";
constant  XSCL_CTL_ENABLE : std_logic_vector(31 downto 0) := x"00000001";
constant  XSCL_STS_COEF_W_RDY_MASK : std_logic_vector(31 downto 0) := x"00000001";
constant  XSCL_STSDONE_DONE : std_logic_vector(31 downto 0) := x"00000001";
constant  XSCL_HSF_INT_MASK : std_logic_vector(31 downto 0) := x"00F00000";
constant  XSCL_HSF_FRAC_MASK : std_logic_vector(31 downto 0) := x"000FFFFF";
constant  XSCL_VSF_INT_MASK : std_logic_vector(31 downto 0) := x"00F00000";
constant  XSCL_VSF_FRAC_MASK : std_logic_vector(31 downto 0) := x"000FFFFF";
constant  XSCL_COEFSETADDR_MASK : std_logic_vector(31 downto 0) := x"0000000F";
constant  XSCL_FRCTLUMALEFT_VALUE_MASK      : std_logic_vector(31 downto 0) := x"001FFFFF";
constant  XSCL_FRCTCHROMALEFT_VALUE_MASK    : std_logic_vector(31 downto 0) := x"001FFFFF";
constant  XSCL_FRCTLUMATOP_VALUE_MASK       : std_logic_vector(31 downto 0) := x"001FFFFF";
constant  XSCL_FRCTCHROMATOP_VALUE_MASK     : std_logic_vector(31 downto 0) := x"001FFFFF";

---------------------
--SCALER Parameter
---------------------
constant  XSCL_SET_INDEX_PARAM  : std_logic_vector(31 downto 0) := x"00000000";
constant  XSCL_PHASENUM_PARAM   : UNSIGNED(31 downto 0) := to_unsigned(4,32);
constant  XSCL_TAPNUM_PARAM     : UNSIGNED(31 downto 0) := to_unsigned(2,32);

constant  XSCL_LUMALEFTHORI_PARAM       : std_logic_vector(31 downto 0) := x"00000000";
constant  XSCL_LUMATOPVERT_PARAM        : std_logic_vector(31 downto 0) := x"00000000";
constant  XSCL_CHROMALEFTHORI_PARAM     : std_logic_vector(31 downto 0) := x"00000000";
constant  XSCL_CHROMATOPVERT_PARAM      : std_logic_vector(31 downto 0) := x"00000000";


begin

-- Assign clock
   ARESETN <= rstn_i;
   CLK160 <= clk160_o;
   CLK100 <= clk100_o;
   MGT_REFCLK_P <= clk_mgt_o;
   MGT_REFCLK_N <= not clk_mgt_o;

--! Clock 160MHz generation                   
CLK160_GEN: process(clk160_o)
   begin
   clk160_o <= not clk160_o after clk160_per/2;                          
end process;

--! Clock 100MHz generation   
CLK100_GEN: process(clk100_o)
   begin
   clk100_o <= not clk100_o after clk100_per/2;                          
end process;

--! Clock 148.5MHz generation   
CLK148_GEN: process(clk_mgt_o)
   begin
   clk_mgt_o <= not clk_mgt_o after mgt_per/2;                          
end process;

--! Reset Generation
RST_GEN : process
   begin          
      rstn_i <= '0';
   wait for 5 us;
      rstn_i <= '1'; 
   wait;
end process;   


ublaze_stim: process is
begin
    TEST_RDY <= '0';
    coefbuf(0) <= x"40000000";
    coefbuf(1) <= x"399a0666";
    coefbuf(2) <= x"200a1ff6";
    coefbuf(3) <= x"0666399a";

	wait until rstn_i = '1';
	width <=  std_logic_vector(to_unsigned(input_img_width,32));
    heigth <=  std_logic_vector(to_unsigned(input_img_heigth,32));
	  wait for 10 ns;
      --Configure the sdi output
    
    wait until rising_edge(clk100_o);
    --write_axi_lite (signal Clk : in std_logic; Addr : in std_logic_vector(31 downto 0); Value : in std_logic_vector(31 downto 0);signal  miso : in  t_axi4_lite_miso;signal  mosi : out t_axi4_lite_mosi) is
    write_axi_lite(clk100_o,std_logic_vector(to_unsigned(0,32-INPUT_IMG_WIDTH_ADDR'length))    & SDI_RESETN_ADDR ,          std_logic_vector(to_unsigned(0,32))       ,AXIL_MISO ,AXIL_MOSI);
    wait until rising_edge(clk100_o);
    write_axi_lite(clk100_o,std_logic_vector(to_unsigned(0,32-INPUT_IMG_WIDTH_ADDR'length))    & INPUT_IMG_WIDTH_ADDR ,     std_logic_vector(to_unsigned(input_img_width,32))         ,AXIL_MISO ,AXIL_MOSI);
    wait until rising_edge(clk100_o);
    write_axi_lite(clk100_o,std_logic_vector(to_unsigned(0,32-INPUT_IMG_WIDTH_ADDR'length))    & INPUT_IMG_HEIGTH_ADDR ,    std_logic_vector(to_unsigned(input_img_heigth,32))       ,AXIL_MISO ,AXIL_MOSI);
    wait until rising_edge(clk100_o);
    write_axi_lite(clk100_o,std_logic_vector(to_unsigned(0,32-INPUT_IMG_WIDTH_ADDR'length))    & INPUT_IMG_SIZE_ADDR ,      std_logic_vector(to_unsigned(input_img_size,32))         ,AXIL_MISO ,AXIL_MOSI);
    wait until rising_edge(clk100_o);
    write_axi_lite(clk100_o,std_logic_vector(to_unsigned(0,32-INPUT_IMG_WIDTH_ADDR'length))    & OUTPUT_IMG_WIDTH_ADDR ,    std_logic_vector(to_unsigned(input_img_width,32))         ,AXIL_MISO ,AXIL_MOSI);
    wait until rising_edge(clk100_o);
    write_axi_lite(clk100_o,std_logic_vector(to_unsigned(0,32-INPUT_IMG_WIDTH_ADDR'length))    & OUTPUT_IMG_HEIGTH_ADDR ,    std_logic_vector(to_unsigned(input_img_heigth,32))       ,AXIL_MISO ,AXIL_MOSI);
    wait until rising_edge(clk100_o);
    write_axi_lite(clk100_o,std_logic_vector(to_unsigned(0,32-INPUT_IMG_WIDTH_ADDR'length))    & OUTPUT_IMG_SIZE_ADDR ,      std_logic_vector(to_unsigned(input_img_size,32))         ,AXIL_MISO ,AXIL_MOSI);
    wait until rising_edge(clk100_o);
    write_axi_lite(clk100_o,std_logic_vector(to_unsigned(0,32-INPUT_IMG_WIDTH_ADDR'length))    & NB_FRAME_VALID_ADDR ,      std_logic_vector(to_unsigned(5,32))         ,AXIL_MISO ,AXIL_MOSI);
    wait until rising_edge(clk100_o);
    write_axi_lite(clk100_o,std_logic_vector(to_unsigned(0,32-INPUT_IMG_WIDTH_ADDR'length))    & SDI_IMG_V_START_ADDR ,     std_logic_vector(to_unsigned(4,32))       ,AXIL_MISO ,AXIL_MOSI);
    wait until rising_edge(clk100_o);
    write_axi_lite(clk100_o,std_logic_vector(to_unsigned(0,32-INPUT_IMG_WIDTH_ADDR'length))    & SDI_IMG_V_STOP_ADDR ,      std_logic_vector(to_unsigned(20,32))         ,AXIL_MISO ,AXIL_MOSI);
    wait until rising_edge(clk100_o);
    write_axi_lite(clk100_o,std_logic_vector(to_unsigned(0,32-INPUT_IMG_WIDTH_ADDR'length))    & SDI_IMG_H_START_ADDR ,     std_logic_vector(to_unsigned(0,32))         ,AXIL_MISO ,AXIL_MOSI);
    wait until rising_edge(clk100_o);
    write_axi_lite(clk100_o,std_logic_vector(to_unsigned(0,32-INPUT_IMG_WIDTH_ADDR'length))    & SDI_IMG_H_STOP_ADDR ,      std_logic_vector(to_unsigned(4,32))       ,AXIL_MISO ,AXIL_MOSI);
    wait until rising_edge(clk100_o);
    write_axi_lite(clk100_o,std_logic_vector(to_unsigned(0,32-INPUT_IMG_WIDTH_ADDR'length))    & SDI_X_FLIP_ADDR ,          std_logic_vector(to_unsigned(0,32))         ,AXIL_MISO ,AXIL_MOSI);
    wait until rising_edge(clk100_o);
    write_axi_lite(clk100_o,std_logic_vector(to_unsigned(0,32-INPUT_IMG_WIDTH_ADDR'length))    & SDI_Y_FLIP_ADDR ,          std_logic_vector(to_unsigned(0,32))         ,AXIL_MISO ,AXIL_MOSI);
    wait until rising_edge(clk100_o);
    write_axi_lite(clk100_o,std_logic_vector(to_unsigned(0,32-INPUT_IMG_WIDTH_ADDR'length))    & SDI_FB_BASEADDR_ADDR ,     std_logic_vector(to_unsigned(0,32))       ,AXIL_MISO ,AXIL_MOSI);
    wait until rising_edge(clk100_o);
    write_axi_lite(clk100_o,std_logic_vector(to_unsigned(0,32-INPUT_IMG_WIDTH_ADDR'length))    & SDI_FB_MODE_ADDR ,         std_logic_vector(to_unsigned(4,32))         ,AXIL_MISO ,AXIL_MOSI);
    wait until rising_edge(clk100_o);
    write_axi_lite(clk100_o,std_logic_vector(to_unsigned(0,32-INPUT_IMG_WIDTH_ADDR'length))    & SDI_FB_HDR_SIZE_ADDR ,     std_logic_vector(to_unsigned(2,32))         ,AXIL_MISO ,AXIL_MOSI);
    wait until rising_edge(clk100_o);
    write_axi_lite(clk100_o,std_logic_vector(to_unsigned(0,32-INPUT_IMG_WIDTH_ADDR'length))    & SDI_FB_PATTERNSELEC_ADDR , std_logic_vector(to_unsigned(input_pattern,32))       ,AXIL_MISO ,AXIL_MOSI);
    wait until rising_edge(clk100_o);
    write_axi_lite(clk100_o,std_logic_vector(to_unsigned(0,32-INPUT_IMG_WIDTH_ADDR'length))    & CMAP_START_ADDR ,          std_logic_vector(to_unsigned(0,32))         ,AXIL_MISO ,AXIL_MOSI);
    wait until rising_edge(clk100_o);
    write_axi_lite(clk100_o,std_logic_vector(to_unsigned(0,32-INPUT_IMG_WIDTH_ADDR'length))    & CMAP_LUTSIZE_ADDR ,        std_logic_vector(to_unsigned(1024,32))         ,AXIL_MISO ,AXIL_MOSI);
    wait until rising_edge(clk100_o);
    write_axi_lite(clk100_o,std_logic_vector(to_unsigned(0,32-INPUT_IMG_WIDTH_ADDR'length))    & CMAP_END_ADDR ,            std_logic_vector(to_unsigned(1023,32))       ,AXIL_MISO ,AXIL_MOSI);
    wait until rising_edge(clk100_o);
    write_axi_lite(clk100_o,std_logic_vector(to_unsigned(0,32-INPUT_IMG_WIDTH_ADDR'length))    & CMAP_XMIN_ADDR ,           std_logic_vector(to_unsigned(0,32))         ,AXIL_MISO ,AXIL_MOSI);
    wait until rising_edge(clk100_o);
    write_axi_lite(clk100_o,std_logic_vector(to_unsigned(0,32-INPUT_IMG_WIDTH_ADDR'length))    & CMAP_XRANGE_ADDR ,         std_logic_vector(to_unsigned(input_img_width,32))         ,AXIL_MISO ,AXIL_MOSI);
    wait until rising_edge(clk100_o);
    write_axi_lite(clk100_o,std_logic_vector(to_unsigned(0,32-INPUT_IMG_WIDTH_ADDR'length))    & SDI_RESETN_ADDR ,          std_logic_vector(to_unsigned(1,32))       ,AXIL_MISO ,AXIL_MOSI);
    wait until rising_edge(clk100_o);
    write_axi_lite(clk100_o,std_logic_vector(to_unsigned(0,32-INPUT_IMG_WIDTH_ADDR'length))    & SDI_RESETN_ADDR ,          std_logic_vector(to_unsigned(1,32))       ,AXIL_MISO ,AXIL_MOSI);
    wait until rising_edge(clk100_o);
    write_axi_lite(clk100_o,std_logic_vector(to_unsigned(0,32-INPUT_IMG_WIDTH_ADDR'length))    & FB_CONFIGVALID_ADDR ,       std_logic_vector(to_unsigned(1,32))         ,AXIL_MISO ,AXIL_MOSI);
    wait until rising_edge(clk100_o);
    wait for 1 us;
    
    --CONFIGURE the video Scaler for 64x4 input image to 64x4 ouput image
    report "VSCALER CONFIGURATION" 
    severity error;    
            
        
--DISABLE XScaler
    read_axi_lite (clk100_o, std_logic_vector(to_unsigned(0,32-INPUT_IMG_WIDTH_ADDR'length))    & XSCL_CTL_ADDR,AXIL_MISO, AXIL_MOSI, read_value);
    wait until rising_edge(clk100_o);
    wait for 5 ns;
        --CONFIGURE the video Scaler for 64x4 input image to 64x4 ouput image
 
    
    write_value <= read_value and not XSCL_CTL_ENABLE;
    wait until rising_edge(clk100_o);
    write_axi_lite(clk100_o,std_logic_vector(to_unsigned(0,32-INPUT_IMG_WIDTH_ADDR'length))    & XSCL_CTL_ADDR ,  write_value ,AXIL_MISO ,AXIL_MOSI);
    wait until rising_edge(clk100_o);
    wait for 5 ns;

--DISABLE XScaler RegUpdate
    read_axi_lite (clk100_o, std_logic_vector(to_unsigned(0,32-INPUT_IMG_WIDTH_ADDR'length))    & XSCL_CTL_ADDR,AXIL_MISO, AXIL_MOSI, read_value);
    wait until rising_edge(clk100_o);
    wait for 5 ns;
    write_value <= read_value and not XSCL_CTL_REGUPDATE;
    wait until rising_edge(clk100_o);
    write_axi_lite(clk100_o,std_logic_vector(to_unsigned(0,32-INPUT_IMG_WIDTH_ADDR'length))    & XSCL_CTL_ADDR ,  write_value ,AXIL_MISO ,AXIL_MOSI);
    wait until rising_edge(clk100_o);
    wait for 5 ns;
    
--Load a set of Coefficient values
    -- Start the coefficient bank loading by writing the bank index first
    write_value <= XSCL_SET_INDEX_PARAM and XSCL_COEFSETADDR_MASK;
    wait until rising_edge(clk100_o);
	write_axi_lite(clk100_o,std_logic_vector(to_unsigned(0,32-INPUT_IMG_WIDTH_ADDR'length))    & XSCL_COEFSETS_ADDR ,  write_value ,AXIL_MISO ,AXIL_MOSI);
    wait until rising_edge(clk100_o);
    wait for 5 ns;
    
    -- Now load horizontal luma valid values
    for i in 0 to (to_integer(XSCL_PHASENUM_PARAM)-1) loop
            write_value <= coefbuf(i);
            wait until rising_edge(clk100_o);
        	write_axi_lite(clk100_o,std_logic_vector(to_unsigned(0,32-INPUT_IMG_WIDTH_ADDR'length))    & XSCL_COEFFVALUE_ADDR ,  write_value ,AXIL_MISO ,AXIL_MOSI);
            wait until rising_edge(clk100_o);
            wait for 5 ns;
    end loop;
    
    --Do not Load other coef bank

    
--Load phase-offsets into scaler
    --XSCL_FRCTLUMALEFT
    write_value <= XSCL_LUMALEFTHORI_PARAM and XSCL_FRCTLUMALEFT_VALUE_MASK;
    wait until rising_edge(clk100_o);
	write_axi_lite(clk100_o,std_logic_vector(to_unsigned(0,32-INPUT_IMG_WIDTH_ADDR'length))    & XSCL_FRCTLUMALEFT_ADDR ,  write_value ,AXIL_MISO ,AXIL_MOSI);
    wait until rising_edge(clk100_o);
    wait for 5 ns;
    
    --XSCL_FRCTLUMALEFT
    write_value <= XSCL_LUMATOPVERT_PARAM and XSCL_FRCTCHROMALEFT_VALUE_MASK;
    wait until rising_edge(clk100_o);
	write_axi_lite(clk100_o,std_logic_vector(to_unsigned(0,32-INPUT_IMG_WIDTH_ADDR'length))    & XSCL_FRCTCHROMALEFT_ADDR ,  write_value ,AXIL_MISO ,AXIL_MOSI);
    wait until rising_edge(clk100_o);
    wait for 5 ns;
    
    --XSCL_FRCTCHROMALEFT
    write_value <= XSCL_CHROMALEFTHORI_PARAM and XSCL_FRCTLUMATOP_VALUE_MASK;
    wait until rising_edge(clk100_o);
	write_axi_lite(clk100_o,std_logic_vector(to_unsigned(0,32-INPUT_IMG_WIDTH_ADDR'length))    & XSCL_FRCTLUMATOP_ADDR ,  write_value ,AXIL_MISO ,AXIL_MOSI);
    wait until rising_edge(clk100_o);
    wait for 5 ns;
    
    --XSCL_FRCTCHROMATOP
    write_value <= XSCL_CHROMATOPVERT_PARAM and XSCL_FRCTCHROMATOP_VALUE_MASK;
    wait until rising_edge(clk100_o);
	write_axi_lite(clk100_o,std_logic_vector(to_unsigned(0,32-INPUT_IMG_WIDTH_ADDR'length))    & XSCL_FRCTCHROMATOP_ADDR ,  write_value ,AXIL_MISO ,AXIL_MOSI);
    wait until rising_edge(clk100_o);
    wait for 5 ns;

--Set Apperture
    --XSCL_APTVERT 
    write_value <= x"0007" & x"0000";  
   
    wait until rising_edge(clk100_o);
	write_axi_lite(clk100_o,std_logic_vector(to_unsigned(0,32-INPUT_IMG_WIDTH_ADDR'length))    & XSCL_APTVERT_ADDR ,  write_value ,AXIL_MISO ,AXIL_MOSI);
    wait until rising_edge(clk100_o);
    wait for 5 ns;
    
    --XSCL_APTHORI 
    write_value <= x"003F" & x"0000";
    wait until rising_edge(clk100_o);
	write_axi_lite(clk100_o,std_logic_vector(to_unsigned(0,32-INPUT_IMG_WIDTH_ADDR'length))    & XSCL_APTHORI_ADDR ,  write_value ,AXIL_MISO ,AXIL_MOSI);
    wait until rising_edge(clk100_o);
    wait for 5 ns;
    
    --XSCL_OUTSIZE 
    write_value <= x"0008" & x"0040";
    wait until rising_edge(clk100_o);
	write_axi_lite(clk100_o,std_logic_vector(to_unsigned(0,32-INPUT_IMG_WIDTH_ADDR'length))    & XSCL_OUTSIZE_ADDR ,  write_value ,AXIL_MISO ,AXIL_MOSI);
    wait until rising_edge(clk100_o);
    wait for 5 ns;
    
    --XSCL_SRCSIZE 
    write_value <= x"0008" & x"0040";
    wait until rising_edge(clk100_o);
	write_axi_lite(clk100_o,std_logic_vector(to_unsigned(0,32-INPUT_IMG_WIDTH_ADDR'length))    & XSCL_SRCSIZE_ADDR ,  write_value ,AXIL_MISO ,AXIL_MOSI);
    wait until rising_edge(clk100_o);
    wait for 5 ns;
    
    --XSCL_HSF 
    write_value <= x"00100000";
    wait until rising_edge(clk100_o);
	write_axi_lite(clk100_o,std_logic_vector(to_unsigned(0,32-INPUT_IMG_WIDTH_ADDR'length))    & XSCL_HSF_ADDR ,  write_value ,AXIL_MISO ,AXIL_MOSI);
    wait until rising_edge(clk100_o);
    wait for 5 ns;
    
    --XSCL_VSF 
    write_value <= x"00100000";
    wait until rising_edge(clk100_o);
	write_axi_lite(clk100_o,std_logic_vector(to_unsigned(0,32-INPUT_IMG_WIDTH_ADDR'length))    & XSCL_VSF_ADDR ,  write_value ,AXIL_MISO ,AXIL_MOSI);
    wait until rising_edge(clk100_o);
    wait for 5 ns;

--Set phase num
    write_value <= x"00000404";
    wait until rising_edge(clk100_o);
	write_axi_lite(clk100_o,std_logic_vector(to_unsigned(0,32-INPUT_IMG_WIDTH_ADDR'length))    & XSCL_NUMPHASE_ADDR ,  write_value ,AXIL_MISO ,AXIL_MOSI);
    wait until rising_edge(clk100_o);
    wait for 5 ns;
   
--Choose active set indexes for both vertical and horizontal directions   
    write_value <= x"00000000";
    wait until rising_edge(clk100_o);
	write_axi_lite(clk100_o,std_logic_vector(to_unsigned(0,32-INPUT_IMG_WIDTH_ADDR'length))    & XSCL_COEFSETS_ADDR ,  write_value ,AXIL_MISO ,AXIL_MOSI);
    wait until rising_edge(clk100_o);
    wait for 5 ns;
    
--Enable the scaling operation
    --enable XScaler RegUpdate
    read_axi_lite (clk100_o, std_logic_vector(to_unsigned(0,32-INPUT_IMG_WIDTH_ADDR'length))    & XSCL_CTL_ADDR,AXIL_MISO, AXIL_MOSI, read_value);
    wait until rising_edge(clk100_o);
    wait for 5 ns;
    write_value <= read_value or XSCL_CTL_REGUPDATE;
    wait until rising_edge(clk100_o);
    write_axi_lite(clk100_o,std_logic_vector(to_unsigned(0,32-INPUT_IMG_WIDTH_ADDR'length))    & XSCL_CTL_ADDR ,  write_value ,AXIL_MISO ,AXIL_MOSI);
    wait until rising_edge(clk100_o);
    wait for 5 ns;
   
    --enable XScaler
    read_axi_lite (clk100_o, std_logic_vector(to_unsigned(0,32-INPUT_IMG_WIDTH_ADDR'length))    & XSCL_CTL_ADDR,AXIL_MISO, AXIL_MOSI, read_value);
    wait until rising_edge(clk100_o);
    wait for 5 ns;
    write_value <= read_value or XSCL_CTL_ENABLE;
    wait until rising_edge(clk100_o);
    write_axi_lite(clk100_o,std_logic_vector(to_unsigned(0,32-INPUT_IMG_WIDTH_ADDR'length))    & XSCL_CTL_ADDR ,  write_value ,AXIL_MISO ,AXIL_MOSI);
    wait until rising_edge(clk100_o);
    wait for 5 ns;
    
    report "END OF CONFIGURATION" 
    severity error;
    
    
    TEST_RDY <= '1';
    wait until rising_edge(clk100_o);
    wait for 5 ns;
    
    
    wait;
end process ublaze_stim;

 
end Behavioral;
