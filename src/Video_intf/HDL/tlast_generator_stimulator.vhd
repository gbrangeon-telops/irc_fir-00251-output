library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity tlast_generator_stimulator is
   port(
      --clk and reset
      clk160         : out std_logic;
      aresetn        : out std_logic;
      Axis_Video_TReady   : out std_logic;
      Axis_Video_TValid   : out std_logic;

      Input_Img_Size 	  : out std_logic_vector(31 downto 0)
   );
end tlast_generator_stimulator;

architecture rtl of tlast_generator_stimulator is

signal clk160_i : std_logic := '0';
constant clk160_per : time := 6.25 ns;

signal aresetn_i : std_logic := '0';
signal axis_video_tvalid_i : std_logic := '0';

begin
   clk160 <= clk160_i;

   clock_proc : process
   begin
      wait for (clk160_per/2);
      clk160_i <= not clk160_i;
   end process clock_proc;
   
   aresetn <= aresetn_i;
   aresetn_i <= '1' after 5 ns;
   
   Axis_Video_TReady <= '1';

   Axis_Video_TValid <= axis_video_tvalid_i;
   axis_video_tvalid_i <= '1' after 50 ns;

   Input_Img_Size <= x"0004B000";
   
end rtl;
      