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

entity fb_stim is
	 port(
      AXIS_MOSI : out t_axi4_stream_mosi32;
      AXIS_MISO : in t_axi4_stream_miso;

      AXIL_MOSI : out t_axi4_lite_mosi;
      AXIL_MISO : in t_axi4_lite_miso;
      
      WATERLEVEL_OUT : out STD_LOGIC;
	  
      CLK100 : out STD_LOGIC;
      CLK160 : out STD_LOGIC;
      ARESETN : out STD_LOGIC
      );
end fb_stim;



architecture sim of fb_stim is

-- CLK and RESET
constant clk100_per : time := 10 ns;
constant clk160_per : time := 6.25 ns;

signal clk100_o : std_logic := '0';
signal clk160_o : std_logic := '0';
signal rst_i : std_logic := '0';

--IMAGE PARAM
constant IMG_WIDTH : integer := 640;
constant IMG_HEIGHT : integer := 512;
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


--Define a image buffer   
type pixel_array is array (0 to TABLE_SIZE_MAX-1) of integer;
--Define a transmission state machine
type  frame_gen_state_t is (Frame_Reset, wait_to_transmit, transmit_hdr, transmit_img);

--signal  definition
signal frame_gen_state : frame_gen_state_t :=  Frame_Reset;
signal cnt : unsigned(15 downto 0) ;

signal axil_mosi_i : t_axi4_lite_mosi;
signal axil_miso_i : t_axi4_lite_miso;

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
   CLK100 <= clk100_o;
   CLK160 <= clk160_o;
   ARESETN <= rst_i;

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
   
   AXIL_MOSI <= axil_mosi_i;
   axil_miso_i <= AXIL_MISO;

waterlevel_stim: process is
begin
	WATERLEVEL_OUT <= '1';
	wait for 300 us;
	WATERLEVEL_OUT <= '0';
	wait for 400 us;
end process waterlevel_stim;


fb_stim: process is
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
   
      --WRITE AXI CONFIG
      write_axi_lite(clk100_o, std_logic_vector(to_unsigned(0,32-config_valid_addr'length))           & config_valid_addr ,           std_logic_vector(to_unsigned(0,32))     ,axil_miso_i ,axil_mosi_i);
      wait for 100 ns;
      write_axi_lite(clk100_o, std_logic_vector(to_unsigned(4,32-frame_width_addr'length))       & frame_width_addr ,       std_logic_vector(to_unsigned(img_width,32)) ,axil_miso_i ,axil_mosi_i);
      wait for 100 ns;
      write_axi_lite(clk100_o, std_logic_vector(to_unsigned(8,32-frame_height_addr'length))      & frame_height_addr ,      std_logic_vector(to_unsigned(img_height+2,32)) ,axil_miso_i ,axil_mosi_i);
      wait for 100 ns;
      write_axi_lite(clk100_o, std_logic_vector(to_unsigned(16,32-baseaddr_addr'length))         & baseaddr_addr ,          baseaddr ,axil_miso_i ,axil_mosi_i);
      wait for 100 ns;
      write_axi_lite(clk100_o, std_logic_vector(to_unsigned(20,32-frame_size_addr'length))          & frame_size_addr ,      std_logic_vector(to_unsigned(img_width*(img_height+2),32)) ,axil_miso_i ,axil_mosi_i);
      wait for 100 ns;
      write_axi_lite(clk100_o, std_logic_vector(to_unsigned(24,32-hdr_size_addr'length))          & hdr_size_addr ,      std_logic_vector(to_unsigned(img_width*2,32)) ,axil_miso_i ,axil_mosi_i);
      wait for 100 ns; 
      write_axi_lite(clk100_o, std_logic_vector(to_unsigned(28,32-img_size_addr'length))          & img_size_addr ,      std_logic_vector(to_unsigned(img_width*img_height,32)) ,axil_miso_i ,axil_mosi_i);
      wait for 100 ns; 
      write_axi_lite(clk100_o, std_logic_vector(to_unsigned(0,32-fb_mode_addr'length))           & fb_mode_addr ,           std_logic_vector(to_unsigned(2,32))     ,axil_miso_i ,axil_mosi_i);
      wait for 100 ns;
      write_axi_lite(clk100_o, std_logic_vector(to_unsigned(0,32-config_valid_addr'length))           & config_valid_addr ,           std_logic_vector(to_unsigned(1,32))     ,axil_miso_i ,axil_mosi_i);
      wait for 100 ns;
      
      --start image transmission
      transmit_pattern (clk160_o,axis_mosi,axis_miso,4,img_width,img_height);
      wait for 50 us;

      --End OF SIMULATION
      wait for 1 us;
      report "END OF SIMULATION" 
      severity error;
end process fb_stim;

 

end sim;
