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
--  /   /         Filename: $File: //Groups/video_ip/demos/K7/xapp592_k7_sdi_demos/vhdl/SDI_wrapper/x7gtx_sdi_rxtx_wrapper.vhd $
-- /___/   /\     Timestamp: $DateTime: 2012/08/16 15:56:07 $
-- \   \  /  \
--  \___\/\___\
--
-- Description:
-- This wrapper file includes a SMPTE SDI core and the series-7 GTX control module.
-- It implements a single SDI RX and a single SDI TX when connected to a series-7
-- GTX transceiver. 
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




entity x7gtx_sdi_rxtx_wrapper is
generic (
    FXDCLK_FREQ :               integer := 27000000;                    -- Frequency in Hz of fixed frequency clock connected to clk port
    TXPMARESETDLY_MSB :         integer := 15;                          -- Width of TXPMARESET delay counter
    PLLLOCKDLY :                integer := 4;                           -- Width of the PLL lock delay counter
    TXSYSCLKSEL_M_0 :           std_logic_vector(1 downto 0) := "11";   -- Value to put on TXSYSCLKSEL when tx_m is 0
    TXSYSCLKSEL_M_1 :           std_logic_vector(1 downto 0) := "00");  -- Value to put on TXSYSCLKSEL when tx_m is 1
port (
    clk :                   in  std_logic;                          -- fixed frequency clock for GTX control module

-- RX ports
    rx_rst :                in  std_logic;                          -- sync reset for SDI RX pipeline
    rx_usrclk :             in  std_logic;                          -- rxusrclk input
    rx_frame_en :           in  std_logic;                          -- 1 = enable framer position update
    rx_mode_en :            in  std_logic_vector(2 downto 0);       -- unary enable bits for SDI mode search {3G, SD, HD} 1=enable, 0=disable
    rx_mode :               out std_logic_vector(1 downto 0);       -- SDI mode detected: 00=HD, 01=SD, 10=3G
    rx_mode_HD :            out std_logic;                          -- 1 = HD mode
    rx_mode_SD :            out std_logic;                          -- 1 = SD mode
    rx_mode_3G :            out std_logic;                          -- 1 = 3G mode
    rx_mode_locked :        out std_logic;                          -- auto mode detection locked
    rx_bit_rate :           out std_logic;                          -- 0 = 1000/1000, 1 = 1000/1001
    rx_t_locked :           out std_logic;                          -- transport format detection locked
    rx_t_family :           out std_logic_vector(3 downto 0);       -- transport format family
    rx_t_rate :             out std_logic_vector(3 downto 0);       -- transport frame rate
    rx_t_scan :             out std_logic;                          -- transport scan: 0=interlaced, 1=progressive
    rx_level_b_3G :         out std_logic;                          -- 0 = level A, 1 = level B
    rx_ce_sd :              out std_logic;                          -- clock enable for SD, always 1 for HD & 3G
    rx_nsp :                out std_logic;                          -- framer new start position
    rx_line_a :             out std_logic_vector(10 downto 0);      -- line number for HD & 3G (link A for level B)
    rx_a_vpid :             out std_logic_vector(31 downto 0);      -- payload ID packet data stream 1 for 3G or HD-SDI
    rx_a_vpid_valid :       out std_logic;                          -- 1 = rx_a_vpid is valid
    rx_b_vpid :             out std_logic_vector(31 downto 0);      -- payload ID packet data from data stream 2
    rx_b_vpid_valid :       out std_logic;                          -- 1 = rx_a_vpid is valid
    rx_crc_err_a :          out std_logic;                          -- CRC error for HD & 3G
    rx_ds1a :               out std_logic_vector(9 downto 0);       -- data stream 1A: SD=Y/C, HD=Y, 3GA=ds1, 3GB=Y link A
    rx_ds2a :               out std_logic_vector(9 downto 0);       -- data stream 2A: HD=C, 3GA=ds2, 3GB=C link A
    rx_eav :                out std_logic;                          -- 1 during XYZ word of EAV
    rx_sav :                out std_logic;                          -- 1 during XYZ word of SAV
    rx_trs :                out std_logic;                          -- 1 during all 4 words of EAV and SAV
    rx_line_b :             out std_logic_vector(10 downto 0);      -- line number of 3G level B link B
    rx_dout_rdy_3G :        out std_logic;                          -- 3G data ready: 1 for level A, asserted every other clock for level B
    rx_crc_err_b :          out std_logic;                          -- CRC error for link B (level B only)
    rx_ds1b :               out std_logic_vector(9 downto 0);       -- data stream 1B: 3G level B only = Y link B
    rx_ds2b :               out std_logic_vector(9 downto 0);       -- data stream 2B: 3G level B only = C link B
    rx_edh_errcnt_en :      in std_logic_vector(15 downto 0);       -- enables various errors to increment rx_edh_errcnt
    rx_edh_clr_errcnt :     in  std_logic;                          -- clears rx_edh_errcnt
    rx_edh_ap :             out std_logic;                          -- 1 = AP CRC error detected previous field
    rx_edh_ff :             out std_logic;                          -- 1 = FF CRC error detected previous field
    rx_edh_anc :            out std_logic;                          -- 1 = ANC checksum error detected
    rx_edh_ap_flags :       out std_logic_vector(4 downto 0);       -- EDH AP flags received in last EDH packet
    rx_edh_ff_flags :       out std_logic_vector(4 downto 0);       -- EDH FF flags received in last EDH packet
    rx_edh_anc_flags :      out std_logic_vector(4 downto 0);       -- EDH ANC flags received in last EDH packet
    rx_edh_packet_flags :   out std_logic_vector(3 downto 0);       -- EDH packet error condition flags
    rx_edh_errcnt :         out std_logic_vector(15 downto 0);      -- EDH error counter
    rx_pllrange :           in  std_logic;                          -- PLL operating range: 0 for CPLL or QPLL range 1, 1 for QPLL range 2

-- TX ports
    tx_rst :                in  std_logic;                          -- sync reset for SDI TX pipeline
    tx_usrclk :             in  std_logic;                          -- clock input
    tx_ce :                 in  std_logic_vector(2 downto 0);       -- clock enable -- 3 identical copies
    tx_din_rdy :            in  std_logic;                          -- input data ready for level B, must be 1 for all other modes
    tx_mode :               in  std_logic_vector(1 downto 0);       -- SDI mode select: 00 = HD, 01 = SD, 10 = 3G
    tx_level_b_3G :         in  std_logic;                          -- 0 = level A, 1 = level B
    tx_m :                  in  std_logic;                          -- 0 = select 148.5 MHz refclk, 1 = select 148.35 MHz refclk
    tx_insert_crc :         in  std_logic;                          -- 1 = insert CRC for HD and 3G
    tx_insert_ln :          in  std_logic;                          -- 1 = insert LN for HD and 3G
    tx_insert_edh :         in  std_logic;                          -- 1 = generate & insert EDH for SD
    tx_insert_vpid :        in  std_logic;                          -- 1 = enable ST352 PID packet insert
    tx_overwrite_vpid :     in  std_logic;                          -- 1 = overwrite existing ST352 packets
    tx_video_a_y_in :       in  std_logic_vector(9 downto 0);       -- Data stream Y link A input: SD Y/C, HD & 3GA Y in, 3GB A Y in
    tx_video_a_c_in :       in  std_logic_vector(9 downto 0);       -- Data stream C link A input: HD & 3GA C in, 3GB A C in
    tx_video_b_y_in :       in  std_logic_vector(9 downto 0);       -- 3G level B only: Data stream Y link B input
    tx_video_b_c_in :       in  std_logic_vector(9 downto 0);       -- 3G level B only: Data stream C link B input
    tx_line_a :             in  std_logic_vector(10 downto 0);      -- current line number for link A
    tx_line_b :             in  std_logic_vector(10 downto 0);      -- current line number for link B
    tx_vpid_byte1 :         in  std_logic_vector(7 downto 0);       -- ST352 user data word 1
    tx_vpid_byte2 :         in  std_logic_vector(7 downto 0);       -- ST352 user data word 2
    tx_vpid_byte3 :         in  std_logic_vector(7 downto 0);       -- ST352 user data word 3
    tx_vpid_byte4a :        in  std_logic_vector(7 downto 0);       -- ST352 user data word 4 for link A
    tx_vpid_byte4b :        in  std_logic_vector(7 downto 0);       -- ST352 user data word 4 for link B
    tx_vpid_line_f1 :       in  std_logic_vector(10 downto 0);      -- insert ST352 packet on this line in field 1
    tx_vpid_line_f2 :       in  std_logic_vector(10 downto 0);      -- insert ST352 packet on this line in field 2
    tx_vpid_line_f2_en :    in  std_logic;                          -- enable ST352 packet insertion in field 2
    tx_ds1a_out :           out std_logic_vector(9 downto 0);       -- data stream 1, link A out
    tx_ds2a_out :           out std_logic_vector(9 downto 0);       -- data stream 2, link A out
    tx_ds1b_out :           out std_logic_vector(9 downto 0);       -- data stream 1, link B out
    tx_ds2b_out :           out std_logic_vector(9 downto 0);       -- data stream 2, link B out
    tx_use_dsin :           in  std_logic;                          -- 0=use the internal data streams, 1=use the tx_dsxx_in data streams
    tx_ds1a_in :            in  std_logic_vector(9 downto 0);       -- data stream 1 link A in: SD Y/C, HD Y, 3G Y, dual-link A Y
    tx_ds2a_in :            in  std_logic_vector(9 downto 0);       -- data stream 2 link A in: HD C, 3G C, dual-link A C
    tx_ds1b_in :            in  std_logic_vector(9 downto 0);       -- data stream 1 link B in: dual-link B Y
    tx_ds2b_in :            in  std_logic_vector(9 downto 0);       -- data stream 2 link B in: dual-link B C
    tx_ce_align_err :       out std_logic;                          -- 1 if ce 5/6/5/6 cadence is broken
    tx_slew :               out std_logic;                          -- slew rate control signal for SDI cable driver
    tx_pllrange :           in  std_logic;                          -- 0 for CPLL or QPLL range 1, 1 for QPLL range 2

-- RX GTX transceiver ports -- connect these to the GTX associated with the SDI RX
    gtx_rxdata :            in  std_logic_vector(19 downto 0);      -- connect to RXDATA port of GTX
    gtx_rxpllreset :        in  std_logic;                          -- connect to signal driving {Q|C}PLLRESET
    gtx_rxplllock :         in  std_logic;                          -- connect to {Q|C}PLLLOCK output of GTX
    gtx_rxresetdone :       in  std_logic;                          -- connect to the RXRESETDONE port of the GTX
    gtx_gtrxreset :         out std_logic;                          -- connect to GTRXRESET port of GTX
    gtx_rxuserrdy :         out std_logic;                          -- connect to GTXRXUSERRDY port of GTX
    gtx_rxrate :            out std_logic_vector(2 downto 0);       -- connect to RXRATE port of GTX
    gtx_rxcdrhold :         out std_logic;                          -- connect to RXCDRHOLD port of GTX
    gtx_drpclk :            in  std_logic;                          -- connect to same clock drivig the DRPCLK port of GTX
    gtx_drprdy :            in  std_logic;                          -- connect to DRPRDY port of GTX
    gtx_drpaddr :           out std_logic_vector(8 downto 0);       -- connect to DRPADDR port of GTX
    gtx_drpdi :             out std_logic_vector(15 downto 0);      -- connect to DRPDI port of GTX
    gtx_drpen :             out std_logic;                          -- connect to DRPEN port of GTX
    gtx_drpwe :             out std_logic;                          -- connect to DRPWE port of GTX

-- TX GTX transceiver ports -- connect tehse to the GTX associated with the SDI TX
    gtx_txdata :            out std_logic_vector(19 downto 0);      -- connect to TXDATA port of GTX
    gtx_txpllreset :        in  std_logic;                          -- connect to signal driving {Q|C}PLLRESET
    gtx_txplllock :         in  std_logic;                          -- connect to {Q|C}PLLLOCK output of GTX
    gtx_gttxreset :         out std_logic;                          -- connect to GTTXRESET input of GTX
    gtx_txuserrdy :         out std_logic;                          -- connect to GTXTXUSERRDY port of GTX
    gtx_txpmareset :        out std_logic;                          -- connect to TXPMARESET input of GTX
    gtx_txrate :            out std_logic_vector(2 downto 0);       -- connect to TXRATE input of GTX
    gtx_txsysclksel :       out std_logic_vector(1 downto 0));      -- connect to TXSYSCLKSEL port of GTX when doing dynamic clock source switching
end x7gtx_sdi_rxtx_wrapper;

architecture rtl of x7gtx_sdi_rxtx_wrapper is

--------------------------------------------------------------------------------
-- Signal definitions

signal rx_sd_rxdata :       std_logic_vector(9 downto 0);
signal rx_sd_data_strobe :  std_logic;
signal rx_m :               std_logic;
signal rx_userrdy_gen :     std_logic_vector(4 downto 0) := (others => '1');
signal tx_userrdy_gen :     std_logic_vector(4 downto 0) := (others => '1');
signal rx_mode_int :        std_logic_vector(1 downto 0);
signal gttxreset :          std_logic;
signal gtrxreset :          std_logic;

COMPONENT smpte_sdi
  PORT (
    rx_rst : IN STD_LOGIC;
    rx_usrclk : IN STD_LOGIC;
    rx_data_in : IN STD_LOGIC_VECTOR(19 DOWNTO 0);
    rx_sd_data_in : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
    rx_sd_data_strobe : IN STD_LOGIC;
    rx_frame_en : IN STD_LOGIC;
    rx_mode_en : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    rx_mode : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    rx_mode_hd : OUT STD_LOGIC;
    rx_mode_sd : OUT STD_LOGIC;
    rx_mode_3g : OUT STD_LOGIC;
    rx_mode_detect_en : IN STD_LOGIC;
    rx_mode_locked : OUT STD_LOGIC;
    rx_forced_mode : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    rx_bit_rate : IN STD_LOGIC;
    rx_t_locked : OUT STD_LOGIC;
    rx_t_family : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    rx_t_rate : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    rx_t_scan : OUT STD_LOGIC;
    rx_level_b_3g : OUT STD_LOGIC;
    rx_ce_sd : OUT STD_LOGIC;
    rx_nsp : OUT STD_LOGIC;
    rx_line_a : OUT STD_LOGIC_VECTOR(10 DOWNTO 0);
    rx_a_vpid : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    rx_a_vpid_valid : OUT STD_LOGIC;
    rx_b_vpid : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    rx_b_vpid_valid : OUT STD_LOGIC;
    rx_crc_err_a : OUT STD_LOGIC;
    rx_ds1a : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
    rx_ds2a : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
    rx_eav : OUT STD_LOGIC;
    rx_sav : OUT STD_LOGIC;
    rx_trs : OUT STD_LOGIC;
    rx_line_b : OUT STD_LOGIC_VECTOR(10 DOWNTO 0);
    rx_dout_rdy_3g : OUT STD_LOGIC;
    rx_crc_err_b : OUT STD_LOGIC;
    rx_ds1b : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
    rx_ds2b : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
    rx_edh_errcnt_en : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    rx_edh_clr_errcnt : IN STD_LOGIC;
    rx_edh_ap : OUT STD_LOGIC;
    rx_edh_ff : OUT STD_LOGIC;
    rx_edh_anc : OUT STD_LOGIC;
    rx_edh_ap_flags : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    rx_edh_ff_flags : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    rx_edh_anc_flags : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    rx_edh_packet_flags : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    rx_edh_errcnt : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    tx_rst : IN STD_LOGIC;
    tx_usrclk : IN STD_LOGIC;
    tx_ce : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    tx_din_rdy : IN STD_LOGIC;
    tx_mode : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    tx_level_b_3g : IN STD_LOGIC;
    tx_insert_crc : IN STD_LOGIC;
    tx_insert_ln : IN STD_LOGIC;
    tx_insert_edh : IN STD_LOGIC;
    tx_insert_vpid : IN STD_LOGIC;
    tx_overwrite_vpid : IN STD_LOGIC;
    tx_video_a_y_in : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
    tx_video_a_c_in : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
    tx_video_b_y_in : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
    tx_video_b_c_in : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
    tx_line_a : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
    tx_line_b : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
    tx_vpid_byte1 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    tx_vpid_byte2 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    tx_vpid_byte3 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    tx_vpid_byte4a : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    tx_vpid_byte4b : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    tx_vpid_line_f1 : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
    tx_vpid_line_f2 : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
    tx_vpid_line_f2_en : IN STD_LOGIC;
    tx_ds1a_out : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
    tx_ds2a_out : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
    tx_ds1b_out : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
    tx_ds2b_out : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
    tx_use_dsin : IN STD_LOGIC;
    tx_ds1a_in : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
    tx_ds2a_in : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
    tx_ds1b_in : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
    tx_ds2b_in : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
    tx_sd_bitrep_bypass : IN STD_LOGIC;
    tx_txdata : OUT STD_LOGIC_VECTOR(19 DOWNTO 0);
    tx_ce_align_err : OUT STD_LOGIC
  );
END COMPONENT;
--ATTRIBUTE SYN_BLACK_BOX : BOOLEAN;
--ATTRIBUTE SYN_BLACK_BOX OF smpte_sdi : COMPONENT IS TRUE;
--ATTRIBUTE BLACK_BOX_PAD_PIN : STRING;
--ATTRIBUTE BLACK_BOX_PAD_PIN OF smpte_sdi : COMPONENT IS "rx_rst,rx_usrclk,rx_data_in[19:0],rx_sd_data_in[9:0],rx_sd_data_strobe,rx_frame_en,rx_mode_en[2:0],rx_mode[1:0],rx_mode_hd,rx_mode_sd,rx_mode_3g,rx_mode_detect_en,rx_mode_locked,rx_forced_mode[1:0],rx_bit_rate,rx_t_locked,rx_t_family[3:0],rx_t_rate[3:0],rx_t_scan,rx_level_b_3g,rx_ce_sd,rx_nsp,rx_line_a[10:0],rx_a_vpid[31:0],rx_a_vpid_valid,rx_b_vpid[31:0],rx_b_vpid_valid,rx_crc_err_a,rx_ds1a[9:0],rx_ds2a[9:0],rx_eav,rx_sav,rx_trs,rx_line_b[10:0],rx_dout_rdy_3g,rx_crc_err_b,rx_ds1b[9:0],rx_ds2b[9:0],rx_edh_errcnt_en[15:0],rx_edh_clr_errcnt,rx_edh_ap,rx_edh_ff,rx_edh_anc,rx_edh_ap_flags[4:0],rx_edh_ff_flags[4:0],rx_edh_anc_flags[4:0],rx_edh_packet_flags[3:0],rx_edh_errcnt[15:0],tx_rst,tx_usrclk,tx_ce[2:0],tx_din_rdy,tx_mode[1:0],tx_level_b_3g,tx_insert_crc,tx_insert_ln,tx_insert_edh,tx_insert_vpid,tx_overwrite_vpid,tx_video_a_y_in[9:0],tx_video_a_c_in[9:0],tx_video_b_y_in[9:0],tx_video_b_c_in[9:0],tx_line_a[10:0],tx_line_b[10:0],tx_vpid_byte1[7:0],tx_vpid_byte2[7:0],tx_vpid_byte3[7:0],tx_vpid_byte4a[7:0],tx_vpid_byte4b[7:0],tx_vpid_line_f1[10:0],tx_vpid_line_f2[10:0],tx_vpid_line_f2_en,tx_ds1a_out[9:0],tx_ds2a_out[9:0],tx_ds1b_out[9:0],tx_ds2b_out[9:0],tx_use_dsin,tx_ds1a_in[9:0],tx_ds2a_in[9:0],tx_ds1b_in[9:0],tx_ds2b_in[9:0],tx_sd_bitrep_bypass,tx_txdata[19:0],tx_ce_align_err";


begin

--------------------------------------------------------------------------------
-- SMPTE SDI core
--
--SDIRXTX : entity work.smpte_sdi     -- Edit this line to instance the name of the SMPTE SDI core as generated by CORE Generator
SDIRXTX : smpte_sdi     -- Edit this line to instance the name of the SMPTE SDI core as generated by CORE Generator
port map (
    rx_rst              => rx_rst,
    rx_usrclk           => rx_usrclk,
    rx_data_in          => gtx_rxdata,
    rx_sd_data_in       => rx_sd_rxdata,
    rx_sd_data_strobe   => rx_sd_data_strobe,
    rx_frame_en         => rx_frame_en,
    rx_mode_en          => rx_mode_en,
    rx_mode             => rx_mode_int,
    rx_mode_hd          => rx_mode_HD,
    rx_mode_sd          => rx_mode_SD,
    rx_mode_3g          => rx_mode_3g,
    rx_mode_detect_en   => '1',
    rx_mode_locked      => rx_mode_locked,
    rx_forced_mode      => "00",
    rx_bit_rate         => rx_m,
    rx_t_locked         => rx_t_locked,
    rx_t_family         => rx_t_family,
    rx_t_rate           => rx_t_rate,
    rx_t_scan           => rx_t_scan,
    rx_level_b_3G       => rx_level_b_3G,
    rx_ce_sd            => rx_ce_sd,
    rx_nsp              => rx_nsp,
    rx_line_a           => rx_line_a,
    rx_a_vpid           => rx_a_vpid,
    rx_a_vpid_valid     => rx_a_vpid_valid,
    rx_b_vpid           => rx_b_vpid,
    rx_b_vpid_valid     => rx_b_vpid_valid,
    rx_crc_err_a        => rx_crc_err_a,
    rx_ds1a             => rx_ds1a,
    rx_ds2a             => rx_ds2a,
    rx_eav              => rx_eav,
    rx_sav              => rx_sav,
    rx_trs              => rx_trs,
    rx_line_b           => rx_line_b,
    rx_dout_rdy_3G      => rx_dout_rdy_3G,
    rx_crc_err_b        => rx_crc_err_b,
    rx_ds1b             => rx_ds1b,
    rx_ds2b             => rx_ds2b,
    rx_edh_errcnt_en    => rx_edh_errcnt_en,
    rx_edh_clr_errcnt   => rx_edh_clr_errcnt,
    rx_edh_ap           => rx_edh_ap,
    rx_edh_ff           => rx_edh_ff,
    rx_edh_anc          => rx_edh_anc,
    rx_edh_ap_flags     => rx_edh_ap_flags,
    rx_edh_ff_flags     => rx_edh_ff_flags,
    rx_edh_anc_flags    => rx_edh_anc_flags,
    rx_edh_packet_flags => rx_edh_packet_flags,
    rx_edh_errcnt       => rx_edh_errcnt,

    tx_rst              => tx_rst,
    tx_usrclk           => tx_usrclk,
    tx_ce               => tx_ce,
    tx_din_rdy          => tx_din_rdy,
    tx_mode             => tx_mode,
    tx_level_b_3g       => tx_level_b_3G,
    tx_insert_crc       => tx_insert_crc,
    tx_insert_ln        => tx_insert_ln,
    tx_insert_edh       => tx_insert_edh,
    tx_insert_vpid      => tx_insert_vpid,
    tx_overwrite_vpid   => tx_overwrite_vpid,
    tx_video_a_y_in     => tx_video_a_y_in,
    tx_video_a_c_in     => tx_video_a_c_in,
    tx_video_b_y_in     => tx_video_b_y_in,
    tx_video_b_c_in     => tx_video_b_c_in,
    tx_line_a           => tx_line_a,
    tx_line_b           => tx_line_b,
    tx_vpid_byte1       => tx_vpid_byte1,
    tx_vpid_byte2       => tx_vpid_byte2,
    tx_vpid_byte3       => tx_vpid_byte3,
    tx_vpid_byte4a      => tx_vpid_byte4a,
    tx_vpid_byte4b      => tx_vpid_byte4b,
    tx_vpid_line_f1     => tx_vpid_line_f1,
    tx_vpid_line_f2     => tx_vpid_line_f2,
    tx_vpid_line_f2_en  => tx_vpid_line_f2_en,
    tx_ds1a_out         => tx_ds1a_out,
    tx_ds2a_out         => tx_ds2a_out,
    tx_ds1b_out         => tx_ds1b_out,
    tx_ds2b_out         => tx_ds2b_out,
    tx_use_dsin         => tx_use_dsin,
    tx_ds1a_in          => tx_ds1a_in,
    tx_ds2a_in          => tx_ds2a_in,
    tx_ds1b_in          => tx_ds1b_in,
    tx_ds2b_in          => tx_ds2b_in,
    tx_sd_bitrep_bypass => '0',
    tx_txdata           => gtx_txdata,
    tx_ce_align_err     => tx_ce_align_err);

rx_bit_rate <= rx_m;
rx_mode <= rx_mode_int;

--------------------------------------------------------------------------------
-- This module generates the GTTXRESET and GTRXRESET signals to the GTX. It
-- also controls the RXCDRHOLD to place the CDR into lock to reference mode
-- during SD-SDI mode. It also generates the RXRATE and TXRATE signals appropriately
-- based on which SDI mode the RX and TX are in. Finally, it has a RX bit rate
-- detection module that determines which bit rate is being received by the RX.
--
GTX_CTRL : entity work.x7gtx_sdi_control
generic map (
    FXDCLK_FREQ         => FXDCLK_FREQ,
    TXPMARESETDLY_MSB   => TXPMARESETDLY_MSB,
    PLLLOCKDLY          => PLLLOCKDLY)
port map (
    clk                 => clk,
    txusrclk            => tx_usrclk,
    txmode              => tx_mode,
    txpllreset          => gtx_txpllreset,
    txplllock           => gtx_txplllock,
    txpllrange          => tx_pllrange,
    tx_m                => tx_m,
    txsysclksel_m_0     => TXSYSCLKSEL_M_0,
    txsysclksel_m_1     => TXSYSCLKSEL_M_1,
    gttxreset           => gttxreset,
    txpmareset          => gtx_txpmareset,
    txrate              => gtx_txrate,
    txsysclksel         => gtx_txsysclksel,
    txslew              => tx_slew,
    rxusrclk            => rx_usrclk,
    rxmode              => rx_mode_int,
    rxpllreset          => gtx_rxpllreset,
    rxplllock           => gtx_rxplllock,
    rxpllrange          => rx_pllrange,
    rxresetdone         => gtx_rxresetdone,
    gtrxreset           => gtrxreset,
    rxrate              => gtx_rxrate,
    rxcdrhold           => gtx_rxcdrhold,
    rx_m                => rx_m,
    dru_rst             => rx_rst,
    data_in             => gtx_rxdata,
    sd_data             => rx_sd_rxdata,
    sd_data_strobe      => rx_sd_data_strobe,
    recclk_txdata       => open,
    drpclk              => gtx_drpclk,
    drprdy              => gtx_drprdy,
    drpaddr             => gtx_drpaddr,
    drpdi               => gtx_drpdi,
    drpen               => gtx_drpen,
    drpwe               => gtx_drpwe);

gtx_gttxreset <= gttxreset;
gtx_gtrxreset <= gtrxreset;

--------------------------------------------------------------------------------
-- It is a requirement to assert the TXUSERRDY and RXUSERRDY signals at least
-- 5 cycles of their respective USRCLK after their respective GTX reset is negated.
--
process(tx_usrclk)
begin
    if rising_edge(tx_usrclk) then
        if gttxreset = '1' then
            tx_userrdy_gen <= (others => '1');
        else
            tx_userrdy_gen <= (tx_userrdy_gen(3 downto 0) & '0');
        end if;
    end if;
end process;

gtx_txuserrdy <= not tx_userrdy_gen(4);

process(rx_usrclk)
begin
    if rising_edge(rx_usrclk) then
        if gtrxreset = '1' then
            rx_userrdy_gen <= (others => '1');
        else
            rx_userrdy_gen <= (rx_userrdy_gen(3 downto 0) & '0');
        end if;
    end if;
end process;

gtx_rxuserrdy <= not rx_userrdy_gen(4);

end rtl;
