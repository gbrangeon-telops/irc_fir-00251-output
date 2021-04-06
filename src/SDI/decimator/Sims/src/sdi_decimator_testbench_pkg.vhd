------------------------------------------------------------------
--!   @file isc0804A_intf_testbench_pkgpkg.vhd
--!   @brief Package file for TEL-2000 projects.
--!   @details This file contains the records and constants used in the project.
--!
--!   $Rev$
--!   $Author$
--!   $Date$
--!   $Id$
--!   $URL$
------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.all; 
use IEEE.numeric_std.all;
use work.sdi_decimator_define.all;

package sdi_decimator_testbench_pkg is                                         

 
function to_intf_cfg(cfg:sdi_decimator_cfg_type) return unsigned;

end sdi_decimator_testbench_pkg;

package body sdi_decimator_testbench_pkg is

   function to_intf_cfg(cfg:sdi_decimator_cfg_type) return unsigned is 
   
      variable threshold   	           : unsigned(31 downto 0) := (others => '0');          -- threshold triggering the decimation (in pixels)
      variable y                         : unsigned(1*32-1 downto 0);  
      
      
   begin
      
      threshold := unsigned(cfg.threshold);

      
      -- cfg usager
      y := threshold;
      return y;
      
   end to_intf_cfg;
   
   
   

end package body sdi_decimator_testbench_pkg;

