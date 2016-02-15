-- file: CH2_CLINK_selectio_wiz.vhd
-- (c) Copyright 2009 - 2013 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
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
------------------------------------------------------------------------------
-- User entered comments
------------------------------------------------------------------------------
-- None
------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_misc.all;
use ieee.numeric_std.all;

library unisim;
use unisim.vcomponents.all;

entity CH2_CLINK_selectio_wiz is
generic
 (-- width of the data for the system
  SYS_W       : integer := 4;
  -- width of the data for the device
  DEV_W       : integer := 28);
port
 (
  -- From the device out to the system
  data_out_from_device    : in    std_logic_vector(DEV_W-1 downto 0);
  data_out_to_pins_p      : out   std_logic_vector(SYS_W-1 downto 0);
  data_out_to_pins_n      : out   std_logic_vector(SYS_W-1 downto 0);
  clk_to_pins_p             : out std_logic;
  clk_to_pins_n             : out std_logic;

 
-- Clock and reset signals
  clk_in                  : in    std_logic;                    -- Fast clock from PLL/MMCM 
  clk_div_in              : in    std_logic;                    -- Slow clock from PLL/MMCM
  clk_reset               : in    std_logic;                    -- Reset signal for Clock circuit
  io_reset                : in    std_logic);                   -- Reset signal for IO circuit
end CH2_CLINK_selectio_wiz;

architecture xilinx of CH2_CLINK_selectio_wiz is
  constant clock_enable            : std_logic := '1';
  signal unused : std_logic;
  signal clk_in_int_buf            : std_logic;
  signal clk_div_in_int            : std_logic;


  -- Before the buffer
  signal data_out_to_pins_int      : std_logic_vector(SYS_W-1 downto 0);
  -- Between the delay and serdes
  signal data_out_to_pins_predelay : std_logic_vector(SYS_W-1 downto 0);
  signal ce_in_uc          : std_logic;
  signal inc_in_uc         : std_logic;
  signal regrst_in_uc      : std_logic;
  signal ce_out_uc              : std_logic;
  signal inc_out_uc             : std_logic;
  signal regrst_out_uc          : std_logic;
  constant num_serial_bits         : integer := DEV_W/SYS_W;
  type serdarr is array (0 to 13) of std_logic_vector(SYS_W-1 downto 0);
  -- Array to use intermediately from the serdes to the internal
  --  devices. bus "0" is the leftmost bus
   --  * fills in from higher order
  signal oserdes_d                 : serdarr := (( others => (others => '0')));
  signal serdesstrobe             : std_logic;
  signal ocascade_ms_d            : std_logic_vector(SYS_W-1 downto 0);
  signal ocascade_ms_t            : std_logic_vector(SYS_W-1 downto 0);
  signal ocascade_sm_d            : std_logic_vector(SYS_W-1 downto 0);
  signal ocascade_sm_t            : std_logic_vector(SYS_W-1 downto 0);

  signal clk_fwd_int              : std_logic;
  signal clk_fwd_out              : std_logic;


begin




  -- Create the clock logic

  
  -- We have multiple bits- step over every bit, instantiating the required elements
  pins: for pin_count in 0 to SYS_W-1 generate 
  begin
    -- Instantiate the buffers
    ----------------------------------
    -- Instantiate a buffer for every bit of the data bus
     obufds_inst : OBUFDS
       generic map (
         IOSTANDARD => "LVDS_25")
       port map (
         O          => data_out_to_pins_p  (pin_count),
         OB         => data_out_to_pins_n  (pin_count),
         I          => data_out_to_pins_int(pin_count));


    -- Pass through the delay
    -----------------------------------
   data_out_to_pins_int(pin_count)    <= data_out_to_pins_predelay(pin_count);

     -- Instantiate the serdes primitive
     ----------------------------------

     -- declare the oserdes
     oserdese2_master : OSERDESE2
       generic map (
         DATA_RATE_OQ   => "SDR",
         DATA_RATE_TQ   => "SDR",
         DATA_WIDTH     => 7,
 
         TRISTATE_WIDTH => 1,
         SERDES_MODE    => "MASTER")
       port map (
         D1             => oserdes_d(13)(pin_count),
         D2             => oserdes_d(12)(pin_count),
         D3             => oserdes_d(11)(pin_count),
         D4             => oserdes_d(10)(pin_count),
         D5             => oserdes_d(9)(pin_count),
         D6             => oserdes_d(8)(pin_count),
         D7             => oserdes_d(7)(pin_count),
         D8             => oserdes_d(6)(pin_count),
         T1             => '0',
         T2             => '0',
         T3             => '0',
         T4             => '0',
         SHIFTIN1       => '0',
         SHIFTIN2       => '0',
         SHIFTOUT1      => open,
         SHIFTOUT2      => open,
         OCE            => clock_enable,
         CLK            => clk_in,
         CLKDIV         => clk_div_in,
         OQ             => data_out_to_pins_predelay(pin_count),
         TQ             => open,
         OFB            => open,
         TBYTEIN        => '0',
         TBYTEOUT       => open,
         TFB            => open,
         TCE            => '0',
         RST            => io_reset);


     -- Concatenate the serdes outputs together. Keep the timesliced
     --   bits together, and placing the earliest bits on the right
     --   ie, if data comes in 0, 1, 2, 3, 4, 5, 6, 7, ...
     --       the output will be 3210, 7654, ...
     -------------------------------------------------------------


    out_slices: for slice_count in 0 to num_serial_bits-1 generate begin
        -- This places the first data in time on the right
        oserdes_d(14-slice_count-1) <=
           data_out_from_device(slice_count*SYS_W+SYS_W-1 downto slice_count*SYS_W);
        -- To place the first data in time on the left, use the
        --   following code, instead
        -- oserdes_d(slice_count) <=
        --    data_out_from_device(slice_count*SYS_W+SYS_W-1 downto slice_count*SYS_W);
     end generate out_slices;

  end generate pins;




   -- clock forwarding logic

     -- declare the oserdes
     clk_fwd : OSERDESE2
       generic map (
         DATA_RATE_OQ   => "SDR",
         DATA_RATE_TQ   => "SDR",
         DATA_WIDTH     => 7,
         TRISTATE_WIDTH => 1,
         SERDES_MODE    => "MASTER")
       port map (
         D1             => '1',
         D2             => '1',
         D3             => '0',
         D4             => '0',
         D5             => '0',
         D6             => '1',
         D7             => '1',
         D8             => '0',
         T1             => '0',
         T2             => '0',
         T3             => '0',
         T4             => '0',
         SHIFTIN1       => '0',
         SHIFTIN2       => '0',
         SHIFTOUT1      => open,
         SHIFTOUT2      => open,
         OCE            => clock_enable,
         CLK            => clk_in,
         CLKDIV         => clk_div_in,
         OQ             => clk_fwd_out,
         TQ             => open,
         OFB            => open,
         TBYTEIN        => '0',
         TBYTEOUT       => open,
         TFB            => open,
         TCE            => '0',
         RST            => io_reset);


-- Clock Output Buffer

         obufds_clk_inst : OBUFDS
           generic map (
             IOSTANDARD => "LVDS_25")
           port map (
             O          => clk_to_pins_p,
             OB         => clk_to_pins_n,
             I          => clk_fwd_out);


end xilinx;



