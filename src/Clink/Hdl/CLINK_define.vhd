---------------------------------------------------------------------------------------------------
--                                                      ..`??!````??!..
--                                                  .?!                `1.
--                                               .?`                      i
--                                             .!      ..vY=!``?74.        i
--.........          .......          ...     ?      .Y=` .+wA..   ?,      .....              ...
--"""HMM"""^         MM#"""5         .MM|    :     .H\ .JQgNa,.4o.  j      MM#"MMN,        .MM#"WMF
--   JM#             MMNggg2         .MM|   `      P.;,jMt   `N.r1. ``     MMmJgMM'        .MMMNa,.
--   JM#             MM%````         .MM|   :     .| 1A Wm...JMy!.|.t     .MMF!!`           . `7HMN
--   JMM             MMMMMMM         .MMMMMMM!     W. `U,.?4kZ=  .y^     .!MMt              YMMMMB=
--                                          `.      7&.  ?1+...JY'     .J
--                                           ?.        ?""""7`       .?`
--                                             :.                ..?`
--
---------------------------------------------------------------------------------------------------
--
-- Title       : CLINK_Define
-- Author      : Patrick Dubois & Jean-Alexis Boulet
-- Company     : Telops Inc.
--
---------------------------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
--library Common_HDL;
--use Common_HDL.Telops.all;
--use work.CAMEL_Define.all;
--use work.IRC_Define.all;

package CLINK_Define is
   ------------------------------------------
   -- Constants
   ------------------------------------------
   

   -- Define number of bits used
   constant LVALLEN  : integer := 16;
   constant FVALLEN  : integer := 16;
   constant PAUSELEN : integer := 16;
   constant CLINK_BASE_MODE : std_logic_vector(1 downto 0) := "00";
   constant CLINK_DUAL_MODE : std_logic_vector(1 downto 0) := "01";
   constant CLINK_FULL_MODE : std_logic_vector(1 downto 0) := "10";
   
   constant CLOCK_MODE_50MHZ :  integer := 0;
   constant CLOCK_MODE_85MHZ :  integer  := 1;


   type CLinkConfig is
   record
      Valid          : std_logic;
      -- CameraLink Settings
      CLinkMode      : std_logic_vector(1 downto 0); 
      CLinkClockMode      : std_logic;
      width          : unsigned(15 downto 0);
      height         : unsigned(15 downto 0);   --including header
      FValSize       : unsigned(FVALLEN-1 downto 0);
      LValSize       : unsigned(LVALLEN-1 downto 0);
      FValPause      : unsigned(PAUSELEN-1 downto 0);
      LValPause      : unsigned(PAUSELEN-1 downto 0); 
      
      
   end record;
   
   type CLinkChannel is
   record  
      --Synchronization bits
      Dval      : std_logic ;
      Lval      : std_logic;
      Fval      : std_logic; 
      --Spare bit
      Spare      : std_logic;  
      -- Data Ports
      Port1 : std_logic_vector(7 downto 0);
      Port2 : std_logic_vector(7 downto 0);
      Port3 : std_logic_vector(7 downto 0);
   end record;  
   
   
end CLINK_Define;

package body CLINK_Define is

end package body CLINK_Define;
