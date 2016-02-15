alib work
setActivelib work

setenv FB_INTF "D:\Telops\FIR-00251-Output\src\FrameBuffer\Hdl"
setenv COMMON "D:\Telops\FIR-00251-Common"
setenv COMMON_HDL "D:\Telops\Common_HDL"
setenv OUTPUT "D:\Telops\FIR-00251-Output"

# Package
acom  "D:\Telops\FIR-00251-Common\VHDL\tel2000pkg.vhd"
acom "$FB_INTF\FB_define.vhd"

#common_hdl
acom "$COMMON_HDL\Utilities\SYNC_RESET.vhd"
acom "$COMMON_HDL\Utilities\double_sync.vhd"
acom "$COMMON_HDL\Utilities\double_sync_vector.vhd"
acom "$COMMON_HDL\Utilities\sync_resetn.vhd"

#source
acom "$OUTPUT\IP\axi_fb_datamover\axi_fb_datamover_funcsim.vhdl"
acom "$FB_INTF\datamover_wrapper.vhd"
acom "$FB_INTF\axis32_img_sof.vhd"
acom -relax "$FB_INTF\fb_ctrl.vhd"
acom -relax "$FB_INTF\fb_fsm.vhd"

--FB top_level
acom "$FB_INTF\frameBuffer_intf.bde"

#sim
#acom "$FB_INTF\..\Simulation\xil_fb_tb\xil_fb_tb.srcs\sources_1\ip\axi_interconnect_0\axi_interconnect_0_funcsim.vhdl"
#acom "$FB_INTF\..\Simulation\xil_fb_tb\xil_fb_tb.srcs\sources_1\ip\blk_mem_gen_0\blk_mem_gen_0_funcsim.vhdl"
#acom "$FB_INTF\..\Simulation\FrameBuffer_tb\src\fb_axi_inter_wrap.vhd"
#acom "$FB_INTF\..\Simulation\FrameBuffer_tb\src\fb_blockRam_wrap.vhd"
#acom "$FB_INTF\..\Simulation\FrameBuffer_tb\src\fb_stim.vhd"
#acom D:\Telops\FIR-00251-Common\VHDL\axis32_pixel_cnt.vhd
#acom "$FB_INTF\..\Simulation\FrameBuffer_tb\src\fb_intf_tb.bde"



