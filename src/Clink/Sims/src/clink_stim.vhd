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
      AXIS_MOSI : out t_axi4_stream_mosi64;     
      AXIS_MISO : in t_axi4_stream_miso;

      AXIL_MOSI : out t_axi4_lite_mosi;
      AXIL_MISO : in t_axi4_lite_miso;
      
      CLK_MB : out STD_LOGIC;
      CLK_DIN : out STD_LOGIC;
      CLK_50 : out STD_LOGIC;
      CLK_DOUT : out STD_LOGIC;

      ARESETN : out STD_LOGIC
      );
end clink_stim;



architecture clink_stim of clink_stim is

------------------- Constants definition -------------------------- 
-- Clocks frequency 
constant CLK50_PERIOD : time := 20 ns; -- 50 MHz : CLink clock for data before serialization
constant CLK80_PERIOD : time := 12.5 ns; -- 80 MHz : CLink clock for data before serialization
constant CLK85_PERIOD : time := 11.764 ns; -- 85 MHz : CLink clock for data before serialization
constant CLK100_PERIOD : time := 10 ns;  -- 100 MHz : Microblaze clock
constant CLK340_PERIOD : time := 2.9411764 ns; -- 340 MHz

constant CLK595_PERIOD : time := 1.68067 ns; -- 595.00080325 MHz  : CLink clock for data output (serialized data 7:1)
   
--IMAGE PARAM
constant IMG_WIDTH : integer := 128;
constant IMG_HEIGHT : integer := 64;
constant IMG_WIDTH_MAX : integer := 1280;
constant IMG_HEIGHT_MAX : integer := 1024;
constant NB_FRAME : integer := 5;         -- Number of frame to transmit
constant FRAME_DELAY : time := 1 us;


--CLINK CONFIG GENERATION    
--constant CLINKMODE : std_logic_vector(1 downto 0) := CLINK_DUAL_MODE; 
--constant CLINKMODE : std_logic_vector(1 downto 0) := CLINK_FULL_MODE;  
constant CLINKMODE : std_logic_vector(1 downto 0) := CLINK_BASE_MODE; 

constant CLOCK_MODE : integer := CLOCK_MODE_85MHZ;
--constant CLOCK_MODE : integer := CLOCK_MODE_50MHZ;

constant FVAL_SIZE : integer := (IMG_HEIGHT+2);
constant LVAL_PAUSE : integer := 4;
constant FVAL_PAUSE : integer := 3; 

constant TABLE_SIZE_MAX : integer := (IMG_HEIGHT_MAX+2) * IMG_WIDTH_MAX;

--REGISTER MAP
constant ADDR_LSB  : integer := 2;
constant OPT_MEM_ADDR_BITS : integer := 4; -- Number of supplement bit

constant ADDR_CLINKMODE : std_logic_vector(ADDR_LSB + OPT_MEM_ADDR_BITS downto 0) := std_logic_vector(to_unsigned(0,ADDR_LSB + OPT_MEM_ADDR_BITS + 1));
constant ADDR_CLOCK_MODE : std_logic_vector(ADDR_LSB + OPT_MEM_ADDR_BITS downto 0) := std_logic_vector(to_unsigned(4,ADDR_LSB + OPT_MEM_ADDR_BITS + 1));
constant ADDR_WIDTH : std_logic_vector(ADDR_LSB + OPT_MEM_ADDR_BITS downto 0) := std_logic_vector(to_unsigned(8,ADDR_LSB + OPT_MEM_ADDR_BITS + 1));
constant ADDR_HEIGHT : std_logic_vector(ADDR_LSB + OPT_MEM_ADDR_BITS downto 0) := std_logic_vector(to_unsigned(12,ADDR_LSB + OPT_MEM_ADDR_BITS + 1));
constant ADDR_LVALSIZE : std_logic_vector(ADDR_LSB + OPT_MEM_ADDR_BITS downto 0) := std_logic_vector(to_unsigned(16,ADDR_LSB + OPT_MEM_ADDR_BITS + 1));
constant ADDR_FVALSIZE : std_logic_vector(ADDR_LSB + OPT_MEM_ADDR_BITS downto 0) := std_logic_vector(to_unsigned(20,ADDR_LSB + OPT_MEM_ADDR_BITS + 1));
constant ADDR_LVALPAUSE : std_logic_vector(ADDR_LSB + OPT_MEM_ADDR_BITS downto 0) := std_logic_vector(to_unsigned(24,ADDR_LSB + OPT_MEM_ADDR_BITS + 1));
constant ADDR_FVALPAUSE : std_logic_vector(ADDR_LSB + OPT_MEM_ADDR_BITS downto 0) := std_logic_vector(to_unsigned(28,ADDR_LSB + OPT_MEM_ADDR_BITS + 1));
constant ADDR_FRAMERESET : std_logic_vector(ADDR_LSB + OPT_MEM_ADDR_BITS downto 0) := std_logic_vector(to_unsigned(32,ADDR_LSB + OPT_MEM_ADDR_BITS + 1));

constant ADDR_CLERROR : std_logic_vector(ADDR_LSB + OPT_MEM_ADDR_BITS downto 0) := std_logic_vector(to_unsigned(252,ADDR_LSB + OPT_MEM_ADDR_BITS + 1));

type pixel_array is array (0 to TABLE_SIZE_MAX-1) of integer;

-- Signal declaration
signal clk_mb_o : std_logic := '0';
signal clk_din_o : std_logic := '0';
signal clk_dout_o : std_logic := '0'; 
signal clk_50_o : std_logic := '0';
signal rst_i : std_logic := '0';
signal cnt : unsigned(15 downto 0) ; 




procedure Transmit_Pattern (signal clk_din_o: in std_logic;signal AXIS_MOSI : OUT t_axi4_stream_mosi64;signal AXIS_MISO : IN t_axi4_stream_miso;NB_FRAME : in integer;IMG_WIDTH : in integer; IMG_HEIGHT : in integer) is      -- subprogram_declarative_items (constant declarations, variable declarations, etc.)

   variable pixel_index : integer := 0;
   variable pixel : pixel_array;
   variable frame_transmit: std_logic := '1';
   type  frame_gen_state_t is (Frame_Reset, wait_to_transmit, transmit_hdr, transmit_img);
   variable frame_gen_state : frame_gen_state_t :=  Frame_Reset;
   constant TABLE_SIZE : integer := (IMG_HEIGHT+2) * IMG_WIDTH;
   variable tx_cnt : integer := 0;
   constant LINE_DELAY : time := 0 us;
   
   variable pix_per_transaction : integer;
   variable modulo_mask : std_logic_vector(3 downto 0) ; 
   
   begin     
                                             
      if CLINKMODE = CLINK_FULL_MODE then  
         pix_per_transaction := 4; 
         modulo_mask := "0000";
      else 
         pix_per_transaction := 1;  
         modulo_mask := "0011";
      end if;

      for index in 0 to TABLE_SIZE-1 loop     
        pixel(index) := index;
      end loop;

      frame_gen_state := Frame_Reset;  
      
      for j in 0 to NB_FRAME-1 loop           
         while frame_transmit = '1' loop 
            wait until (rising_edge(clk_din_o) and AXIS_MISO.TREADY = '1') ;
            
               if( (pixel_index mod IMG_WIDTH) = 0) then -- pause for line change
                  AXIS_MOSI.TVALID  <= '0'; 
                  wait for LINE_DELAY;
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
                  
                     AXIS_MOSI.TVALID  <= '1';
                  
                     -- CLINK_FULL_MODE : pixel_index%1, CLINK_BASE_MODE : pixel_index%4 
                     if (std_logic_vector(to_unsigned(pixel_index, 16)) and x"000" & modulo_mask) = x"0000"   then
                        
                        AXIS_MOSI.TVALID  <= '1';
                        
                        case pixel_index is 
                             when 0 => -- correspond to first half of 32 bit hdr
                                 AXIS_MOSI.TDATA(15 downto 0) <= x"43" & x"54";      --TC
                                 AXIS_MOSI.TDATA(31 downto 16) <= x"00" & x"01";  --XML_MINOR_VER & XML_MAJOR_VER
                                 AXIS_MOSI.TDATA(47 downto 32) <= (others => '0'); --IMG_HDR_LEN & x"0000"
                                 AXIS_MOSI.TDATA(63 downto 48) <= std_logic_vector(to_unsigned(IMG_WIDTH*2*2,16));
                              
                              when 4 =>
                                 AXIS_MOSI.TDATA(15 downto 0) <= std_logic_vector(to_unsigned(j,16));
                                 AXIS_MOSI.TDATA(31 downto 16) <= (others => '0');
                                 AXIS_MOSI.TDATA(47 downto 32) <= (others => '0');
                                 AXIS_MOSI.TDATA(63 downto 48) <= (others => '0');
                              when 16 =>
                                 AXIS_MOSI.TDATA(31 downto 16) <= std_logic_vector(to_unsigned(IMG_HEIGHT, 16));
                                 AXIS_MOSI.TDATA(15 downto 0) <= std_logic_vector(to_unsigned(IMG_WIDTH, 16));
                                 AXIS_MOSI.TDATA(47 downto 32) <= (others => '0');
                                 AXIS_MOSI.TDATA(63 downto 48) <= (others => '0');
                              when others =>
                                 AXIS_MOSI.TDATA(15 downto 0)  <= std_logic_vector(to_unsigned(pixel(pixel_index + 0), 16));
                                 AXIS_MOSI.TDATA(31 downto 16) <= std_logic_vector(to_unsigned(pixel(pixel_index + 1), 16));
                                 AXIS_MOSI.TDATA(47 downto 32) <= std_logic_vector(to_unsigned(pixel(pixel_index + 2), 16));
                                 AXIS_MOSI.TDATA(63 downto 48) <= std_logic_vector(to_unsigned(pixel(pixel_index + 3), 16));
                        end case; 

                     else
                        AXIS_MOSI.TVALID  <= '0';
                     end if;
                     
                     if(pixel_index = IMG_WIDTH*2-4) then 
                        frame_gen_state := transmit_img;
                        AXIS_MOSI.TLAST <= '1';
                     else
                        frame_gen_state := transmit_hdr;
                        AXIS_MOSI.TLAST <= '0';
                     end if; 
                        
                        
                     pixel_index := pixel_index + pix_per_transaction;  
                 
                  when transmit_img => 
                  
                     -- CLINK_FULL_MODE : pixel_index % 1, CLINK_BASE_MODE : pixel_index % 4 
                     if (std_logic_vector(to_unsigned(pixel_index, 16)) and x"000" & modulo_mask) = x"0000"   then
                        
                        AXIS_MOSI.TVALID  <= '1';
                        
                        
                        AXIS_MOSI.TDATA(63 downto 48)  <= std_logic_vector(to_unsigned(pixel(pixel_index + 3), 16));
                        AXIS_MOSI.TDATA(47 downto 32)  <= std_logic_vector(to_unsigned(pixel(pixel_index + 2), 16));
                        AXIS_MOSI.TDATA(31 downto 16) <= std_logic_vector(to_unsigned(pixel(pixel_index + 1), 16));
                        AXIS_MOSI.TDATA(15 downto 0)  <= std_logic_vector(to_unsigned(pixel(pixel_index + 0), 16));
                       
                        
                     else
                        AXIS_MOSI.TVALID  <= '0';
                     end if;
                     
                     if pixel_index = TABLE_SIZE-4 then 
                        frame_transmit := '0';
                        AXIS_MOSI.TLAST <= '1';
                        pixel_index :=0;
                        frame_gen_state := Frame_Reset; 
                     else
                        frame_transmit := '1';
                        AXIS_MOSI.TLAST <= '0';
                        pixel_index := pixel_index + pix_per_transaction;  
                        frame_gen_state := transmit_img;
                     end if;

                  when others =>
                     frame_gen_state := Frame_Reset;
               end case;
            --else --else from tx_cnt to add latency in the transmission
            --   AXIS_MOSI.TVALID  <= '0';--tvalid = 0 and the data is not calculated
            --end if;

            tx_cnt := tx_cnt + 1;
         end loop; 

         wait until (rising_edge(clk_din_o) and AXIS_MISO.TREADY = '1') ;
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

      wait until (rising_edge(clk_din_o) and AXIS_MISO.TREADY = '1') ;
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
   CLK_MB <= clk_mb_o;
   CLK_DIN <= clk_din_o;
   CLK_DOUT <= clk_dout_o;
   CLK_50 <= clk_50_o;
   ARESETN <= rst_i;

--! CLink Output Clock generation (590MHz)
      CLK_DOUT_GENERATION: process(clk_dout_o)
      begin
      clk_dout_o <= not clk_dout_o after CLK595_PERIOD/2;
      end process;

--! MicroBlaze Clock generation (100MHz)
   CLK_MB_GENERATION: process(clk_mb_o)
   begin
   clk_mb_o <= not clk_mb_o after CLK100_PERIOD/2;
   end process;
   
   
   --! MicroBlaze Clock generation (50MHz)
   CLK_VARIABLE_TEST: process(clk_mb_o)
   begin
   clk_50_o <= not clk_50_o after CLK50_PERIOD/2;
   end process;
   
   
--! Clock 85MHz generation
   CLK_DIN_GENERATION: process(clk_din_o)
   begin
   clk_din_o <= not clk_din_o after CLK85_PERIOD/2;
   --clk_din_o <= not clk_din_o after CLK80_PERIOD/2;
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
   variable lval_size_normalized : integer ;
   
   constant img_width : integer := IMG_WIDTH;   
   constant img_heigth : integer := IMG_HEIGHT; 
   
   begin 
   
      
     if CLINKMODE = CLINK_BASE_MODE then 
        lval_size_normalized := IMG_WIDTH; 
     else
        lval_size_normalized := IMG_WIDTH/4; 
     end if;
    --RESET DATA STREAMs
    AXIS_MOSI.TDATA <= (others => '0');
    AXIS_MOSI.TVALID <='0';
    AXIS_MOSI.TUSER <= (others => '0');
    AXIS_MOSI.TID <= (others => '0');
    AXIS_MOSI.TSTRB <= (others => '1');
    AXIS_MOSI.TKEEP <= (others => '1');
    AXIS_MOSI.TDEST <= (others => '0');
    wait until rising_edge(clk_din_o);
    wait until rst_i = '1';       
    
    --CLINK INIT
    --Setup clink configuration in full 132x4   

       
    wait until rising_edge(clk_mb_o); 
    write_axi_lite(clk_mb_o,std_logic_vector(to_unsigned(0,32-ADDR_CLINKMODE'length))    & ADDR_CLINKMODE ,  std_logic_vector(to_unsigned(0,32-CLINKMODE'length)) & CLINKMODE ,AXIL_MISO ,AXIL_MOSI);
    wait for 5 ns;
    wait until rising_edge(clk_mb_o);
    write_axi_lite(clk_mb_o,std_logic_vector(to_unsigned(0,32-ADDR_CLOCK_MODE'length))    & ADDR_CLOCK_MODE ,  std_logic_vector(to_unsigned(0,32)),AXIL_MISO ,AXIL_MOSI);
    wait for 5 ns;
    wait until rising_edge(clk_mb_o);
    write_axi_lite(clk_mb_o,std_logic_vector(to_unsigned(0,32-ADDR_WIDTH'length))    & ADDR_WIDTH ,  std_logic_vector(to_unsigned(0,32)),AXIL_MISO ,AXIL_MOSI);
    wait for 5 ns;
    wait until rising_edge(clk_mb_o);
    write_axi_lite(clk_mb_o,std_logic_vector(to_unsigned(0,32-ADDR_HEIGHT'length))    & ADDR_HEIGHT ,  std_logic_vector(to_unsigned(0,32)),AXIL_MISO ,AXIL_MOSI);
    wait for 5 ns;
    wait until rising_edge(clk_mb_o);
    write_axi_lite(clk_mb_o,std_logic_vector(to_unsigned(0,32-ADDR_FVALSIZE'length))    & ADDR_FVALSIZE ,  std_logic_vector(to_unsigned(0,32)),AXIL_MISO ,AXIL_MOSI);
    wait for 5 ns;
    wait until rising_edge(clk_mb_o);
    write_axi_lite(clk_mb_o,std_logic_vector(to_unsigned(0,32-ADDR_LVALSIZE'length))    & ADDR_LVALSIZE ,  std_logic_vector(to_unsigned(0,32)),AXIL_MISO ,AXIL_MOSI);
    wait for 5 ns;
    wait until rising_edge(clk_mb_o);
    write_axi_lite(clk_mb_o,std_logic_vector(to_unsigned(0,32-ADDR_LVALPAUSE'length))    & ADDR_LVALPAUSE ,  std_logic_vector(to_unsigned(LVAL_PAUSE,32)),AXIL_MISO ,AXIL_MOSI);
    wait for 5 ns;
    wait until rising_edge(clk_mb_o);
    write_axi_lite(clk_mb_o,std_logic_vector(to_unsigned(0,32-ADDR_FVALPAUSE'length))    & ADDR_FVALPAUSE ,  std_logic_vector(to_unsigned(FVAL_PAUSE,32)),AXIL_MISO ,AXIL_MOSI);
    wait for 5 ns;
    wait until rising_edge(clk_mb_o);

    --PAUSE
    
    wait for 1 us;
   
    
    --Setup clink configuration in full 132x4
    wait until rising_edge(clk_mb_o);
    write_axi_lite(clk_mb_o,std_logic_vector(to_unsigned(0,32-ADDR_CLINKMODE'length))    & ADDR_CLINKMODE ,    std_logic_vector(to_unsigned(0,32-CLINKMODE'length)) & CLINKMODE ,AXIL_MISO ,AXIL_MOSI);
    wait for 5 ns;
    wait until rising_edge(clk_mb_o);
    write_axi_lite(clk_mb_o,std_logic_vector(to_unsigned(0,32-ADDR_CLOCK_MODE'length))    & ADDR_CLOCK_MODE ,  std_logic_vector(to_unsigned(CLOCK_MODE_85MHZ,32)),AXIL_MISO ,AXIL_MOSI);
    wait for 5 ns;
    wait until rising_edge(clk_mb_o);
    write_axi_lite(clk_mb_o,std_logic_vector(to_unsigned(0,32-ADDR_WIDTH'length))    & ADDR_WIDTH ,  std_logic_vector(to_unsigned(img_width,32)),AXIL_MISO ,AXIL_MOSI);
    wait for 5 ns;
    wait until rising_edge(clk_mb_o);
    write_axi_lite(clk_mb_o,std_logic_vector(to_unsigned(0,32-ADDR_HEIGHT'length))    & ADDR_HEIGHT ,  std_logic_vector(to_unsigned(img_heigth+2,32)),AXIL_MISO ,AXIL_MOSI);
    wait for 5 ns;
    wait until rising_edge(clk_mb_o);
    write_axi_lite(clk_mb_o,std_logic_vector(to_unsigned(0,32-ADDR_FVALSIZE'length))    & ADDR_FVALSIZE ,  std_logic_vector(to_unsigned(FVAL_SIZE,32)),AXIL_MISO ,AXIL_MOSI);
    wait for 5 ns;                                                                                                
    wait until rising_edge(clk_mb_o); 
    write_axi_lite(clk_mb_o,std_logic_vector(to_unsigned(0,32-ADDR_LVALSIZE'length))    & ADDR_LVALSIZE ,  std_logic_vector(to_unsigned(lval_size_normalized,32)),AXIL_MISO ,AXIL_MOSI); -- depends of CLINKMODE
    wait for 5 ns;
    wait until rising_edge(clk_mb_o);
    write_axi_lite(clk_mb_o,std_logic_vector(to_unsigned(0,32-ADDR_LVALPAUSE'length))    & ADDR_LVALPAUSE ,  std_logic_vector(to_unsigned(LVAL_PAUSE,32)),AXIL_MISO ,AXIL_MOSI);
    wait for 5 ns;
    wait until rising_edge(clk_mb_o);
    write_axi_lite(clk_mb_o,std_logic_vector(to_unsigned(0,32-ADDR_FVALPAUSE'length))    & ADDR_FVALPAUSE ,  std_logic_vector(to_unsigned(FVAL_PAUSE,32)),AXIL_MISO ,AXIL_MOSI);
    wait for 5 ns;
    wait until rising_edge(clk_mb_o);
    --Frame reset is necessary to activate new config
    write_axi_lite(clk_mb_o,std_logic_vector(to_unsigned(0,32-ADDR_FRAMERESET'length))    & ADDR_FRAMERESET ,  std_logic_vector(to_unsigned(1,32)),AXIL_MISO ,AXIL_MOSI);
    wait for 5 ns;
    wait until rising_edge(clk_mb_o);
    report "--Write AXI config  done";

    --Start transmit pattern
    for i in 0 to NB_FRAME loop
        wait until (rising_edge(clk_din_o));
        Transmit_Pattern (clk_din_o,AXIS_MOSI,AXIS_MISO,1,img_width,img_heigth);
        wait for FRAME_DELAY;
    end loop;

    wait until (rising_edge(clk_din_o) and AXIS_MISO.TREADY = '1') ;
    report "Transmit 33 frame ";

   
    -------------------------------------------
    -- Changement de configuration
       
        --Setup clink configuration in full 132x4
    wait until rising_edge(clk_mb_o);
    write_axi_lite(clk_mb_o,std_logic_vector(to_unsigned(0,32-ADDR_CLINKMODE'length))    & ADDR_CLINKMODE ,    std_logic_vector(to_unsigned(0,32-CLINKMODE'length)) & CLINKMODE ,AXIL_MISO ,AXIL_MOSI);
    wait for 5 ns;
    wait until rising_edge(clk_mb_o);
    write_axi_lite(clk_mb_o,std_logic_vector(to_unsigned(0,32-ADDR_CLOCK_MODE'length))    & ADDR_CLOCK_MODE ,  std_logic_vector(to_unsigned(CLOCK_MODE_50MHZ,32)),AXIL_MISO ,AXIL_MOSI);
    wait for 5 us;
    wait until rising_edge(clk_mb_o);
    write_axi_lite(clk_mb_o,std_logic_vector(to_unsigned(0,32-ADDR_WIDTH'length))    & ADDR_WIDTH ,  std_logic_vector(to_unsigned(img_width,32)),AXIL_MISO ,AXIL_MOSI);
    wait for 5 ns;
    wait until rising_edge(clk_mb_o);
    write_axi_lite(clk_mb_o,std_logic_vector(to_unsigned(0,32-ADDR_HEIGHT'length))    & ADDR_HEIGHT ,  std_logic_vector(to_unsigned(img_heigth+2,32)),AXIL_MISO ,AXIL_MOSI);
    wait for 5 ns;
    wait until rising_edge(clk_mb_o);
    write_axi_lite(clk_mb_o,std_logic_vector(to_unsigned(0,32-ADDR_FVALSIZE'length))    & ADDR_FVALSIZE ,  std_logic_vector(to_unsigned(FVAL_SIZE,32)),AXIL_MISO ,AXIL_MOSI);
    wait for 5 ns;                                                                                                
    wait until rising_edge(clk_mb_o); 
    write_axi_lite(clk_mb_o,std_logic_vector(to_unsigned(0,32-ADDR_LVALSIZE'length))    & ADDR_LVALSIZE ,  std_logic_vector(to_unsigned(lval_size_normalized,32)),AXIL_MISO ,AXIL_MOSI); -- depends of CLINKMODE
    wait for 5 ns;
    wait until rising_edge(clk_mb_o);
    write_axi_lite(clk_mb_o,std_logic_vector(to_unsigned(0,32-ADDR_LVALPAUSE'length))    & ADDR_LVALPAUSE ,  std_logic_vector(to_unsigned(LVAL_PAUSE,32)),AXIL_MISO ,AXIL_MOSI);
    wait for 5 ns;
    wait until rising_edge(clk_mb_o);
    write_axi_lite(clk_mb_o,std_logic_vector(to_unsigned(0,32-ADDR_FVALPAUSE'length))    & ADDR_FVALPAUSE ,  std_logic_vector(to_unsigned(FVAL_PAUSE,32)),AXIL_MISO ,AXIL_MOSI);
    wait for 5 ns;
    wait until rising_edge(clk_mb_o);

    --Frame reset is necessary to activate new config
    write_axi_lite(clk_mb_o,std_logic_vector(to_unsigned(0,32-ADDR_FRAMERESET'length))    & ADDR_FRAMERESET ,  std_logic_vector(to_unsigned(1,32)),AXIL_MISO ,AXIL_MOSI);
    wait for 5 ns;
    wait until rising_edge(clk_mb_o);
    report "--Write AXI config  done";

    --Start transmit pattern
    for i in 0 to NB_FRAME loop
        wait until (rising_edge(clk_din_o));
        Transmit_Pattern (clk_din_o,AXIS_MOSI,AXIS_MISO,1,img_width,img_heigth);
        wait for FRAME_DELAY;
    end loop;

    wait until (rising_edge(clk_din_o) and AXIS_MISO.TREADY = '1') ;
    report "Transmit 33 frame ";
    
    
--End OF SIMULATION
      wait for 1 us;
      report "END OF SIMULATION"
      severity error;
end process clink_stim;



end clink_stim;
