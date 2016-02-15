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
--  /   /         Filename: $File: //Groups/video_ip/demos/K7/xapp592_k7_sdi_demos/vhdl/kc705_sdi_demo/multigenHD_output.vhd $
-- /___/   /\     Timestamp: $DateTime: 2012/08/16 15:44:12 $
-- \   \  /  \
--  \___\/\___\
--
-- Description:
-- This module contains the output section of the HD video pattern generator. A
-- block RAM is used to convert the vertical and horizontal coordinates of the
-- video pattern into Y and C output values.
-- 
-- A Y-Ramp generator is used to create the Y-Ramp pattern for RP 219.   
--
-- This version of the file uses the RAMB18 primitive found in Virtex-5.   
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

entity multigenHD_output is
    port (
        clk:            in  std_logic;                                  -- video clock
        rst:            in  std_logic;                                  -- async reset
        ce:             in  std_logic;                                  -- clock enable
        h_region:       in  std_logic_vector(HRGN_WIDTH - 1 downto 0);  -- horizontal region
        v_band:         in  std_logic_vector(VBAND_WIDTH - 1 downto 0); -- vertical region
        h_counter_lsb:  in  std_logic;                                  -- LSB of horizontal counter
        y_ramp_inc_sel: in  std_logic;                                  -- controls the Y-Ramp increment MUX
        y:              out hd_video_type;                              -- luma output channel
        c:              out hd_video_type;                              -- C channel output
        
--Explora
        h_counter_iv12 :in std_logic_vector (11 downto 0);
        v_counter_iv11 :in std_logic_vector (10 downto 0);
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
        X_FLIP               :in STD_LOGIC;
        SDI_720pn_1080p	     : in  std_logic
    );
end multigenHD_output;

architecture synth of multigenHD_output is
attribute KEEP : string;

-------------------------------------------------------------------------------
-- Signal definitions
--

signal y_ramp_reload :      std_logic;                              -- reloads the y_ramp reg
signal y_ramp_en :          std_logic;                              -- enables output of the y_ramp reg
signal y_ramp :             yramp_type;                             -- Y ramp register
signal y_ramp_round :       yramp_type;                             -- Y ramp rounder
signal y_ramp_out :         hd_video_type;                          -- rounded output of Y ramp reg
signal y_ramp_inc :         yramp_type;                             -- output of Y ramp increment MUX
signal crom_addr :          std_logic_vector(8 downto 0);           -- CROM address
signal crom_out :           std_logic_vector(31 downto 0);          -- CROM output
signal y_rom :              hd_video_type;                          -- Y output of color ROM
signal c_rom :              hd_video_type;                          -- C output of color ROM
signal y_ramp_mux :         hd_video_type;                          -- output of Y ramp mux
signal GND :                std_logic := '0';
signal VCC :                std_logic := '1';
signal GND4 :               std_logic_vector(3 downto 0) := "0000";
signal GND32 :              std_logic_vector(31 downto 0) := (others => '0');

--Explora
signal colorRomCpt          :    std_logic_vector(31 downto 0) := x"00000000";
signal testMode             :    std_logic_vector(7 downto 0);
signal tready_search_start  :    std_logic := '0';
signal tready_sdi           :    std_logic := '0';
signal sdi_sync             :    std_logic := '0';
signal sdi_ready            :    std_logic := '0';
signal start_flip_tx        :    std_logic := '0';
signal sdi_sync_timer       :    std_logic_vector(31 downto 0);
attribute KEEP of tready_sdi: signal is "true";
attribute KEEP of sdi_ready: signal is "true";
attribute KEEP of sdi_sync: signal is "true";
attribute KEEP of tready_search_start: signal is "true";

--Limites 720p SMPTE 296M
--signal V_SDIFRAME_START: std_logic_vector(10 downto 0)   := "00000011010";          -- Vertical video start area = 26
--signal V_SDIFRAME_STOP : std_logic_vector(10 downto 0)   := "01011101001";		   -- Vertical video stop area = 745
--signal H_SDIFRAME_START: std_logic_vector(11 downto 0)   := "000000000001";          -- horizontal video start area = 1
--signal H_SDIFRAME_STOP : std_logic_vector(11 downto 0)   := "010100000000";		   -- horizontal video stop area = 1280

--Limites 1080p SMPTE 274M
signal V_SDIFRAME_START: std_logic_vector(10 downto 0)   := "00000101010";          -- Vertical video start area = 42
signal V_SDIFRAME_STOP : std_logic_vector(10 downto 0)   := "10001100001";		   -- Vertical video stop area = 1121
signal H_SDIFRAME_START: std_logic_vector(11 downto 0)   := "000000000001";          -- horizontal video start area = 1
signal H_SDIFRAME_STOP : std_logic_vector(11 downto 0)   := "011110000000";		   -- horizontal video stop area = 1920

--DPRAM CTRL SIGNALS
signal dpram_addra              :    std_logic_vector(10 downto 0);
signal dpram_addrb              :    std_logic_vector(10 downto 0);
signal dpram_wren_a             :    std_logic_vector(0 downto 0);
signal dpram_dren_b             :    std_logic;
signal dpram_data_b             :    std_logic_vector(19 downto 0);
signal dpram_up_down            :    std_logic;
signal dpram_init               :    std_logic;
signal x_flip_reg               :    std_logic_vector(2 downto 0);
--signal X_FLIP                   : std_logic   := '1';          -- Vertical video start area
signal dina_data				:	std_logic_vector(19 downto 0);

 --Limites 
--signal V_SDIFRAME_START: std_logic_vector(10 downto 0);        -- Vertical video start area = 26
--signal V_SDIFRAME_STOP : std_logic_vector(10 downto 0);		   -- Vertical video stop area = 745
--signal H_SDIFRAME_START: std_logic_vector(11 downto 0);        -- horizontal video start area = 1
--signal H_SDIFRAME_STOP : std_logic_vector(11 downto 0);		   -- horizontal video stop area = 1280   

COMPONENT blk_mem_gen_1
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    addra : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
    dina : IN STD_LOGIC_VECTOR(19 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(19 DOWNTO 0);
    clkb : IN STD_LOGIC;
    enb : IN STD_LOGIC;
    web : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    addrb : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
    dinb : IN STD_LOGIC_VECTOR(19 DOWNTO 0);
    doutb : OUT STD_LOGIC_VECTOR(19 DOWNTO 0)
  );
END COMPONENT;

begin
   mode_select :  process 
    begin    
        if SDI_720pn_1080p = '0' then
            --Limites 720p SMPTE 296M
             V_SDIFRAME_START   <= "00000011010";          -- Vertical video start area = 26
             V_SDIFRAME_STOP    <= "01011101001";		   -- Vertical video stop area = 745
             H_SDIFRAME_START   <= "000000000001";          -- horizontal video start area = 1
             H_SDIFRAME_STOP    <= "010100000000";		   -- horizontal video stop area = 1280
        else    
            --Limites 1080p SMPTE 274M
             V_SDIFRAME_START   <= "00000101010";          -- Vertical video start area = 42
             V_SDIFRAME_STOP    <= "10001100001";		   -- Vertical video stop area = 1121
             H_SDIFRAME_START   <= "000000000001";          -- horizontal video start area = 1
             H_SDIFRAME_STOP    <= "011110000000";		   -- horizontal video stop area = 1920 
        end if;
        
   end process;

    ------------------------------------------------------------------------------
    -- Color ROM
    --
    crom_addr <= (v_band & h_region & h_counter_lsb);

    CROM : RAMB18SDP 
    -- Simulation initialization code CROM
    -- Created by multigenHD_romgen.v
    -- Video format mapping:
    --   0 =  SMPTE 296M - 720p   50Hz                   
    --   1 =  SMPTE 274M - 1080sF 24Hz & 23.98Hz         
    --   2 =  SMPTE 274M - 1080i  30Hz & 29.97 Hz        
    --   3 =  SMPTE 274M - 1080i  25Hz                   
    --   4 =  SMPTE 274M - 1080p  30Hz & 29.97Hz         
    --   5 =  SMPTE 274M - 1080p  25Hz                   
    --   6 =  SMPTE 274M - 1080p  24Hz & 23.98Hz         
    --   7 =  SMPTE 296M - 720p   60Hz & 59.94Hz         
    generic map (
    INIT       => X"000800100",
    SRVAL      => X"000800100",
    INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
    INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
    INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
    INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
    INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
    INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
    INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
    INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
    INIT_00 => X"0080010000800100008001000080010000800100008001000080010000800100",
    INIT_01 => X"0080010000800100008001000080010000800100008001000080010000800100",
    INIT_02 => X"0080010000800100008001000080010000800100008001000080010000800100",
    INIT_03 => X"0080010000800100008001000080010000800100008001000080010000800100",
    INIT_04 => X"0000000000FFCFFC008001000080010000B60B60000000000000000000FFCFFC",
    INIT_05 => X"00EC0EC0000000000080010000800100008001000080010000AB0AB000000000",
    INIT_06 => X"00F10F1000000000008001000080010000800100008001000080010000800100",
    INIT_07 => X"0080010000800100008001000080010000800100008001000080010000800100",
    INIT_08 => X"0087CA88002C0A880087CA88002C0A8800800B4400800B440080067800800678",
    INIT_09 => X"00CC43EC00C0C3EC0033C858003F48580033C858003F4858002C091400934914",
    INIT_0A => X"00D40330006CC33000D40330006CC33000CC43EC00C0C3EC00CC43EC00C0C3EC",
    INIT_0B => X"00800678008006780080067800800678007841BC00D401BC00D40330006CC330",
    INIT_0C => X"0000000000FFCFFC0080010000800100009D09D0000000000000000000FFCFFC",
    INIT_0D => X"00C70C7000000000008001000080010000800100008001000080080000000000",
    INIT_0E => X"00DA0DA00000000000800B4400800B4400800B4400800B4400800B4400800B44",
    INIT_0F => X"0080010000800100008001000080010000800100008001000080010000800100",
    INIT_10 => X"00800B4400800B4400800B4400800B4400800B4400800B4400100BC80099CBC8",
    INIT_11 => X"00800B4400800B4400800B4400800B4400800B4400800B4400800B4400800B44",
    INIT_12 => X"00800B4400800B4400800B4400800B4400800B4400800B4400800B4400800B44",
    INIT_13 => X"0075C1FC00F001FC0075C1FC00F001FC00800B4400800B4400800B4400800B44",
    INIT_14 => X"0000000000FFCFFC0080010000800100009D09D0000000000000000000FFCFFC",
    INIT_15 => X"00C70C7000000000008001000080010000800100008001000080080000000000",
    INIT_16 => X"00DA0DA0000000000062C3D0009903D0009D43D4006703D400800EB000800EB0",
    INIT_17 => X"0080010000800100008001000080010000800100008001000080010000800100",
    INIT_18 => X"00800EB200800EB200800EB200800EB20080010100800101008A4DB400100DB4",
    INIT_19 => X"00800EB200800EB200800EB200800EB200800EB200800EB200800EB200800EB2",
    INIT_1A => X"00800EB200800EB200800EB200800EB200800EB200800EB200800EB200800EB2",
    INIT_1B => X"00F003E8006643E800F003E8006643E800800EB200800EB200800EB200800EB2",
    INIT_1C => X"0000000000FFCFFC0080010000800100009D09D0000000000000000000FFCFFC",
    INIT_1D => X"00C70C7000000000008001000080010000800100008001000080080000000000",
    INIT_1E => X"00DA0DA0000000000097823500AE423500800101008001010080010100800101",
    INIT_1F => X"0080010000800100008001000080010000800100008001000080010000800100",
    INIT_20 => X"00800EB000800EB0008001000080010000800100008001000080030C0080030C",
    INIT_21 => X"0080010000800100008001000080010000800EB000800EB000800EB000800EB0",
    INIT_22 => X"008001000080010000800148008001480080010000800100008000B8008000B8",
    INIT_23 => X"0080030C0080030C0080030C0080030C00800100008001000080018C0080018C",
    INIT_24 => X"0000000000FFCFFC0080010000800100009D09D0000000000000000000FFCFFC",
    INIT_25 => X"00C70C7000000000008001000080010000800100008001000080080000000000",
    INIT_26 => X"00DA0DA000000000008001000080010000800100008001000080010000800100",
    INIT_27 => X"0080010000800100008001000080010000800100008001000080010000800100",
    INIT_28 => X"0080010000800100008001000080010000800100008001000080010000800100",
    INIT_29 => X"0080010000800100008001000080010000800100008001000080010000800100",
    INIT_2A => X"0080010000800100008001000080010000800100008001000080010000800100",
    INIT_2B => X"00C0066000C00660008001000080010000800100008001000080010000800100",
    INIT_2C => X"0000000000FFCFFC0080010000800100009D09D0000000000000000000FFCFFC",
    INIT_2D => X"00C70C7000000000008001000080010000800100008001000080080000000000",
    INIT_2E => X"00DA0DA000000000008001000080010000800100008001000080010000800100",
    INIT_2F => X"008001000080010000C0064000C0064000C0066000C0066000C0066000C00660",
    INIT_30 => X"0080010000800100008001000080010000800100008001000080010000800100",
    INIT_31 => X"0080010000800100008001000080010000800100008001000080010000800100",
    INIT_32 => X"0080010000800100008001000080010000800100008001000080010000800100",
    INIT_33 => X"0080044000800440008001000080010000800100008001000080010000800100",
    INIT_34 => X"0000000000FFCFFC0080010000800100009D09D0000000000000000000FFCFFC",
    INIT_35 => X"00C70C7000000000008001000080010000800100008001000080080000000000",
    INIT_36 => X"00DA0DA000000000008001000080010000800100008001000080010000800100",
    INIT_37 => X"0080010000800100008004400080044000800440008004400080044000800440",
    INIT_38 => X"0080010000800100008001000080010000800100008001000080010000800100",
    INIT_39 => X"0080010000800100008001000080010000800100008001000080010000800100",
    INIT_3A => X"0080010000800100008001000080010000800100008001000080010000800100",
    INIT_3B => X"0080010000800100008001000080010000800100008001000080010000800100",
    INIT_3C => X"0080010000800100008001000080010000800100008001000080010000800100",
    INIT_3D => X"0080010000800100008001000080010000800100008001000080010000800100",
    INIT_3E => X"0080010000800100008001000080010000800100008001000080010000800100",
    INIT_3F => X"0080010000800100008001000080010000800100008001000080010000800100"
    )
    port map (
            DO      => crom_out,
            DOP     => open,
            RDADDR  => crom_addr,
            RDCLK   => clk,
            DI      => GND32,
            DIP     => GND4,
            RDEN    => '1',
            REGCE   => '1',
            SSR     => rst,
            WRADDR  => "000000000",
            WRCLK   => '0',
            WREN    => '0',
            WE      => "0000"
        );

    y_ramp_reload <= crom_out(0);
    y_ramp_en     <= crom_out(1);
    y_rom         <= crom_out(y_rom'high + 2 downto 2);
    c_rom         <= crom_out(c_rom'high + 14 downto 14);

    --
    -- Y Ramp increment selection
    --
    -- This MUX selects the Y Ramp increment value. Different increment values are
    -- used for formats with 1920 active samples per line vs. 1280 active samples
    -- per line. This is because the Y Ramp pattern contains less samples if there
    -- are only 1280 active samples per line, so the increment value must be
    -- bigger in order to reach the maximum Y value by the end of the Y Ramp
    -- pattern.
    --
    -- The control for this MUX comes from an output of the VROM. The VROM decodes
    -- the std input code and controls this MUX appropriately.
    --
    y_ramp_inc <= Y_INC_1280 when y_ramp_inc_sel = '1' else Y_INC_1920;

    --
    -- Y Ramp register & adder
    --
    process(clk, rst)
    begin
        if rst = '1' then
            y_ramp <= YRAMP_INIT;
        elsif clk'event and clk = '1' then
            if ce = '1' then
                if y_ramp_reload = '1' then
                    y_ramp <= YRAMP_INIT;
                else
                    y_ramp <= y_ramp + y_ramp_inc;
                end if;
            end if;
        end if;
    end process;

    --
    -- Y Ramp rounder
    --
    y_ramp_round <= y_ramp + YRAMP_RND;
    y_ramp_out <= y_ramp_round(y_ramp_round'high downto y_ramp_round'high - y_ramp_out'high);

    --
    -- Y output mux
    --
    y_ramp_mux <= y_ramp_out when y_ramp_en = '1' else y_rom;
    
    
--Explora
dina_data <= c_camera_video & y_camera_video;

MYXFLIPDPRAM : blk_mem_gen_1
  PORT MAP (
    clka => clk,
    ena => x_flip_reg(2),--'1', --Save power when not used
    wea => dpram_wren_a,
    addra => dpram_addra,
    --dina => "000000000000" & c_camera_video & y_camera_video,
    dina => dina_data,
    douta => open,
    
    clkb => clk,
    enb => x_flip_reg(2),--'1', --Save power when not used
    web => "0",
    addrb => dpram_addrb,
    --dinb => "000000000000" & x"00000",
    dinb => x"00000",
    doutb => dpram_data_b
  );
      
        tready <= dpram_wren_a(0) or tready_search_start when (x_flip_reg(2) = '1') else
            		(tready_sdi or tready_search_start);
      
      process(clk)
      begin
      if(rising_edge(clk)) then 
               x_flip_reg <= x_flip_reg(1 downto 0) & X_FLIP;              
                --SEARCH FOR TLAST
               if (sdi_ready = '0') then       --search tlast, start sdi transmit when found
                    if tlast = '1' and tvalid = '1' and sdi_sync = '0' then
                        tready_search_start <= '0';
                        sdi_sync <= '1';
                    elsif sdi_sync = '1' then
                        tready_search_start <= '0';
                        sdi_sync <= sdi_sync;
                    else
                        tready_search_start <= '1';
                        sdi_sync <= sdi_sync;
                    end if;
                    
                    if sdi_sync = '1' then                        
                        if sdi_sync_timer > 2000 then                           --Wait for input FIFO to fill
                            if tvalid = '0' then -- no data
                                sdi_sync_timer <= x"00000000";
                                sdi_ready <= '0';
--                            elsif (v_counter_iv11 >= V_SDIFRAME_START and v_counter_iv11 <= V_SDIFRAME_STOP and h_counter_iv12 >= H_SDIFRAME_START and h_counter_iv12 <= H_SDIFRAME_STOP) then -- in frame
                            elsif v_counter_iv11 >= V_SDIFRAME_START and v_counter_iv11 <= V_SDIFRAME_STOP then -- in frame
                                sdi_sync_timer <= sdi_sync_timer;
                                sdi_ready <= '0';
                            elsif v_counter_iv11 >= V_SDIFRAME_STOP + 1 then -- Sync at the end of a picture, XFLIP start at first line -1
                                sdi_sync_timer <= sdi_sync_timer;
                                sdi_ready <= '1';
							else
                                sdi_sync_timer <= sdi_sync_timer;
                                sdi_ready <= sdi_ready;
                            end if;
                        else
                            sdi_sync_timer <= sdi_sync_timer + 1;
                            sdi_ready <= '0';
                        end if;
                    else
                        sdi_sync_timer <= x"00000000";
                        sdi_ready <= '0';
                    end if; 
--                elsif(v_counter_iv11 > V_SDIFRAME_STOP and sdi_ready = '1') then     --look for fifo empty and reset sync if needed
--                    if tvalid =  '0' then
--                        sdi_sync_timer <= x"00000000";
--                        sdi_sync <= '0';
--                        sdi_ready <= '0';
--                    else                                                      
--                        sdi_sync_timer <= sdi_sync_timer;
--                        sdi_sync <= sdi_sync;
--                        sdi_ready <= sdi_ready;
--                    end if;
--               elsif v_counter_iv11 = v_stop_position_iv16 and h_counter_iv12 = h_stop_position_iv16 + 1 and tvalid =  '1' and tlast =  '0' and  sdi_ready = '1' then   --tlast not at the end of picture
--                  tready_search_start <= '0';
--                  sdi_sync_timer <= x"00000000";
--                  sdi_sync <= '0';
--                  sdi_ready <= '0';
               else
                  tready_search_start <= '0';
                  sdi_sync_timer <= sdi_sync_timer;
                  sdi_sync <= sdi_sync;
                  sdi_ready <= sdi_ready;
               end if;
                         
              --DPRAM WRITE PORT A
              --Init DPRAM with one line data
              if((v_counter_iv11 = v_start_position_iv16 - 1) and (h_counter_iv12 >= h_start_position_iv16 and h_counter_iv12 <= h_stop_position_iv16)) and sdi_ready  = '1' and dpram_init = '0' then
                dpram_addra <= dpram_addra + 1;
                dpram_wren_a(0) <= '1';
                dpram_init  <= '0';
              --Set Init Flag
              elsif((v_counter_iv11 = v_start_position_iv16 - 1) and  h_counter_iv12 = (h_stop_position_iv16 + 1)) and sdi_ready  = '1' and dpram_init = '0' then
                dpram_addra <= dpram_addra;
                dpram_wren_a(0) <= '0';
                dpram_init  <= '1';
              --Write Data every line (after pixel have been read, because the h_start + 1 and h_stop + 1))
              elsif((v_counter_iv11 >= v_start_position_iv16 and v_counter_iv11 <= v_stop_position_iv16) and (h_counter_iv12 >= (h_start_position_iv16 + 1) and h_counter_iv12 <= (h_stop_position_iv16 + 1))) and sdi_ready  = '1'and dpram_init = '1' then
                if dpram_up_down = '1' then
                    dpram_addra <= dpram_addra + 1;
                    dpram_wren_a(0) <= '1';
                    dpram_init  <= dpram_init;
                else
                    dpram_addra <= dpram_addra - 1;
                    dpram_wren_a(0) <= '1';
                    dpram_init  <= dpram_init;           
                end if;
              --Keep address and flag
              elsif sdi_ready  = '1' then
                dpram_addra <= dpram_addra;
                dpram_wren_a(0) <= '0';
                --dpram_up_down <= dpram_up_down;
                dpram_init  <= dpram_init;            
              else
                --Reset address and flag
                dpram_addra <= "00000000000";
                dpram_wren_a(0) <= '0';
                dpram_init  <= '0';      
              end if;
              
              --DPRAM READ PORT B
              --Get start address of port a (last write address) after init is done
              if((v_counter_iv11 = (v_start_position_iv16 - 1)) and  h_counter_iv12 = (h_stop_position_iv16 + 1)) and sdi_ready  = '1' and dpram_init = '0' then
                    dpram_addrb <= dpram_addra;
              --Read one line of data
              elsif((v_counter_iv11 >= v_start_position_iv16 and v_counter_iv11 <= v_stop_position_iv16) and (h_counter_iv12 >= h_start_position_iv16 and h_counter_iv12 <= h_stop_position_iv16)) and sdi_ready  = '1' and dpram_init = '1' then
                if dpram_up_down = '1' then
                    dpram_addrb <= dpram_addrb + 1;
                    dpram_up_down <= dpram_up_down;
                else
                    dpram_addrb <= dpram_addrb - 1;
                    dpram_up_down <= dpram_up_down;
                end if;                                  
              --Toggle UP - DOWN at the end of video line 
              elsif(v_counter_iv11 >= v_start_position_iv16 and v_counter_iv11 <= v_stop_position_iv16) and (h_counter_iv12 = (h_stop_position_iv16 + 5)) and sdi_ready  = '1' and dpram_init = '1' then
                if dpram_up_down = '1' then 
                    dpram_addrb <= dpram_addra;
                    dpram_up_down <= '0';
                else
                    dpram_addrb <= dpram_addra;
                    dpram_up_down <= '1';
                end if;
              --Keep address and flag
              elsif sdi_ready  = '1' then
                dpram_addrb <= dpram_addrb;
                dpram_up_down <= dpram_up_down;
              --Init Address and flag
              else
                dpram_addrb <= "00000000000";
                dpram_up_down <= '0';
              end if;
                      
               --Display SDI picture
               if((v_counter_iv11 >= V_SDIFRAME_START  and v_counter_iv11 <= V_SDIFRAME_STOP) and (h_counter_iv12 >= H_SDIFRAME_START and h_counter_iv12 <= H_SDIFRAME_STOP)) then                
                    if((v_counter_iv11 >= v_start_position_iv16(10 downto 0) and v_counter_iv11 <= v_stop_position_iv16(10 downto 0)) and (h_counter_iv12 >= (h_start_position_iv16(11 downto 0) - 2) and h_counter_iv12 <= (h_stop_position_iv16(11 downto 0) - 1))) and sdi_ready  = '1' then  --White box                                  
                        colorRomCpt <= x"00000000";
                        if x_flip_reg(2) = '1' then 
                            tready_sdi <= '0';
                            start_flip_tx <= '1';
                            if(dpram_data_b(19 downto 10) = 0 or dpram_data_b(9 downto 0) = 0) then   
                                   --y <= "1111000000";--960  --White for debug, should be black
                                   --c <= "1000000000";--512    
                                   y <= "0001000000";--64    --Black
                                   c <= "1000000000";--512  
                            elsif start_flip_tx = '1' then
                                 y <= dpram_data_b(9 downto 0);
                                 c <= dpram_data_b(19 downto 10);
                            else               --Default Black
                                y <= "0001000000";--64
                                c <= "1000000000";--512  
                            end if;    
                        else
                            tready_sdi <= '1';
                            start_flip_tx <= '0';
                            if(y_camera_video = 0 or c_camera_video = 0) then   
                                 --y <= "1111000000";--960 --White for debug, should be black
                                 --c <= "1000000000";--512    
                                 y <= "0001000000";--64    --Black
                                 c <= "1000000000";--512  
                            elsif tvalid = '0' then
                                -- No data available, stop data, resync and pad in black
                                sdi_ready <= '0';
                                tready_sdi <= '0';
                                sdi_sync <= '0';
                                y <= "0001000000";--64    --Black
                                c <= "1000000000";--512  
                            elsif tready_sdi = '1' then
                                 y <= y_camera_video;
                                 c <= c_camera_video;
                                 if (h_counter_iv12 = h_stop_position_iv16 - 1) then -- if this clock rising edge set the data for the last pixel of the line
                                    tready_sdi <= '0';
                                 end if;
                            else               --Default Black
                                y <= "0001000000";--64
                                c <= "1000000000";--512  
                            end if;   
                        end if;        
                    else               --Default Black
                        tready_sdi <= '0';
                        start_flip_tx <= '0';
                        if colorRomCpt >= 150000000 then     --Send test video pattern after min. 3 sec. after loss of Sync.
                            colorRomCpt <= colorRomCpt;
                            y <= y_ramp_mux;--64
                            c <= c_rom;--512
                        else 
                            colorRomCpt <= colorRomCpt + 1;
                            y <= "0001000000";--64
                            c <= "1000000000";--512 
                        end if;
                    end if;
               else  
                   tready_sdi <= '0';
                   y <= y_ramp_mux;         --Send SDI Header from ROM
                   c <= c_rom; 
               end if;
           end if;
       end process;
    --y <= y_ramp_mux;
    --c <= c_rom;
end synth;