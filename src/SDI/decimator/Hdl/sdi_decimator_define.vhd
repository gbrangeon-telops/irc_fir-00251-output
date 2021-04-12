-------------------------------------------------------------------------------
--
-- Title       : sdi_decimator_define
-- Design      :  sdi_decimator_buffer
-- Author      : Philippe Couture   
-- Company     : Telops
--
-------------------------------------------------------------------------------
--
-- File        : D:\Telops\FIR-00251-Proc\src\FrameBuffer\HDL\fb_define.vhd
-- Generated   : Mon Aug 10 13:21:40 2020
-- From        : interface description file
-- By          : Itf2Vhdl ver. 1.22
--
-------------------------------------------------------------------------------
--
-- Description : 
--
-------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.numeric_std.all; 
use work.tel2000.all; 

package  sdi_decimator_define is    	  

   type  sdi_decimator_cfg_type is
   record 
      row_width              : std_logic_vector(10 downto 0);
      enable                 : std_logic_vector(1 downto 0);
   end record  sdi_decimator_cfg_type;
 

 
   signal s_sdi_decimator_cfg : sdi_decimator_cfg_type;  
   
   constant sdi_decimator_cfg_default : sdi_decimator_cfg_type := ( 
   std_logic_vector(to_unsigned(640,s_sdi_decimator_cfg.row_width'length)),
   "11"
   );
  
 
end sdi_decimator_define;

package body sdi_decimator_define is
   
end package body sdi_decimator_define; 