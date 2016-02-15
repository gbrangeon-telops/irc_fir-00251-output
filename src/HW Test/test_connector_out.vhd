-------------------------------------------------------------------------------
--
-- Title       : test_connector
-- Design      : test_connector
-- Author      : Telops Inc
-- Company     : Telops Inc
--
-------------------------------------------------------------------------------
--
-- File        :
-- Generated   : 
-- From        : 
-- By          : JBO
--
-------------------------------------------------------------------------------
--
-- Description : Cycle on/off on all connector to check Pin Connectivity
--
-------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.numeric_std.all; 

entity test_connector_out is 
	port(
		ARESET    : in std_logic;
		CLK50       : in std_logic;
		EXPANSION     : out std_logic_vector(17 downto 0);
      BUFFER_BOARD     : out std_logic_vector(27 downto 0);
      GIGE     : out std_logic_vector(49 downto 0)
		);
end test_connector_out;

architecture RTL of test_connector_out is
	
signal sreset      : std_logic;
signal expansion_o    : std_logic_vector(17 downto 0);
signal counter : unsigned(31 downto 0);
signal buffer_board_o : std_logic_vector(27 downto 0);
signal gige_o : std_logic_vector(49 downto 0);

	
component sync_reset
		port(
			ARESET : in std_logic;
			SRESET : out std_logic;
			CLK    : in std_logic);
	end component;
	
begin 
 
	EXPANSION <= expansion_o;
	
	----  synchro reset 
	sreset_map : sync_reset
	port map(
		ARESET => ARESET,
		CLK    => CLK50,
		SRESET => sreset
		); 
	----
	process(CLK)
	begin
		if rising_edge(CLK50) then
			if sreset = '1' then 
				output_i <= (others => '0');
                expansion_o(0) <= '1';
                expansion_o(17 downto 1) <= (others => '0');
                buffer_board_o(0) <= '1';
                buffer_board_o(27 downto 1) <= (others => '0');
                gige_o(0) <= '1';
                gige_o(49 downto 1) <= (others => '0');
			else 
                -- We want to toggle all pin in 1 sec with a 50mhz clock
                -- There is 32 IO
                -- 50 000 000 / 32 = 1 562 500
                
                if (counter = 1562500) then 
                   counter <= (others => '0');
                   expansion_o <= sll(expansion_o);
                   buffer_board_o <= sll(buffer_board_o);
                   gige_o <= sll(gige_o);      
                else 
                   counter <= counter + 1 ;            
                end if;
			end if;	
		end if;
	end process;
	
end RTL;
