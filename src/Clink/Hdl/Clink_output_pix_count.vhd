-------------------------------------------------------------------------------
--
-- Title       : Clink_output_pix_count
-- Design      : fir_00251_output
-- Author      : 
-- Company     : 
--
-------------------------------------------------------------------------------
--
-- File        : D:\Telops\FIR-00251-Output\src\Clink\Hdl\Clink_output_pix_count.vhd
-- Generated   : Wed Aug 13 13:50:06 2014
-- From        : interface description file
-- By          : Itf2Vhdl ver. 1.22
--
-------------------------------------------------------------------------------
--
-- Description :  This file count the number of dval par fval and determine lvalsize and fval size in pixel count
--
-------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.numeric_std.all;

entity Clink_output_pix_count is
   generic(
      CLK_FREQ_MHZ   : real range 0.0 to 4294.0 := 100.0
   );
   port(
		 x_lval : in STD_LOGIC;
		 x_fval : in STD_LOGIC;
		 x_dval : in STD_LOGIC;
		 y_lval : in STD_LOGIC;
		 y_dval : in STD_LOGIC;
		 y_fval : in STD_LOGIC;
		 z_lval : in STD_LOGIC;
		 z_dval : in STD_LOGIC;
		 z_fval : in STD_LOGIC;
		 CLK : in STD_LOGIC;
		 ARESETN : in STD_LOGIC;
       
       MB_CLK         : in  STD_LOGIC;
       FRAME_RATE     : out STD_LOGIC_VECTOR(31 downto 0);
       FRAME_RATE_MIN : out STD_LOGIC_VECTOR(31 downto 0);
       FRAME_RATE_MAX : out STD_LOGIC_VECTOR(31 downto 0)
   );
end Clink_output_pix_count;



architecture Clink_output_pix_count of Clink_output_pix_count is 

   component sync_resetn
      port(
         ARESETN : in  STD_LOGIC;
         SRESETN : out STD_LOGIC;
         CLK     : in  STD_LOGIC);
   end component;

   signal sresetn : std_logic;

signal pix_perline_cnt : unsigned(11 downto 0) ;
signal pix_perframe_cnt : unsigned(23 downto 0) ;
signal x_fval_m1 : std_logic;
signal x_lval_m1 : std_logic;
signal eof : std_logic;

   signal acq_started       : std_logic;
   signal sec_counter       : unsigned(31 downto 0);   -- max 4294 MHz
   signal frame_counter     : unsigned(16 downto 0);   -- max 131071 fps
   signal frame_rate_o      : unsigned(frame_counter'range);
   signal frame_rate_min_o  : unsigned(frame_counter'range);
   signal frame_rate_max_o  : unsigned(frame_counter'range);
   signal frame_rate_mb     : unsigned(frame_counter'range);
   signal frame_rate_min_mb : unsigned(frame_counter'range);
   signal frame_rate_max_mb : unsigned(frame_counter'range);
   
   constant CLK_CYCLES_PER_SEC : unsigned(sec_counter'range) := to_unsigned(integer(CLK_FREQ_MHZ * 1.0e6), sec_counter'length);
   
   attribute KEEP : string;
   attribute KEEP of frame_rate_mb      : signal is "true";
   attribute KEEP of frame_rate_min_mb  : signal is "true";
   attribute KEEP of frame_rate_max_mb  : signal is "true";

begin
   
   reset : sync_resetn port map(ARESETN => ARESETN, CLK => CLK, SRESETN => sresetn);
   
   FRAME_RATE     <= std_logic_vector(resize(frame_rate_mb, FRAME_RATE'length));
   FRAME_RATE_MIN <= std_logic_vector(resize(frame_rate_min_mb, FRAME_RATE_MIN'length));
   FRAME_RATE_MAX <= std_logic_vector(resize(frame_rate_max_mb, FRAME_RATE_MAX'length));
   
   output : process(MB_CLK)
   begin
      if rising_edge(MB_CLK) then
         frame_rate_mb <= frame_rate_o;
         frame_rate_min_mb <= frame_rate_min_o;
         frame_rate_max_mb <= frame_rate_max_o;
      end if;
   end process;
   
   proc_frame: process(CLK)
   begin  			
      if rising_edge(CLK) then
         if sresetn = '0' then
            pix_perline_cnt <= (others => '0');   
            pix_perframe_cnt <= (others => '0');
            x_fval_m1 <= '0';
            x_lval_m1 <= '0';
            eof <= '0';
            acq_started <= '0';
         else
            x_fval_m1 <= x_fval;
            x_lval_m1 <= x_lval;
            
            --process line length
            if (x_fval = '1' and x_dval = '1' and x_lval='1') then  --if pix valid
               pix_perline_cnt <=  pix_perline_cnt + 4;
            elsif ( x_lval = '0' and x_lval_m1 = '1') then --if end of line(faling edge ) reset count
               pix_perline_cnt <=  (others => '0');
            end if;
            
            --process frame size
            if (x_fval = '1' and x_dval = '1' and y_fval = '1' and y_dval = '1' and z_fval = '1' and z_dval = '1') then  --if pix valid
               pix_perframe_cnt <= pix_perframe_cnt + 4;
               eof <= '0';
               acq_started <= '1';
            elsif( x_fval = '0' and x_fval_m1 = '1') then --if en of frame(faling edge )
               pix_perframe_cnt <= pix_perframe_cnt;
               eof <= '1';
            elsif( x_fval = '0' and x_fval_m1 = '0') then --if not transmiting(not in a frame)
               pix_perframe_cnt <= (others => '0');
               eof <= '0';
            else --if not transmiting(in a frame)
               pix_perframe_cnt <= pix_perframe_cnt;
               eof <= '0';
            end if;
            
         end if;
      end if;   
   end process;
   
   frame_cnt : process(CLK)
   begin
      if rising_edge(CLK) then
         if sresetn = '0' then
            sec_counter <= (others => '0');
            frame_counter <= (others => '0');
            frame_rate_o <= (others => '0');
            frame_rate_min_o <= (others => '1');
            frame_rate_max_o <= (others => '0');
         else
            
            if acq_started = '1' then
               -- Frame counter
               if eof = '1' then
                  frame_counter <= frame_counter + 1;
               end if;
               
               -- One second delay
               if sec_counter = CLK_CYCLES_PER_SEC-1 then
                  -- Reset counters
                  sec_counter <= (others => '0');
                  frame_counter <= (others => '0');
                  -- Output results
                  frame_rate_o <= frame_counter;
                  if frame_counter < frame_rate_min_o then
                     frame_rate_min_o <= frame_counter;
                  end if;
                  if frame_counter > frame_rate_max_o then
                     frame_rate_max_o <= frame_counter;
                  end if;
               else
                  sec_counter <= sec_counter + 1;
               end if;
            end if;
            
         end if;
      end if;
   end process;

end Clink_output_pix_count;
