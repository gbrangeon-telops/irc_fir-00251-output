library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use ieee.numeric_std.all;

entity gtx_reset_process is
    port (
        clk:         in  std_logic;
        gtxpllreset: out std_logic
    );
end gtx_reset_process;

architecture synth of gtx_reset_process is

signal pllreset_startup_dly:std_logic_vector(38 downto 0) := (others => '0');
signal pllreset_dly :       std_logic_vector(12 downto 0) := (others => '0');
signal startup_cpllreset :  std_logic;
signal pllreset_x :         std_logic;
signal pllreset_tc :        std_logic;
signal gtxpllreset_o :        std_logic := '0';

begin
	
process(clk)
begin
    if rising_edge(clk) then
        pllreset_startup_dly <= (pllreset_startup_dly(pllreset_startup_dly'HIGH-1 downto 0) & '1');
    end if;
end process;

gtxpllreset <= gtxpllreset_o;

startup_cpllreset <= pllreset_startup_dly(pllreset_startup_dly'HIGH-1) and not pllreset_startup_dly(pllreset_startup_dly'HIGH);

-- pllreset_x <= (Si5324_LOL and pllreset_startup_dly(pllreset_startup_dly'HIGH-1)) or startup_cpllreset;
-- Si5324_LOL n'est pas assigner dans le code
pllreset_x <= startup_cpllreset;

process(clk, pllreset_x)
begin
    if pllreset_x = '1' then
        pllreset_dly <= (others => '0');
    elsif rising_edge(clk) then
        if pllreset_tc = '0' then
            pllreset_dly <= pllreset_dly + 1;
        end if;
    end if;
end process;

pllreset_tc <= pllreset_dly(pllreset_dly'HIGH);

process(clk, pllreset_x)
begin
    if pllreset_x = '1' then
        gtxpllreset_o <= '1';
    elsif rising_edge(clk) then
        if pllreset_tc = '1' then
            gtxpllreset_o <= '0';
        end if;
    end if;
end process;

end synth;
