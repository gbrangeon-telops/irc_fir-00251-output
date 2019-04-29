------------------------------------------------------------------
--!   @file Clink_port_mapper.vhd
--!   @brief pin assignaion from clink_phy to serializer.
--!   @details This file do the pin mapping from the clink_phy to the serializer
--!
--!   $Rev$
--!   $Author$
--!   $Date$
--!   $Id$
--!   $URL: http://einstein/svn/firmware/FIR-00251-Common/trunk/VHDL/MGT/Hdl/mgt_ctrl.vhd $
------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.numeric_std.all;
use work.tel2000.all;
use work.clink_define.all;

entity Clink_portmap is
      port(
      CH_INPUT : in CLinkChannel;
      CH_OUTPUT      : out std_logic_vector(27 downto 0) := (others => '0') 
      );    
end Clink_port_mapper;

architecture RTL of Clink_portmap is
begin 
   
      -- Bit assignation based on EFA-00142 and chip DS90CR287
      CH_OUTPUT(0)  <= CH_INPUT.Port2(0)  ;
      CH_OUTPUT(1)  <= CH_INPUT.Port3(1)  ;
      CH_OUTPUT(2)  <= CH_INPUT.Dval;
      CH_OUTPUT(3)  <= '0'; --Spare
      CH_OUTPUT(4)  <= CH_INPUT.Port1(5);
      CH_OUTPUT(5)  <= CH_INPUT.Port3(0);
      CH_OUTPUT(6)  <= CH_INPUT.Fval;
      CH_OUTPUT(7)  <= CH_INPUT.Port3(7);
      CH_OUTPUT(8)  <= CH_INPUT.Port1(4);
      CH_OUTPUT(9)  <= CH_INPUT.Port2(5); 
      CH_OUTPUT(10) <= CH_INPUT.Lval;
      CH_OUTPUT(11) <= CH_INPUT.Port3(6);
      CH_OUTPUT(12) <= CH_INPUT.Port1(3);
      CH_OUTPUT(13) <= CH_INPUT.Port2(4);
      CH_OUTPUT(14) <= CH_INPUT.Port3(5);
      CH_OUTPUT(15) <= CH_INPUT.Port2(7);
      CH_OUTPUT(16) <= CH_INPUT.Port1(2);
      CH_OUTPUT(17) <= CH_INPUT.Port2(3);
      CH_OUTPUT(18) <= CH_INPUT.Port3(4);
      CH_OUTPUT(19) <= CH_INPUT.Port2(6);
      CH_OUTPUT(20) <= CH_INPUT.Port1(1);
      CH_OUTPUT(21) <= CH_INPUT.Port2(2);
      CH_OUTPUT(22) <= CH_INPUT.Port3(3);
      CH_OUTPUT(23) <= CH_INPUT.Port1(7);
      CH_OUTPUT(24) <= CH_INPUT.Port1(0);
      CH_OUTPUT(25) <= CH_INPUT.Port2(1);
      CH_OUTPUT(26) <= CH_INPUT.Port3(2);
      CH_OUTPUT(27) <= CH_INPUT.Port1(6);

end RTL;
