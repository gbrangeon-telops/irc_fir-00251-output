alib work
setActivelib work

setenv CLINK_INTF "D:\Telops\FIR-00251-Output\src\Clink\Hdl"
setenv COMMON "D:\Telops\FIR-00251-Common"
setenv COMMON_HDL "D:\Telops\Common_HDL"
setenv OUTPUT "D:\Telops\FIR-00251-Output"



# Package
acom -nowarn DAGGEN_0523 "D:\Telops\FIR-00251-Common\VHDL\tel2000pkg.vhd" \
 "$CLINK_INTF\CLINK_define.vhd" \
 "D:\Telops\FIR-00251-Common\VHDL\img_header_define.vhd" \
 "$COMMON_HDL\Utilities\SYNC_RESET.vhd" \
 "$COMMON_HDL\Utilities\double_sync.vhd" \
 "$COMMON_HDL\Utilities\double_sync_vector.vhd" \
 "$COMMON_HDL\Utilities\sync_resetn.vhd" \
 "$COMMON_HDL\gh_vhdl_lib\custom_MSI\gh_stretch.vhd" \
 -relax "D:\Telops\FIR-00251-Common\VHDL\hdr_extractor\hder_extractor.vhd" \
 "$CLINK_INTF\axis_lane_adj.vhd" \
 "$CLINK_INTF\Clink_Phy.vhd" \
 "$CLINK_INTF\clink_portmap.vhd" \
 "$CLINK_INTF\clink_ctrl.vhd" \
 "$OUTPUT\IP\AXI4_Stream32_to_64_Output\AXI4_Stream32_to_64_Output_funcsim.vhdl" \
 "$OUTPUT\src\mgt\Hdl\AXI4_Stream32_to_64_output_wrapper.vhd" \
 "$COMMON\VHDL\Fifo\t_axi4_stream64_fifo.vhd" \
 "$CLINK_INTF\LineFraming.vhd" \
 "$CLINK_INTF\CL_LineBuffer.bde" \
 "D:\Telops\FIR-00251-Output\IP\CH0_CLINK\CH0_CLINK_selectio_wiz.vhd" \
 "D:\Telops\FIR-00251-Output\IP\CH0_CLINK\CH0_CLINK.vhd" \
 "D:\Telops\FIR-00251-Output\IP\CH1_CLINK\CH1_CLINK_selectio_wiz.vhd" \
 "D:\Telops\FIR-00251-Output\IP\CH1_CLINK\CH1_CLINK.vhd" \
 "D:\Telops\FIR-00251-Output\IP\CH2_CLINK\CH2_CLINK_selectio_wiz.vhd" \
 "D:\Telops\FIR-00251-Output\IP\CH2_CLINK\CH2_CLINK.vhd" \
 "$CLINK_INTF\Clink_output_pix_count.vhd" \
 "$CLINK_INTF\clink_intf.bde"

#sim 
--acom "$CLINK_INTF\..\Simulations\clink_tb\src\axis_lane_stim.vhd"
--acom "$CLINK_INTF\..\Simulations\clink_tb\src\clink_stim.vhd"
--acom "D:\Telops\FIR-00251-Output\IP\tb_clink_ch_reiv\tb_clink_ch_reiv_funcsim.vhdl"
--acom "D:\Telops\FIR-00251-Output\src\Clink\Simulations\clink_tb\src\clink_tb.bde"

