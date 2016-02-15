-- (c) Copyright 2006 - 2012 Xilinx, Inc. All rights reserved.
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
-- \   \   \/     Version: $Revision: #3 $
--  \   \         
--  /   /         Filename: $File: //Groups/video_ip/demos/K7/xapp592_k7_sdi_demos/vhdl/SDI_wrapper/x7gtx_sdi_drp_control.vhd $
-- /___/   /\     Timestamp: $DateTime: 2012/12/17 15:50:20 $
-- \   \  /  \
--  \___\/\___\
--
-- Description:
-- This module connects to the DRP of the 7series GTX and modifies attributes in 
-- the GTX transceiver in response to changes on its input control signals. This 
-- module is specifically designed to support triple-rate SDI interfaces 
-- implemented in the 7series GTX. It changes the RXCDR_CFG attribute when the 
-- rx_mode input changes.
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

entity x7gtx_sdi_drp_control is
generic (
    RXCDR_CFG_HD :      std_logic_vector(71 downto 0) := X"03800023ff20100020"; -- HD-SDI CDR setting
    RXCDR_CFG_3G :      std_logic_vector(71 downto 0) := X"03800023ff20200020"; -- SD-SDI CDR setting
    DRP_TIMEOUT_MSB :   integer := 9);                                          -- MSB of DRP timeout counter
port (
    clk:                in  std_logic;                                          -- DRP DCLK
    rst:                in  std_logic;                                          -- sync reset
    rx_mode:            in  std_logic_vector(1 downto 0);                       -- RX mode sel: 0=HD, 1=SD, 2=3G
    drprdy:             in  std_logic;
    drpaddr:            out std_logic_vector(8 downto 0) := (others => '0');
    drpdi:              out std_logic_vector(15 downto 0) := (others => '0');
    drpen:              out std_logic := '0';
    drpwe:              out std_logic := '0';
    rxcdrhold:          out std_logic := '0';
    gtrxreset:          out std_logic := '0');
end x7gtx_sdi_drp_control;

architecture rtl of x7gtx_sdi_drp_control is
   
constant RXCDR_CFG_DRPADDR : std_logic_vector(8 downto 0) := "010101000";
  
--
-- Master state machine state definitions
-- 
type MSTR_STATE_TYPE is (
    MSTR_START,
    MSTR_WRITE,
    MSTR_WAIT,
    MSTR_NEXT,
    MSTR_DONE,
    MSTR_SD);

--
-- DRP state machine state definitions
--
type DRP_STATE_TYPE is (
    DRP_START,
    DRP_WRITE,
    DRP_WAIT,
    DRP_DONE,
    DRP_TO);

subtype TIMEOUT_TYPE is unsigned(DRP_TIMEOUT_MSB downto 0); -- DRP access timeout timer type

--
-- Local signal declarations
--
signal rx_mode_in_reg :     std_logic_vector(1 downto 0) := (others => '0');
signal rx_mode_sync1_reg :  std_logic_vector(1 downto 0) := (others => '0');
signal rx_mode_sync2_reg :  std_logic_vector(1 downto 0) := (others => '0');
signal rx_mode_last_reg :   std_logic_vector(1 downto 0) := (others => '0');
signal rx_change_req :      std_logic := '1';
signal clr_rx_change_req :  std_logic;

signal mstr_current_state : MSTR_STATE_TYPE := MSTR_START;                      -- master FSM current state
signal mstr_next_state :    MSTR_STATE_TYPE;                                    -- master FSM next state
signal drp_current_state :  DRP_STATE_TYPE := DRP_START;                        -- DRP FSM current state
signal drp_next_state :     DRP_STATE_TYPE;                                     -- DRP FSM next state

signal drp_done_sig :       std_logic;                                          -- Done signal from DRP FSM to master FSM
signal drp_go :             std_logic;                                          -- Go signal from master FSM to DRP FSM
signal drp_err :            std_logic;

signal cycle :              unsigned(2 downto 0) := (others => '0');
signal clr_cycle :          std_logic;
signal inc_cycle :          std_logic;
signal complete :           std_logic;

signal drp_addr :           std_logic_vector(8 downto 0);
signal drp_data :           std_logic_vector(15 downto 0);
signal rxcdr_cfg :          std_logic_vector(71 downto 0) := RXCDR_CFG_HD;

signal to_counter :         TIMEOUT_TYPE;
signal clr_to :             std_logic;
signal timeout :            std_logic;
signal do_gtx_reset :       std_logic;


begin

--------------------------------------------------------------------------------
-- Input change detector
--
process(clk)
begin
    if rising_edge(clk) then
        rx_mode_in_reg <= rx_mode;
        rx_mode_sync1_reg <= rx_mode_in_reg;
        rx_mode_sync2_reg <= rx_mode_sync1_reg;
        rx_mode_last_reg <= rx_mode_sync2_reg;
    end if;
end process;

process(clk)
begin
    if rising_edge(clk) then
        if rst = '1' then
            rx_change_req <= '1';
        elsif clr_rx_change_req = '1' then
            rx_change_req <= '0';
        elsif (rx_mode_sync2_reg /= rx_mode_last_reg) then
            rx_change_req <= '1';
        end if;
    end if;
end process;

--
-- Assert rxcdrhold if mode changes to SD-SDI mode
--
process(clk)
begin
    if rising_edge(clk) then
        if rx_change_req = '1' then
            if rx_mode_sync1_reg = "01" then
                rxcdrhold <= '1';
            else
                rxcdrhold <= '0';
            end if;
        end if;
    end if;
end process;

--
-- Create values used for the new data word
--
with rx_mode_sync1_reg select
    rxcdr_cfg <= RXCDR_CFG_3G when "10",
                 RXCDR_CFG_HD when others;

--------------------------------------------------------------------------------        
-- Master state machine
--
-- The master FSM examines the rx_change_req register and then initiates multiple
-- DRP write cycles to modify the RXCDR_CFG attribute.
--
-- The actual DRP write cycles are handled by a separate FSM, the DRP FSM. The
-- master FSM provides a DRP address and new data word to the DRP FSM and 
-- asserts a drp_go signal. The DRP FSM does the actual write cycle and responds
-- with a drp_done_sig signal when the cycle is complete.
--

--
-- Current state register
-- 
process(clk)
begin
    if rising_edge(clk) then
        if rst = '1' then
            mstr_current_state <= MSTR_START;
        else
            mstr_current_state <= mstr_next_state;
        end if;
    end if;
end process;

--
-- Next state logic
--
process(mstr_current_state, rx_change_req, drp_done_sig, drp_err, complete, rx_mode_sync1_reg)
begin
    case mstr_current_state is
        when MSTR_START =>
            if rx_change_req = '1' then
                if rx_mode_sync1_reg = "01" then
                    mstr_next_state <= MSTR_SD;
                else
                    mstr_next_state <= MSTR_WRITE;
                end if;
            else
                mstr_next_state <= MSTR_START;
            end if;

        when MSTR_WRITE => 
            mstr_next_state <= MSTR_WAIT;

        when MSTR_WAIT => 
            if drp_done_sig = '1' then
                mstr_next_state <= MSTR_NEXT;
            elsif drp_err = '1' then
                mstr_next_state <= MSTR_WRITE;
            else
                mstr_next_state <= MSTR_WAIT;
            end if;

        when MSTR_NEXT => 
            if complete = '1' then
                mstr_next_state <= MSTR_DONE;
            else
                mstr_next_state <= MSTR_WRITE;
            end if;

        when MSTR_DONE => 
            mstr_next_state <= MSTR_START;

        when MSTR_SD =>
            mstr_next_state <= MSTR_START;

    end case;
end process;

--
-- Output logic
--
process(mstr_current_state)
begin
    clr_cycle <= '0';
    inc_cycle <= '0';
    clr_rx_change_req <= '0';
    drp_go <= '0';
    do_gtx_reset <= '0';

    case mstr_current_state is
        when MSTR_START => 
            clr_cycle  <= '1';

        when MSTR_WRITE => 
            drp_go <= '1';
            if cycle = "000" then
                clr_rx_change_req <= '1';
            else
                clr_rx_change_req <= '0';
            end if;

        when MSTR_NEXT => 
            inc_cycle <= '1';

        when MSTR_DONE => 
            do_gtx_reset <= '1';

        when MSTR_SD =>
            do_gtx_reset <= '1';
            clr_rx_change_req <= '1';

        when others => 
    end case;
end process;

process(clk)
begin
    if rising_edge(clk) then
        if rst = '1' then
            gtrxreset <= '0';
        elsif do_gtx_reset = '1' then
            gtrxreset <= '1';
        else
            gtrxreset <= '0';
        end if;
    end if;
end process;

--
-- This logic creates the correct DRP address and data values;
--
process(cycle, rxcdr_cfg)
begin
    case cycle is
        when "000" =>
            drp_data <= rxcdr_cfg(15 downto 0);
            drp_addr <= std_logic_vector(RXCDR_CFG_DRPADDR);

        when "001" =>
            drp_data <= rxcdr_cfg(31 downto 16);
            drp_addr <= std_logic_vector(RXCDR_CFG_DRPADDR + 1);

        when "010" =>
            drp_data <= rxcdr_cfg(47 downto 32);
            drp_addr <= std_logic_vector(RXCDR_CFG_DRPADDR + 2);

        when "011" =>
            drp_data <= rxcdr_cfg(63 downto 48);
            drp_addr <= std_logic_vector(RXCDR_CFG_DRPADDR + 3);

        when others => 
            drp_data <= (X"00" & rxcdr_cfg(71 downto 64));
            drp_addr <= std_logic_vector(RXCDR_CFG_DRPADDR + 4);

    end case;
end process;

--
-- cycle counter
--
process(clk)
begin
    if rising_edge(clk) then
        if clr_cycle = '1' then
            cycle <= (others => '0');
        elsif inc_cycle = '1' then
            cycle <= cycle + 1;
        end if;
    end if;
end process;

complete <= '1' when cycle = "100" else '0';

--------------------------------------------------------------------------------
-- DRP state machine
--
-- The DRP state machine performs the write cycle to the DRP at the request of
-- the master FSM.
--
-- A timeout timer is used to timeout a DRP access should the DRP fail to
-- respond with a DRDY signal within a given amount of time controlled by the
-- DRP_TIMEOUT_MSB parameter.
--

--
-- Current state register
--
process(clk)
begin
    if rising_edge(clk) then
        if rst = '1' then
            drp_current_state <= DRP_START;
        else
            drp_current_state <= drp_next_state;
        end if;
    end if;
end process;

--
-- Next state logic
--
process(drp_current_state, drp_go, drprdy, timeout)
begin
    case drp_current_state is
        when DRP_START =>
            if drp_go = '1' then
                drp_next_state <= DRP_WRITE;
            else
                drp_next_state <= DRP_START;
            end if;

        when DRP_WRITE => 
            drp_next_state <= DRP_WAIT;

        when DRP_WAIT => 
            if drprdy = '1' then
                drp_next_state <= DRP_DONE;
            elsif timeout = '1' then
                drp_next_state <= DRP_TO;
            else
                drp_next_state <= DRP_WAIT;
            end if;

        when DRP_DONE => 
            drp_next_state <= DRP_START;

        when DRP_TO => 
            drp_next_state <= DRP_START;

        when others => 
            drp_next_state <= DRP_START;

    end case;
end process;

process(clk)
begin
    if rising_edge(clk) then
        drpdi <= drp_data;
        drpaddr <= drp_addr;
    end if;
end process;

--
-- Output logic
--
process(drp_current_state)
begin
    drpen <= '0';
    drpwe <= '0';
    drp_done_sig <= '0';
    drp_err <= '0';
    clr_to <= '0';

    case drp_current_state is
        when DRP_WRITE =>
            drpen <= '1';
            drpwe <= '1';
            clr_to <= '1';

        when DRP_DONE =>   
            drp_done_sig <= '1';

        when DRP_TO => 
            drp_err <= '1';

        when others => 
    end case;
end process;

--
-- A timeout counter for DRP accesses. If the timeout counter reaches its
-- terminal count, the DRP state machine aborts the transfer.
--
process(clk)
begin
    if rising_edge(clk) then
        if clr_to = '1' then
            to_counter <= (others => '0');
        else
            to_counter <= to_counter + 1;
        end if;
    end if;
end process;

timeout <= '1' when to_counter(DRP_TIMEOUT_MSB) = '1' else '0';

end rtl;