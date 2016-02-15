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
--  /   /         Filename: $File: //Groups/video_ip/demos/K7/xapp592_k7_sdi_demos/vhdl/dru/dru_bshift10to10.vhd $
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

ENTITY dru_bshift10to10 IS
    Port ( 
        CLK           : in  STD_LOGIC;                                      -- clk
        RST           : in  STD_LOGIC;                                      -- rst
        DIN           : in  STD_LOGIC_VECTOR(9 downto 0);                   -- data in
        DV            : in  STD_LOGIC_VECTOR(3 downto 0);                   -- data valid
        DV10          : out STD_LOGIC := '0';                               -- data valid 10
        DOUT10        : out STD_LOGIC_VECTOR(9 downto 0) := (others => '0') -- data out
        );
END dru_bshift10to10;

ARCHITECTURE behavior OF dru_bshift10to10 IS 

COMPONENT dru_rot20
    Port ( 
        CLK         : in    STD_LOGIC;
        RST         : in    STD_LOGIC;
        HIN         : in    STD_LOGIC_VECTOR(19 downto 0);
        HOUT        : out   STD_LOGIC_VECTOR(19 downto 0);
        P           : in    STD_LOGIC_VECTOR(4 downto 0)
        );
END COMPONENT;

COMPONENT dru_maskencoder
    Port ( 
        CLK         : in    STD_LOGIC;
        RST         : in    STD_LOGIC;
        SHIFT       : in    STD_LOGIC_VECTOR(4 downto 0);
        MASK        : out   STD_LOGIC_VECTOR(19 downto 0)
        );
END COMPONENT;

COMPONENT dru_control
    Port ( 
        CLK         : in    STD_LOGIC;
        RST         : in    STD_LOGIC;
        DV          : in    STD_LOGIC_VECTOR(3 downto 0);
        SHIFT       : out   STD_LOGIC_VECTOR(4 downto 0);
        WRFLAG      : out   STD_LOGIC;
        VALID       : out   STD_LOGIC
        );
END COMPONENT;


SIGNAL mask             : STD_LOGIC_VECTOR(19 downto 0);
SIGNAL dinext           : STD_LOGIC_VECTOR(19 downto 0);
SIGNAL dinext_rot       : STD_LOGIC_VECTOR(19 downto 0);
SIGNAL reg20            : STD_LOGIC_VECTOR(19 downto 0);
SIGNAL regout           : STD_LOGIC_VECTOR(9 downto 0);
SIGNAL pointer1         : STD_LOGIC_VECTOR(4 downto 0);
SIGNAL wrflag           : STD_LOGIC;
SIGNAL valid            : STD_LOGIC;

BEGIN

    I_Maskdec: dru_maskencoder PORT MAP(
        CLK        => CLK,
        RST        => RST,
        SHIFT      => pointer1,
        MASK       => mask
    );

    I_control: dru_control PORT MAP(
        CLK        => CLK,
        RST        => RST,
        DV         => DV,
        SHIFT      => pointer1,
        WRFLAG     => wrflag,
        VALID      => valid
        );

    dinext  <= "0000000000" & DIN;
    Inst_data_bs: dru_rot20 PORT MAP(
        CLK         => CLK,
        RST         => RST,
        HIN         => dinext,
        HOUT        => dinext_rot,
        P           => pointer1
    );


    -- writing in the 20 bit register
    PROCESS (CLK)
    begin
        if rising_edge(CLK) then
            if RST = '0' then
                reg20 <= (others=>'0');
            else
                for i in 0 to 19 loop
                    if mask(i)='1' then
                        reg20(i) <= dinext_rot(i); -- update
                    else
                        reg20(i) <= reg20(i);      -- keep
                    end if;
                end loop;
            end if;
        end if;
    end process;

    regout <= reg20(9 downto 0) when wrflag='0' else reg20(19 downto 10);
    PROCESS (CLK)
    begin
        if rising_edge(CLK) then
            if RST = '0' then
                DOUT10 <= (others=>'0');
            else
                DOUT10 <= regout;
            end if;
        end if;
    end process;

    PROCESS (CLK)
    begin
        if rising_edge(CLK) then
            if RST='0' then
                DV10 <= '0';
            else
                DV10 <= valid;
            end if;
        end if;
    end process;

END;