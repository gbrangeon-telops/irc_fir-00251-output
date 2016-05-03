-- (c) Copyright 2011 - 2012 Xilinx, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
--
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: $Revision: #2 $
--  \   \         
--  /   /         Filename: $File: //Groups/video_ip/demos/K7/xapp592_k7_sdi_demos/vhdl/SDI_wrapper/x7gtx_reset_control.vhd $
-- /___/   /\     Timestamp: $DateTime: 2012/08/16 15:56:07 $
-- \   \  /  \
--  \___\/\___\
--
-- Description:
-- This module implements the finite state machine that controls resets of the 
-- 7-series GTX transceiver.
--------------------------------------------------------------------------------
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
--------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity x7gtx_reset_control is
generic (
    PLLLOCKDLY :            integer := 4);          -- Width of the PLL lock delay counter

port (
    clk :                   in  std_logic;          -- Fixed frequency clock
    pll_reset :             in  std_logic;          -- PLL reset input
    pll_lock :              in  std_logic;          -- PLL lock input
    gtxreset :              out std_logic := '0');  -- GTX reset output
end x7gtx_reset_control;

architecture rtl of x7gtx_reset_control is

--
-- State machine state definitions
--    
type STATE_TYPE is (IDLE_STATE, DELAY_STATE, LOCK_STATE, DONE_STATE, RUN_STATE);

subtype DLYCNT_TYPE is unsigned(PLLLOCKDLY-1 downto 0);
constant dly_cntr_tc_value :    DLYCNT_TYPE := (others => '1');

--
-- Internal signal definitions
--
signal dly_cntr :               DLYCNT_TYPE := (others => '0');
signal dly_cntr_rst :           std_logic;
signal dly_cntr_tc :            std_logic;
signal set_reset :              std_logic;
signal clr_reset :              std_logic;
signal current_state :          STATE_TYPE := IDLE_STATE;
signal next_state :             STATE_TYPE;
signal pll_lock_sync_reg :      std_logic_vector(2 downto 0);
signal pll_lock_sync :          std_logic;
signal pll_reset_sync_reg :     std_logic_vector(2 downto 0);
signal pll_reset_sync :         std_logic;

begin

--
-- Synchronize the pll_reset and pll_lock inputs to local clock
--
process(clk)
begin
    if rising_edge(clk) then
        pll_lock_sync_reg <= (pll_lock_sync_reg(1 downto 0) & pll_lock);
    end if;
end process;

pll_lock_sync <= pll_lock_sync_reg(2);

process(clk)
begin
    if rising_edge(clk) then
        pll_reset_sync_reg <= (pll_reset_sync_reg(1 downto 0) & pll_reset);
    end if;
end process;

pll_reset_sync <= pll_reset_sync_reg(2);

--
-- Reset delay counter
--
process(clk)
begin
    if rising_edge(clk) then
        if dly_cntr_rst = '1' then
            dly_cntr <= (others => '0');
        else
            dly_cntr <= dly_cntr + 1;
        end if;
    end if;
end process;

dly_cntr_tc <= '1' when dly_cntr = dly_cntr_tc_value else '0';

--
-- GTX reset flip-flop
--
process(clk)
begin
    if rising_edge(clk) then
        if set_reset = '1' then
            gtxreset <= '1';
        elsif clr_reset = '1' then
            gtxreset <= '0';
        end if;
    end if;
end process;

--
-- FSM current state register
-- 
process(clk)
begin
    if rising_edge(clk) then
        current_state <= next_state;
    end if;
end process;

--
-- FSM next state logic
--
process(current_state, pll_reset_sync, dly_cntr_tc, pll_lock_sync)
begin
    case current_state is
        when IDLE_STATE =>
            if pll_reset_sync = '1' then
                next_state <= DELAY_STATE;
            else
                next_state <= IDLE_STATE;
            end if;

        when DELAY_STATE => 
            if dly_cntr_tc = '1' then
                next_state <= LOCK_STATE;
            else
                next_state <= DELAY_STATE;
            end if;

        when LOCK_STATE => 
            if pll_lock_sync = '1' then
                next_state <= DONE_STATE;
            else
                next_state <= LOCK_STATE;
            end if;

        when DONE_STATE => 
            next_state <= RUN_STATE;

        when RUN_STATE => 
            if pll_lock_sync = '0' or pll_reset_sync = '1' then
                next_state <= DELAY_STATE;
            else
                next_state <= RUN_STATE;
            end if;

        when others =>
            next_state <= IDLE_STATE;
    end case;
end process;

--
-- FSM output logic
--
process(current_state)
begin
    set_reset   <= '0';
    clr_reset   <= '0';
    dly_cntr_rst <= '0';

    case current_state is
        when IDLE_STATE => 
            dly_cntr_rst <= '1';
            clr_reset <= '1';

        when DELAY_STATE =>
            set_reset <= '1';

        when LOCK_STATE =>
            set_reset <= '1';

        when DONE_STATE =>
            clr_reset <= '1';

        when RUN_STATE =>
            clr_reset <= '1';
            dly_cntr_rst <= '1';
    end case;
end process;

end rtl;
