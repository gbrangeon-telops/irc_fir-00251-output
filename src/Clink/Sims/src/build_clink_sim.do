alib work
setActivelib work

setenv CLINK_INTF "D:\Telops\FIR-00251-Output\src\Clink\Hdl"
setenv COMMON "D:\Telops\FIR-00251-Common"
setenv COMMON_HDL "D:\Telops\Common_HDL"
setenv OUTPUT "D:\Telops\FIR-00251-Output"
setenv IP	  "D:\Telops\FIR-00251-Output\IP\70"
setenv UTILITIES "D:\Telops\Common_HDL\Utilities"
setenv CLINK_INTF_SIM "D:\Telops\FIR-00251-Output\src\Clink\Sims\src"


acom "$CLINK_INTF\CLINK_define.vhd"
acom  "$COMMON\VHDL\tel2000pkg.vhd"

acom  "$UTILITIES\sync_reset.vhd"	
acom  "$UTILITIES\sync_resetn.vhd"
acom  "$UTILITIES\double_sync.vhd"	
acom  "D:\Telops\Common_HDL\gh_vhdl_lib\custom_MSI\gh_stretch.vhd"


acom "$CLINK_INTF\LineFraming.vhd"	 

acom "$IP\t_axi4_stream64_afifo_d16\t_axi4_stream64_afifo_d16_funcsim.vhdl" 
acom "$IP\t_axi4_stream64_sfifo_d1024_packet\t_axi4_stream64_sfifo_d1024_packet_funcsim.vhdl"
acom "$IP\clink_clk_wiz\clink_clk_wiz_funcsim.vhdl"


acom  "$COMMON\VHDL\Fifo\t_axi4_stream64_fifo.vhd" 
 
acom  "$IP\clink_clk_wiz\clink_clk_wiz_clk_wiz.vhd" 
acom  "$IP\clink_clk_wiz\clink_clk_wiz.vhd"

acom "$CLINK_INTF\CL_LineBuffer.bde"


acom "D:\Telops\FIR-00251-Output\src\Clink\Sims\src\clink_stim.vhd"
acom "$CLINK_INTF\Clink_port_mapper.vhd"
acom "$CLINK_INTF\Clink_Phy.vhd"
acom "$CLINK_INTF\clink_ctrl.vhd" 

##Simulation 

acom "$CLINK_INTF_SIM\clink_intf_sim.bde" 
acom "$CLINK_INTF_SIM\clink_stim.vhd"
acom "$CLINK_INTF_SIM\clink_tb.bde"


## Package
#acom -nowarn DAGGEN_0523 \
# --"$CLINK_INTF\CLINK_define.vhd" \
# "$CLINK_INTF\Clink_Phy.vhd" \
# "$CLINK_INTF\clink_port_mapper.vhd" \
# "$CLINK_INTF\clink_ctrl.vhd" \
# "$CLINK_INTF\LineFraming.vhd" \
# "$CLINK_INTF\CL_LineBuffer.bde" \
# "$CLINK_INTF\clink_intf.bde"
# "$IP\t_axi4_stream64_afifo_d16\t_axi4_stream64_afifo_d16_funcsim.vhd\" 
# "$IP\t_axi4_stream64_sfifo_d1024_packet\t_axi4_stream64_sfifo_d1024_packet_funcsim.vhd\"
