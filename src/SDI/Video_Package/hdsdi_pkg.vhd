-- $Revision: 1.2 $ $Date: 2010/12/17 17:54:26 $
-------------------------------------------------------------------------------
--  (c) Copyright 2010-2011 Xilinx, Inc. All rights reserved.
--
--  This file contains confidential and proprietary information
--  of Xilinx, Inc. and is protected under U.S. and
--  international copyright and other intellectual property
--  laws.
--
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
-- 
-- This package defines global data types and constants used throughout the
-- Xilinx HD-SDI reference designs.
--
-- This new release of this package module maintains the old data types of
-- previous versions of this module (the hd_xxx data types) and also introduces 
-- a new set of data types (the xavb_xxx data types) that will be used with 
-- new Xilinx modules.
--
--------------------------------------------------------------------------------


library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

package hdsdi_pkg is

--------------------------------------------------------------------------------
-- These constants defines the widths of various data types and are used
-- the in following data type definitions.
--
constant HD_HCNT_WIDTH :       integer := 13;  -- width of horz position count
constant HD_VCNT_WIDTH :       integer := 11;  -- width of vert position count
constant SMPTE_FMT_WIDTH :     integer := 4;   -- width of the video format code

--------------------------------------------------------------------------------
-- Old data types retained for backwards compatibility
--
subtype hd_video_type      is               -- used for all video-width words
            std_logic_vector(9 downto 0);

subtype hd_vid20_type      is               -- used for all 20-bit video words
            std_logic_vector(19 downto 0);  -- containing both Y & C (Y in MS hslf)

subtype hd_vidstd_type     is               -- 4-bit code used to indicate the video format
            std_logic_vector(SMPTE_FMT_WIDTH - 1 downto 0);

subtype hd_vpos_type       is               -- vertical position type
            std_logic_vector (HD_VCNT_WIDTH - 1 downto 0);

subtype hd_hpos_type       is               -- horizontal position type
            std_logic_vector (HD_HCNT_WIDTH - 1 downto 0);

subtype hd_crc18_type      is               -- CRC18 data type
            std_logic_vector(17 downto 0);

--------------------------------------------------------------------------------
-- Data types to be used for new designs
--

subtype xavb_data_stream_type is            -- 10-bit SMPTE interface data stream
            std_logic_vector(9 downto 0);

subtype xavb_8b_vcomp_type is               -- 8-bit video component
            std_logic_vector(7 downto 0);

subtype xavb_10b_vcomp_type is              -- 10-bit video component
            std_logic_vector(9 downto 0);

subtype xavb_12b_vcomp_type is              -- 12-bit video component
            std_logic_vector(11 downto 0);

subtype xavb_hd_line_num_type is            -- 11-bit video line numbers
            std_logic_vector(HD_VCNT_WIDTH - 1 downto 0);

subtype xavb_hd_sample_num_type is          -- 12-bit video sample number
            std_logic_vector(HD_HCNT_WIDTH -1 downto 0);

subtype xavb_vid_format_type is             -- 4-bit video timing format code
            std_logic_vector(SMPTE_FMT_WIDTH - 1 downto 0);

subtype xavb_hd_crc18_type is               -- 18-bit SMPTE CRC value
            std_logic_vector(17 downto 0);

--------------------------------------------------------------------------------
-- Constant definitions

--
-- This group of constants defines the encoding for the HD video formats used
-- by the video pattern generators and video format detectors.
--
constant HD_FMT_1035i_30    : hd_vidstd_type := "0000"; -- SMPTE 260M 1035i  30 Hz
constant HD_FMT_1080i_25b   : hd_vidstd_type := "0001"; -- SMPTE 295M 1080i  25 Hz
constant HD_FMT_1080i_30    : hd_vidstd_type := "0010"; -- SMPTE 274M 1080i  30 Hz or 1080sF 30 Hz
constant HD_FMT_1080i_25    : hd_vidstd_type := "0011"; -- SMPTE 274M 1080i  25 Hz or 1080sF 25 Hz
constant HD_FMT_1080p_30    : hd_vidstd_type := "0100"; -- SMPTE 274M 1080p  30 Hz 
constant HD_FMT_1080p_25    : hd_vidstd_type := "0101"; -- SMPTE 274M 1080p  25 Hz
constant HD_FMT_1080p_24    : hd_vidstd_type := "0110"; -- SMPTE 274M 1080p  24 Hz
constant HD_FMT_720p_60     : hd_vidstd_type := "0111"; -- SMPTE 296M  720p  60 Hz
constant HD_FMT_1080sF_24   : hd_vidstd_type := "1000"; -- SMPTE 274M 1080sF 24 Hz
constant HD_FMT_720p_50     : hd_vidstd_type := "1001"; -- SMPTE 296M  720p  50 Hz
constant HD_FMT_720p_30     : hd_vidstd_type := "1010"; -- SMPTE 296M  720p  30 Hz
constant HD_FMT_720p_25     : hd_vidstd_type := "1011"; -- SMPTE 296M  720p  25 Hz
constant HD_FMT_720p_24     : hd_vidstd_type := "1100"; -- SMPTE 296M  720p  24 Hz
constant HD_FMT_1080p_60    : hd_vidstd_type := "1101"; -- SMPTE 274M 1080p  60 Hz
constant HD_FMT_1080p_50    : hd_vidstd_type := "1110"; -- SMPTE 274M 1080p  50 Hz
constant HD_FMT_RSVD_15     : hd_vidstd_type := "1111"; -- reserved code
     
--
-- This constant should be set equal to the last valid video format in the
-- table above.
--
constant LAST_VIDEO_FORMAT_CODE : hd_vidstd_type := HD_FMT_1080p_50;

end;
