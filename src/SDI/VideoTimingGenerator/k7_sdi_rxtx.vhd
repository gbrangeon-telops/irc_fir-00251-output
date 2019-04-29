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
--  /   /         Filename: $File: //Groups/video_ip/demos/K7/xapp592_k7_sdi_demos/vhdl/kc705_sdi_demo/k7_sdi_rxtx.vhd $
-- /___/   /\     Timestamp: $DateTime: 2012/08/16 15:44:12 $
-- \   \  /  \
--  \___\/\___\
--
-- Description:
-- This module is a wrapper around a set of modules that implement an independent
-- SDI RX and TX. The SDI TX is driven by SD and HD video pattern generators. The
-- TX and pattern generators are controlled by ChipScope. The output of the SDI RX
-- is monitored by ChipScope.
--
-- This module makes it easier to implement multi-channel SDI demos.
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
use work.tel2000.all;

entity k7_sdi_rxtx is
port (
    clk :               in      std_logic;                      -- 74.25 MHz clock

-- TX ports
    tx_usrclk :         in      std_logic;
    tx_gttxreset :      out     std_logic;
    tx_txdata :         out     std_logic_vector(19 downto 0);
    tx_ratedone :       in      std_logic;
    tx_resetdone :      in      std_logic;
    tx_pmareset :       out     std_logic;
    tx_sysclksel :      out     std_logic_vector(1 downto 0);
    tx_rate :           out     std_logic_vector(2 downto 0);
    tx_plllock :        in      std_logic;
    tx_slew :           out     std_logic;
    tx_userrdy :        out     std_logic;
    tx_pllreset :       in      std_logic;
    tx_txen :           out     std_logic;

-- RX ports
    rx_usrclk :         in      std_logic;
    rx_gtrxreset :      out     std_logic;
    rx_resetdone :      in      std_logic;
    rx_rate :           out     std_logic_vector(2 downto 0);
    rx_ratedone :       in      std_logic;
    rx_cdrhold :        out     std_logic;
    rx_rxdata :         in      std_logic_vector(19 downto 0);
    rx_locked :         out     std_logic;
    rx_userrdy :        out     std_logic;
    rx_pllreset :       in      std_logic;
    rx_plllock :        in      std_logic;
    rx_mode :           out     std_logic_vector(1 downto 0);
    rx_level_b :        out     std_logic;
    rx_t_family :       out     std_logic_vector(3 downto 0);
    rx_t_rate :         out     std_logic_vector(3 downto 0);
    rx_t_scan :         out     std_logic;
    rx_m :              out     std_logic;
    drpclk :            in      std_logic;
    drprdy :            in      std_logic;
    drpaddr :           out     std_logic_vector(8 downto 0);
    drpdi :             out     std_logic_vector(15 downto 0);
    drpen :             out     std_logic;
    drpwe :             out     std_logic;

-- ChipScope control ports
    control0 :          inout   std_logic_vector(35 downto 0);
    control1 :          inout   std_logic_vector(35 downto 0);
    control2 :          inout   std_logic_vector(35 downto 0);
    
    v_start_position : in  std_logic_vector(15 downto 0);
    v_stop_position  : in  std_logic_vector(15 downto 0);
    h_start_position : in  std_logic_vector(15 downto 0);
    h_stop_position  : in  std_logic_vector(15 downto 0);
    X_FLIP           : in  std_logic;
    SDI_720pn_1080p	 : in  std_logic;

	axis_video_mosi :    in t_axi4_stream_mosi32;
    axis_video_miso :    out t_axi4_stream_miso
--Explora
--    y_camera_video :    in std_logic_vector (9 downto 0);
--    c_camera_video :    in std_logic_vector (9 downto 0);
--    tlast :             in std_logic;
--    tready :            out std_logic;
--    tuser :             in std_logic;
--   tvalid :            in std_logic
);
end k7_sdi_rxtx;

architecture rtl of k7_sdi_rxtx is

--------------------------------------------------------------------------------
-- Signal definitions

attribute keep : string;
attribute equivalent_register_removal : string;

-- TX signal definitions
signal tx_bitrate_sel :     std_logic;
signal tx_mode :            std_logic_vector(1 downto 0);
signal tx_mode_x :          std_logic_vector(1 downto 0);
signal tx_fmt_sel :         std_logic_vector(2 downto 0);
signal tx_pat :             std_logic_vector(1 downto 0);
signal tx_M :               std_logic;
signal tx_hd_y :            std_logic_vector(9 downto 0);
signal tx_hd_c :            std_logic_vector(9 downto 0);
signal tx_pal_patgen :      std_ulogic_vector(9 downto 0);
signal tx_ntsc_patgen :     std_ulogic_vector(9 downto 0);
signal tx_sd :              std_logic_vector(9 downto 0);
signal tx_line :            std_logic_vector(10 downto 0);
signal tx_fmt :             std_logic_vector(2 downto 0);
signal tx_c :               std_logic_vector(9 downto 0);
signal tx_y :               std_logic_vector(9 downto 0);
signal tx_vpid_byte2 :      std_logic_vector(7 downto 0);
signal tx_insert_vpid :     std_logic;
signal tx_din_rdy :         std_logic;
signal tx_fabric_reset :    std_logic := '0';
signal tx_ce_mux :          std_logic;

signal tx_ce :              std_logic_vector(2 downto 0) := (others => '1');    -- 3 copies of TX clock enable
attribute keep of tx_ce : signal is "TRUE";
attribute equivalent_register_removal of tx_ce : signal is "no";

signal tx_sd_ce :           std_logic := '0';                                   -- This is the SD-SDI TX clock enable
attribute keep of tx_sd_ce : signal is "TRUE";
attribute equivalent_register_removal of tx_sd_ce : signal is "no";

signal tx_gen_sd_ce :       std_logic_vector(10 downto 0) := "00000100001";     -- Generates 5/6/5/6 cadence SD-SDI TX clock enable
attribute keep of tx_gen_sd_ce : signal is "TRUE";
attribute equivalent_register_removal of tx_gen_sd_ce : signal is "no";

-- RX signal definitions
signal rx_clr_errs :        std_logic;
signal rx_mode_locked :     std_logic;
signal rx_ce :              std_logic;
signal rx_mode_int :        std_logic_vector(1 downto 0);
signal rx_level_b_int :     std_logic;
signal rx_dout_rdy_3G :     std_logic;
signal rx_ln_a :            std_logic_vector(10 downto 0);
signal rx_a_vpid :          std_logic_vector(31 downto 0);
signal rx_a_vpid_valid :    std_logic;
signal rx_crc_err_a :       std_logic;
signal rx_crc_err_b :       std_logic;
signal rx_hd_crc_err :      std_logic := '0';
signal rx_crc_err_ab :      std_logic;
signal rx_crc_err_edge :    std_logic_vector(1 downto 0) := "00";
signal rx_crc_err_count :   unsigned(15 downto 0) := (others => '0');
signal rx_err_count :       std_logic_vector(15 downto 0);
signal rx_err_count_tc :    std_logic;
signal rx_sd_clr_errs :     std_logic := '0';
signal rx_edh_errcnt :      std_logic_vector(15 downto 0);
signal rx_ds1a :            std_logic_vector(9 downto 0);
signal rx_ds2a :            std_logic_vector(9 downto 0);
signal rx_ds1b :            std_logic_vector(9 downto 0);
signal rx_ds2b :            std_logic_vector(9 downto 0);
signal rx_eav :             std_logic;
signal rx_sav :             std_logic;
signal rx_crc_err :         std_logic;
signal rx_manual_reset :    std_logic;
signal rx_rate_int :        std_logic_vector(2 downto 0);
signal rx_cdrhold_int :     std_logic;
signal rx_m_int :           std_logic;
signal rx_t_family_int :    std_logic_vector(3 downto 0);
signal rx_t_rate_int :      std_logic_vector(3 downto 0);
signal rx_t_scan_int :      std_logic;

-- ChipScope Signals
signal tx_vio_sync_out :    std_logic_vector(6 downto 0);
signal tx_vio_async_out :   std_logic_vector(2 downto 0);
signal rx_vio_sync_out :    std_logic_vector(1 downto 0);
signal rx_vio_async_in :    std_logic_vector(68 downto 0);
signal rx_vio_async_out :   std_logic_vector(1 downto 0);
signal rx_trig0 :           std_logic_vector(54 downto 0);

-- Axi stream signal
signal y_camera_video :    std_logic_vector (9 downto 0);
signal c_camera_video :    std_logic_vector (9 downto 0);
signal tlast :             std_logic;
signal tready :            std_logic;
signal tuser :             std_logic;
signal tvalid :            std_logic;

begin

y_camera_video <= axis_video_mosi.TDATA(9 downto 0);
c_camera_video <= axis_video_mosi.TDATA(19 downto 10);
tlast <= axis_video_mosi.TLAST;
axis_video_miso.TREADY <= tready;
tuser <= '0';
tvalid <= axis_video_mosi.TVALID;

--------------------------------------------------------------------------------
-- TX section
--

--
-- Because of glitches on TXOUTCLK during changes to TXRATE and TXSYSCLKSEL, the
-- SDI data path is reset when TXRATEDONE is low (taking care of TXSYSCLKSEL
-- changes) and when TXRATEDONE is pulsed high (taking care of TXRATE changes).
--
process(tx_usrclk)
begin
    if rising_edge(tx_usrclk) then
        tx_fabric_reset <= tx_ratedone or not tx_resetdone;
    end if;
end process;


--
-- TX clock enable generator
--
-- sd_ce runs at 27 MHz and is asserted at a 5/6/5/6 cadence
-- tx_ce is always 1 for 3G-SDI and HD-SDI and equal to sd_ce for SD-SDI
--
-- Create 3 identical but separate copies of the clock enable for loading purposes.
--
process(tx_usrclk)
begin
    if rising_edge(tx_usrclk) then
        if tx_fabric_reset = '1' then
            tx_gen_sd_ce <= "00000100001";
        else
            tx_gen_sd_ce <= (tx_gen_sd_ce(9 downto 0) & tx_gen_sd_ce(10));
        end if;
    end if;
end process;

process(tx_usrclk)
begin
    if rising_edge(tx_usrclk) then
        tx_sd_ce <= tx_gen_sd_ce(10);
    end if;
end process;

tx_ce_mux <= tx_gen_sd_ce(10) when tx_mode = "01" else '1';

process(tx_usrclk)
begin
    if rising_edge(tx_usrclk) then
        tx_ce <= (others => tx_ce_mux);
    end if;
end process;

--------------------------------------------------------------------------------
-- Some logic to insure that the TX bit rate and video formats chosen by the
-- user are never illegal.
--
-- In 3G-SDI mode, only video formats 4 (1080p60) and 5 (1080p50) are legal.
--
tx_fmt <= "100" when tx_mode = "10" and tx_fmt_sel(2 downto 1) /= "10" else tx_fmt_sel;

--
-- In SD-SDI mode, tx_M must be 0. In HD and 3G modes, if the video format is
-- 0 (720p50), 3 (1080i50), or 5 (1080p25), then tx_M must be 0.
--
tx_M <= '0' when tx_mode = "01" else
        '0' when tx_fmt = "000" or tx_fmt = "011" or tx_fmt = "101" else
        tx_bitrate_sel;
        
--------------------------------------------------------------------------------
-- Video pattern generators
--
VIDGEN : entity work.multigenHD
port map (
    clk         => tx_usrclk,
    rst         => tx_fabric_reset,
    ce          => '1',
    std         => tx_fmt,
    pattern     => tx_pat,
    user_opt    => "00",
    y           => tx_hd_y,
    c           => tx_hd_c,
    h_blank     => open,
    v_blank     => open,
    field       => open,
    trs         => open,
    xyz         => open,
    line_num    => tx_line,
    
    v_start_position_iv16 => v_start_position,
    v_stop_position_iv16  => v_stop_position,
    h_start_position_iv16 => h_start_position,
    h_stop_position_iv16  => h_stop_position,
    y_camera_video        => y_camera_video,
    c_camera_video        => c_camera_video,
    tlast                => tlast,
    tready               => tready,
    tuser                => tuser,
    tvalid               => tvalid,
    x_flip               => x_flip,	
	SDI_720pn_1080p      => SDI_720pn_1080p
    );

--
-- SD video pattern generators
--
--NTSC : entity work.vidgen_ntsc
--port map (
--    clk_a       => tx_usrclk,
--    rst_a       => tx_fabric_reset,
--    ce_a        => tx_sd_ce,
--    pattern_a   => tx_pat(0),
--    q_a         => tx_ntsc_patgen,
--    h_sync_a    => open,
--    v_sync_a    => open,
--    field_a     => open,
--    clk_b       => '0',
--    rst_b       => '0',
--    ce_b        => '0',
--    pattern_b   => '0',
--    q_b         => open,
--    h_sync_b    => open,
--    v_sync_b    => open,
--    field_b     => open);

--PAL : entity work.vidgen_pal
--port map (
--    clk_a       => tx_usrclk,
--    rst_a       => tx_fabric_reset,
--    ce_a        => tx_sd_ce,
--    pattern_a   => tx_pat(0),
--    q_a         => tx_pal_patgen,
--    h_sync_a    => open,
--    v_sync_a    => open,
--    field_a     => open,
--    clk_b       => '0',
--    rst_b       => '0',
--    ce_b        => '0',
--    pattern_b   => '0',
--    q_b         => open,
--    h_sync_b    => open,
--    v_sync_b    => open,
--    field_b     => open);

--
-- Video pattern generator output muxes
--
tx_sd <= std_logic_vector(tx_pal_patgen) when tx_fmt(0) = '1' else std_logic_vector(tx_ntsc_patgen);
tx_c  <= tx_hd_c;
tx_y  <= tx_sd when tx_mode = "01" else tx_hd_y;

tx_din_rdy <= '1';

--
-- Generate the SMPTE 352 VPID byte 2 for 3G-SDI based on the tx_format_reg and
-- bit rate.
--
process(tx_fmt, tx_M)
begin
    if tx_fmt(0) = '1' then
        tx_vpid_byte2 <= X"C9";     -- 50 Hz
    elsif tx_M = '1' then
        tx_vpid_byte2 <= X"CA";     -- 60 Hz
    else
        tx_vpid_byte2 <= X"CB";     -- 59.94 Hz
    end if;
end process;

tx_insert_vpid <= '1' when tx_mode = "10" else '0';

--------------------------------------------------------------------------------
-- SDI core wrapper including GTX control module
--
SDI : entity work.x7gtx_sdi_rxtx_wrapper
generic map (
    FXDCLK_FREQ         => 74250000)
port map (
    clk                 => clk,
    rx_rst              => '0',
    rx_usrclk           => rx_usrclk,
    rx_frame_en         => '1',
    rx_mode_en          => "111",
    rx_mode             => rx_mode_int,
    rx_mode_HD          => open,
    rx_mode_SD          => open,
    rx_mode_3G          => open,
    rx_mode_locked      => rx_mode_locked,
    rx_bit_rate         => rx_m_int,
    rx_t_locked         => rx_locked,
    rx_t_family         => rx_t_family_int,
    rx_t_rate           => rx_t_rate_int,
    rx_t_scan           => rx_t_scan_int,
    rx_level_b_3G       => rx_level_b_int,
    rx_ce_sd            => rx_ce,
    rx_nsp              => open,
    rx_line_a           => rx_ln_a,
    rx_a_vpid           => rx_a_vpid,
    rx_a_vpid_valid     => rx_a_vpid_valid,
    rx_b_vpid           => open,
    rx_b_vpid_valid     => open,
    rx_crc_err_a        => rx_crc_err_a,
    rx_ds1a             => rx_ds1a,
    rx_ds2a             => rx_ds2a,
    rx_eav              => rx_eav,
    rx_sav              => rx_sav,
    rx_trs              => open,
    rx_line_b           => open,
    rx_dout_rdy_3G      => rx_dout_rdy_3G,
    rx_crc_err_b        => rx_crc_err_b,
    rx_ds1b             => rx_ds1b,
    rx_ds2b             => rx_ds2b,
    rx_edh_errcnt_en    => "0000010000100000",
    rx_edh_clr_errcnt   => rx_sd_clr_errs,
    rx_edh_ap           => open,
    rx_edh_ff           => open,
    rx_edh_anc          => open,
    rx_edh_ap_flags     => open,
    rx_edh_ff_flags     => open,
    rx_edh_anc_flags    => open,
    rx_edh_packet_flags => open,
    rx_edh_errcnt       => rx_edh_errcnt,
    rx_pllrange         => '0',

    tx_rst              => tx_fabric_reset,
    tx_usrclk           => tx_usrclk,
    tx_ce               => tx_ce,
    tx_din_rdy          => tx_din_rdy,
    tx_mode             => tx_mode,
    tx_m                => tx_M,
    tx_level_b_3G       => '0',
    tx_insert_crc       => '1',
    tx_insert_ln        => '1',
    tx_insert_edh       => '1',
    tx_insert_vpid      => tx_insert_vpid,
    tx_overwrite_vpid   => '1',
    tx_video_a_y_in     => tx_y,
    tx_video_a_c_in     => tx_c,
    tx_video_b_y_in     => "0000000000",
    tx_video_b_c_in     => "0000000000",
    tx_line_a           => tx_line,
    tx_line_b           => tx_line,
    tx_vpid_byte1       => X"89",
    tx_vpid_byte2       => tx_vpid_byte2,
    tx_vpid_byte3       => X"00",
    tx_vpid_byte4a      => X"09",
    tx_vpid_byte4b      => X"09",
    tx_vpid_line_f1     => "00000001010",   -- line 10
    tx_vpid_line_f2     => "00000000000",
    tx_vpid_line_f2_en  => '0',
    tx_ds1a_out         => open,
    tx_ds2a_out         => open,
    tx_ds1b_out         => open,
    tx_ds2b_out         => open,
    tx_use_dsin         => '0',
    tx_ds1a_in          => "0000000000",
    tx_ds2a_in          => "0000000000",
    tx_ds1b_in          => "0000000000",
    tx_ds2b_in          => "0000000000",
    tx_ce_align_err     => open,
    tx_slew             => tx_slew,
    tx_pllrange         => '0',

    gtx_rxdata          => rx_rxdata,
    gtx_rxpllreset      => rx_pllreset,
    gtx_rxplllock       => rx_plllock,
    gtx_rxresetdone     => rx_resetdone,
    gtx_gtrxreset       => rx_gtrxreset,
    gtx_rxuserrdy       => rx_userrdy,
    gtx_rxrate          => rx_rate_int,
    gtx_rxcdrhold       => rx_cdrhold_int,
    gtx_drpclk          => drpclk,
    gtx_drprdy          => drprdy,
    gtx_drpaddr         => drpaddr,
    gtx_drpdi           => drpdi,
    gtx_drpen           => drpen,
    gtx_drpwe           => drpwe,

    gtx_txdata          => tx_txdata,
    gtx_txpllreset      => tx_pllreset,
    gtx_txplllock       => tx_plllock,
    gtx_gttxreset       => tx_gttxreset,
    gtx_txuserrdy       => tx_userrdy,
    gtx_txpmareset      => tx_pmareset,
    gtx_txrate          => tx_rate,
    gtx_txsysclksel     => tx_sysclksel);

rx_mode <= rx_mode_int;
rx_level_b <= rx_level_b_int;
rx_rate <= rx_rate_int;
rx_cdrhold <= rx_cdrhold_int;
rx_m <= rx_m_int;
rx_t_family <= rx_t_family_int;
rx_t_scan <= rx_t_scan_int;
rx_t_rate <= rx_t_rate_int;

--------------------------------------------------------------------------------
-- CRC eror capture and counting logic
--
rx_crc_err_ab <= '1' when rx_crc_err_a = '1' or (rx_mode_int = "10" and rx_level_b_int = '1' and rx_crc_err_b = '1') else '0';

process(rx_usrclk)
begin
    if rising_edge(rx_usrclk) then
        if rx_clr_errs = '1' then
            rx_hd_crc_err <= '0';
        elsif rx_crc_err_ab = '1' then
            rx_hd_crc_err <= '1';
        end if;
    end if;
end process;

process(rx_usrclk)
begin
    if rising_edge(rx_usrclk) then
        rx_crc_err_edge <= (rx_crc_err_edge(0) & rx_crc_err_ab);
    end if;
end process;

process(rx_usrclk)
begin
    if rising_edge(rx_usrclk) then
        if rx_clr_errs = '1' or rx_mode_locked = '0' then
            rx_crc_err_count <= (others => '0');
        elsif rx_crc_err_edge = "01" and rx_err_count_tc = '0' then
            rx_crc_err_count <= rx_crc_err_count + 1;
        end if;
    end if;
end process;

rx_err_count <= rx_edh_errcnt when rx_mode_int = "01" else std_logic_vector(rx_crc_err_count);
rx_err_count_tc <= '1' when rx_crc_err_count = X"FFFF" else '0';

process(rx_usrclk)
begin
    if rising_edge(rx_usrclk) then
        if rx_clr_errs = '1' then
            rx_sd_clr_errs <= '1';
        elsif rx_ce = '1' then
            rx_sd_clr_errs <= '0';
        end if;
    end if;
end process;

rx_crc_err <= rx_hd_crc_err when rx_mode_int /= "01" else
              '0' when rx_edh_errcnt = X"0000" else
              '1';

--------------------------------------------------------------------------------
-- ChipScope modules

--tx_vio_inst : entity work.tx_vio
--port map (
--    CONTROL     => control0,
--    CLK         => tx_usrclk,
--    SYNC_OUT    => tx_vio_sync_out,
--    ASYNC_OUT   => tx_vio_async_out);


--Explora Output mode selection
tx_bitrate_sel <= '1';  -- Bit Rate
tx_txen <=  '1';        --Explora not used
tx_mode_x <= "00";      --tx_vio_sync_out[6:5];
--tx_mode <= "10";      --3G-SDI
tx_mode <= "00";        --HD-SDI
--tx_mode <= "01";      --SD-SDI
mode_select : process
begin
    if  SDI_720pn_1080p = '0' then
        tx_fmt_sel <= "111";   --720p 60Hz,
    else
         tx_fmt_sel <= "100";  --1080p 30Hz (3G-SDI 1080p 60Hz) 
    end if;
end process;
--tx_fmt_sel <= "111" when SDI_720pn_1080p = '0' else tx_fmt_sel <= "100";        --Select 720p or 1080p
               
--tx_fmt_sel <= "111";    --720p 60Hz, 
--tx_fmt_sel <= "100";    --1080p 30Hz (3G-SDI 1080p 60Hz)
tx_pat <= "00";         --Pattern 0 SMPTE 219 Color Bars


--rx_vio_inst : entity work.rx_vio
--port map (
--    CONTROL     => control1,
--    CLK         => rx_usrclk,
--    SYNC_OUT    => rx_vio_sync_out,
--    ASYNC_IN    => rx_vio_async_in,
--    ASYNC_OUT   => rx_vio_async_out);

rx_clr_errs <= rx_vio_sync_out(0);
rx_manual_reset <= rx_vio_async_out(0);

rx_vio_async_in <= (rx_rate_int & rx_cdrhold_int & rx_t_scan_int & rx_t_rate_int & rx_err_count & '0' &
                    rx_crc_err & rx_a_vpid_valid & rx_a_vpid(7 downto 0) & rx_a_vpid(15 downto 8) &
                    rx_a_vpid(23 downto 16) & rx_a_vpid(31 downto 24) & rx_m_int & rx_level_b_int &
                    rx_t_family_int & rx_mode_locked & rx_mode_int);

--rx_ila_inst : entity work.ila
--port map (
--    CONTROL     => control2,
--    CLK         => rx_usrclk,
--    TRIG0       => rx_trig0);

rx_trig0 <= (rx_sav & rx_eav & rx_ds2b & rx_ds1b & rx_ds2a & rx_ds1a & rx_ln_a & rx_crc_err_ab & rx_ce);

end rtl;
