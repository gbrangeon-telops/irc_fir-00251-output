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
-- Title       : FrameBuffer_Define
-- Author      : Jean-Alexis Boulet
-- Company     : Telops Inc.
--
---------------------------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


package FB_Define is
   ------------------------------------------
   -- FRAME BUFFER MODE
   ------------------------------------------      
   CONSTANT FBMODE_STANDBYT_c       : std_logic_vector(2 downto 0):="000";   
   CONSTANT FBMODE_GIGE_STD_c       : std_logic_vector(2 downto 0):="001";
   CONSTANT FBMODE_GIGE_LOSSLESS_c  : std_logic_vector(2 downto 0):="010";
   CONSTANT FBMODE_CLINK_BASE_c     : std_logic_vector(2 downto 0):="011";
   CONSTANT FBMODE_SDI_STD_c        : std_logic_vector(2 downto 0):="100";
   CONSTANT FBMODE_PASSTHROUGH_c    : std_logic_vector(2 downto 0):="111";
   
end FB_Define;

package body FB_Define is
   
end package body FB_Define;
