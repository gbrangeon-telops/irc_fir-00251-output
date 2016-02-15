-------------------------------------------------------------------------------
--
-- Title       : Fb_stim
-- Design      : clink_tb
-- Author      : JEan-Alexis Boulet
-- Company     : 
--
-------------------------------------------------------------------------------
--
-- File        : D:\Telops\FIR-00251-Output\src\Clink\Simulations\clink_tb\src\axis_lane_stim.vhd
-- Generated   : Thu Jan 30 13:26:14 2014
-- From        : interface description file
-- By          : Itf2Vhdl ver. 1.22
--
-------------------------------------------------------------------------------
--
-- Description : This file generate stim for the framebuffer test bench
--
-------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;
use work.tel2000.all;
use work.FB_Define.all;

entity gige_out_stim is
	 port(
      AXIS_MOSI : out t_axi4_stream_mosi32;
      AXIS_MISO : in t_axi4_stream_miso;

      AXIL_FB_MOSI : out t_axi4_lite_mosi;
      AXIL_FB_MISO : in t_axi4_lite_miso;
      
      AXIL_PLEORA_MOSI : out t_axi4_lite_mosi;
      AXIL_PLEORA_MISO : in t_axi4_lite_miso;
      
      CLK80 : out std_logic;
      CLK80_N : out std_logic;
      CLK100 : out STD_LOGIC;
      CLK160 : out STD_LOGIC;
      ARESETN : out STD_LOGIC
      );
end gige_out_stim;



architecture sim of gige_out_stim is

-- CLK and RESET
constant clk80_per : time := 12.5 ns;
constant clk100_per : time := 10 ns;
constant clk160_per : time := 6.25 ns;

signal clk80_o : std_logic := '1';
signal clk80n_o : std_logic := '0';
signal clk100_o : std_logic := '0';
signal clk160_o : std_logic := '1';
signal rst_i : std_logic := '0';

--IMAGE PARAM
constant IMG_WIDTH : integer := 64;
constant IMG_HEIGHT : integer := 64;
constant IMG_WIDTH_MAX : integer := 1280;
constant IMG_HEIGHT_MAX : integer := 1024;
constant MAX_NUM_IMG : integer := 4;
--constant BASEADDR : std_logic_vector(31 downto 0) := x"80000000";
constant BASEADDR : std_logic_vector(31 downto 0) := x"00000000";

constant TABLE_SIZE : integer := (IMG_HEIGHT+2) * IMG_WIDTH;
constant TABLE_SIZE_MAX : integer := IMG_WIDTH_MAX * (IMG_HEIGHT_MAX+2);
constant NB_FRAME : integer := 3;
constant FRAME_DELAY : integer := 1000 ; --us

--REGISTER MAP
-- Address of registers
constant ADDR_LSB  : integer := 2;
constant OPT_MEM_ADDR_BITS : integer := 4; -- Number of supplement bit

constant FB_MODE_ADDR        : std_logic_vector(ADDR_LSB + OPT_MEM_ADDR_BITS downto 0) := std_logic_vector(to_unsigned(0,ADDR_LSB + OPT_MEM_ADDR_BITS + 1));
constant FRAME_WIDTH_ADDR    : std_logic_vector(ADDR_LSB + OPT_MEM_ADDR_BITS downto 0) := std_logic_vector(to_unsigned(4,ADDR_LSB + OPT_MEM_ADDR_BITS + 1));  
constant FRAME_HEIGHT_ADDR   : std_logic_vector(ADDR_LSB + OPT_MEM_ADDR_BITS downto 0) := std_logic_vector(to_unsigned(8,ADDR_LSB + OPT_MEM_ADDR_BITS + 1));
constant BASEADDR_ADDR       : std_logic_vector(ADDR_LSB + OPT_MEM_ADDR_BITS downto 0) := std_logic_vector(to_unsigned(12,ADDR_LSB + OPT_MEM_ADDR_BITS + 1));
constant FRAME_SIZE_ADDR     : std_logic_vector(ADDR_LSB + OPT_MEM_ADDR_BITS downto 0) := std_logic_vector(to_unsigned(16,ADDR_LSB + OPT_MEM_ADDR_BITS + 1));
constant HDR_SIZE_ADDR       : std_logic_vector(ADDR_LSB + OPT_MEM_ADDR_BITS downto 0) := std_logic_vector(to_unsigned(20,ADDR_LSB + OPT_MEM_ADDR_BITS + 1));
constant IMG_SIZE_ADDR       : std_logic_vector(ADDR_LSB + OPT_MEM_ADDR_BITS downto 0) := std_logic_vector(to_unsigned(24,ADDR_LSB + OPT_MEM_ADDR_BITS + 1));
constant CONFIG_VALID_ADDR       : std_logic_vector(ADDR_LSB + OPT_MEM_ADDR_BITS downto 0) := std_logic_vector(to_unsigned(28,ADDR_LSB + OPT_MEM_ADDR_BITS + 1));
constant FB_ERR_ADDR         : std_logic_vector(ADDR_LSB + OPT_MEM_ADDR_BITS downto 0) := std_logic_vector(to_unsigned(240,ADDR_LSB + OPT_MEM_ADDR_BITS + 1));

constant GIGE_VALID_ADDR              : std_logic_vector(ADDR_LSB + OPT_MEM_ADDR_BITS downto 0) := std_logic_vector(to_unsigned(0,ADDR_LSB + OPT_MEM_ADDR_BITS + 1));
constant GIGE_FRAME_WIDTH_ADDR       : std_logic_vector(ADDR_LSB + OPT_MEM_ADDR_BITS downto 0) := std_logic_vector(to_unsigned(4,ADDR_LSB + OPT_MEM_ADDR_BITS + 1));
constant GIGE_FRAME_HEIGHT_ADDR       : std_logic_vector(ADDR_LSB + OPT_MEM_ADDR_BITS downto 0) := std_logic_vector(to_unsigned(8,ADDR_LSB + OPT_MEM_ADDR_BITS + 1));
constant GIGE_HDR_SIZE_ADDR           : std_logic_vector(ADDR_LSB + OPT_MEM_ADDR_BITS downto 0) := std_logic_vector(to_unsigned(12,ADDR_LSB + OPT_MEM_ADDR_BITS + 1));
constant GIGE_HDR_VERSION_ADDR        : std_logic_vector(ADDR_LSB + OPT_MEM_ADDR_BITS downto 0) := std_logic_vector(to_unsigned(16,ADDR_LSB + OPT_MEM_ADDR_BITS + 1));
constant GIGE_PHY_ERR_ADDR       : std_logic_vector(ADDR_LSB + OPT_MEM_ADDR_BITS downto 0) := std_logic_vector(to_unsigned(240,ADDR_LSB + OPT_MEM_ADDR_BITS + 1));

--Define a image buffer   
type pixel_array is array (0 to TABLE_SIZE_MAX-1) of integer;
--Define a transmission state machine
type  frame_gen_state_t is (Frame_Reset, wait_to_transmit, transmit_hdr, transmit_img);

--signal  definition
signal frame_gen_state : frame_gen_state_t :=  Frame_Reset;
signal cnt : unsigned(15 downto 0) ;

procedure Transmit_Pattern (signal clk160_o: in std_logic;signal AXIS_MOSI : OUT t_axi4_stream_mosi32;signal AXIS_MISO : IN t_axi4_stream_miso;NB_FRAME : in integer;IMG_WIDTH : in integer; IMG_HEIGHT : in integer) is      -- subprogram_declarative_items (constant declarations, variable declarations, etc.)      
   variable pixel_index : integer :=0;
   variable pixel : pixel_array;
   variable frame_transmit: std_logic := '1';
   type  frame_gen_state_t is (Frame_Reset, wait_to_transmit, transmit_hdr, transmit_img);
   variable frame_gen_state : frame_gen_state_t :=  Frame_Reset;
   constant TABLE_SIZE : integer := (IMG_HEIGHT+2) * IMG_WIDTH;
   variable tx_cnt : integer := 0;
   begin
      
      for index in 0 to TABLE_SIZE-1 loop
      pixel(index) := index;
      end loop;
      
      frame_gen_state := Frame_Reset;
      for j in 0 to NB_FRAME-1 loop
         while frame_transmit = '1' loop
            wait until (rising_edge(clk160_o) and AXIS_MISO.TREADY = '1') ;
            
            if( (tx_cnt mod 3) /= 0) then 
               --wait at the end of a line
               if( (pixel_index mod IMG_WIDTH) = 0) then
                  AXIS_MOSI.TVALID  <= '0';
                  --wait for 10 us;   
                  wait for 10 ns;
                  wait until (rising_edge(clk160_o) and AXIS_MISO.TREADY = '1');
               end if;
               
               case frame_gen_state is
                  when Frame_Reset =>
                     AXIS_MOSI.TDATA <= (others => '0');
                     AXIS_MOSI.TVALID  <= '0';
                     AXIS_MOSI.TLAST <= '0';
                     AXIS_MOSI.TKEEP <= (others => '1');
                     AXIS_MOSI.TDEST <= (others => '0');
                     AXIS_MOSI.TUSER   <= (others => '0');
                     AXIS_MOSI.TID     <= "0";
                     frame_gen_state := wait_to_transmit;
                  when wait_to_transmit =>
                     wait for 2 us;
                     frame_gen_state := transmit_hdr;
                  when transmit_hdr =>
                        case pixel_index is
                           when 0 => -- correspond to first half of 32 bit hdr
                              AXIS_MOSI.TDATA(15 downto 0) <= x"43" & x"54";      --TC
                              AXIS_MOSI.TDATA(31 downto 16) <= x"00" & x"01";  --XML_MINOR_VER & XML_MAJOR_VER
                           when 2 =>
                              AXIS_MOSI.TDATA(31 downto 16) <= (others => '0'); --IMG_HDR_LEN & x"0000"
                              AXIS_MOSI.TDATA(15 downto 0) <= std_logic_vector(to_unsigned(IMG_WIDTH*2*2,16));
                           when 4 =>
                              AXIS_MOSI.TDATA(15 downto 0) <= std_logic_vector(to_unsigned(j,16));
                              AXIS_MOSI.TDATA(31 downto 16) <= (others => '0');
                           when 16 =>
                              AXIS_MOSI.TDATA(31 downto 16) <= std_logic_vector(to_unsigned(IMG_HEIGHT, 16));                   
                              AXIS_MOSI.TDATA(15 downto 0) <= std_logic_vector(to_unsigned(IMG_WIDTH, 16));
                           when others =>
                              AXIS_MOSI.TDATA(15 downto 0) <= std_logic_vector(to_unsigned(pixel(pixel_index + 0), 16));
                              AXIS_MOSI.TDATA(31 downto 16) <= std_logic_vector(to_unsigned(pixel(pixel_index + 1), 16));
                        end case;
                        
                        AXIS_MOSI.TVALID  <= '1';
                        AXIS_MOSI.TKEEP <= (others => '1');
                        AXIS_MOSI.TDEST <= (others => '0');
                        AXIS_MOSI.TUSER   <= (others => '0');
                        AXIS_MOSI.TID     <= "0";
                        
                        if(pixel_index = IMG_WIDTH*2-2) then
                           frame_gen_state := transmit_img;
                           AXIS_MOSI.TLAST <= '1';   
                           --AXIS_MOSI.TLAST <= '0';   --TEST    DEBUG!
                        else
                           frame_gen_state := transmit_hdr;
                           AXIS_MOSI.TLAST <= '0';
                        end if;
                        pixel_index := pixel_index +2;
                  when transmit_img =>
                     AXIS_MOSI.TDATA(31 downto 16) <= std_logic_vector(to_unsigned(pixel(pixel_index + 1), 16));
                     AXIS_MOSI.TDATA(15 downto 0)  <= std_logic_vector(to_unsigned(pixel(pixel_index + 0), 16));
                     AXIS_MOSI.TVALID  <= '1';
                     AXIS_MOSI.TKEEP <= (others => '1');
                     AXIS_MOSI.TDEST <= (others => '0');
                     AXIS_MOSI.TUSER   <= (others => '0');
                     AXIS_MOSI.TID     <= "0";
                     
                     if pixel_index = TABLE_SIZE-2 then
                        frame_transmit := '0';
                        AXIS_MOSI.TLAST <= '1';
                        pixel_index :=0;
                        frame_gen_state := Frame_Reset;
                     else
                        frame_transmit := '1';
                        AXIS_MOSI.TLAST <= '0';
                        pixel_index := pixel_index +2;
                        frame_gen_state := transmit_img;
                     end if;
                      
                  when others =>
                     frame_gen_state := Frame_Reset;
               end case;
            else --else from tx_cnt to add latency in the transmission
               AXIS_MOSI.TVALID  <= '0';--tvalid = 0 and the data is not calculated
            end if;
            tx_cnt := tx_cnt + 1;
         end loop;
         wait until (rising_edge(clk160_o) and AXIS_MISO.TREADY = '1') ;
         AXIS_MOSI.TDATA <= (others => '0');
         AXIS_MOSI.TVALID  <= '0';
         AXIS_MOSI.TLAST <= '0';
         AXIS_MOSI.TKEEP <= (others => '1');
         AXIS_MOSI.TDEST <= (others => '0');
         AXIS_MOSI.TUSER   <= (others => '0');
         AXIS_MOSI.TID     <= "0";
         frame_transmit := '1';
         wait for 25 us; --delaty between frame 
      end loop;   
      
      wait until (rising_edge(clk160_o) and AXIS_MISO.TREADY = '1') ;
      AXIS_MOSI.TDATA <= (others => '0');
      AXIS_MOSI.TVALID  <= '0';
      AXIS_MOSI.TLAST <= '0';
      AXIS_MOSI.TKEEP <= (others => '1');
      AXIS_MOSI.TDEST <= (others => '0');
      AXIS_MOSI.TUSER   <= (others => '0');
      AXIS_MOSI.TID     <= "0";
   end procedure Transmit_Pattern;
   
   
   
begin
-- Assign clock

   CLK80 <= clk80_o;
   CLK80_N <= clk80n_o;
   CLK100 <= clk100_o;
   CLK160 <= clk160_o;
   ARESETN <= rst_i;

   --! Clock 80MHz generation
   CLK80_GEN: process(clk80_o)
   begin
   clk80_o <= not clk80_o after clk80_per/2;                          
   end process;
   
   clk80n_o <= not clk80_o;
   
--! Clock 100MHz generation
   CLK100_GEN: process(clk100_o)
   begin
   clk100_o <= not clk100_o after clk100_per/2;                          
   end process; 
   
--! Clock 160MHz generation
   CLK160_GEN: process(clk160_o)
   begin
   clk160_o <= not clk160_o after clk160_per/2;                          
   end process;   

--! Reset Generation
   RST_GEN : process
   begin          
      rst_i <= '0';
   wait for 5 us;
      rst_i <= '1'; 
   wait;
   end process; 
   
gige_stim: process is
   variable pixel : pixel_array;
   variable Hpos : integer :=0;
   variable Vpos : integer :=0;
   variable pixel_index : integer :=0;
   variable frame_transmit: std_logic := '1';
   begin
   --Fill the pixel array
      for index in 0 to TABLE_SIZE-1 loop
         pixel(index) := index;
      end loop;
      

   --RESET DATA STREAMs
      AXIS_MOSI.TDATA <= (others => '0');
      AXIS_MOSI.TVALID <='0';
      AXIS_MOSI.TUSER <= (others => '0');
      AXIS_MOSI.TID <= (others => '0');
      AXIS_MOSI.TSTRB <= (others => '1');
      AXIS_MOSI.TKEEP <= (others => '1');
      AXIS_MOSI.TDEST <= (others => '0');
 
      wait until rst_i = '1';

      wait until rising_edge(clk160_o);
   
--    --WRITE FB AXI CONFIG
      write_axi_lite(std_logic_vector(to_unsigned(0,32-config_valid_addr'length))      & config_valid_addr ,   std_logic_vector(to_unsigned(0,32))     ,AXIL_FB_MISO ,AXIL_FB_MOSI);
      wait for 100 ns;
      write_axi_lite(std_logic_vector(to_unsigned(4,32-frame_width_addr'length))       & frame_width_addr ,    std_logic_vector(to_unsigned(img_width,32)) ,AXIL_FB_MISO ,AXIL_FB_MOSI);
      wait for 100 ns;
      write_axi_lite(std_logic_vector(to_unsigned(8,32-frame_height_addr'length))      & frame_height_addr ,   std_logic_vector(to_unsigned(img_height+2,32)) ,AXIL_FB_MISO ,AXIL_FB_MOSI);
      wait for 100 ns;
      write_axi_lite(std_logic_vector(to_unsigned(16,32-baseaddr_addr'length))         & baseaddr_addr ,       baseaddr ,AXIL_FB_MISO ,AXIL_FB_MOSI);
      wait for 100 ns;
      write_axi_lite(std_logic_vector(to_unsigned(20,32-frame_size_addr'length))       & frame_size_addr ,     std_logic_vector(to_unsigned(img_width*(img_height+2),32)) ,AXIL_FB_MISO ,AXIL_FB_MOSI);
      wait for 100 ns;
      write_axi_lite(std_logic_vector(to_unsigned(24,32-hdr_size_addr'length))         & hdr_size_addr ,       std_logic_vector(to_unsigned(img_width*2,32)) ,AXIL_FB_MISO ,AXIL_FB_MOSI);
      wait for 100 ns; 
      write_axi_lite(std_logic_vector(to_unsigned(28,32-img_size_addr'length))         & img_size_addr ,       std_logic_vector(to_unsigned(img_width*img_height,32)) ,AXIL_FB_MISO ,AXIL_FB_MOSI);
      wait for 100 ns; 
      write_axi_lite(std_logic_vector(to_unsigned(0,32-fb_mode_addr'length))           & fb_mode_addr ,        std_logic_vector(to_unsigned(1,32))     ,AXIL_FB_MISO ,AXIL_FB_MOSI);
      wait for 100 ns;
      write_axi_lite(std_logic_vector(to_unsigned(0,32-config_valid_addr'length))      & config_valid_addr ,   std_logic_vector(to_unsigned(1,32))     ,AXIL_FB_MISO ,AXIL_FB_MOSI);
      wait for 100 ns;
      
      --WRITE GIGE AXI CONFIG
      write_axi_lite(std_logic_vector(to_unsigned(0,32-GIGE_VALID_ADDR'length))        & GIGE_VALID_ADDR ,          std_logic_vector(to_unsigned(0,32))              ,AXIL_PLEORA_MISO ,AXIL_PLEORA_MOSI);
      wait for 100 ns;
      write_axi_lite(std_logic_vector(to_unsigned(4,32-GIGE_FRAME_WIDTH_ADDR'length))  & GIGE_FRAME_WIDTH_ADDR ,    std_logic_vector(to_unsigned(img_width,32))      ,AXIL_PLEORA_MISO ,AXIL_PLEORA_MOSI);
      wait for 100 ns;
      write_axi_lite(std_logic_vector(to_unsigned(8,32-GIGE_FRAME_HEIGHT_ADDR'length)) & GIGE_FRAME_HEIGHT_ADDR ,   std_logic_vector(to_unsigned(img_height+2,32))   ,AXIL_PLEORA_MISO ,AXIL_PLEORA_MOSI);
      wait for 100 ns;
      write_axi_lite(std_logic_vector(to_unsigned(16,32-GIGE_HDR_SIZE_ADDR'length))    & GIGE_HDR_SIZE_ADDR ,       std_logic_vector(to_unsigned(img_width*2,32))    ,AXIL_PLEORA_MISO ,AXIL_PLEORA_MOSI);
      wait for 100 ns;
      write_axi_lite(std_logic_vector(to_unsigned(20,32-GIGE_HDR_VERSION_ADDR'length)) & GIGE_HDR_VERSION_ADDR ,    std_logic_vector(to_unsigned(2,32)) ,AXIL_PLEORA_MISO ,AXIL_PLEORA_MOSI);
      wait for 100 ns;
      write_axi_lite(std_logic_vector(to_unsigned(20,32-GIGE_VALID_ADDR'length))       & GIGE_VALID_ADDR ,          std_logic_vector(to_unsigned(1,32)) ,AXIL_PLEORA_MISO ,AXIL_PLEORA_MOSI);
      wait for 100 ns;

      --start image transmission
      transmit_pattern (clk160_o,axis_mosi,axis_miso,4,img_width,img_width);
      wait for 50 us;
      wait until (rising_edge(clk160_o) and axis_miso.tready = '1') ;
      
      report "--write axi config   full 64*64 done";
      
      
      write_axi_lite(std_logic_vector(to_unsigned(0,32-config_valid_addr'length))      & config_valid_addr ,      std_logic_vector(to_unsigned(0,32))     ,AXIL_FB_MISO ,AXIL_FB_MOSI);
      wait for 100 ns;
      write_axi_lite(std_logic_vector(to_unsigned(4,32-FRAME_WIDTH_ADDR'length))       & FRAME_WIDTH_ADDR ,       std_logic_vector(to_unsigned(128,32)) ,AXIL_FB_MISO ,AXIL_FB_MOSI);
      wait for 100 ns;
      write_axi_lite(std_logic_vector(to_unsigned(8,32-FRAME_HEIGHT_ADDR'length))      & FRAME_HEIGHT_ADDR ,      std_logic_vector(to_unsigned(64+2,32)) ,AXIL_FB_MISO ,AXIL_FB_MOSI);
      wait for 100 ns;
      write_axi_lite(std_logic_vector(to_unsigned(16,32-BASEADDR_ADDR'length))         & BASEADDR_ADDR ,          BASEADDR ,AXIL_FB_MISO ,AXIL_FB_MOSI);
      wait for 100 ns;
      write_axi_lite(std_logic_vector(to_unsigned(20,32-FRAME_SIZE_ADDR'length))       & FRAME_SIZE_ADDR ,        std_logic_vector(to_unsigned(128*(64+2),32)) ,AXIL_FB_MISO ,AXIL_FB_MOSI);
      wait for 100 ns;
      write_axi_lite(std_logic_vector(to_unsigned(24,32-HDR_SIZE_ADDR'length))         & HDR_SIZE_ADDR ,          std_logic_vector(to_unsigned(128*2,32)) ,AXIL_FB_MISO ,AXIL_FB_MOSI);
      wait for 100 ns; 
      write_axi_lite(std_logic_vector(to_unsigned(28,32-IMG_SIZE_ADDR'length))         & IMG_SIZE_ADDR ,          std_logic_vector(to_unsigned(128*64,32)) ,AXIL_FB_MISO ,AXIL_FB_MOSI);
      wait for 100 ns; 
      write_axi_lite(std_logic_vector(to_unsigned(0,32-FB_MODE_ADDR'length))           & FB_MODE_ADDR ,           std_logic_vector(to_unsigned(1,32))     ,AXIL_FB_MISO ,AXIL_FB_MOSI);
      wait for 100 ns;
      write_axi_lite(std_logic_vector(to_unsigned(0,32-config_valid_addr'length))      & config_valid_addr ,      std_logic_vector(to_unsigned(1,32))     ,AXIL_FB_MISO ,AXIL_FB_MOSI);
      wait for 100 ns;
      
      --WRITE GIGE AXI CONFIG
      write_axi_lite(std_logic_vector(to_unsigned(0,32-GIGE_VALID_ADDR'length))        & GIGE_VALID_ADDR ,          std_logic_vector(to_unsigned(0,32))              ,AXIL_PLEORA_MISO ,AXIL_PLEORA_MOSI);
      wait for 100 ns;
      write_axi_lite(std_logic_vector(to_unsigned(4,32-GIGE_FRAME_WIDTH_ADDR'length))  & GIGE_FRAME_WIDTH_ADDR ,    std_logic_vector(to_unsigned(128,32))      ,AXIL_PLEORA_MISO ,AXIL_PLEORA_MOSI);
      wait for 100 ns;
      write_axi_lite(std_logic_vector(to_unsigned(8,32-GIGE_FRAME_HEIGHT_ADDR'length)) & GIGE_FRAME_HEIGHT_ADDR ,   std_logic_vector(to_unsigned(64+2,32))   ,AXIL_PLEORA_MISO ,AXIL_PLEORA_MOSI);
      wait for 100 ns;
      write_axi_lite(std_logic_vector(to_unsigned(16,32-GIGE_HDR_SIZE_ADDR'length))    & GIGE_HDR_SIZE_ADDR ,       std_logic_vector(to_unsigned(128*2,32))    ,AXIL_PLEORA_MISO ,AXIL_PLEORA_MOSI);
      wait for 100 ns;
      write_axi_lite(std_logic_vector(to_unsigned(20,32-GIGE_HDR_VERSION_ADDR'length)) & GIGE_HDR_VERSION_ADDR ,    std_logic_vector(to_unsigned(2,32)) ,AXIL_PLEORA_MISO ,AXIL_PLEORA_MOSI);
      wait for 100 ns;
      write_axi_lite(std_logic_vector(to_unsigned(20,32-GIGE_VALID_ADDR'length))       & GIGE_VALID_ADDR ,          std_logic_vector(to_unsigned(1,32)) ,AXIL_PLEORA_MISO ,AXIL_PLEORA_MOSI);
      wait for 100 ns;
      
      --START IMAGE TRANSMISSION
      Transmit_Pattern (clk160_o,AXIS_MOSI,AXIS_MISO,4,128,64);
      wait for 1 us;
      wait until (rising_edge(clk160_o) and AXIS_MISO.TREADY = '1') ;
      
      report "--Write AXI config   FULL 128*64 done";

      --End OF SIMULATION
      wait for 1 us;
      report "END OF SIMULATION" 
      severity error;
end process gige_stim;

 

end sim;
