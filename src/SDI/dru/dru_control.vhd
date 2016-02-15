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
--  /   /         Filename: $File: //Groups/video_ip/demos/K7/xapp592_k7_sdi_demos/vhdl/dru/dru_control.vhd $
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

ENTITY dru_control IS
    Port ( 
            CLK         : in    STD_LOGIC;                      -- clk
            RST         : in    STD_LOGIC;                      -- rst
            DV          : in    STD_LOGIC_VECTOR(3 downto 0);   -- data valid
            SHIFT       : out   STD_LOGIC_VECTOR(4 downto 0);   -- shift
            WRFLAG      : out   STD_LOGIC;                      -- write flag
            VALID       : out   STD_LOGIC                       -- valid
        );
END dru_control;

ARCHITECTURE behavior OF dru_control IS 


SIGNAL temp             : STD_LOGIC_VECTOR(4 downto 0);
SIGNAL pointer          : STD_LOGIC_VECTOR(4 downto 0) := (others => '0'); 
SIGNAL flag             : STD_LOGIC;
SIGNAL flag_d           : STD_LOGIC := '0';
SIGNAL wrflags          : STD_LOGIC := '0';
SIGNAL valids           : STD_LOGIC := '0';

BEGIN



-- pointer

    temp <= pointer + ('0' & DV);      -- 0->31
    -- calculating nextpointer from DV and pointer
    PROCESS (CLK)
    begin
        if rising_edge(CLK) then
            if RST='0' then
                pointer <= (others=>'0');
            elsif temp <= "10011" then
                pointer <= temp;
            else
                pointer <= temp - "10100";
            end if;
        end if;
    end process;
    
    SHIFT  <= pointer;

    flag    <= '0' when (pointer    < "01010") else '1';
    
    PROCESS (CLK)
    begin
        if rising_edge(CLK) then
            if RST='0' then
                flag_d  <= '0';
            else
                flag_d  <= flag;
            end if;
        end if;
    end process;
    
    PROCESS (CLK)
    begin
        if rising_edge(CLK) then
            if RST='0' then
                wrflags     <= '0';
            else
                wrflags  <= flag_d;
                valids   <= flag XOR flag_d;
            end if;
        end if;
    end process;

    WRFLAG <= wrflags;
    VALID  <= valids;

END;