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
--  /   /         Filename: $File: //Groups/video_ip/demos/K7/xapp592_k7_sdi_demos/vhdl/SDI_wrapper/x7gtx_sdi_control.vhd $
-- /___/   /\     Timestamp: $DateTime: 2012/08/16 15:56:07 $
-- \   \  /  \
--  \___\/\___\
--
-- Description:
-- This module handles general control of SDI mode changes for the Xilinx 
-- 7-series GTX transceiver. It also contains the RX input bit rate detection
-- module.
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

entity x7gtx_sdi_control is
generic (
    FXDCLK_FREQ :           integer := 27000000;    -- Frequency in Hz of fixed frequency clock connected to clk port
    TXPMARESETDLY_MSB :     integer := 15;          -- Width of TXPMARESET delay counter
    PLLLOCKDLY :            integer := 4);          -- Width of the PLL lock delay counter

port (
    clk :                   in  std_logic;                              -- Fixed frequency clock

-- TX related signals
    txusrclk :              in  std_logic;                              -- TXUSRCLK2 clock signal
    txmode :                in  std_logic_vector(1 downto 0);           -- TX mode select: 00=HD, 01=SD, 10=3G  (synchronous to txusrclk)
    txpllreset :            in  std_logic;                              -- Connect to signal driving {Q|C}PLLRESET
    txplllock :             in  std_logic;                              -- Connecto {Q|C}PLLLOCK output of GTX
    txpllrange :            in  std_logic;                              -- 0 for CPLL or QPLL range 1, 1 for QPLL range 2
    tx_m :                  in  std_logic;                              -- TX bit rate select (0=1000/1000, 1=1000/1001)
    txsysclksel_m_0 :       in  std_logic_vector(1 downto 0);           -- Value to output on TXSYSCLKSEL when tx_m is 0
    txsysclksel_m_1 :       in  std_logic_vector(1 downto 0);           -- Value to output on TXSYSCLKSEL when tx_m is 1
    gttxreset :             out std_logic;                              -- Connect to GTTXRESET input of GTX
    txpmareset :            out std_logic;                              -- Connect to TXPMARESET input of GTX
    txrate :                out std_logic_vector(2 downto 0) := "000";  -- Connect to TXRATE input of GTX
    txsysclksel :           out std_logic_vector(1 downto 0) := "00";   -- Connect to TXSYSCLKSEL port of GTX when doing dynamic clock source switching
    txslew :                out std_logic := '0';                       -- Slew rate control for SDI cable driver

-- RX related signals
    rxusrclk :              in  std_logic;                              -- Connect to same clock as drives the GTX RXUSRCLK2
    rxmode :                in  std_logic_vector(1 downto 0);           -- RX mode select: 00=HD, 01=SD, 10=3G (synchronous to rxusrclk)
    rxpllreset :            in  std_logic;                              -- Connect to signal driving {Q|C}PLLRESET
    rxplllock :             in  std_logic;                              -- Connect to {Q|C}PLLLOCK output of GTX
    rxpllrange :            in  std_logic;                              -- 0 for CPLL or QPLL range 1, 1 for QPLL range 2
    rxresetdone :           in  std_logic;                              -- Connect to RXRESETDONE port of the GTX
    gtrxreset :             out std_logic;                              -- Connect to GTRXRESET input of GTX
    rxrate :                out std_logic_vector(2 downto 0) := "011";  -- Connect to RXRATE port of GTX
    rxcdrhold :             out std_logic;                              -- Connect to RXCDRHOLD port of GTX
    rx_m :                  out std_logic;                              -- Indicates received bit rate: 1 = /1.001 rate, 0 = /1 rate

-- SD-SDI DRU signals
    dru_rst :               in  std_logic;                              -- Sync reset input for DRU
    data_in :               in  std_logic_vector(19 downto 0);          -- 11X oversampled data input vector
    sd_data :               out std_logic_vector(9 downto 0);           -- Recovered SD-SDI data
    sd_data_strobe :        out std_logic;                              -- Asserted high when an output data word is ready
    recclk_txdata :         out std_logic_vector(19 downto 0);          -- Optional output port for recovering a clock using transmitter

-- DRP signals -- The DRP is used to change the RXCDR_CFG attribute depending
-- on the RX SDI mode. Connect these signal to the DRP of the GTX associated
-- with the SDI RX. If the SDI RX function is not used (TX-only) then these
-- signals don't need to be connected to the GTX.
    drpclk :                in  std_logic;                              -- Connect to GTX DRP clock
    drprdy :                in  std_logic;                              -- Connect to GTX DRPRDY port
    drpaddr :               out std_logic_vector(8 downto 0);           -- Connect to GTX DRPADDR port
    drpdi :                 out std_logic_vector(15 downto 0);          -- Connect to GTX DRPDI port
    drpen :                 out std_logic;                              -- Connect to GTX DRPEN port
    drpwe :                 out std_logic);                             -- Connect to GTX DRPWE port
end x7gtx_sdi_control;

architecture rtl of x7gtx_sdi_control is
  
component dru
    port(
        DT_IN:          in  std_logic_vector(19 downto 0);
        CENTER_F:       in  std_logic_vector(36 downto 0);
        G1:             in  std_logic_vector(4 downto 0);
        G1_P:           in  std_logic_vector(4 downto 0);
        G2:             in  std_logic_vector(4 downto 0);
        CLK:            in  std_logic;
        RST:            in  std_logic;
        RST_FREQ:       in  std_logic;
        VER:            out std_logic_vector(7 downto 0);
        EN:             in  std_logic;
        INTEG:          out std_logic_vector(31 downto 0);
        DIRECT:         out std_logic_vector(31 downto 0);
        CTRL:           out std_logic_vector(31 downto 0);
        PH_OUT:         out std_logic_vector(20 downto 0);
        RECCLK:         out std_logic_vector(19 downto 0);
        SAMV:           out std_logic_vector(3 downto 0);
        SAM:            out std_logic_vector(9 downto 0));
end component;

subtype MODE_TYPE is std_logic_vector(1 downto 0);
subtype RATE_TYPE is std_logic_vector(2 downto 0);
subtype DLYCNT_TYPE is unsigned(TXPMARESETDLY_MSB downto 0);
    
--
-- These constants define the encoding of the tx_mode and rx_mode ports.
--
constant MODE_HD :      MODE_TYPE := "00";
constant MODE_SD :      MODE_TYPE := "01";
constant MODE_3G :      MODE_TYPE := "10";

--
-- These constants define the encoding of the txrate and rxrate ports.
--
constant RATE_DIV_2 :   RATE_TYPE := "010";
constant RATE_DIV_4 :   RATE_TYPE := "011";
constant RATE_DIV_8 :   RATE_TYPE := "100";

constant txpmareset_dly_tc_value : DLYCNT_TYPE := (others => '1');

--
-- Internal signal definitions
--
signal txmode_reg :             MODE_TYPE := "00";
signal rxmode_reg :             MODE_TYPE := "00";
signal samv :                   std_logic_vector(3 downto 0);
signal sam :                    std_logic_vector(9 downto 0);
signal dru_dout :               std_logic_vector(9 downto 0);
signal dru_drdy :               std_logic;
signal txpmareset_dly :         DLYCNT_TYPE := (others => '0');
signal txpmareset_dly_stop :    std_logic := '0';
signal txplllock_sync :         std_logic_vector(2 downto 0) := "000";
signal txpmareset_dly_tc :      std_logic;
signal txpmareset1 :            std_logic := '0';
signal txpmareset2 :            std_logic := '0';
signal tx_m_sync :              std_logic_vector(3 downto 0) := "0000";
signal tx_m_change :            std_logic;
signal sequencer :              std_logic_vector(5 downto 0) := "000100";
signal assert_txpmareset :      std_logic;
signal negate_txpmareset :      std_logic;
signal ld_clksel :              std_logic;
signal dru_rst_b :              std_logic;
signal bshft_din :              std_logic_vector(9 downto 0);
signal bshft_dv :               std_logic_vector(3 downto 0);
signal pll_gtrxreset :          std_logic;
signal drp_gtrxreset :          std_logic;

function pll_rate (
    rng :   std_logic;
    mode :  MODE_TYPE)
    return RATE_TYPE is
    
    variable result : RATE_TYPE;
    begin
        if rng = '0' then
            if mode = MODE_HD then
                result := RATE_DIV_4;
            else
                result := RATE_DIV_2;
            end if;
        else
            if mode = MODE_HD then
                result := RATE_DIV_8;
            else
                result := RATE_DIV_4;
            end if;
        end if;
        return(result);
    end pll_rate;

begin
--------------------------------------------------------------------------------
-- RXRATE and TXRATE logic
--
-- This section of logic generates the RXRATE and TXRATE signal to the GTX to
-- set the PLL dividers properly based on the current SDI mode (SD, HD, or 3G).
--

--
-- Input registers for rxmode & txmode.
--
process(txusrclk)
begin
    if rising_edge(txusrclk) then
        txmode_reg <= txmode;
    end if;
end process;

process(rxusrclk)
begin
    if rising_edge(rxusrclk) then
        rxmode_reg <= rxmode;
    end if;
end process;

--
-- Set the TXRATE and RXRATE output ports based on the SDI mode.
--
process(txusrclk)
begin
    if rising_edge(txusrclk) then
        txrate <= pll_rate(txpllrange, txmode_reg);
    end if;
end process;

process(rxusrclk)
begin
    if rising_edge(rxusrclk) then
        rxrate <= pll_rate(rxpllrange, rxmode_reg);
    end if;
end process;

--------------------------------------------------------------------------------
-- Generate the txslew signal to control the slew rate of the external SDI cable
-- driver.
--
process(txusrclk)
begin
    if rising_edge(txusrclk) then
        if txmode_reg = MODE_SD then
            txslew <= '1';
        else
            txslew <= '0';
        end if;
    end if;
end process;

--------------------------------------------------------------------------------
-- RX reset state machine
--
RX_RESET : entity work.x7gtx_reset_control
generic map (
    PLLLOCKDLY  => PLLLOCKDLY)
port map (
    clk         => clk,
    pll_reset   => rxpllreset,
    pll_lock    => rxplllock,
    gtxreset    => pll_gtrxreset);
                   
--------------------------------------------------------------------------------
-- TX reset state machine
--
TX_RESET : entity work.x7gtx_reset_control
generic map (
    PLLLOCKDLY  => PLLLOCKDLY)
port map (
    clk         => clk,
    pll_reset   => txpllreset,
    pll_lock    => txplllock,
    gtxreset    => gttxreset);

--------------------------------------------------------------------------------
-- RX bit rate detection
--
RATE0 : entity work.sdi_rate_detect
generic map (
    REFCLK_FREQ => FXDCLK_FREQ)
port map (
    refclk      => clk,
    recvclk     => rxusrclk,
    std         => rxmode(1),
    rate_change => open,
    enable      => rxresetdone,
    drift       => open,
    rate        => rx_m);

--------------------------------------------------------------------------------
-- 11X oversampling data recovery unit for SD-SDI
--
dru_rst_b <= not dru_rst;

NIDRU : dru
port map (
    DT_IN       => data_in,
    CENTER_F    => "0000111010001101011111110100101111011",
    G1          => "00110",
    G1_P        => "10000",
    G2          => "00111",
    CLK         => rxusrclk,
    RST         => dru_rst_b,
    RST_FREQ    => '1',
    VER         => open,
    EN          => '1',
    INTEG       => open,
    DIRECT      => open,
    CTRL        => open,
    PH_OUT      => open,
    RECCLK      => recclk_txdata,
    SAMV        => samv,
    SAM         => sam);

bshft_din <= ("00000000" & sam(1 downto 0));
bshft_dv  <= ("00" & samv(1 downto 0));

DRUBSHIFT : entity work.dru_bshift10to10
port map (
    CLK         => rxusrclk,
    RST         => dru_rst_b,
    DIN         => bshft_din,
    DV          => bshft_dv,
    DV10        => dru_drdy,
    DOUT10      => dru_dout);

process(rxusrclk)
begin
    if rising_edge(rxusrclk) then
        if dru_drdy = '1' then
            sd_data <= dru_dout;
        end if;
    end if;
end process;

sd_data_strobe <= dru_drdy;

--------------------------------------------------------------------------------
-- This code asserts TXPMARESET for one clock cycle a long delay after CPLLLOCK
-- is asserted. The delay is 2^(TXPMARESETDELY_MSB+1) * (period of clk).
--
txpmareset_dly_tc <= '1' when txpmareset_dly = txpmareset_dly_tc_value else '0';

process(clk)
begin
    if rising_edge(clk) then
        txplllock_sync <= (txplllock_sync(1 downto 0) & txplllock);
    end if;
end process;

process(clk)
begin
    if rising_edge(clk) then
        if txplllock_sync(2) = '0' then
            txpmareset_dly <= (others => '0');
        elsif txpmareset_dly_stop = '0' then
            txpmareset_dly <= txpmareset_dly + 1;
        end if;
    end if;
end process;

process(clk)
begin
    if rising_edge(clk) then
        if txplllock_sync(2) = '0' then
            txpmareset_dly_stop <= '0';
        elsif txpmareset_dly_tc = '1' then
            txpmareset_dly_stop <= '1';
        end if;
    end if;
end process;

process(clk)
begin
    if rising_edge(clk) then
        txpmareset1 <= txpmareset_dly_tc;
    end if;
end process;

--------------------------------------------------------------------------------
-- This logic handles dynamic changes to TXSYSCLKSEL to switch the GTX TX clock
-- source between the QPLL and the CPLL. TXPMARESET must be asserted during the
-- time that TXSYSCLKSEL changes.
--

--
-- Synchronize the tx_m input to clk and detect when it changes. A change on
-- tx_m signals that the TX clock has been switched between the QPLL and the CPLL.
--
process(clk)
begin
    if rising_edge(clk) then
        tx_m_sync <= (tx_m_sync(2 downto 0) & tx_m);
    end if;
end process;

tx_m_change <= tx_m_sync(3) xor tx_m_sync(2);

--
-- When a tx_m_change occurs, assert TXPMARESET, then change TXSYSCLKSEL, then
-- negate TXPMARESET.
--
process(clk)
begin
    if rising_edge(clk) then
        sequencer <= (sequencer(4 downto 0) & tx_m_change);
    end if;
end process;

assert_txpmareset <= sequencer(0);
negate_txpmareset <= sequencer(5);
ld_clksel <= sequencer(2);

process(clk)
begin
    if rising_edge(clk) then
        if assert_txpmareset = '1' then
            txpmareset2 <= '1';
        elsif negate_txpmareset = '1' then
            txpmareset2 <= '0';
        end if;
    end if;
end process;

--
-- The TXSYSCLKSEL register
--
process(clk)
begin
    if rising_edge(clk) then
        if ld_clksel = '1' then
            if tx_m_sync(2) = '1' then
                txsysclksel <= txsysclksel_m_1;
            else
                txsysclksel <= txsysclksel_m_0;
            end if;
        end if;
    end if;
end process;

txpmareset <= txpmareset1 or txpmareset2;

--------------------------------------------------------------------------------
-- DRP controller
--
-- The DRP controller changes the RXCDR_CFG attribute dynamically depending on the
-- SDI mode of the RX.
--
SDIDRPCTRL : entity work.x7gtx_sdi_drp_control
port map (
    clk         => drpclk,
    rst         => '0',
    rx_mode     => rxmode,
    drprdy      => drprdy,
    drpaddr     => drpaddr,
    drpdi       => drpdi,
    drpen       => drpen,
    drpwe       => drpwe,
    rxcdrhold   => rxcdrhold,
    gtrxreset   => drp_gtrxreset);

gtrxreset <= drp_gtrxreset or pll_gtrxreset;

end rtl;
