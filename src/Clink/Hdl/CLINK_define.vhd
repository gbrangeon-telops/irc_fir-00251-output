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
library Common_HDL;
--use Common_HDL.Telops.all;
--use work.CAMEL_Define.all;                     
--use work.IRC_Define.all;

package CLINK_Define is
   ------------------------------------------
   -- Constants
   ------------------------------------------      
   constant CLINK_VERSION  : std_logic_vector(7 downto 0) := "000" & "00000";   
   
   -- Define number of bits used      
   constant DIAGLEN  : integer := 16;
   constant LVALLEN  : integer := 16;
   constant FVALLEN  : integer := 16;
   constant HEADERLEN: integer := 16;
   constant LPAUSELEN: integer := 16;      
   constant CLINKMODELEN     : integer := 5;
   constant FRAMESPERCUBELEN : integer := 16;
   constant ZLEN     : integer := 24;
   constant PLLEN    : integer := 24;
   constant TAGLEN   : integer := 8;
   constant DIAGSIZELEN      : integer := 16;
   constant DIAGMODELEN      : integer := 4;    
   constant DUILEN   : integer := 29;   
   constant DPBSTATLEN : integer := 64;
   
   -- CameraLink Mode Settings (Are now bit positions for enabling features)
   constant CL_FULL_BIT  : integer := 0; -- Cameralink BASE_bar/FULL Mode selection bit position
   constant CL_LOOP_BIT  : integer := 1; -- Cameralink Internal LOOPBACK test bit position
   constant CL_RIOTX_BIT : integer := 2; -- Cameralink Transmit on RIO for external loopback bit position
   constant CL_DUAL_BIT  : integer := 3; -- Cameralink Enable DUAL ports in Base mode bit position
   constant CL_SWAP_BIT  : integer := 4; -- Cameralink Enable Pixel Byte Swapping (Pixel Endianness for Bitflow Board)
   
   -- Reintroduced these constants, it doesn't hurt anyone ;)
   constant CLINK_BASE_MODE      : unsigned := to_unsigned(0,CLINKMODELEN);   -- 16 bit CLINK transfers
   constant CLINK_FULL_MODE      : unsigned := to_unsigned(1,CLINKMODELEN);   -- 64 bit CLINK transfers
  
   -- CameraLink board Configuration (from main controller)
   -- Note: Diagnostic mode settings are no longer appropriate in CLinkConfig.  However all array conversion
   -- functions support original array sizes so software needs no changes. The Mode and DiagSize fields
   -- are simply ignored
   type CLinkConfig is
   record
      Valid          : boolean; -- should pulse true for one clock after valid transmission to enable registering.
      -- CameraLink Settings      
      img_width       : unsigned(15 downto 0);
      img_height      : unsigned(15 downto 0);
      LValSize       : unsigned(LVALLEN-1 downto 0);
      FValSize       : unsigned(FVALLEN-1 downto 0);
      HeaderSize     : unsigned(HEADERLEN-1 downto 0);
      LValPause      : unsigned(LPAUSELEN-1 downto 0);
      FramesPerCube  : unsigned(FRAMESPERCUBELEN-1 downto 0);
      CLinkMode      : unsigned(CLINKMODELEN-1 downto 0);
      HeaderVersion  : std_logic_vector(3 downto 0);
   end record;
   
   constant clink_cfg_default : CLinkConfig :=
   (
   false, --Valid          
   to_unsigned(640,16),            --img_width       
   to_unsigned(512,16),            --img_height  = image heigth without hdr 
   to_unsigned(640/4, LVALLEN),    --LValSize  (div par 4 pour tenir compte de full)       
   to_unsigned(514, FVALLEN),      --FValSize (with hdr)       
   to_unsigned(0, HEADERLEN),      --HeaderSize     
   to_unsigned(0,LPAUSELEN),       --LValPause      
   to_unsigned(1,FRAMESPERCUBELEN),--FramesPerCube  
   to_unsigned(1,CLINKMODELEN),    --CLinkMode      
   x"0"  --HeaderVersion  
   );
   
   
          
   type CLinkConfig_array8 is array(1 to 38) of std_logic_vector(7 downto 0);   -- for RS232 transmition   
   type CLinkConfig_array32 is array(1 to 10) of std_logic_vector(31 downto 0); -- for LocalLink transmition      
   
   ------------------------------------------
   -- *** FUNCTIONS DECLARATIONS***
   ------------------------------------------
   
   

   function to_CLinkConfig (a: CLinkConfig_array8; ValidConfig: boolean) return CLinkConfig;
   function to_CLinkConfig (a: CLinkConfig_array32; ValidConfig: boolean) return CLinkConfig;   
   function to_CLinkConfig_array32 (a: CLinkConfig) return CLinkConfig_array32;   
   

end CLINK_Define;

package body CLINK_Define is
   
      
   
   function to_CLinkConfig (a: CLinkConfig_array8; ValidConfig: boolean) return CLinkConfig is
      variable y : CLinkConfig;
      variable data32 : unsigned(31 downto 0);
      variable data32_slv : std_logic_vector(31 downto 0);
      constant PayloadSize : integer := 9;
   begin
      -- pragma translate_off
      assert a(1) = x"60" report "Wrong header received, expected 0x60" severity ERROR;
      if ValidConfig then
         assert (to_integer(unsigned(a(2))) = CLinkConfig_array8'LENGTH-2) report "Wrong payload size received for command 0x60" severity ERROR;
      end if;
      -- pragma translate_on
      
      for i in 1 to PayloadSize loop
         data32_slv := a(i*4-3 + 2) & a(i*4-2 + 2) & a(i*4-1 + 2) & a(i*4 + 2);
         data32 := unsigned(data32_slv);
         
         case i is
            when 1 => y.LValSize       := resize(data32, LVALLEN);
            when 2 => y.FValSize       := resize(data32, FVALLEN);
            when 3 => y.HeaderSize     := resize(data32, HEADERLEN);
            when 4 => y.LValPause      := resize(data32, LPAUSELEN);
            when 5 => y.FramesPerCube  := resize(data32, FRAMESPERCUBELEN);
            when 6 => y.CLinkMode      := resize(data32, CLINKMODELEN);
            when 7 => y.HeaderVersion  := std_logic_vector(resize(data32, y.HeaderVersion'LENGTH));
            when 8 => null;
            when 9 => null;
               -- when 8 => y.Mode           := std_logic_vector(resize(data32, y.Mode'LENGTH         ));
            -- when 9 => y.DiagSize       := resize(data32, y.DiagSize'LENGTH);
         end case;
      end loop;
      
      y.Valid := ValidConfig;
      
      return y;
   end to_CLinkConfig;
   
   
   function to_CLinkConfig (a: CLinkConfig_array32; ValidConfig: boolean) return CLinkConfig is
      variable y : CLinkConfig;
      constant PayloadSize : integer := 9;
   begin
      -- pragma translate_off
      assert a(1)(31 downto 24) = x"60" report "Wrong header received, expected 0x60" severity ERROR;
      if ValidConfig then
         assert (to_integer(unsigned(a(1)(23 downto 0))) = CLinkConfig_array32'LENGTH-1) report "Wrong payload size received for command 0x60" severity ERROR;
      end if;
      -- pragma translate_on
      
      y.LValSize       := resize(unsigned(a(2)), LVALLEN);
      y.FValSize       := resize(unsigned(a(3)), FVALLEN);
      y.HeaderSize     := resize(unsigned(a(4)), HEADERLEN);
      y.LValPause      := resize(unsigned(a(5)), LPAUSELEN);
      y.FramesPerCube  := resize(unsigned(a(6)), FRAMESPERCUBELEN);
      y.CLinkMode      := resize(unsigned(a(7)), CLINKMODELEN);
      y.HeaderVersion  := std_logic_vector(resize(unsigned(a(8)), y.HeaderVersion'LENGTH));
      -- y.Mode           := std_logic_vector(resize(unsigned(a(9)), y.Mode'LENGTH));
      -- y.DiagSize       := resize(unsigned(a(10)), y.DiagSize'LENGTH);
      y.Valid          := ValidConfig;
      
      return y;
   end to_CLinkConfig; 
   
   function to_CLinkConfig_array32 (a: CLinkConfig) return CLinkConfig_array32 is
      variable y : CLinkConfig_array32;
      constant PayloadSize : integer := 9; -- In 32-bit elements
   begin
      y(1) := x"60" & std_logic_vector(to_unsigned(PayloadSize,24)); -- Payload size
      y(2) := std_logic_vector(resize(a.LValSize, 32));
      y(3) := std_logic_vector(resize(a.FValSize, 32));
      y(4) := std_logic_vector(resize(a.HeaderSize, 32));
      y(5) := std_logic_vector(resize(a.LValPause, 32));
      y(6) := std_logic_vector(resize(a.FramesPerCube, 32));
      y(7) := std_logic_vector(resize(unsigned(a.CLinkMode), 32));
      y(8) := std_logic_vector(resize(unsigned(a.HeaderVersion), 32));
      -- y(9) := std_logic_vector(resize(unsigned(a.Mode), 32));
      -- y(10):= std_logic_vector(resize(a.DiagSize, 32));
      return y;
   end to_CLinkConfig_array32;   

  
   
   
   
end package body CLINK_Define;
