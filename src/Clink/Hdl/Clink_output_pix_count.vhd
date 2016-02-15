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
		 clk80_bufr : in STD_LOGIC;
		 areset : in STD_LOGIC;
       
       END_OF_FRAME : out STD_LOGIC
       );
       attribute dont_touch : string;
       attribute dont_touch of Clink_output_pix_count : entity is "yes";
end Clink_output_pix_count;



architecture Clink_output_pix_count of Clink_output_pix_count is 

signal pix_perline_cnt : unsigned(11 downto 0) ;
signal pix_perframe_cnt : unsigned(23 downto 0) ;
signal x_fval_m1 : std_logic;
signal x_lval_m1 : std_logic;
signal eof : std_logic;

attribute MARK_DEBUG : string;
attribute MARK_DEBUG of pix_perline_cnt : signal is "TRUE";
attribute MARK_DEBUG of pix_perframe_cnt : signal is "TRUE";
attribute MARK_DEBUG of eof : signal is "TRUE";
attribute dont_touch of eof : signal is "TRUE";

begin
   
   END_OF_FRAME <= eof;
   
   proc_frame: process(clk80_bufr)
   begin  			
      if rising_edge(clk80_bufr) then
         if areset = '1' then
            pix_perline_cnt <= (others => '0');   
            pix_perframe_cnt <= (others => '0');
            x_fval_m1 <= '0';
            x_lval_m1 <= '0';
            eof <= '0';
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

end Clink_output_pix_count;
