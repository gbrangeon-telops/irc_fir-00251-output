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
--  /   /         Filename: $File: //Groups/video_ip/demos/K7/xapp592_k7_sdi_demos/vhdl/dru/dru_rot20.vhd $
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

ENTITY dru_rot20 IS
    Port ( 
            CLK         : in    STD_LOGIC;                                          -- clk
            RST         : in    STD_LOGIC;                                          -- sync reset
            HIN         : in    STD_LOGIC_VECTOR(19 downto 0);                      -- hin
            HOUT        : out   STD_LOGIC_VECTOR(19 downto 0) := (others => '0');   -- hout
            P           : in    STD_LOGIC_VECTOR(4 downto 0)                        -- p
        );
END dru_rot20;

ARCHITECTURE behavior OF dru_rot20 IS 

SIGNAL a                : STD_LOGIC_VECTOR(19 downto 0);
SIGNAL b                : STD_LOGIC_VECTOR(19 downto 0);
SIGNAL c                : STD_LOGIC_VECTOR(19 downto 0);
SIGNAL d                : STD_LOGIC_VECTOR(19 downto 0);
SIGNAL e                : STD_LOGIC_VECTOR(19 downto 0);

BEGIN

a       <= HIN(19 downto 0) when P(0)='0' else HIN(18 downto 0) &  HIN(19);           -- 1
b       <= a(19 downto 0)   when P(1)='0' else   a(17 downto 0)    & a(19 downto 18); -- 2
c       <= b(19 downto 0)   when P(2)='0' else   b(15 downto 0)    & b(19 downto 16); -- 4
d       <= c(19 downto 0)   when P(3)='0' else   c(11 downto 0)    & c(19 downto 12); -- 8
e       <= d(19 downto 0)   when P(4)='0' else   d(3 downto  0)    & d(19 downto 4);  -- 16

    PROCESS (CLK)
    begin
        if rising_edge(CLK) then
            if RST='0' then
                HOUT    <= (others=>'0');
            else
                HOUT <= e;
            end if;
        end if;
    end process;


END;
