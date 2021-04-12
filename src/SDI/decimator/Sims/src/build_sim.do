alib work
setActivelib work


setenv COMMON "D:\Telops\FIR-00251-Common"
setenv OUTPUT   "D:\Telops\FIR-00251-Output"
setenv UTILITIES "D:\Telops\Common_HDL\Utilities"
setenv SDI_INTF "D:\Telops\FIR-00251-Output\src\SDI"


-- decimator src
do "D:\Telops\FIR-00251-Proc\src\compil_utilities.do"
acom  "$COMMON\VHDL\tel2000pkg.vhd"	 

acom "$OUTPUT\src\SDI\decimator\Hdl\sdi_decimator_define.vhd"
acom "$COMMON\VHDL\Calibration\calib_define.vhd" 
acom "$COMMON\VHDL\Buffering\BufferingDefine.vhd"
acom "$COMMON\VHDL\img_header_define.vhd"
acom "$COMMON\VHDL\FrameBuffer\FB_define.vhd"						  
						  
acom "$OUTPUT\IP\160\t_axi4_stream64_sfifo_d16384\t_axi4_stream64_sfifo_d16384_funcsim.vhdl"						  
acom "$COMMON\VHDL\Utilities\axis64_throughput_ctrl.vhd"	

acom -relax "$COMMON\VHDL\hdr_extractor\axis64_hder_extractor.vhd"

acom "$COMMON\VHDL\Utilities\axis64_reg.vhd"
acom "$OUTPUT\src\SDI\HDL\hdr_manager.vhd"

acom "$COMMON\VHDL\Utilities\axis64_RandomMiso.vhd"

acom "$COMMON\VHDL\Utilities\axis64_hole.vhd"
acom "$SDI_INTF\HDL\video_freeze_SM.vhd"
acom "$SDI_INTF\HDL\video_fwposition_SM.vhd"
acom "$SDI_INTF\HDL\video_freeze.bde"
acom "$SDI_INTF\HDL\video_ehdri_SM.vhd"
acom "$SDI_INTF\HDL\video_ehdri_selector.bde"
acom "$SDI_INTF\HDL\video_fwposition_selector.bde"
acom "$SDI_INTF\HDL\video_data_handler.bde"

acom "$OUTPUT\src\SDI\HDL\SDI_ctrl.vhd"

acom "D:\Telops\FIR-00251-Output\IP\160\fwft_sfifo_wr34_rd68_d32\fwft_sfifo_wr34_rd68_d32_sim_netlist.vhdl" 
acom "D:\Telops\FIR-00251-Common\VHDL\Fifo\t_axi4_stream_wr32_rd64_fifo.vhd"

acom "$OUTPUT\src\SDI\decimator\Hdl\sdi_column_decimator.vhd"
acom "$OUTPUT\src\SDI\decimator\Hdl\sdi_row_decimator.vhd"
acom "$OUTPUT\src\SDI\decimator\Hdl\sdi_decimator.bde"
 



-- Simulation src	 
acom -relax "$OUTPUT\src\SDI\decimator\Sims\src\stim.vhd"
acom "$OUTPUT\src\SDI\decimator\Sims\src\Top.bde"



