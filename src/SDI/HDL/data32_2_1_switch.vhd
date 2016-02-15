library ieee;
use ieee.std_logic_1164.all;

entity data32_2_1_switch is
   port(
      DataIn_0 : in std_logic_vector(31 downto 0);
      DataIn_1 : in std_logic_vector(31 downto 0);
      DataOut : out std_logic_vector(31 downto 0);
      Switch : in std_logic
   );
end data32_2_1_switch;

architecture rtl of data32_2_1_switch is

begin
   
   DataOut <= DataIn_1 when (Switch = '1') else DataIn_0;

end rtl;
