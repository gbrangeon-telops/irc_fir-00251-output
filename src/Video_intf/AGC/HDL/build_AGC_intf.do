alib work
setActivelib work

setenv AGC_INTF "D:\Telops\FIR-00251-Output\src\SDI\AGC"
setenv COMMON "D:\Telops\FIR-00251-Common"
setenv COMMON_HDL "D:\Telops\Common_HDL"

#Package
acom "$COMMON\VHDL\tel2000pkg.vhd"

#Common_hdl
acom "$COMMON_HDL\Utilities\SYNC_RESET.vhd"
acom "$COMMON_HDL\Utilities\double_sync.vhd"
acom "$COMMON_HDL\Utilities\double_sync_vector.vhd"
acom "$COMMON_HDL\Utilities\sync_resetn.vhd"

#Histogram
acom "$AGC_INTF\HDL\netlist\hdl_netlist\histogram_axis_tmi.srcs\sources_1\ip\histogram_axis_tmi_blk_mem_gen_v8_1_0\histogram_axis_tmi_blk_mem_gen_v8_1_0_funcsim.vhdl"
acom "$AGC_INTF\HDL\netlist\hdl_netlist\histogram_axis_tmi.srcs\sources_1\ip\histogram_axis_tmi_c_addsub_v12_0_0\histogram_axis_tmi_c_addsub_v12_0_0_funcsim.vhdl"
acom "$AGC_INTF\HDL\netlist\hdl_netlist\histogram_axis_tmi.srcs\sources_1\ip\histogram_axis_tmi_c_counter_binary_v12_0_0\histogram_axis_tmi_c_counter_binary_v12_0_0_funcsim.vhdl"

acom "$AGC_INTF\HDL\netlist\sysgen\conv_pkg.vhd"
acom "$AGC_INTF\HDL\netlist\sysgen\srl17e.vhd"
acom "$AGC_INTF\HDL\netlist\sysgen\single_reg_w_init.vhd"
acom "$AGC_INTF\HDL\netlist\sysgen\synth_reg_w_init.vhd"
acom "$AGC_INTF\HDL\netlist\sysgen\synth_reg_reg.vhd"
acom "$AGC_INTF\HDL\netlist\sysgen\synth_reg.vhd"
acom "$AGC_INTF\HDL\netlist\sysgen\xlclockdriver_rd.vhd"
acom "$AGC_INTF\HDL\netlist\sysgen\histogram_axis_tmi_entity_declarations.vhd"
acom "$AGC_INTF\HDL\netlist\sysgen\histogram_axis_tmi.vhd"

#AGC
acom "$AGC_INTF\HDL\AGC_CUMSUM.vhd"
acom -relax "$AGC_INTF\HDL\AGC_Ctrl.vhd"
acom "$AGC_INTF\HDL\AGC.bde"


