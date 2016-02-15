------------------------------------------------------------------
--!   @file CLINK_PORTMAP.vhd
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

entity CLINK_PORTMAP is
      port(
      --input
      CAML_X_LVAL    : in std_logic;
      CAML_X_FVAL    : in std_logic;
      CAML_X_DVAL    : in std_logic;
      CAML_X_SPARE   : in std_logic;
      CAML_PORT_C    : in std_logic_vector(7 downto 0);
      CAML_PORT_B    : in std_logic_vector(7 downto 0);
      CAML_PORT_A    : in std_logic_vector(7 downto 0);

      CAML_Y_LVAL    : in std_logic;
      CAML_Y_FVAL    : in std_logic;
      CAML_Y_DVAL    : in std_logic;
      CAML_Y_SPARE   : in std_logic;
      CAML_PORT_F    : in std_logic_vector(7 downto 0);
      CAML_PORT_E    : in std_logic_vector(7 downto 0);
      CAML_PORT_D    : in std_logic_vector(7 downto 0);

      CAML_Z_LVAL    : in std_logic;
      CAML_Z_FVAL    : in std_logic;
      CAML_Z_DVAL    : in std_logic;
      CAML_Z_SPARE   : in std_logic;
      CAML_PORT_H    : in std_logic_vector(7 downto 0);
      CAML_PORT_G    : in std_logic_vector(7 downto 0);
      
      --output
      CLINK_CH0      : out std_logic_vector(27 downto 0);
      CLINK_CH1      : out std_logic_vector(27 downto 0);
      CLINK_CH2      : out std_logic_vector(27 downto 0)
      );
      
end CLINK_PORTMAP;

--}} End of automatically maintained section

architecture RTL of CLINK_PORTMAP is
begin
      -- Bit assignation based on EFA-00142 and chip DS90CR287
      CLINK_CH0(0)  <= CAML_PORT_B(0);
      CLINK_CH0(1)  <= CAML_PORT_C(1);
      CLINK_CH0(2)  <= CAML_X_DVAL;
      CLINK_CH0(3)  <= CAML_X_SPARE;
      CLINK_CH0(4)  <= CAML_PORT_A(5);
      CLINK_CH0(5)  <= CAML_PORT_C(0);
      CLINK_CH0(6)  <= CAML_X_FVAL;
      CLINK_CH0(7)  <= CAML_PORT_C(7);
      CLINK_CH0(8)  <= CAML_PORT_A(4);
      CLINK_CH0(9)  <= CAML_PORT_B(5);
      CLINK_CH0(10) <= CAML_X_LVAL;
      CLINK_CH0(11) <= CAML_PORT_C(6);
      CLINK_CH0(12) <= CAML_PORT_A(3);
      CLINK_CH0(13) <= CAML_PORT_B(4);
      CLINK_CH0(14) <= CAML_PORT_C(5);
      CLINK_CH0(15) <= CAML_PORT_B(7);
      CLINK_CH0(16) <= CAML_PORT_A(2);
      CLINK_CH0(17) <= CAML_PORT_B(3);
      CLINK_CH0(18) <= CAML_PORT_C(4);
      CLINK_CH0(19) <= CAML_PORT_B(6);
      CLINK_CH0(20) <= CAML_PORT_A(1);
      CLINK_CH0(21) <= CAML_PORT_B(2);
      CLINK_CH0(22) <= CAML_PORT_C(3);
      CLINK_CH0(23) <= CAML_PORT_A(7);
      CLINK_CH0(24) <= CAML_PORT_A(0);
      CLINK_CH0(25) <= CAML_PORT_B(1);
      CLINK_CH0(26) <= CAML_PORT_C(2);
      CLINK_CH0(27) <= CAML_PORT_A(6);
      
      CLINK_CH1(0)  <= CAML_PORT_E(0);
      CLINK_CH1(1)  <= CAML_PORT_F(1);
      CLINK_CH1(2)  <= CAML_Y_DVAL;   
      CLINK_CH1(3)  <= CAML_Y_SPARE;  
      CLINK_CH1(4)  <= CAML_PORT_D(5);
      CLINK_CH1(5)  <= CAML_PORT_F(0);
      CLINK_CH1(6)  <= CAML_Y_FVAL;   
      CLINK_CH1(7)  <= CAML_PORT_F(7);
      CLINK_CH1(8)  <= CAML_PORT_D(4);
      CLINK_CH1(9)  <= CAML_PORT_E(5);
      CLINK_CH1(10) <= CAML_Y_LVAL;   
      CLINK_CH1(11) <= CAML_PORT_F(6);
      CLINK_CH1(12) <= CAML_PORT_D(3);
      CLINK_CH1(13) <= CAML_PORT_E(4);
      CLINK_CH1(14) <= CAML_PORT_F(5);
      CLINK_CH1(15) <= CAML_PORT_E(7);
      CLINK_CH1(16) <= CAML_PORT_D(2);
      CLINK_CH1(17) <= CAML_PORT_E(3);
      CLINK_CH1(18) <= CAML_PORT_F(4);
      CLINK_CH1(19) <= CAML_PORT_E(6);
      CLINK_CH1(20) <= CAML_PORT_D(1);
      CLINK_CH1(21) <= CAML_PORT_E(2);
      CLINK_CH1(22) <= CAML_PORT_F(3);
      CLINK_CH1(23) <= CAML_PORT_D(7);
      CLINK_CH1(24) <= CAML_PORT_D(0);
      CLINK_CH1(25) <= CAML_PORT_E(1);
      CLINK_CH1(26) <= CAML_PORT_F(2);
      CLINK_CH1(27) <= CAML_PORT_D(6);
      
      CLINK_CH2(0)  <= CAML_PORT_H(0);
      CLINK_CH2(1)  <= '0';
      CLINK_CH2(2)  <= CAML_Z_DVAL;   
      CLINK_CH2(3)  <= CAML_Z_SPARE;  
      CLINK_CH2(4)  <= CAML_PORT_G(5);
      CLINK_CH2(5)  <= '0';
      CLINK_CH2(6)  <= CAML_Z_FVAL;   
      CLINK_CH2(7)  <= '0';
      CLINK_CH2(8)  <= CAML_PORT_G(4);
      CLINK_CH2(9)  <= CAML_PORT_H(5);
      CLINK_CH2(10) <= CAML_Z_LVAL;   
      CLINK_CH2(11) <= '0';
      CLINK_CH2(12) <= CAML_PORT_G(3);
      CLINK_CH2(13) <= CAML_PORT_H(4);
      CLINK_CH2(14) <= '0';
      CLINK_CH2(15) <= CAML_PORT_H(7);
      CLINK_CH2(16) <= CAML_PORT_G(2);
      CLINK_CH2(17) <= CAML_PORT_H(3);
      CLINK_CH2(18) <= '0';
      CLINK_CH2(19) <= CAML_PORT_H(6);
      CLINK_CH2(20) <= CAML_PORT_G(1);
      CLINK_CH2(21) <= CAML_PORT_H(2);
      CLINK_CH2(22) <= '0';
      CLINK_CH2(23) <= CAML_PORT_G(7);
      CLINK_CH2(24) <= CAML_PORT_G(0);
      CLINK_CH2(25) <= CAML_PORT_H(1);
      CLINK_CH2(26) <= '0';
      CLINK_CH2(27) <= CAML_PORT_G(6);

      
 
end RTL;
