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

entity axis_lane_stim is
	 port(
      AXIS_MOSI : out t_axi4_stream_mosi64;
      AXIS_MISO : in t_axi4_stream_miso;
      
      AXIS_VALIDATION_MOSI : in t_axi4_stream_mosi64;
      AXIS_VALIDATION_MISO : out t_axi4_stream_miso;
      
      LValSize       : out unsigned(LVALLEN-1 downto 0);
      FValSize       : out unsigned(FVALLEN-1 downto 0);
      
      CLINK_FULL : out std_logic;
      CLK100 : out STD_LOGIC;
      ARESET : out STD_LOGIC
      );
end axis_lane_stim;



architecture axis_lane_stim of axis_lane_stim is


constant clk100_per : time := 10 ns;
signal clk100_i : std_logic := '0';
signal rst_i : std_logic := '0';
signal clink_mode_i : std_logic := '0';
signal cnt : unsigned(15 downto 0) ;


constant NB_FRAME : integer := 4;
constant img_width : integer := 64;
constant img_height : integer := 4;
constant table_size : integer := img_width * img_height;
type pixel_array is array (0 to table_size-1) of integer;


begin
-- Assign clock
   CLK100 <= clk100_i;
   ARESET <= rst_i;
   

-- assigne output
   AXIS_VALIDATION_MISO.TREADY <= '1';
   CLINK_FULL <= clink_mode_i;

--! Clock 100MHz generation
   CLK100_GEN: process(clk100_i)
   begin
   clk100_i <= not clk100_i after clk100_per/2;                          
   end process;   

--! Reset Generation
   RST_GEN : process
   begin          
      rst_i <= '1';
   wait for 5 us;
      rst_i <= '0'; 
   wait;
   end process; 
   
   lane_stim: process is
   variable pixel : pixel_array;
   variable Hpos : integer :=0;
   variable Vpos : integer :=0;
   begin
   --Fill the pixel array
      for index in 0 to table_size-1 loop
         pixel(index) := index;
      end loop;
      LValSize <= to_unsigned(img_width,LVALLEN) / 4;
      FValSize <= to_unsigned(img_height,FVALLEN);
   
      
      AXIS_MOSI.TDATA <= (others => '0');
      AXIS_MOSI.TVALID <='0';
      AXIS_MOSI.TUSER <= (others => '0');
      AXIS_MOSI.TID <= (others => '0');
      AXIS_MOSI.TSTRB <= (others => '0');
      AXIS_MOSI.TKEEP <= (others => '0');
      AXIS_MOSI.TDEST <= (others => '0');
      
      clink_mode_i <= '1';
      
      wait until rst_i = '0';
      wait until AXIS_MISO.TREADY = '1';
      wait until rising_edge(clk100_i);
      -- Transmit in CLINK_FULL
      for j in 0 to NB_FRAME loop
         for i in 0 to (table_size/4) - 1 loop
            wait until (rising_edge(clk100_i) and AXIS_MISO.TREADY = '1') ;
            AXIS_MOSI.TDATA(63 downto 48) <= std_logic_vector(to_unsigned(pixel(i*4 + 0), 16));
            AXIS_MOSI.TDATA(47 downto 32) <= std_logic_vector(to_unsigned(pixel(i*4 + 1), 16));
            AXIS_MOSI.TDATA(31 downto 16) <= std_logic_vector(to_unsigned(pixel(i*4 + 2), 16));
            AXIS_MOSI.TDATA(15 downto 0)  <= std_logic_vector(to_unsigned(pixel(i*4 + 3), 16));
            
            AXIS_MOSI.TVALID  <= '1';
            AXIS_MOSI.TUSER   <= (others => '0');
   
            AXIS_MOSI.TSTRB <= (others => '1');
            AXIS_MOSI.TKEEP <= (others => '0');
            AXIS_MOSI.TDEST <= (others => '0');
            
            if(Vpos = 0) then
               AXIS_MOSI.TID     <= "1";
            else
               AXIS_MOSI.TID     <= "0";
            end if;
            
   
   
            if ( (Hpos + 4) = img_width) then
               AXIS_MOSI.TLAST <= '1';
               Hpos := 0;
               Vpos := Vpos + 1;
            else
               AXIS_MOSI.TLAST <= '0';
               Hpos := Hpos + 4;
            end if;
         end loop;
         AXIS_MOSI.TLAST <= '1';
         AXIS_MOSI.TKEEP <= (others => '1');
         wait until (rising_edge(clk100_i) and AXIS_MISO.TREADY = '1') ;
         AXIS_MOSI.TVALID  <= '0';
         Hpos := 0;
         Vpos := 0;
      end loop;   

      

      wait for 1 us;
      
      --switch to CLINK BASE
      clink_mode_i <= '0';
      LValSize <= to_unsigned(img_width,LVALLEN);
      FValSize <= to_unsigned(img_height,FVALLEN);
      

      for j in 0 to NB_FRAME loop
         for i in 0 to (table_size/4) - 1 loop
            wait until (rising_edge(clk100_i) and AXIS_MISO.TREADY = '1') ;
            AXIS_MOSI.TDATA(63 downto 48) <= std_logic_vector(to_unsigned(pixel(i*4 + 0), 16));
            AXIS_MOSI.TDATA(47 downto 32) <= std_logic_vector(to_unsigned(pixel(i*4 + 1), 16));
            AXIS_MOSI.TDATA(31 downto 16) <= std_logic_vector(to_unsigned(pixel(i*4 + 2), 16));
            AXIS_MOSI.TDATA(15 downto 0)  <= std_logic_vector(to_unsigned(pixel(i*4 + 3), 16));
            
            AXIS_MOSI.TVALID  <= '1';
            AXIS_MOSI.TUSER   <= (others => '0');
   
            AXIS_MOSI.TSTRB <= (others => '1');
            AXIS_MOSI.TKEEP <= (others => '0');
            AXIS_MOSI.TDEST <= (others => '0');
            
            if(Vpos = 0) then
               AXIS_MOSI.TID     <= "1";
            else
               AXIS_MOSI.TID     <= "0";
            end if;
            
   
   
            if ( (Hpos + 4) = img_width) then
               AXIS_MOSI.TLAST <= '1';
               Hpos := 0;
               Vpos := Vpos + 1;
            else
               AXIS_MOSI.TLAST <= '0';
               Hpos := Hpos + 4;
            end if;
         end loop;
         AXIS_MOSI.TLAST <= '1';
         AXIS_MOSI.TKEEP <= (others => '1');
         wait until (rising_edge(clk100_i) and AXIS_MISO.TREADY = '1') ;
         AXIS_MOSI.TVALID  <= '0';
         Hpos := 0;
         Vpos := 0;
      end loop;
      wait for 1 us;
      report "END OF SIMULATION" 
      severity failure;
   end process;

   
axis_data_validation : process       
variable pixel : pixel_array;
variable index : integer :=0;

begin
   cnt <= to_unsigned(0,16);
   --fill the array
   for i in 0 to table_size-1 loop
      pixel(i) := i;
   end loop;

   --wait until (clink_mode_i = '1');
   for j in 0 to NB_FRAME loop
      for index in 0 to (table_size/4) - 1 loop
         wait until (rising_edge(clk100_i) and AXIS_VALIDATION_MOSI.TVALID = '1') ;
      
            if(AXIS_VALIDATION_MOSI.TDATA /= (std_logic_vector(to_unsigned(pixel(index*4 + 0), 16)) & 
            std_logic_vector(to_unsigned(pixel(index*4 + 1), 16)) & 
            std_logic_vector(to_unsigned(pixel(index*4 + 2), 16)) & 
            std_logic_vector(to_unsigned(pixel(index*4 + 3), 16))))  then
               report "DATA MISS MATCH" 
               severity error;
            end if;
            cnt <= cnt + 1;
      end loop;
      cnt <= (others => '0');
   end loop;
   

   --check base mode
   wait until clink_mode_i = '0';
   for j in 0 to NB_FRAME loop
     for index in 0 to table_size - 1 loop
      wait until (rising_edge(clk100_i) and AXIS_VALIDATION_MOSI.TVALID = '1') ;

         if(AXIS_VALIDATION_MOSI.TDATA(15 downto 0) /= (std_logic_vector(to_unsigned(pixel(index + 0), 16))))  then
            report "DATA MISS MATCH" 
            severity error;
         end if;
         cnt <= cnt + 1;
     end loop;
     cnt <= (others => '0');
   end loop;
  
  
end process;
   

end axis_lane_stim;
