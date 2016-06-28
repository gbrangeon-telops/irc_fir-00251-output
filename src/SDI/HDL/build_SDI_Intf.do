alib work
setActivelib work

setenv SDI_INTF "D:\Telops\FIR-00251-Output\src\SDI\"
setenv COMMON "D:\Telops\FIR-00251-Common"
setenv COMMON_HDL "D:\Telops\Common_HDL"
setenv OUTPUT "D:\Telops\FIR-00251-Output"
setenv OUTPUT_IP "D:\Telops\FIR-00251-Output\IP"
setenv FB_INTF "D:\Telops\FIR-00251-Output\src\FrameBuffer\HDL"

# Package
acom  "D:\Telops\FIR-00251-Common\VHDL\tel2000pkg.vhd"
acom  "$FB_INTF\FB_define.vhd"

#common_hdl
acom "$COMMON_HDL\Utilities\double_sync.vhd"
acom "$COMMON_HDL\Utilities\double_sync_vector.vhd"
acom "$COMMON_HDL\Utilities\sync_reset.vhd"
acom "$COMMON_HDL\Utilities\sync_resetn.vhd"
acom "$COMMON\VHDL\Fifo\t_axi4_stream32_fifo.vhd"
acom "$COMMON\VHDL\Fifo\t_axi4_stream16_fifo.vhd"
acom "$COMMON\VHDL\Utilities\axis32_sw_2_1_comb.vhd"
acom "$COMMON\VHDL\Utilities\axis_sync_flow.vhd"

#source
acom "$OUTPUT\IP\axi_fb_datamover\axi_fb_datamover_funcsim.vhdl"
acom "$FB_INTF\datamover_wrapper.vhd"

#colormap
acom "$OUTPUT_IP\ip_axis_fi16tofp32\ip_axis_fi16tofp32_funcsim.vhdl"
acom "$COMMON\VHDL\Math\axis_fi16tofp32.vhd"
acom "$OUTPUT_IP\ip_axis_fi32tofp32\ip_axis_fi32tofp32_funcsim.vhdl"
acom "$COMMON\VHDL\Math\axis_fi32tofp32.vhd"
acom "$COMMON\VHDL\Math\fi16_axis_min.vhd"
acom "$OUTPUT_IP\ip_fp32_axis_divide\ip_fp32_axis_divide_funcsim.vhdl"
acom "$COMMON\VHDL\Math\fp32_axis_divide.vhd"
acom "$OUTPUT_IP\ip_fp32_axis_mult\ip_fp32_axis_mult_funcsim.vhdl"
acom "$COMMON\VHDL\Math\fp32_axis_mult.vhd"
acom "$OUTPUT_IP\ip_axis_fp32tofi16\ip_axis_fp32tofi16_funcsim.vhdl"
acom "$COMMON\VHDL\Math\axis_fp32tofi16.vhd"
acom "$SDI_INTF\HDL\x_to_add.bde"

acom "$OUTPUT_IP\blk_mem_gen_0\blk_mem_gen_0_funcsim.vhdl"
#acom "$SDI_INTF\HDL\colormap_mem.vhd"

#TEST JBO
acom "$COMMON\VHDL\Utilities\axis16_to_native.vhd"
acom "$COMMON\VHDL\Utilities\native_to_axis32.vhd"
acom "$SDI_INTF\colormap\HDL\colormap_mem_wrap.vhd"
acom "$SDI_INTF\colormap\HDL\color_map_mem.bde"
acom "$SDI_INTF\HDL\colormap_top.bde"

#video generator
acom "$SDI_INTF\HDL\tlast_generator.vhd"
acom "$SDI_INTF\HDL\pattern_generator.vhd"
acom "$SDI_INTF\HDL\video_generator.bde"

#videoScaler
acom "$SDI_INTF\HDL\video_scaler_wrapper.vhd"

#package
acom "$SDI_INTF\Video_Package\anc_edh_pkg.vhd"
acom "$SDI_INTF\Video_Package\hdsdi_pkg.vhd"
acom "$SDI_INTF\Video_Package\multigenHD_pkg.vhd"

#mgt output
acom "$SDI_INTF\dru\dru_maskencoder.vhd"
acom "$SDI_INTF\dru\dru_bshift10to10.vhd"
acom "$SDI_INTF\dru\dru_control.vhd"
acom "$SDI_INTF\dru\dru_rot20.vhd"

acom "$SDI_INTF\GTX_wrapper\x7gtx_reset_control.vhd"
acom "$SDI_INTF\GTX_wrapper\sdi_rate_detect.vhd"
acom "$SDI_INTF\GTX_wrapper\x7gtx_sdi_drp_control.vhd"
acom "$SDI_INTF\GTX_wrapper\x7gtx_sdi_control.vhd"
acom "$OUTPUT_IP\smpte_sdi\smpte_sdi_funcsim.vhdl"
acom "$SDI_INTF\GTX_wrapper\x7gtx_sdi_rxtx_wrapper.vhd"

acom "$OUTPUT_IP\blk_mem_gen_1\blk_mem_gen_1_funcsim.vhdl"
acom "$SDI_INTF\VideoTimingGenerator\multigenHD_output.vhd"
acom "$SDI_INTF\VideoTimingGenerator\multigenHD_horz.vhd"
acom "$SDI_INTF\VideoTimingGenerator\multigenHD_vert.vhd"
acom "$SDI_INTF\VideoTimingGenerator\multigenHD.vhd"
acom "$SDI_INTF\VideoTimingGenerator\k7_sdi_rxtx.vhd"

acom "$SDI_INTF\VideoTimingGenerator\k7gtx_sdi_wrapper_gt.vhd"
acom "$SDI_INTF\VideoTimingGenerator\k7gtx_sdi_wrapper.vhd"

acom "$OUTPUT_IP\v_tpg_0\v_tpg_0_funcsim.vhdl"
acom "$SDI_INTF\HDL\xilinx_tpg.vhd"

acom "$OUTPUT_IP\axi_sdi_fb_datamover\axi_sdi_fb_datamover_funcsim.vhdl"
acom "$SDI_INTF\HDL\sdi_datamover_wrapper.vhd"

acom "$SDI_INTF\HDL\SDI_ctrl.vhd"
acom "$SDI_INTF\HDL\gtx_reset_process.vhd"
acom -relax "$SDI_INTF\HDL\fb_sdi_fsm.vhd"
acom "$SDI_INTF\HDL\BadFrameResync.vhd"
acom "$SDI_INTF\HDL\axis32_img_sof_output.vhd"
acom "$COMMON\VHDL\Utilities\axil32_addr_demux4.vhd"

#AGC
do "$SDI_INTF\AGC\HDL\build_AGC_intf.do"

#SDI Output top level
acom "$SDI_INTF\HDL\sdi_output.bde"


