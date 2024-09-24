alib work
setactivelib work

#get root directory relative to this file
set current_file_location_absolute_path [file normalize [file dirname [info script]]]
set parts [file split $current_file_location_absolute_path]
setenv root_location_absolute_path [file join {*}[lrange $parts 0 end-5]]
				 
setenv FIR251OUT "$root_location_absolute_path/irc_fir-00251-output/"
setenv FIR251PROC "$root_location_absolute_path/irc_fir-00251-proc/"
setenv FIR251COMMON "$root_location_absolute_path/irc_fir-00251-common/"
setenv COMMON_HDL "$root_location_absolute_path/irc_common_hdl/"
setenv USART "$FIR251COMMON/VHDL/USART"
setenv FIR251COMMON "$FIR251COMMON/VHDL"


setenv CLINK_INTF "$FIR251OUT/src/Clink/Hdl"
setenv OUTPUT "$FIR251OUT"
setenv IP	  "$OUTPUT/IP/70"
setenv UTILITIES "$COMMON_HDL/Utilities"
setenv CLINK_INTF_SIM "$OUTPUT/src/Clink/Sims/src"


acom "$CLINK_INTF/CLINK_define.vhd"
acom  "$FIR251COMMON/VHDL/tel2000pkg.vhd"

acom  "$UTILITIES/sync_reset.vhd"	
acom  "$UTILITIES/sync_resetn.vhd"
acom  "$UTILITIES/double_sync.vhd"	
acom  "$COMMON_HDL/gh_vhdl_lib/custom_MSI/gh_stretch.vhd"


acom "$CLINK_INTF/LineFraming.vhd"	 

acom "$IP/t_axi4_stream64_afifo_d16/t_axi4_stream64_afifo_d16_funcsim.vhdl" 
acom "$IP/t_axi4_stream64_sfifo_d1024_packet/t_axi4_stream64_sfifo_d1024_packet_funcsim.vhdl"
acom "$IP/clink_clk_wiz/clink_clk_wiz_funcsim.vhdl"


acom  "$FIR251COMMON/VHDL/Fifo/t_axi4_stream64_fifo.vhd" 
 
acom  "$IP/clink_clk_wiz/clink_clk_wiz_clk_wiz.vhd" 
acom  "$IP/clink_clk_wiz/clink_clk_wiz.vhd"

acom "$CLINK_INTF/CL_LineBuffer.bde"


acom "$FIR251OUT/src/Clink/Sims/src/clink_stim.vhd"
acom "$CLINK_INTF/Clink_port_mapper.vhd"
acom "$CLINK_INTF/Clink_Phy.vhd"
acom "$CLINK_INTF/clink_ctrl.vhd" 

##Simulation 

acom "$CLINK_INTF_SIM/clink_intf_sim.bde" 
acom "$CLINK_INTF_SIM/clink_stim.vhd"
acom "$CLINK_INTF_SIM/clink_tb.bde"


## Package
#acom -nowarn DAGGEN_0523 \
# --"$CLINK_INTF/CLINK_define.vhd" \
# "$CLINK_INTF/Clink_Phy.vhd" \
# "$CLINK_INTF/clink_port_mapper.vhd" \
# "$CLINK_INTF/clink_ctrl.vhd" \
# "$CLINK_INTF/LineFraming.vhd" \
# "$CLINK_INTF/CL_LineBuffer.bde" \
# "$CLINK_INTF/clink_intf.bde"
# "$IP/t_axi4_stream64_afifo_d16/t_axi4_stream64_afifo_d16_funcsim.vhd/" 
# "$IP/t_axi4_stream64_sfifo_d1024_packet/t_axi4_stream64_sfifo_d1024_packet_funcsim.vhd/"
