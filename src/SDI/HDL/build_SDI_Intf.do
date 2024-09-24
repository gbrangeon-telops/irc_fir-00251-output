alib work
setactivelib work

setenv SDI_INTF "$FIR251OUT/src/SDI"
setenv OUTPUT_IP "$FIR251COMMON/IP/70"

# Package
acom  "$FIR251COMMON/VHDL/FrameBuffer/FB_define.vhd"
acom "$FIR251COMMON/VHDL/Calibration/calib_define.vhd"
acom "$FIR251COMMON/VHDL/img_header_define.vhd"  
acom -relax "$FIR251COMMON/VHDL/hdr_extractor/axis64_hder_extractor.vhd" 	
acom "$FIR251COMMON/VHDL/decimator/Hdl/decimator_define.vhd" 


#colormap
acom "$SDI_INTF/colormap/HDL/x_to_add.bde"
acom "$SDI_INTF/colormap/HDL/colormap_mem_wrap.vhd"
acom "$SDI_INTF/colormap/HDL/color_map_mem.bde"
acom "$SDI_INTF/colormap/HDL/colormap_top.bde"

#video generator
acom "$SDI_INTF/HDL/tlast_generator.vhd"
acom "$SDI_INTF/HDL/pattern_generator.vhd"
acom "$SDI_INTF/HDL/video_generator.bde"

#videoScaler
acom "$SDI_INTF/HDL/video_scaler_wrapper.vhd"

#package
acom "$SDI_INTF/Video_Package/anc_edh_pkg.vhd"
acom "$SDI_INTF/Video_Package/hdsdi_pkg.vhd"
acom "$SDI_INTF/Video_Package/multigenHD_pkg.vhd"

#mgt output
acom "$SDI_INTF/dru/dru_maskencoder.vhd"
acom "$SDI_INTF/dru/dru_bshift10to10.vhd"
acom "$SDI_INTF/dru/dru_control.vhd"
acom "$SDI_INTF/dru/dru_rot20.vhd"

acom "$SDI_INTF/GTX_wrapper/x7gtx_reset_control.vhd"
acom "$SDI_INTF/GTX_wrapper/sdi_rate_detect.vhd"
acom "$SDI_INTF/GTX_wrapper/x7gtx_sdi_drp_control.vhd"
acom "$SDI_INTF/GTX_wrapper/x7gtx_sdi_control.vhd"
acom "$SDI_INTF/GTX_wrapper/x7gtx_sdi_rxtx_wrapper.vhd"

acom "$SDI_INTF/VideoTimingGenerator/multigenHD_output.vhd"
acom "$SDI_INTF/VideoTimingGenerator/multigenHD_horz.vhd"
acom "$SDI_INTF/VideoTimingGenerator/multigenHD_vert.vhd"
acom "$SDI_INTF/VideoTimingGenerator/multigenHD.vhd"
acom "$SDI_INTF/VideoTimingGenerator/k7_sdi_rxtx.vhd"

acom "$SDI_INTF/VideoTimingGenerator/k7gtx_sdi_wrapper_gt.vhd"
acom "$SDI_INTF/VideoTimingGenerator/k7gtx_sdi_wrapper.vhd"

acom "$SDI_INTF/HDL/xilinx_tpg.vhd"

acom "$SDI_INTF/HDL/sdi_datamover_wrapper.vhd"

acom "$SDI_INTF/HDL/SDI_ctrl.vhd"
acom "$SDI_INTF/HDL/gtx_reset_process.vhd"
acom -relax "$SDI_INTF/HDL/fb_sdi_fsm.vhd"
acom "$SDI_INTF/HDL/BadFrameResync.vhd"
acom "$FIR251COMMON/VHDL/FrameBuffer/axis64_img_sof_output.vhd" 
acom "$SDI_INTF/HDL/hdr_manager.vhd" 

acom "$SDI_INTF/HDL/video_freeze_SM.vhd"
acom "$SDI_INTF/HDL/video_fwposition_SM.vhd"
acom "$SDI_INTF/HDL/video_freeze.bde"
acom "$SDI_INTF/HDL/video_ehdri_SM.vhd"
acom "$SDI_INTF/HDL/video_ehdri_selector.bde"
acom "$SDI_INTF/HDL/video_fwposition_selector.bde"
acom "$SDI_INTF/HDL/video_data_handler.bde"

#Decimator
do "$FIR251COMMON/VHDL/decimator/Hdl/build_decimator.do"

#AGC
do "$SDI_INTF/AGC/HDL/build_AGC_intf.do"

#top level
acom "$SDI_INTF/HDL/sdi_output.bde"


