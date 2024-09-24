alib work
setactivelib work

setenv FB_INTF "$FIR251OUT/src/FrameBuffer/Hdl"
setenv OUTPUT "$FIR251OUT"

# Package
acom "$FIR251COMMON/VHDL/FrameBuffer/FB_define.vhd"

#source
acom "$FB_INTF/datamover_wrapper.vhd"
acom "$FIR251COMMON/VHDL/FrameBuffer/axis64_img_sof_output.vhd"
acom -relax "$FB_INTF/fb_ctrl.vhd"
acom -relax "$FB_INTF/fb_fsm.vhd"

#FB top_level
acom "$FB_INTF/frameBuffer_intf.bde"

#sim
#acom "$FB_INTF/../Simulation/xil_fb_tb/xil_fb_tb.srcs/sources_1/ip/axi_interconnect_0/axi_interconnect_0_funcsim.vhdl"
#acom "$FB_INTF/../Simulation/xil_fb_tb/xil_fb_tb.srcs/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_funcsim.vhdl"
#acom "$FB_INTF/../Simulation/FrameBuffer_tb/src/fb_axi_inter_wrap.vhd"
#acom "$FB_INTF/../Simulation/FrameBuffer_tb/src/fb_blockRam_wrap.vhd"
#acom "$FB_INTF/../Simulation/FrameBuffer_tb/src/fb_stim.vhd"
#acom $FIR251COMMON/VHDL/axis32_pixel_cnt.vhd
#acom "$FB_INTF/../Simulation/FrameBuffer_tb/src/fb_intf_tb.bde"



