alib work
setactivelib work

setenv AGC_INTF "$FIR251OUT/src/SDI/AGC"

#Histogram
acom "$AGC_INTF/HDL/netlist/hdl_netlist/histogram_axis_tmi.srcs/sources_1/ip/histogram_axis_tmi_blk_mem_gen_v8_1_0/histogram_axis_tmi_blk_mem_gen_v8_1_0_funcsim.vhdl"
acom "$AGC_INTF/HDL/netlist/hdl_netlist/histogram_axis_tmi.srcs/sources_1/ip/histogram_axis_tmi_c_addsub_v12_0_0/histogram_axis_tmi_c_addsub_v12_0_0_funcsim.vhdl"
acom "$AGC_INTF/HDL/netlist/hdl_netlist/histogram_axis_tmi.srcs/sources_1/ip/histogram_axis_tmi_c_counter_binary_v12_0_0/histogram_axis_tmi_c_counter_binary_v12_0_0_funcsim.vhdl"

acom "$AGC_INTF/HDL/netlist/sysgen/conv_pkg.vhd"
acom "$AGC_INTF/HDL/netlist/sysgen/srl17e.vhd"
acom "$AGC_INTF/HDL/netlist/sysgen/single_reg_w_init.vhd"
acom "$AGC_INTF/HDL/netlist/sysgen/synth_reg_w_init.vhd"
acom "$AGC_INTF/HDL/netlist/sysgen/synth_reg_reg.vhd"
acom "$AGC_INTF/HDL/netlist/sysgen/synth_reg.vhd"
acom "$AGC_INTF/HDL/netlist/sysgen/xlclockdriver_rd.vhd"
acom "$AGC_INTF/HDL/netlist/sysgen/histogram_axis_tmi_entity_declarations.vhd"
acom "$AGC_INTF/HDL/netlist/sysgen/histogram_axis_tmi.vhd"

#AGC
do "$AGC_INTF/HDL/build_AGC_intf.do"			  

#Common
acom "$FIR251COMMON/VHDL/Utilities/axis16_RandomMiso.vhd"

#Simulation
acom "$AGC_INTF/Sims/src/agc_tb_stim.vhd"
acom "$AGC_INTF/Sims/src/tb_agc_top.bde"


