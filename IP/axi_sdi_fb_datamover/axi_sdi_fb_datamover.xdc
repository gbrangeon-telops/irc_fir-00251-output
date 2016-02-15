# (c) Copyright 2009 - 2013 Xilinx, Inc. All rights reserved.
# 
# This file contains confidential and proprietary information
# of Xilinx, Inc. and is protected under U.S. and
# international copyright and other intellectual property
# laws.
# 
# DISCLAIMER
# This disclaimer is not a license and does not grant any
# rights to the materials distributed herewith. Except as
# otherwise provided in a valid license issued to you by
# Xilinx, and to the maximum extent permitted by applicable
# law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
# WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
# AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
# BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
# INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
# (2) Xilinx shall not be liable (whether in contract or tort,
# including negligence, or under any other theory of
# liability) for any loss or damage of any kind or nature
# related to, arising under or in connection with these
# materials, including for any direct, or any indirect,
# special, incidental, or consequential loss or damage
# (including loss of data, profits, goodwill, or any type of
# loss or damage suffered as a result of any action brought
# by a third party) even if such damage or loss was
# reasonably foreseeable or Xilinx had been advised of the
# possibility of the same.
# 
# CRITICAL APPLICATIONS
# Xilinx products are not designed or intended to be fail-
# safe, or for use in any application requiring fail-safe
# performance, such as life-support or safety devices or
# systems, Class III medical devices, nuclear facilities,
# applications related to the deployment of airbags, or any
# other applications that could lead to death, personal
# injury, or severe property or environmental damage
# (individually and collectively, "Critical
# Applications"). Customer assumes the sole risk and
# liability of any use of Xilinx products in Critical
# Applications, subject only to applicable laws and
# regulations governing limitations on product liability.
# 
# THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
# PART OF THIS FILE AT ALL TIMES.



set_false_path -to [get_pins -hier *cdc_to*/D]
set_false_path -from [get_cells -hier *cdc_from* -filter {is_sequential}] -to [get_cells -hier *cdc_to* -filter {is_sequential}]


## MM2S
set_false_path -from [get_cells -hierarchical -filter {NAME =~*GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/USE_ASYNC_FIFO.I_ASYNC_FIFO/I_ASYNC_FIFOGEN_FIFO/USE_2N_DEPTH.V6_S6_AND_LATER.I_ASYNC_FIFO_BRAM/*rstblk*/*rst_reg_reg[*]}]
set_false_path -to [get_pins -hierarchical -filter {NAME =~*GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/USE_ASYNC_FIFO.I_ASYNC_FIFO/I_ASYNC_FIFOGEN_FIFO/USE_2N_DEPTH.V6_S6_AND_LATER.I_ASYNC_FIFO_BRAM/*rstblk*/*PRE}]
set_false_path -from [get_cells -hierarchical -filter {NAME =~*GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/USE_ASYNC_FIFO.I_ASYNC_FIFO/I_ASYNC_FIFOGEN_FIFO/USE_2N_DEPTH.V6_S6_AND_LATER.I_ASYNC_FIFO_BRAM/*rstblk*/*rst_reg_reg[*]}]
set_false_path -to [get_pins -hierarchical -filter {NAME =~*GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/USE_ASYNC_FIFO.I_ASYNC_FIFO/I_ASYNC_FIFOGEN_FIFO/USE_2N_DEPTH.V6_S6_AND_LATER.I_ASYNC_FIFO_BRAM/*rstblk*/*PRE}]
set_false_path -from [get_cells  -hierarchical -filter {NAME =~*GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_ASYNC_FIFO.I_ASYNC_FIFO/I_ASYNC_FIFOGEN_FIFO/USE_2N_DEPTH.V6_S6_AND_LATER.I_ASYNC_FIFO_BRAM/*rstblk*/*rst_reg_reg[*]}]
set_false_path -to [get_pins  -hierarchical -filter {NAME =~*GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_ASYNC_FIFO.I_ASYNC_FIFO/I_ASYNC_FIFOGEN_FIFO/USE_2N_DEPTH.V6_S6_AND_LATER.I_ASYNC_FIFO_BRAM/*rstblk*/*PRE}]
set_false_path -from [get_cells -hierarchical -filter {NAME =~*GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_ASYNC_FIFO.I_ASYNC_FIFO/I_ASYNC_FIFOGEN_FIFO/USE_2N_DEPTH.V6_S6_AND_LATER.I_ASYNC_FIFO_BRAM/*rstblk*/*rst_reg_reg[*]}]
set_false_path -to [get_pins -hierarchical -filter {NAME =~*GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_ASYNC_FIFO.I_ASYNC_FIFO/I_ASYNC_FIFOGEN_FIFO/USE_2N_DEPTH.V6_S6_AND_LATER.I_ASYNC_FIFO_BRAM/*rstblk*/*PRE}]

## S2MM
set_false_path -from [get_cells -hierarchical -filter {NAME =~*GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/USE_ASYNC_FIFO.I_ASYNC_FIFO/I_ASYNC_FIFOGEN_FIFO/USE_2N_DEPTH.V6_S6_AND_LATER.I_ASYNC_FIFO_BRAM/*rstblk*/*rst_reg_reg[*]}]
set_false_path -to [get_pins -hierarchical -filter {NAME =~*GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/USE_ASYNC_FIFO.I_ASYNC_FIFO/I_ASYNC_FIFOGEN_FIFO/USE_2N_DEPTH.V6_S6_AND_LATER.I_ASYNC_FIFO_BRAM/*rstblk*/*PRE}]
set_false_path -from [get_cells -hierarchical -filter {NAME =~*GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/USE_ASYNC_FIFO.I_ASYNC_FIFO/I_ASYNC_FIFOGEN_FIFO/USE_2N_DEPTH.V6_S6_AND_LATER.I_ASYNC_FIFO_BRAM/*rstblk*/*rst_reg_reg[*]}]
set_false_path -to [get_pins -hierarchical -filter {NAME =~*GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/USE_ASYNC_FIFO.I_ASYNC_FIFO/I_ASYNC_FIFOGEN_FIFO/USE_2N_DEPTH.V6_S6_AND_LATER.I_ASYNC_FIFO_BRAM/*rstblk*/*PRE}]
set_false_path -from [get_cells -hierarchical -filter {NAME =~*GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_ASYNC_FIFO.I_ASYNC_FIFO/I_ASYNC_FIFOGEN_FIFO/USE_2N_DEPTH.V6_S6_AND_LATER.I_ASYNC_FIFO_BRAM/*rstblk*/*rst_reg_reg[*]}]
set_false_path -to [get_pins -hierarchical -filter {NAME =~*GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_ASYNC_FIFO.I_ASYNC_FIFO/I_ASYNC_FIFOGEN_FIFO/USE_2N_DEPTH.V6_S6_AND_LATER.I_ASYNC_FIFO_BRAM/*rstblk*/*PRE}]
set_false_path -from [get_cells -hierarchical -filter {NAME =~*GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_ASYNC_FIFO.I_ASYNC_FIFO/I_ASYNC_FIFOGEN_FIFO/USE_2N_DEPTH.V6_S6_AND_LATER.I_ASYNC_FIFO_BRAM/*rstblk*/*rst_reg_reg[*]}]
set_false_path -to [get_pins -hierarchical -filter {NAME =~*GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_ASYNC_FIFO.I_ASYNC_FIFO/I_ASYNC_FIFOGEN_FIFO/USE_2N_DEPTH.V6_S6_AND_LATER.I_ASYNC_FIFO_BRAM/*rstblk*/*PRE}]
