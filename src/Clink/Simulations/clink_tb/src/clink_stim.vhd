-------------------------------------------------------------------------------
--
-- Title       : axis_lane_stim
-- Design      : clink_tb
-- Author      : 
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
-- Description : 
--
-------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;
use work.tel2000.all;
use work.CLINK_Define.all;

entity clink_stim is
	 port(
      AXIS_MOSI : out t_axi4_stream_mosi32;
      AXIS_MISO : in t_axi4_stream_miso;

      AXIL_MOSI : out t_axi4_lite_mosi;
      AXIL_MISO : in t_axi4_lite_miso;
      
      CLK100 : out STD_LOGIC;
      CLK160 : out STD_LOGIC;
      CLK560 : out STD_LOGIC;
      ARESETN : out STD_LOGIC
      );
end clink_stim;



architecture clink_stim of clink_stim is

-- CLK and RESET
constant clk100_per : time := 10 ns;
constant clk160_per : time := 6.25 ns;
constant clk560_per : time := 1.785 ns;
signal clk100_o : std_logic := '0';
signal clk160_o : std_logic := '0';
signal clk560_o : std_logic := '0';
signal rst_i : std_logic := '0';

--IMAGE PARAM
constant IMG_WIDTH : integer := 64;
constant IMG_HEIGHT : integer := 4;
constant IMG_WIDTH_MAX : integer := 1280;
constant IMG_HEIGHT_MAX : integer := 1024;
constant NB_FRAME : integer := 3;
constant FRAME_DELAY : integer := 1000 ; --us

--CLINK CONFIG GENERATION
constant FVAL_SIZE : integer := IMG_HEIGHT+2;
constant LVAL_SIZE_FULL : integer := IMG_WIDTH/4;
constant TABLE_SIZE_FULL : integer := fval_size * LVAL_SIZE_FULL;
constant LVAL_SIZE : integer := IMG_WIDTH;
constant TABLE_SIZE : integer := fval_size * LVAL_SIZE;
constant TABLE_SIZE_MAX : integer := (IMG_HEIGHT_MAX+2) * IMG_WIDTH_MAX;
constant HEADER_SIZE : integer := 12;
constant LVAL_PAUSE : integer :=0;
constant FRAMEPERCUBE : integer :=1;
constant CLINKMODE : integer :=0;
constant HEADERVERSION : integer := 0;

constant CLINK_FULL : integer := 1;
constant CLINK_BASE : integer := 0;
constant CLINK_DUAL : integer := 8;

--REGISTER MAP
-- Address of registers
constant ADDR_LSB  : integer := 2;
constant OPT_MEM_ADDR_BITS : integer := 4; -- Number of supplement bit

constant ADDR_CLINKMODE : std_logic_vector(ADDR_LSB + OPT_MEM_ADDR_BITS downto 0) := std_logic_vector(to_unsigned(0,ADDR_LSB + OPT_MEM_ADDR_BITS + 1));
constant ADDR_HDERVERSION : std_logic_vector(ADDR_LSB + OPT_MEM_ADDR_BITS downto 0) := std_logic_vector(to_unsigned(4,ADDR_LSB + OPT_MEM_ADDR_BITS + 1));
constant ADDR_IMGWIDTH : std_logic_vector(ADDR_LSB + OPT_MEM_ADDR_BITS downto 0) := std_logic_vector(to_unsigned(8,ADDR_LSB + OPT_MEM_ADDR_BITS + 1));
constant ADDR_IMGHEIGHT : std_logic_vector(ADDR_LSB + OPT_MEM_ADDR_BITS downto 0) := std_logic_vector(to_unsigned(12,ADDR_LSB + OPT_MEM_ADDR_BITS + 1));
constant ADDR_FVALSIZE : std_logic_vector(ADDR_LSB + OPT_MEM_ADDR_BITS downto 0) := std_logic_vector(to_unsigned(16,ADDR_LSB + OPT_MEM_ADDR_BITS + 1));
constant ADDR_LVALPAUSE : std_logic_vector(ADDR_LSB + OPT_MEM_ADDR_BITS downto 0) := std_logic_vector(to_unsigned(20,ADDR_LSB + OPT_MEM_ADDR_BITS + 1));
constant ADDR_FRAMERESET : std_logic_vector(ADDR_LSB + OPT_MEM_ADDR_BITS downto 0) := std_logic_vector(to_unsigned(24,ADDR_LSB + OPT_MEM_ADDR_BITS + 1));
constant ADDR_SYNCERROR : std_logic_vector(ADDR_LSB + OPT_MEM_ADDR_BITS downto 0) := std_logic_vector(to_unsigned(240,ADDR_LSB + OPT_MEM_ADDR_BITS + 1));
constant ADDR_DECODEERROR : std_logic_vector(ADDR_LSB + OPT_MEM_ADDR_BITS downto 0) := std_logic_vector(to_unsigned(244,ADDR_LSB + OPT_MEM_ADDR_BITS + 1));
constant ADDR_DATACNT : std_logic_vector(ADDR_LSB + OPT_MEM_ADDR_BITS downto 0) := std_logic_vector(to_unsigned(248,ADDR_LSB + OPT_MEM_ADDR_BITS + 1));
constant ADDR_CLERROR : std_logic_vector(ADDR_LSB + OPT_MEM_ADDR_BITS downto 0) := std_logic_vector(to_unsigned(252,ADDR_LSB + OPT_MEM_ADDR_BITS + 1));

   
type pixel_array is array (0 to TABLE_SIZE_MAX-1) of integer;
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
               if( (pixel_index mod IMG_WIDTH) = 0) then -- pause for line change
                  AXIS_MOSI.TVALID  <= '0';
                  wait for 500 ns;   
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
                     wait for 500 ns;
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
                           ---AXIS_MOSI.TLAST <= '0';   --TEST    DEBUG!
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
         --delay between frame
         wait for 1 us; 
         
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
   CLK560 <= clk560_o;
   ARESETN <= rst_i;

--! Clock 560MHz generation
   CLK560_GEN: process(clk560_o)
   begin
   clk560_o <= not clk560_o after clk560_per/2;                          
   end process;    
   
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
   wait for 1 us;
      rst_i <= '1'; 
   wait;
   end process; 
   
clink_stim: process is
   variable pixel : pixel_array;
   variable Hpos : integer :=0;
   variable Vpos : integer :=0;
   variable pixel_index : integer :=0;
   variable frame_transmit: std_logic := '1';
   
   constant img_width : integer := 64;
   constant img_heigth : integer := 4;
   
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
    wait until rising_edge(clk160_o);
    
    wait until rst_i = '1';
       
    --Setup clink configuration in full 132x4
    wait until rising_edge(clk100_o);
    write_axi_lite(clk100_o,std_logic_vector(to_unsigned(0,32-ADDR_CLINKMODE'length))    & ADDR_CLINKMODE ,  std_logic_vector(to_unsigned(2,32)),AXIL_MISO ,AXIL_MOSI);
    wait for 5 ns;
    wait until rising_edge(clk100_o);
    write_axi_lite(clk100_o,std_logic_vector(to_unsigned(0,32-ADDR_HDERVERSION'length))    & ADDR_HDERVERSION ,  std_logic_vector(to_unsigned(0,32)),AXIL_MISO ,AXIL_MOSI);
    wait for 5 ns;
    wait until rising_edge(clk100_o);
    write_axi_lite(clk100_o,std_logic_vector(to_unsigned(0,32-ADDR_IMGWIDTH'length))    & ADDR_IMGWIDTH ,  std_logic_vector(to_unsigned(img_width,32)),AXIL_MISO ,AXIL_MOSI);
    wait for 5 ns;
    wait until rising_edge(clk100_o);
    write_axi_lite(clk100_o,std_logic_vector(to_unsigned(0,32-ADDR_IMGHEIGHT'length))    & ADDR_IMGHEIGHT ,  std_logic_vector(to_unsigned(img_heigth,32)),AXIL_MISO ,AXIL_MOSI);
    wait for 5 ns;
    wait until rising_edge(clk100_o);
    write_axi_lite(clk100_o,std_logic_vector(to_unsigned(0,32-ADDR_FVALSIZE'length))    & ADDR_FVALSIZE ,  std_logic_vector(to_unsigned(192,32)),AXIL_MISO ,AXIL_MOSI);
    wait for 5 ns;
    wait until rising_edge(clk100_o);
    write_axi_lite(clk100_o,std_logic_vector(to_unsigned(0,32-ADDR_LVALPAUSE'length))    & ADDR_LVALPAUSE ,  std_logic_vector(to_unsigned(4,32)),AXIL_MISO ,AXIL_MOSI);
    wait for 5 ns;
    wait until rising_edge(clk100_o);
    write_axi_lite(clk100_o,std_logic_vector(to_unsigned(0,32-ADDR_FRAMERESET'length))    & ADDR_FRAMERESET ,  std_logic_vector(to_unsigned(1,32)),AXIL_MISO ,AXIL_MOSI);
    wait for 5 ns;
    wait until rising_edge(clk100_o);
    write_axi_lite(clk100_o,std_logic_vector(to_unsigned(0,32-ADDR_FRAMERESET'length))    & ADDR_FRAMERESET ,  std_logic_vector(to_unsigned(0,32)),AXIL_MISO ,AXIL_MOSI);
    wait for 5 ns;
    wait until rising_edge(clk100_o);
    report "--Write AXI config  done";
    
    --Start transmit pattern
    for i in 0 to 33 loop
        wait until (rising_edge(clk160_o));
        Transmit_Pattern (clk160_o,AXIS_MOSI,AXIS_MISO,1,img_width,img_heigth);
        wait for 1 us;
    end loop;
    

    wait until (rising_edge(clk160_o) and AXIS_MISO.TREADY = '1') ;
    report "Transmit 33 frame ";
 

--End OF SIMULATION
      wait for 1 us;
      report "END OF SIMULATION" 
      severity error;
end process clink_stim;

 

end clink_stim;
