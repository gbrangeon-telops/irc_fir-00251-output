-- $Revision: 1.1 $ $Date: 2011/04/20 17:14:57 $
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
-------------------------------------------------------------------------------- 
-- 
-- This package defines global data types and constants used throughout the
-- ANC and EDH processor design files.
--
--------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

package anc_edh_pkg is

--------------------------------------------------------------------------------
-- These constants defines the widths of various data types and are used
-- the in following data type definitions.
--
constant HCNT_WIDTH :       integer := 12;  -- width of horz position count
constant VCNT_WIDTH :       integer := 10;  -- width of vert position count
constant UDW_ADR_WIDTH :    integer := 8;   -- ANC packet UDW RAM address width
constant UDW_MEM_SIZE :     integer := 256; -- ANC packet UDW RAM depth
constant EDHFLGS_WIDTH :    integer := 16;  -- width of EDH flag vector
constant EDHERRCNT_WIDTH :  integer := 24;  -- width of EDH error counter

--------------------------------------------------------------------------------
-- Data type definitions
--
subtype video_type      is                  -- used for all video-width words
            std_logic_vector(9 downto 0);

subtype vidstd_type     is                  -- 3-bit code used to indicate
            std_logic_vector(2 downto 0);  -- the video standard

subtype hpos_type       is                  -- horizontal position
            std_logic_vector (HCNT_WIDTH - 1 downto 0);

subtype vpos_type       is                  -- vertical position
            std_logic_vector (VCNT_WIDTH - 1 downto 0);

subtype ubyte_type      is                  -- unsigned 8-bit byte
            std_logic_vector(7 downto 0);

subtype cksum_type      is                  -- 9-bit checksum values used in
            std_logic_vector(8 downto 0);      -- in ANC packets

subtype pktsize_type    is                  -- 9-bit value used to indicate the
            std_logic_vector(8 downto 0);      -- total size of an ANC packet

subtype udwadr_type     is                  -- address into UDW RAM
            std_logic_vector (UDW_ADR_WIDTH - 1 downto 0);

subtype edh_allflg_type is                  -- vector containing all EDH packet flags
            std_logic_vector(EDHFLGS_WIDTH - 1 downto 0);

subtype edh_flgset_type is                  -- vector containing one set of flags
            std_logic_vector(4 downto 0);  -- there is one set each for AP, FF, or ANC

subtype edh_pktflg_type is                  -- contains the EDH packet error flags
            std_logic_vector(3 downto 0);  -- such as edh_missing and edh_format_err

subtype crc16_type      is                  -- CRC16 data type
            std_logic_vector(15 downto 0);

--------------------------------------------------------------------------------
-- Constant defintions

--
-- This group of constants defines the encoding for the video standards output
-- code (vidstd_type).
--
constant NTSC_422:              vidstd_type := "000";
constant NTSC_INVALID:          vidstd_type := "001";
constant NTSC_422_WIDE:         vidstd_type := "010";
constant NTSC_4444:             vidstd_type := "011";
constant PAL_422:               vidstd_type := "100";
constant PAL_INVALID:           vidstd_type := "101";
constant PAL_422_WIDE:          vidstd_type := "110";
constant PAL_4444:              vidstd_type := "111";

--
-- This group of constants defines the line numbers where the EDH packet is
-- located.
--
constant NTSC_FLD1_EDH_LINE:    vpos_type := vpos_type(TO_UNSIGNED(272, VCNT_WIDTH));
constant NTSC_FLD2_EDH_LINE:    vpos_type := vpos_type(TO_UNSIGNED(  9, VCNT_WIDTH));
constant PAL_FLD1_EDH_LINE :    vpos_type := vpos_type(TO_UNSIGNED(318, VCNT_WIDTH));
constant PAL_FLD2_EDH_LINE :    vpos_type := vpos_type(TO_UNSIGNED(  5, VCNT_WIDTH));

--
-- This group of constants defines the horizontal position of the first word
-- of the SAV TRS symbol for each supported video format.
--
constant SAV_NTSC_422 :         hpos_type := hpos_type(TO_UNSIGNED(1712, HCNT_WIDTH));
constant SAV_NTSC_422_WIDE:     hpos_type := hpos_type(TO_UNSIGNED(2284, HCNT_WIDTH));
constant SAV_NTSC_4444 :        hpos_type := hpos_type(TO_UNSIGNED(3428, HCNT_WIDTH));
constant SAV_PAL_422 :          hpos_type := hpos_type(TO_UNSIGNED(1724, HCNT_WIDTH));
constant SAV_PAL_422_WIDE :     hpos_type := hpos_type(TO_UNSIGNED(2300, HCNT_WIDTH));
constant SAV_PAL_4444 :         hpos_type := hpos_type(TO_UNSIGNED(3452, HCNT_WIDTH));

--
-- This group of constants defines the starting position of the EAV symbol
-- for the various supported video standards.
--
constant EAV_LOC_NTSC_422:      hpos_type := hpos_type(TO_UNSIGNED(1440, HCNT_WIDTH));
constant EAV_LOC_NTSC_422_WIDE: hpos_type := hpos_type(TO_UNSIGNED(1920, HCNT_WIDTH));
constant EAV_LOC_NTSC_4444:     hpos_type := hpos_type(TO_UNSIGNED(2880, HCNT_WIDTH));
constant EAV_LOC_PAL_422:       hpos_type := hpos_type(TO_UNSIGNED(1440, HCNT_WIDTH));
constant EAV_LOC_PAL_422_WIDE:  hpos_type := hpos_type(TO_UNSIGNED(1920, HCNT_WIDTH));
constant EAV_LOC_PAL_4444:      hpos_type := hpos_type(TO_UNSIGNED(2880, HCNT_WIDTH));

--
-- This constant defines the standard length of an EDH packet.
--
constant EDH_PKT_LENGTH:        integer := 23;

--
-- This group of constants defines the starting position of the EDH packet
-- for each different supported video standard. The positions are all relative 
-- to the position of the SAV symbols since the EDH packet immediately precedes
-- the SAV.
--
constant EDH_NTSC_422 :         hpos_type := SAV_NTSC_422 -      EDH_PKT_LENGTH;
constant EDH_NTSC_422_WIDE:     hpos_type := SAV_NTSC_422_WIDE - EDH_PKT_LENGTH;
constant EDH_NTSC_4444:         hpos_type := SAV_NTSC_4444 -     EDH_PKT_LENGTH;
constant EDH_PAL_422:           hpos_type := SAV_PAL_422 -       EDH_PKT_LENGTH;
constant EDH_PAL_422_WIDE:      hpos_type := SAV_PAL_422_WIDE -  EDH_PKT_LENGTH;
constant EDH_PAL_4444:          hpos_type := SAV_PAL_4444 -      EDH_PKT_LENGTH;

--
-- This parameter specifies the DID value used to replace the DID words of
-- packets that the module marks for deletion.
--
constant DEL_DID:               video_type := "0110000000"; -- 0x180

--
-- These constants define the 8-bit DID values for the start_marker and
-- end_marker packets.
--
constant START_MARKER_DID :     ubyte_type := "10001000";   -- hex 88
constant END_MARKER_DID :       ubyte_type := "10000100";   -- hex 84

constant EDH_ALL_FLAGS_LOW :    edh_allflg_type := (others => '0');
constant UBYTE_ZERO :           ubyte_type :=      (others => '0');
     
end;
