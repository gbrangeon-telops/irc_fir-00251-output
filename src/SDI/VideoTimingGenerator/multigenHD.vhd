-- (c) Copyright 2005 - 2012 Xilinx, Inc. All rights reserved.
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
--  /   /         Filename: $File: //Groups/video_ip/demos/K7/xapp592_k7_sdi_demos/vhdl/kc705_sdi_demo/multigenHD.vhd $
-- /___/   /\     Timestamp: $DateTime: 2012/08/16 15:44:12 $
-- \   \  /  \
--  \___\/\___\
--
-- Description:
-- The multigenHD module is fully documented in application note XAPP682.
--
-- This colorbar generator will generate color bars for the 13 video standards
-- currently supported by the SMPTE 292M (HD-SDI) video standard. The color bars 
-- comply with SMPTE RP-219 standard color bars, as shown below. This module can
-- also generate the SMPTE RP-198 HD-SDI checkfield test pattern and 75% color
-- bars.
-- 
-- |<-------------------------------------- a ------------------------------------->|
-- |                                                                                |
-- |         |<----------------------------(3/4)a-------------------------->|        |
-- |         |                                                              |        |
-- |   d    |    c        c        c        c        c        c        c    |   d    |
-- +--------+--------+--------+--------+--------+--------+--------+--------+--------+ - - - - -
-- |        |        |        |        |        |        |        |        |        |   ^     ^
-- |        |        |        |        |        |        |        |        |        |   |     |
-- |        |        |        |        |        |        |        |        |        |   |     |
-- |        |        |        |        |        |        |        |        |        |   |     |
-- |        |        |        |        |        |        |        |        |        | (7/12)b |
-- |  40%   |  75%   | YELLOW |  CYAN  |  GREEN | MAGENTA|   RED  |  BLUE  |  40%   |   |     |
-- |  GRAY  | WHITE  |        |        |        |        |        |        |  GRAY  |   |     |
-- |   *1   |        |        |        |        |        |        |        |   *1   |   |     b
-- |        |        |        |        |        |        |        |        |        |   |     |
-- |        |        |        |        |        |        |        |        |        |   |     |
-- |        |        |        |        |        |        |        |        |        |   v     |
-- +--------+--------+--------+--------+--------+--------+--------+--------+--------+ - - -   |
-- |100%CYAN|  *2    |                   75% WHITE                         |100%BLUE| (1/12)b |
-- +--------+--------+-----------------------------------------------------+--------+ - - -   |
-- |100%YELO|  *3    |                    Y-RAMP                           |100% RED| (1/12)b |
-- +--------+--------+---+-----------------+-------+--+--+--+--+--+--------+--------+ - - -   |
-- |        |            |                 |       |  |  |  |  |  |        |        |         |
-- |  15%   |     0%     |       100%      |  0%   |BL|BL|BL|BL|BL|    0%  |  15%   | (3/12)b |
-- |  GRAY  |    BLACK   |      WHITE      | BLACK |K-|K |K+|K |K+|  BLACK |  GRAY  |         |
-- |   *4   |            |                 |       |2%|0%|2%|0%|4%|        |   *4   |         v
-- +--------+------------+-----------------+-------+--+--+--+--+--+--------+--------+ - - - - -
--     d        (3/2)c            2c        (5/6)c  c  c  c  c  c      c       d
--                                               -  -  -  -  -
--                                               3  3  3  3  3
-- 
-- *1: The block marked *1 is 40% Gray for a default value. This value may 
-- optionally be set to any other value in accordance with the operational 
-- requirements of the user.    
--     
-- *2: In the block marked *2, the user may select 75% White, 100% White, +I, or
-- -I.
-- 
-- *3: In the block marked *3, the user may select either 0% Black, or +Q. When 
-- the -I value is selected for the block marked *2, then the +Q signal must be
-- selected for the *3 block.
-- 
-- *4: The block marked *4 is 15% Gray for a default value. This value may
-- optionally be set to any other value in accordance with the operational
-- requirements of the user.
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
use ieee.std_logic_arith.all;
use ieee.numeric_std.all;

use work.hdsdi_pkg.all;
use work.multigenHD_pkg.all;

library unisim; 
use unisim.vcomponents.all; 

entity multigenHD is
    port (
        clk:        in  std_logic;                      -- video clock
        rst:        in  std_logic;                      -- async resest
        ce:         in  std_logic;                      -- clock enable
        std:        in  std_logic_vector(2 downto 0);   -- video standard select
        pattern:    in  std_logic_vector(1 downto 0);   -- selects pattern type (colorbars or checkfield)
        user_opt:   in  std_logic_vector(1 downto 0);   -- selects colorbars options
        y:          out hd_video_type;                  -- Y channel output
        c:          out hd_video_type;                  -- C channel output
        h_blank:    out std_logic;                      -- horizontal blanking indicator
        v_blank:    out std_logic;                      -- vertical blanking indicator
        field:      out std_logic;                      -- field indicator
        trs:        out std_logic;                      -- asserted during 4 words of TRS
        xyz:        out std_logic;                      -- asserted during XYZ of TRS
        line_num:   out hd_vpos_type;                    -- current vertical line number
        
--Explora
        v_start_position_iv16 : in  std_logic_vector (15 downto 0);
        v_stop_position_iv16  : in  std_logic_vector (15 downto 0);
        h_start_position_iv16 : in  std_logic_vector (15 downto 0);
        h_stop_position_iv16  : in  std_logic_vector (15 downto 0);
        y_camera_video        :in std_logic_vector (9 downto 0);
        c_camera_video        :in std_logic_vector (9 downto 0);
        tlast                :in std_logic;
        tready               :out std_logic;
        tuser                :in std_logic;
        tvalid               :in std_logic;
        X_FLIP               : in STD_LOGIC;
        SDI_720pn_1080p	     : in  std_logic
    );
end multigenHD;

architecture synth of multigenHD is

-------------------------------------------------------------------------------
-- Signal definitions
--

signal std_q :              std_logic_vector(2 downto 0);           -- register for std inputs
signal std_change :         std_logic;                              -- difference between std and std_q
signal h_region :           hrgn_type;                              -- current horizontal region
signal v_inc :              std_logic;                              -- increments the vertical counter
signal h_counter_lsb :      std_logic;                              -- LSB of h_counter
signal trs_int :            std_logic;                              -- horz section TRS output
signal xyz_int :            std_logic;                              -- horz section XYZ output
signal h_int :              std_logic;                              -- horz section H output
signal v_counter :          hd_vpos_type;                           -- vertical counter
signal v_band :             vband_type;                             -- current vertical band
signal f_int :              std_logic;                              -- vert section F output
signal v_int :              std_logic;                              -- vert section V output
signal first_line :         std_logic;                              -- vert section output indicating first active 
signal y_ramp_inc_sel :     std_logic;                              -- vert section output that selects Y-Ramp increment value
signal y_int :              hd_video_type;                          -- Y output of color ROM
signal c_int :              hd_video_type;                          -- C output of color ROM
signal trs_reg :            std_logic_vector(1 downto 0);           -- TRS signal delay reg
signal xyz_reg :            std_logic_vector(1 downto 0);           -- XYZ signal delay reg
signal h_reg :              std_logic_vector(1 downto 0);           -- H delay register
signal v_reg :              std_logic_vector(1 downto 0);           -- V delay register
signal f_reg :              std_logic_vector(1 downto 0);           -- F delay register
signal c_reg :              hd_video_type;
signal y_reg :              hd_video_type;
signal delay_rst :          std_logic_vector(15 downto 0);          -- reset delay register
signal reset :              std_logic;                              -- internal reset signal
signal GND :                std_logic := '0';
signal VCC :                std_logic := '1';
signal GND4 :               std_logic_vector(3 downto 0) := "0000";
signal GND32 :              std_logic_vector(31 downto 0) := (others => '0');

--Explora
signal h_counter :              std_logic_vector(11 downto 0);           -- Horizontal counter
--signal y_temp :             std_logic_vector(9 downto 0);          -- 
--signal c_temp :             std_logic_vector(9 downto 0);          -- 


component multigenHD_vert
    port (
        clk:            in  std_logic;                      -- video clock
        rst:            in  std_logic;                      -- async reset
        ce:             in  std_logic;                      -- clock enable
        std:            in  std_logic_vector(2 downto 0);   -- video standard select
        pattern:        in  std_logic_vector(1 downto 0);   -- selects pattern type (colorbars or checkfield)
        h_counter_lsb:  in  std_logic;                      -- LSB of horizontal counter
        v_inc:          in  std_logic;                      -- causes the vertical counter to increment
        v_band:         out vband_type;                     -- vertical band code output
        v   :           out std_logic;                      -- vertical blanking indicator
        f   :           out std_logic;                      -- field indicator
        first_line:     out std_logic;                      -- asserted during first active line
        y_ramp_inc_sel: out std_logic;                      -- controls Y-Ramp increment selection
        line_num:       out hd_vpos_type                    -- current vertical line number
    );
end component;

component multigenHD_horz
    port (
        clk:            in  std_logic;                      -- video clock
        rst:            in  std_logic;                      -- async reset
        ce:             in  std_logic;                      -- clock enable
        std:            in  std_logic_vector(2 downto 0);   -- video standard select
        pattern:        in  std_logic_vector(1 downto 0);   -- selects pattern type (colorbars or checkfield)
        user_opt:       in  std_logic_vector(1 downto 0);   -- selects colorbars options
        first_line:     in  std_logic;                      -- asserted during first active video line
        f   :           in  std_logic;                      -- odd/even field indicator
        v_inc:          out std_logic;                      -- increment vertical counter
        trs:            out std_logic;                      -- asserted during 4 words of TRS
        xyz:            out std_logic;                      -- asserted during XYZ word of TRS
        h:              out std_logic;                      -- horizontal blanking interval indicator
        h_region:       out hrgn_type;                      -- horizontal region code
        h_counter_lsb:  out std_logic;                       -- LSB of horizontal counter
        h_counter_ov12: out std_logic_vector(11 downto 0)                       -- LSB of horizontal counter
    );
end component;

component multigenHD_output
    port (
        clk:            in  std_logic;                      -- video clock
        rst:            in  std_logic;                      -- async reset
        ce:             in  std_logic;                      -- clock enable
        h_region:       in  hrgn_type;                      -- horizontal region
        v_band:         in  vband_type;                     -- vertical band
        h_counter_lsb:  in  std_logic;                      -- LSB of horizontal counter
        y_ramp_inc_sel: in  std_logic;                      -- controls the Y-Ramp increment MUX
        y:              out hd_video_type;                  -- luma output channel
        c:              out hd_video_type;                  -- C channel output
        h_counter_iv12: in  std_logic_vector(11 downto 0);  -- Horizontal counter
        v_counter_iv11: in  std_logic_vector(10 downto 0);  -- Vertical counter
        v_start_position_iv16 :in std_logic_vector (15 downto 0);
        v_stop_position_iv16  :in std_logic_vector (15 downto 0);
        h_start_position_iv16 :in std_logic_vector (15 downto 0);
        h_stop_position_iv16  :in std_logic_vector (15 downto 0);
        y_camera_video        :in std_logic_vector (9 downto 0);
        c_camera_video        :in std_logic_vector (9 downto 0);
        tlast                :in std_logic;
        tready               :out std_logic;
        tuser                :in std_logic;
        tvalid               :in std_logic;
        X_FLIP               : in STD_LOGIC;
        SDI_720pn_1080p	     : in  std_logic
    );
end component;

--COMPONENT ila_0
--  PORT (
--    clk : IN STD_LOGIC;
--    probe0 : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
--    probe1 : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
--    probe2 : IN STD_LOGIC_VECTOR(11 DOWNTO 0)
--  );
--END COMPONENT;

begin

    --
    -- Video format input and register
    --
    process(clk, rst)
    begin
        if rst = '1' then
            std_q <= (others => '0');
        elsif clk'event and clk = '1' then
            if ce = '1' then
                std_q <= std;
            end if;
        end if;
    end process;

    std_change <= '0' when std = std_q else '1';

    --
    -- Vertical section
    --
    VERT : multigenHD_vert
        port map (
            clk             => clk,
            rst             => reset,
            ce              => ce,
            std             => std_q,
            pattern         => pattern,
            h_counter_lsb   => h_counter_lsb,
            v_inc           => v_inc,
            v_band          => v_band,
            v               => v_int,
            f               => f_int,
            first_line      => first_line,
            y_ramp_inc_sel  => y_ramp_inc_sel,
            line_num        => v_counter);

    -- 
    -- Horizontal section
    --
    HORZ : multigenHD_horz
        port map (
            clk             => clk,
            rst             => reset,
            ce              => ce,
            std             => std_q,
            pattern         => pattern,
            user_opt        => user_opt,
            first_line      => first_line,
            f               => f_int,
            v_inc           => v_inc,
            trs             => trs_int,
            xyz             => xyz_int,
            h               => h_int,
            h_region        => h_region,
            h_counter_lsb   => h_counter_lsb,
            h_counter_ov12  => h_counter
            );

    --
    -- Output section
    --
    OUTGEN : multigenHD_output
        port map (
            clk             => clk,
            rst             => reset,
            ce              => ce,
            h_region        => h_region,
            v_band          => v_band,
            h_counter_lsb   => h_counter_lsb,
            y_ramp_inc_sel  => y_ramp_inc_sel,
            y               => y_int,
            c               => c_int,
            h_counter_iv12  => h_counter,
            v_counter_iv11  => v_counter,
            v_start_position_iv16 => v_start_position_iv16,
            v_stop_position_iv16  => v_stop_position_iv16,
            h_start_position_iv16 => h_start_position_iv16,
            h_stop_position_iv16  => h_stop_position_iv16,
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
    -- Output registers
    --
    process(clk, reset)
    begin
        if reset = '1' then
            y_reg    <= (others => '0');
            c_reg    <= (others => '0');
            f_reg    <= (others => '0');
            v_reg    <= (others => '0');
            h_reg    <= (others => '0');
            trs_reg  <= (others => '0');
            xyz_reg  <= (others => '0');
            line_num <= (others => '0');
        elsif clk'event and clk = '1' then
            if ce = '1' then
                y_reg    <= y_int;
                c_reg    <= c_int;
                f_reg    <= (f_reg(0) & f_int);
                v_reg    <= (v_reg(0) & v_int);
                h_reg    <= (h_reg(0) & h_int);
                trs_reg  <= (trs_reg(0) & trs_int);
                xyz_reg  <= (xyz_reg(0) & xyz_int);
                line_num <= v_counter;
            end if;
        end if;
    end process;

    field   <= f_reg(1);
    v_blank <= v_reg(1);
    h_blank <= h_reg(1);
    trs     <= trs_reg(1);
    xyz     <= xyz_reg(1);
    c       <= c_reg;
    y       <= y_reg;
    
--      ILAVIDEO : ila_0
--      PORT MAP (
--        clk => clk,
--        probe0 => c_reg,
--        probe1 => y_reg,
--        probe2 => h_counter
--      );


    --
    -- Reset generator
    --
    -- This circuit keeps the module rest for about 64 clock cycles after the rst
    -- input to the module goes away. This insures that the module starts up in an
    -- orderly fashion. Also, the reset signal is asserted whenever the std inputs
    -- change, insuring that the video pattern generator begins at a good state
    -- when the video format changes.
    --
    process(clk, rst)
    begin
        if rst = '1' then
            delay_rst <= (others => '0');
        elsif clk'event and clk = '1' then
            delay_rst <= (delay_rst(14 downto 0) & '1');
        end if;
    end process;

    reset <= rst or not delay_rst(15) or std_change;
                    
end synth;