-------------------------------------------------------------------------------
--  (c) Copyright 2010-2011 Xilinx, Inc. All rights reserved.
--
--  This file contains confidential and proprietary information
--  of Xilinx, Inc. and is protected under U.S. and
--  international copyright and other intellectual property
--  laws.
--
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: $Revision: #2 $
--  \   \         
--  /   /         Filename: $File: //Groups/video_ip/demos/K7/xapp592_k7_sdi_demos/vhdl/dru/dru_maskencoder.vhd $
-- /___/   /\     Timestamp: $DateTime: 2012/08/16 15:32:14 $
-- \   \  /  \
--  \___\/\___\
--
-- Description:
--  Barrel shifter for DRU.
--------------------------------------------------------------------------------
--  DISCLAIMER
--  This disclaimer is not a license and does not grant any
--  rights to the materials distributed herewith. Except as
--  otherwise provided in a valid license issued to you by
--  Xilinx, and to the maximum extent permitted by applicable
--  law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
--  WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
--  AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
--  BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
--  INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
--  (2) Xilinx shall not be liable (whether in contract or tort,
--  including negligence, or under any other theory of
--  liability) for any loss or damage of any kind or nature
--  related to, arising under or in connection with these
--  materials, including for any direct, or any indirect,
--  special, incidental, or consequential loss or damage
--  (including loss of data, profits, goodwill, or any type of
--  loss or damage suffered as a result of any action brought
--  by a third party) even if such damage or loss was
--  reasonably foreseeable or Xilinx had been advised of the
--  possibility of the same.
--
--  CRITICAL APPLICATIONS
--  Xilinx products are not designed or intended to be fail-
--  safe, or for use in any application requiring fail-safe
--  performance, such as life-support or safety devices or
--  systems, Class III medical devices, nuclear facilities,
--  applications related to the deployment of airbags, or any
--  other applications that could lead to death, personal
--  injury, or severe property or environmental damage
--  (individually and collectively, "Critical
--  Applications"). Customer assumes the sole risk and
--  liability of any use of Xilinx products in Critical
--  Applications, subject only to applicable laws and
--  regulations governing limitations on product liability.
--
--  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
--  PART OF THIS FILE AT ALL TIMES. 
--
------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.ALL;
USE ieee.std_logic_arith.ALL;

ENTITY dru_maskencoder IS
    Port ( 
            CLK         : in    STD_LOGIC;                      -- clk
            RST         : in    STD_LOGIC;                      -- rst
            SHIFT       : in    STD_LOGIC_VECTOR(4 downto 0);   -- shift
            MASK        : out   STD_LOGIC_VECTOR(19 downto 0)   -- mask
        );
END dru_maskencoder;

ARCHITECTURE behavior OF dru_maskencoder IS 

SIGNAL maskdec          : STD_LOGIC_VECTOR(9 downto 0) := (others => '0');

BEGIN

    PROCESS (CLK)
    begin
        if rising_edge(CLK) then
            if RST = '0' then
                maskdec     <= (others=>'0');
            else
                case SHIFT IS 
                    when "00000" =>         
                        MASK        <= "00000000001111111111";--0
                    when "00001" =>
                        MASK        <= "00000000011111111110";      
                    when "00010" =>
                        MASK        <= "00000000111111111100";      
                    when "00011" =>     
                        MASK        <= "00000001111111111000";      
                    when "00100" =>     
                        MASK        <= "00000011111111110000";      
                    when "00101" =>     
                        MASK        <= "00000111111111100000";      
                    when "00110" =>     
                        MASK        <= "00001111111111000000";      
                    when "00111" =>     
                        MASK        <= "00011111111110000000";      
                    when "01000" =>     
                        MASK        <= "00111111111100000000";      
                    when "01001" =>     
                        MASK        <= "01111111111000000000";      
                    when "01010" =>     
                        MASK        <= "11111111110000000000";--10      
                    when "01011" =>     
                        MASK        <= "11111111100000000001";      
                    when "01100" =>     
                        MASK        <= "11111111000000000011";      
                    when "01101" =>     
                        MASK        <= "11111110000000000111";      
                    when "01110" =>     
                        MASK        <= "11111100000000001111";      
                    when "01111" =>     
                        MASK        <= "11111000000000011111";      
                    when "10000" =>     
                        MASK        <= "11110000000000111111";      
                    when "10001" =>     
                        MASK        <= "11100000000001111111";      
                    when "10010" =>     
                        MASK        <= "11000000000011111111";      
                    when "10011" =>     
                        MASK        <= "10000000000111111111";      
                    when others => null; 
                end case;
            end if;
        end if;
    end process;

END;