alib work
setactivelib work



#Build base bloc
do "$FIR251OUT/src/SDI/HDL/build_SDI_Intf.do" 

#Build video block
acom "$FIR251COMMON/VHDL/axis32_pixel_cnt.vhd"
acom "$FIR251COMMON/VHDL/axis16_pixel_cnt.vhd"
acom "$FIR251OUT/IP/t_axi4_stream32_sfifo_d1024/t_axi4_stream32_sfifo_d1024_funcsim.vhdl"
acom "$FIR251OUT/IP/t_axi4_stream32_afifo_d4096/t_axi4_stream32_afifo_d4096_funcsim.vhdl"
acom "$FIR251COMMON/VHDL/Fifo/t_axi4_stream32_fifo.vhd"
acom "$FIR251OUT/IP/t_axi4_stream16_sfifo_d512/t_axi4_stream16_sfifo_d512_funcsim.vhdl"
acom "$FIR251COMMON/VHDL/Fifo/t_axi4_stream16_fifo.vhd"

acom "$FIR251COMMON/VHDL/Utilities/axis32_hole.vhd"
acom "$FIR251COMMON/VHDL/Utilities/axis32_RandomMiso.vhd"

--acom "$FIR251OUT/IP/axis32_rs/axis32_rs_funcsim.vhdl"
--acom "$FIR251COMMON/VHDL/Utilities/axis32_registerSlice_wrap.vhd"

acom "$COMMON_HDL/Utilities/sync_resetn.vhd"
acom "$FIR251OUT/src/SDI/HDL/axis32_img_sof.vhd"
acom "$COMMON_HDL/matlab/axis_file_output_32.vhd"
acom "$FIR251OUT/IP/v_scaler_0/v_scaler_0_funcsim.vhdl"
acom "$FIR251OUT/src/SDI/HDL/video_scaler_wrapper.vhd"
acom "$FIR251OUT/src/SDI/Sim/sdi_sim/src/video.bde"

#Build tb  

acom "$FIR251OUT/src/SDI/Sim/sdi_sim/src/ublaze.vhd"
acom "$FIR251OUT/src/SDI/Sim/sdi_sim/src/mgt_pattern_sim.vhd"
acom "$FIR251OUT/src/SDI/Sim/sdi_sim/src/axi_interconnect_0_funcsim.vhdl"
acom "$FIR251OUT/src/SDI/Sim/sdi_sim/src/fb_axi_inter_wrap.vhd"
acom "$FIR251OUT/src/SDI/Sim/sdi_sim/src/blk_mem_gen_bram_funcsim.vhdl"
acom "$FIR251OUT/src/SDI/Sim/sdi_sim/src/fb_blockRam_wrap.vhd"


acom "$FIR251OUT/src/SDI/Sim/sdi_sim/src/tb_sdi_sim.bde"
