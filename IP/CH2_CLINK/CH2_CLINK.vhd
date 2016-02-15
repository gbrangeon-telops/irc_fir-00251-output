-- file: CH2_CLINK.vhd
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

entity CH2_CLINK is
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
end CH2_CLINK;

architecture xilinx of CH2_CLINK is
  attribute CORE_GENERATION_INFO            : string;
  attribute CORE_GENERATION_INFO of xilinx  : architecture is "CH2_CLINK,selectio_wiz_v5_1,{component_name=CH2_CLINK,bus_dir=OUTPUTS,bus_sig_type=DIFF,bus_io_std=LVDS_25,use_serialization=true,use_phase_detector=false,serialization_factor=7,enable_bitslip=false,enable_train=false,system_data_width=4,bus_in_delay=NONE,bus_out_delay=NONE,clk_sig_type=SINGLE,clk_io_std=LVCMOS18,clk_buf=BUFIO2,active_edge=RISING,clk_delay=NONE,selio_bus_in_delay=NONE,selio_bus_out_delay=NONE,selio_clk_buf=MMCM,selio_active_edge=SDR,selio_ddr_alignment=SAME_EDGE_PIPELINED,selio_oddr_alignment=SAME_EDGE,ddr_alignment=C0,selio_interface_type=NETWORKING,interface_type=NETWORKING,selio_bus_in_tap=0,selio_bus_out_tap=0,selio_clk_io_std=HSTL_I,selio_clk_sig_type=SINGLE}";

component CH2_CLINK_selectio_wiz 
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
end component;

begin

   U0: CH2_CLINK_selectio_wiz 
   generic map 
   (SYS_W => SYS_W,
   DEV_W =>  DEV_W)
   port map 
   ( 
   data_out_from_device => data_out_from_device,
   data_out_to_pins_p => data_out_to_pins_p,
   data_out_to_pins_n => data_out_to_pins_n,
   clk_to_pins_p => clk_to_pins_p,
   clk_to_pins_n => clk_to_pins_n,
   clk_in => clk_in,                            
   clk_div_in => clk_div_in,                        
   clk_reset => clk_reset,
   io_reset => io_reset
);

end xilinx;
