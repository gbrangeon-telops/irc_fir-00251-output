-------------------------------------------------------------------------------
--
-- Title       : agc_tb_stim
-- Author      : Jean-Alexis Boulet
-- Company     : Telops
--
-------------------------------------------------------------------------------
-- $Author$
-- $LastChangedDate$
-- $Revision$ 
-------------------------------------------------------------------------------
--
-- Description : Test bench for AGC module
--
-------------------------------------------------------------------------------

library IEEE;                                             
use IEEE.STD_LOGIC_1164.all;
use IEEE.numeric_std.all;
use work.tel2000.all;

entity agc_tb_stim is
   port(
      --------------------------------
      -- µBlaze Interface
      -------------------------------- 
      AXIL_MOSI      : out t_axi4_lite_mosi;
      AXIL_MISO      : in t_axi4_lite_miso;
      AGC_INTERRUPT  : in std_logic;
      
      --------------------------------
      -- AXI Stream Interface
      --------------------------------
      AXI_STREAM_MOSI : out t_axi4_stream_mosi16;
      AXI_STREAM_MISO : in t_axi4_stream_miso;
      
      --------------------------------
      -- Random MISO Ctrl
      --------------------------------
      RANDOM   : out std_logic;
      FALL     : out std_logic;
      
      --------------------------------
      -- MISC
      --------------------------------
      CLK85   : out STD_LOGIC;
      CLK100   : out STD_LOGIC;
      ARESETN  : out STD_LOGIC
   );
end agc_tb_stim;



architecture rtl of agc_tb_stim is
   
   --------------------
   -- MB CTRL
   --------------------
   constant C_S_AXI_DATA_WIDTH      : integer := 32;
   constant C_S_AXI_ADDR_WIDTH      : integer := 32;
   constant AXI_STREAM_DATA_WIDTH   : integer := 16;
   
   ----------------------------   
   -- Address of registers
   ----------------------------   
   constant LO_IMAGE_FRACTION_ADDR        : std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0) := std_logic_vector(to_unsigned(0, C_S_AXI_ADDR_WIDTH));
   constant HI_IMAGE_FRACTION_ADDR        : std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0) := std_logic_vector(to_unsigned(4, C_S_AXI_ADDR_WIDTH));
   constant AGCMODE_ADDR                  : std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0) := std_logic_vector(to_unsigned(8, C_S_AXI_ADDR_WIDTH));
   constant NB_BIN_ADDR                   : std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0) := std_logic_vector(to_unsigned(12,C_S_AXI_ADDR_WIDTH));
   constant MSB_POS_ADDR                  : std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0) := std_logic_vector(to_unsigned(16,C_S_AXI_ADDR_WIDTH));
   constant CLEARMEM_ADDR                 : std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0) := std_logic_vector(to_unsigned(20,C_S_AXI_ADDR_WIDTH)); 
   constant NEW_CONFIG_FLAG_ADDR          : std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0) := std_logic_vector(to_unsigned(24,C_S_AXI_ADDR_WIDTH));
   constant HIST_LO_BINID_PREV_ADDR       : std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0) := std_logic_vector(to_unsigned(28,C_S_AXI_ADDR_WIDTH));
   constant HIST_LO_CUMSUM_ADDR           : std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0) := std_logic_vector(to_unsigned(32,C_S_AXI_ADDR_WIDTH));
   constant HIST_LO_CUMSUM_PREV_ADDR      : std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0) := std_logic_vector(to_unsigned(36,C_S_AXI_ADDR_WIDTH));
   constant HIST_HI_BINID_PREV_ADDR       : std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0) := std_logic_vector(to_unsigned(40,C_S_AXI_ADDR_WIDTH));
   constant HIST_HI_CUMSUM_ADDR           : std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0) := std_logic_vector(to_unsigned(44,C_S_AXI_ADDR_WIDTH));
   constant HIST_HI_CUMSUM_PREV_ADDR      : std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0) := std_logic_vector(to_unsigned(48,C_S_AXI_ADDR_WIDTH));
   constant HIST_TIMESTAMP_ADDR           : std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0) := std_logic_vector(to_unsigned(52,C_S_AXI_ADDR_WIDTH));
   constant HIST_NB_PIXEL_ADDR            : std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0) := std_logic_vector(to_unsigned(56,C_S_AXI_ADDR_WIDTH));
   constant LO_IMAGE_FRACTION_FBCK_ADDR   : std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0) := std_logic_vector(to_unsigned(60,C_S_AXI_ADDR_WIDTH));
   constant HI_IMAGE_FRACTION_FBCK_ADDR   : std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0) := std_logic_vector(to_unsigned(64,C_S_AXI_ADDR_WIDTH));

   
   -- CLK and RESET
   constant clk160_per : time := 6.25 ns;
   constant clk100_per : time := 10 ns;
   constant CLK85_PERIOD : time := 11.764 ns; -- 85 MHz
   -- CLK and RESET
   signal clk85_o : std_logic := '0';
   signal clk100_o : std_logic := '0';
   signal rstn_i : std_logic := '0';
   
   -- Read value registers
   signal h_lo_bin_id_prev_i           : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
   signal h_lo_cumsum_i                : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
   signal h_lo_cumsum_prev_i           : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
   signal h_lo_image_fraction_fbck_i   : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
   signal h_hi_bin_id_prev_i           : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
   signal h_hi_cumsum_i                : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
   signal h_hi_cumsum_prev_i           : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
   signal h_hi_image_fraction_fbck_i   : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
   signal h_timestamp_i                : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
   signal h_nb_pix_i                   : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
   
   -- Data stream
   constant NB_PIXEL    : integer := 1024;
   signal stream_val    : integer range 0 to 2**AXI_STREAM_DATA_WIDTH - 1;
   
   -- Set values
   signal lo_image_fraction_o : integer range 1 to NB_PIXEL;
   signal hi_image_fraction_o : integer range 1 to NB_PIXEL;

begin
   --! Assign clock
   CLK85 <= clk85_o;
   CLK100 <= clk100_o;
   ARESETN <= rstn_i;

   --! Clock 85MHz generation                   
   CLK85_GEN: process(clk85_o)
   begin
      clk85_o <= not clk85_o after CLK85_PERIOD/2;                          
   end process;
   
   --! Clock 100MHz generation 
   CLK100_GEN: process(clk100_o)
   begin
      clk100_o <= not clk100_o after clk100_per/2;                          
   end process;

   --! Reset Generation
   RST_GEN : process
   begin          
      rstn_i <= '0';
      wait for 5 us;
      rstn_i <= '1'; 
      wait;
   end process;


   --! Stream simulation
   STREAM_PROCESS : process 
   begin
      --! Note: 1st execution of the process is ignored by histogram because clear_mem signal is kept high by CUMSUM block
   
      ------------------------------------------
      -- AXI Stream function signature
      ------------------------------------------
      --procedure write_axis16 (signal Clk : in std_logic; Value : in std_logic_vector; tlast : in std_logic; signal miso : in  t_axi4_stream_miso; signal mosi : out t_axi4_stream_mosi16 );
      
      stream_val <= 0; 
      loop
         --stream_val <= 2**AXI_STREAM_DATA_WIDTH - 1;
         --stream_val <= 100;
         for pxl_cnt in 1 to NB_PIXEL loop
            -- Adjust tlast if last pixel
            if pxl_cnt = NB_PIXEL then
               write_axis16(clk85_o, std_logic_vector(to_unsigned(stream_val, AXI_STREAM_DATA_WIDTH)), '1', AXI_STREAM_MISO, AXI_STREAM_MOSI);
               --stream_val <= stream_val + 16;
               stream_val <= 0;
            else
               write_axis16(clk85_o, std_logic_vector(to_unsigned(stream_val, AXI_STREAM_DATA_WIDTH)), '0', AXI_STREAM_MISO, AXI_STREAM_MOSI);
               stream_val <= stream_val + 2**AXI_STREAM_DATA_WIDTH / NB_PIXEL;
            end if;
            wait for 5 ns;
         end loop;
      end loop;
      
   end process STREAM_PROCESS;
   
   
   --! Random MISO Ctrl
   RANDOM <= '1';    --Change to '0' to deactivate Random MISO block
   FALL <= '1';
   
   --! µBlaze simulation
   MB_PROCESS : process 
   begin
      -- Reset
      wait until rstn_i = '1';
      wait for 1 us;
   
      ------------------------------------------
      -- AXI Lite function signatures
      ------------------------------------------
      --procedure write_axi_lite (signal Clk : in std_logic; Addr : in std_logic_vector(31 downto 0); Value : in std_logic_vector(31 downto 0);signal  miso : in  t_axi4_lite_miso;signal  mosi : out t_axi4_lite_mosi);
      --procedure read_axi_lite (signal Clk : in std_logic; Addr : in std_logic_vector(31 downto 0); signal miso : in  t_axi4_lite_miso; signal mosi : out t_axi4_lite_mosi;signal  ReadValue : out std_logic_vector(31 downto 0));
      
      -- Set values 
      lo_image_fraction_o <= 1;
      hi_image_fraction_o <= 1024;
      wait until rising_edge(clk100_o);
      write_axi_lite(clk100_o, LO_IMAGE_FRACTION_ADDR, std_logic_vector(to_unsigned(lo_image_fraction_o, C_S_AXI_DATA_WIDTH)), AXIL_MISO, AXIL_MOSI);
      wait for 5 ns;
      wait until rising_edge(clk100_o);
      write_axi_lite(clk100_o, HI_IMAGE_FRACTION_ADDR, std_logic_vector(to_unsigned(hi_image_fraction_o, C_S_AXI_DATA_WIDTH)), AXIL_MISO, AXIL_MOSI);
      wait for 5 ns;
      wait until rising_edge(clk100_o);
      write_axi_lite(clk100_o, NB_BIN_ADDR, std_logic_vector(to_unsigned(1024, C_S_AXI_DATA_WIDTH)), AXIL_MISO, AXIL_MOSI);
      wait for 5 ns;
      wait until rising_edge(clk100_o);
      write_axi_lite(clk100_o, MSB_POS_ADDR, std_logic_vector(to_unsigned(3, C_S_AXI_DATA_WIDTH)), AXIL_MISO, AXIL_MOSI);
      wait for 5 ns;
      wait until rising_edge(clk100_o);
      write_axi_lite(clk100_o, AGCMODE_ADDR, std_logic_vector(to_unsigned(1, C_S_AXI_DATA_WIDTH)), AXIL_MISO, AXIL_MOSI);
      wait for 5 ns;
      wait until rising_edge(clk100_o);
      write_axi_lite(clk100_o, NEW_CONFIG_FLAG_ADDR, std_logic_vector(to_unsigned(0, C_S_AXI_DATA_WIDTH)), AXIL_MISO, AXIL_MOSI);
      wait for 5 ns; 
      
      -- Toggle new config flag 
      wait until rising_edge(clk100_o);
      write_axi_lite(clk100_o, NEW_CONFIG_FLAG_ADDR, std_logic_vector(to_unsigned(1, C_S_AXI_DATA_WIDTH)), AXIL_MISO, AXIL_MOSI);
      wait for 5 ns; 
      wait until rising_edge(clk100_o);
      write_axi_lite(clk100_o, NEW_CONFIG_FLAG_ADDR, std_logic_vector(to_unsigned(0, C_S_AXI_DATA_WIDTH)), AXIL_MISO, AXIL_MOSI);
      wait for 5 ns;
      
      
      
      GET_VAL_LOOP : loop
         -- Wait for interrupt
         wait until AGC_INTERRUPT = '1';
         
         -- Reset read values
         h_lo_bin_id_prev_i <= (others => '0');
         h_lo_cumsum_i <= (others => '0');
         h_lo_cumsum_prev_i <= (others => '0');
         h_lo_image_fraction_fbck_i <= (others => '0');
         h_hi_bin_id_prev_i <= (others => '0');
         h_hi_cumsum_i <= (others => '0');
         h_hi_cumsum_prev_i <= (others => '0');
         h_hi_image_fraction_fbck_i <= (others => '0');
         h_timestamp_i <= (others => '0');
         h_nb_pix_i <= (others => '0');
         
         -- Set values for next cumsum
         lo_image_fraction_o <= lo_image_fraction_o + 16;
         hi_image_fraction_o <= hi_image_fraction_o - 16;
         wait until rising_edge(clk100_o);
         write_axi_lite(clk100_o, LO_IMAGE_FRACTION_ADDR, std_logic_vector(to_unsigned(lo_image_fraction_o, C_S_AXI_DATA_WIDTH)), AXIL_MISO, AXIL_MOSI);
         wait for 5 ns;
         wait until rising_edge(clk100_o);
         write_axi_lite(clk100_o, HI_IMAGE_FRACTION_ADDR, std_logic_vector(to_unsigned(hi_image_fraction_o, C_S_AXI_DATA_WIDTH)), AXIL_MISO, AXIL_MOSI);
         wait for 5 ns; 
         
         -- Toggle new config flag 
         wait until rising_edge(clk100_o);
         write_axi_lite(clk100_o, NEW_CONFIG_FLAG_ADDR, std_logic_vector(to_unsigned(1, C_S_AXI_DATA_WIDTH)), AXIL_MISO, AXIL_MOSI);
         wait for 5 ns; 
         wait until rising_edge(clk100_o);
         write_axi_lite(clk100_o, NEW_CONFIG_FLAG_ADDR, std_logic_vector(to_unsigned(0, C_S_AXI_DATA_WIDTH)), AXIL_MISO, AXIL_MOSI);
         wait for 5 ns;
      
         
         -- Get values
         wait until rising_edge(clk100_o);
         read_axi_lite(clk100_o, HIST_LO_BINID_PREV_ADDR, AXIL_MISO, AXIL_MOSI, h_lo_bin_id_prev_i);
         wait for 5 ns;
         wait until rising_edge(clk100_o);
         read_axi_lite(clk100_o, HIST_LO_CUMSUM_ADDR, AXIL_MISO, AXIL_MOSI, h_lo_cumsum_i);
         wait for 5 ns;
         wait until rising_edge(clk100_o);
         read_axi_lite(clk100_o, HIST_LO_CUMSUM_PREV_ADDR, AXIL_MISO, AXIL_MOSI, h_lo_cumsum_prev_i);
         wait for 5 ns;
         wait until rising_edge(clk100_o);
         read_axi_lite(clk100_o, HIST_HI_BINID_PREV_ADDR, AXIL_MISO, AXIL_MOSI, h_hi_bin_id_prev_i);
         wait for 5 ns;
         wait until rising_edge(clk100_o);
         read_axi_lite(clk100_o, HIST_HI_CUMSUM_ADDR, AXIL_MISO, AXIL_MOSI, h_hi_cumsum_i);
         wait for 5 ns;
         wait until rising_edge(clk100_o);
         read_axi_lite(clk100_o, HIST_HI_CUMSUM_PREV_ADDR, AXIL_MISO, AXIL_MOSI, h_hi_cumsum_prev_i);
         wait for 5 ns;
         wait until rising_edge(clk100_o);
         read_axi_lite(clk100_o, HIST_TIMESTAMP_ADDR, AXIL_MISO, AXIL_MOSI, h_timestamp_i);
         wait for 5 ns;
         wait until rising_edge(clk100_o);
         read_axi_lite(clk100_o, HIST_NB_PIXEL_ADDR, AXIL_MISO, AXIL_MOSI, h_nb_pix_i);
         wait for 5 ns;
         wait until rising_edge(clk100_o);
         read_axi_lite(clk100_o, LO_IMAGE_FRACTION_FBCK_ADDR, AXIL_MISO, AXIL_MOSI, h_lo_image_fraction_fbck_i);
         wait for 5 ns;
         wait until rising_edge(clk100_o);
         read_axi_lite(clk100_o, HI_IMAGE_FRACTION_FBCK_ADDR, AXIL_MISO, AXIL_MOSI, h_hi_image_fraction_fbck_i);
         wait for 5 ns;
         
         -- Verify number of pixels
         assert h_nb_pix_i = std_logic_vector(to_unsigned(NB_PIXEL, C_S_AXI_DATA_WIDTH))
            report "Histogram nb of pxl is wrong";
            
         -- Clear Histogram
         wait until rising_edge(clk100_o);
         write_axi_lite(clk100_o, CLEARMEM_ADDR, std_logic_vector(to_unsigned(1, C_S_AXI_DATA_WIDTH)), AXIL_MISO, AXIL_MOSI);
         wait for 5 ns;
         wait until rising_edge(clk100_o);
         write_axi_lite(clk100_o, CLEARMEM_ADDR, std_logic_vector(to_unsigned(0, C_S_AXI_DATA_WIDTH)), AXIL_MISO, AXIL_MOSI);
         wait for 5 ns;
         
      end loop GET_VAL_LOOP;

   end process MB_PROCESS;

end rtl;
