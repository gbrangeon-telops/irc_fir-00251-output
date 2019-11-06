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
-- Author      : Jean-Alexis Boulet
-- Company     : Telops Inc.
--
---------------------------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package GIGE_Define is
   ------------------------------------------
   -- Constants
   ------------------------------------------      
   constant GIGE_VERSION  : std_logic_vector(7 downto 0) := x"00";   
   
   -- Define number of bits used      

   constant LVALLEN  : integer := 16;
   constant FVALLEN  : integer := 16;
   constant HEADERLEN: integer := 16;
   constant LPAUSELEN: integer := 16;      
     
   -- Pattern Generator Operational Mode Constants
   -- TBD
    
   -- GIGE CameraLink Configuration 
   type GIGEConfig is
   record
      Valid          : std_logic_vector(0 downto 0); -- should pulse true for one clock after valid transmission to enable registering.
      
      -- CameraLink Settings      
      frame_width    : unsigned(15 downto 0); --including header
      frame_height   : unsigned(15 downto 0); --including header
      HeaderSize     : unsigned(HEADERLEN-1 downto 0); -- in pixel
      HeaderVersion  : std_logic_vector(3 downto 0);
      FrameImageCount    : unsigned(31 downto 0); -- Number of frame per jumbo frame  
   end record;
   
   
   constant gige_cfg_default : GIGEConfig :=
   (
   "1", --Valid          
   to_unsigned(640,16),            --lb_width       
   to_unsigned(514,16),            --lb_height  = image heigth    
   to_unsigned(0, HEADERLEN),      --HeaderSize     
   x"0",  --HeaderVersion  
   to_unsigned(1, 32)
   );

   
   ------------------------------------------
   -- *** FUNCTIONS DECLARATIONS***
   ------------------------------------------
   
   --function to_PatGenConfig (a: patgen_array8; ValidConfig: boolean) return PatGenConfig;
 
   
end GIGE_Define;

package body GIGE_Define is
   

end package body GIGE_Define;
