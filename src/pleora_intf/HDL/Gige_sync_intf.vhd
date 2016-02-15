---------------------------------------------------------------------------------------------------
--  Copyright (c) Telops Inc. 2007
--
--  File: CLink_Phy.vhd
--  Use: Physical Layer interface for Cameralink
--  By: Patrick Dubois & Olivier Bourgois
--
--  $Revision$
--  $Author$
--  $LastChangedDate$
--
---------------------------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
-- translate_off
library unisim;
use unisim.vcomponents.all;       -- use DDR flip flop for outputing CLink clocks
-- translate_on
--use work.all;
use work.tel2000.all;
use work.GIGE_Define.all;

entity GIGE_SYNC_INTF is
   Port (
      --------------------------------
      -- Async Resets
      --------------------------------
      ARESET          : in  std_logic;
      --------------------------------
      -- Ports on CLK_GIGE_IN domain
      -------------------------------- 
      CLK_GIGE       : in  std_logic; -- User clock
      DVAL           : in std_logic;
      LVAL           : in std_logic;
      FVAL           : in std_logic;
      SPARE          : in std_logic;
      GIGE_PORT_A     : in std_logic_vector(7 downto 0);
      GIGE_PORT_B     : in std_logic_vector(7 downto 0);
      GIGE_PORT_C     : in std_logic_vector(7 downto 0);

      --------------------------------
      -- Ports on CLK_GIGE_OUT domain
      --------------------------------
      CLK_GIGE_OUT      : in  std_logic;
      DVAL_OUT          : out std_logic;
      LVAL_OUT          : out std_logic;
      FVAL_OUT          : out std_logic;
      SPARE_OUT         : out std_logic;
      GIGE_DATA_OUT     : out std_logic_vector(23 downto 0)

      );
   attribute IOB : string;
   attribute IOB of DVAL_OUT: signal is "TRUE";
   attribute IOB of LVAL_OUT: signal is "TRUE";
   attribute IOB of FVAL_OUT: signal is "TRUE";
   attribute IOB of SPARE_OUT: signal is "TRUE";
   attribute IOB of GIGE_DATA_OUT: signal is "TRUE";
end GIGE_SYNC_INTF;

architecture rtl of GIGE_SYNC_INTF is

signal dval_i,lval_i,fval_i, spare_i, dval_o,lval_o,fval_o, spare_o : std_logic;
signal gige_data_i, gige_data_o : std_logic_vector(23 downto 0);

begin

   DVAL_OUT          <= dval_o;
   LVAL_OUT          <= lval_o;
   FVAL_OUT          <= fval_o;
   SPARE_OUT         <= spare_o;
   GIGE_DATA_OUT     <= gige_data_o;

----------------------------
--Synchronize input register 
----------------------------   
sync_in : process( CLK_GIGE)
begin
   if rising_edge(CLK_GIGE) then
      dval_i <= DVAL;
      lval_i <= LVAL;
      fval_i <= FVAL;
      spare_i <= SPARE;
      gige_data_i <= GIGE_PORT_C & GIGE_PORT_B & GIGE_PORT_A;
   end if;
end process sync_in;


----------------------------
--Synchronize out register 
----------------------------  
sync_out : process( CLK_GIGE_OUT)
begin
   if rising_edge(CLK_GIGE_OUT) then
      dval_o <= dval_i;
      lval_o <= lval_i;
      fval_o <= fval_i;
      spare_o <= spare_i;
      gige_data_o <= gige_data_i;
   end if;
end process sync_out;


end rtl;
