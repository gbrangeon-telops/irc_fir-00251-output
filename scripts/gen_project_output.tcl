set proj_name "fir_0251_Output_$FPGA_SIZE"
set root_dir "d:/Telops/fir-00251-Output"
set script_dir $root_dir/scripts
set proj_dir $root_dir/xilinx
set src_dir $root_dir/src
set aldec_dir $root_dir/aldec/compile
set constr_dir $root_dir/src/constraint
set ip_dir $root_dir/IP/$FPGA_SIZE
set ip_2013_dir $root_dir/IP/2013/$FPGA_SIZE
set common_hdl_dir "d:/Telops/common_hdl"
set common_dir "d:/Telops/fir-00251-Common/VHDL"


# Create project
create_project $proj_name $proj_dir

# Set project properties
set obj [get_projects $proj_name]
if {$FPGA_SIZE == 70} {
	set_property "part" "xc7k70tfbg676-1" $obj
} elseif {$FPGA_SIZE == 160} {
	set_property "part" "xc7k160tfbg676-1" $obj
}
set_property "simulator_language" "Mixed" $obj
set_property "target_language" "VHDL" $obj

# Add common project sources 
add_files -norecurse $common_dir
add_files -norecurse $common_dir/Fifo/
add_files -norecurse $common_dir/hdr_extractor/
add_files -norecurse $common_dir/Calibration/
add_files -norecurse $common_dir/Math/
add_files -norecurse $common_dir/Ram/
add_files -norecurse $common_dir/Utilities/

#ADD common_hdl unique file(to be added by hand)
add_files $common_hdl_dir/Utilities/double_sync_vector.vhd
add_files $common_hdl_dir/Utilities/double_sync.vhd
add_files $common_hdl_dir/Utilities/sync_reset.vhd
add_files $common_hdl_dir/Utilities/sync_resetn.vhd
add_files $common_hdl_dir/gh_vhdl_lib/custom_MSI/gh_stretch.vhd

# Add IP sources
foreach subdir [glob -nocomplain -type d $ip_dir/*] {
   if {[glob -nocomplain $subdir/*.xci] != {}} {read_ip [glob $subdir/*.xci]}
}

# Add IP sources from 2013
foreach subdir [glob -nocomplain -type d $ip_2013_dir/*] {
   if {[glob -nocomplain $subdir/*.xci] != {}} {read_ip [glob $subdir/*.xci]}
}

# Create Fileslist
set filelist ""

#CLINK
set filelist  [concat $filelist [glob -nocomplain $src_dir/Clink/Hdl/*.vhd]]
set filelist  [concat $filelist [glob -nocomplain $ip_dir/CH0_CLINK/*.vhd]]

#GIGE/FB
set filelist  [concat $filelist [glob -nocomplain $common_dir/FrameBuffer/*.vhd]]
set filelist  [concat $filelist [glob -nocomplain $src_dir/FrameBuffer/HDL/*.vhd]]
set filelist  [concat $filelist [glob -nocomplain $src_dir/pleora_intf/HDL/*.vhd]]

#MGT
set filelist  [concat $filelist [glob -nocomplain $common_dir/MGT/hdl/*.vhd]]
set filelist  [concat $filelist [glob -nocomplain $src_dir/MGT/hdl/*.vhd]]

#SDI-AGC
set filelist  [concat $filelist [glob  $src_dir/SDI/AGC/HDL/netlist_$FPGA_SIZE/sysgen/*.vhd]]
set filelist  [concat $filelist [glob  $src_dir/SDI/AGC/HDL/netlist_$FPGA_SIZE/sysgen/*.coe]]
set filelist  [concat $filelist [glob  $src_dir/SDI/AGC/HDL/*.vhd]]
#Add Histrogram IP
read_ip "D:/Telops/FIR-00251-Output/src/SDI/AGC/HDL/netlist_$FPGA_SIZE/hdl_netlist/histogram_axis_tmi.srcs/sources_1/ip/histogram_axis_tmi_c_counter_binary_v12_0_0/histogram_axis_tmi_c_counter_binary_v12_0_0.xci" 
read_ip "D:/Telops/FIR-00251-Output/src/SDI/AGC/HDL/netlist_$FPGA_SIZE/hdl_netlist/histogram_axis_tmi.srcs/sources_1/ip/histogram_axis_tmi_blk_mem_gen_v8_1_0/histogram_axis_tmi_blk_mem_gen_v8_1_0.xci" 
read_ip "D:/Telops/FIR-00251-Output/src/SDI/AGC/HDL/netlist_$FPGA_SIZE/hdl_netlist/histogram_axis_tmi.srcs/sources_1/ip/histogram_axis_tmi_c_addsub_v12_0_0/histogram_axis_tmi_c_addsub_v12_0_0.xci"
#Reset Histogram IP
reset_target all [get_files {histogram_axis_tmi_c_counter_binary_v12_0_0.xci histogram_axis_tmi_c_addsub_v12_0_0.xci histogram_axis_tmi_blk_mem_gen_v8_1_0.xci}]

#SDI-ColorMap
set filelist  [concat $filelist [glob -nocomplain $src_dir/SDI/colormap/HDL/*.vhd]]
set filelist  [concat $filelist [glob -nocomplain $src_dir/SDI/colormap/*.coe]]

#SDI-SMTPE Video Source
set filelist  [concat $filelist [glob -nocomplain $src_dir/SDI/dru/*.vhd]]
set filelist  [concat $filelist [glob -nocomplain $src_dir/SDI/dru/*.ngc]]
set filelist  [concat $filelist [glob -nocomplain $src_dir/SDI/Video_Package/*.vhd]]
set filelist  [concat $filelist [glob -nocomplain $src_dir/SDI/VideoTimingGenerator/*.vhd]]

#SDI-Tranceiver
set filelist  [concat $filelist [glob -nocomplain $src_dir/SDI/GTX_wrapper/*.vhd]]

#SDI-Other (to sort out)
set filelist  [concat $filelist [glob -nocomplain $src_dir/SDI/HDL/*.vhd]]

#BD
set filelist  [concat $filelist [glob -nocomplain $src_dir/BD/*.vhd]]

#Aldec Compilations files
set filelist  [concat $filelist [glob -nocomplain $aldec_dir/*.vhd]]

#ADD ALL  PREVIOUS FILES
add_files $filelist

update_compile_order -fileset sources_1

#Add constraint files
add_files -fileset constrs_1 $constr_dir
set_property target_constrs_file $constr_dir/fir_00251_output_Target.xdc [current_fileset -constrset]
reorder_files -fileset constrs_1 -before $constr_dir/fir_00251_output_Timing.xdc $constr_dir/fir_00251_output_Physical.xdc
reorder_files -fileset constrs_1 -before $constr_dir/fir_00251_output_Target.xdc $constr_dir/fir_00251_output_Timing.xdc

#Create Block design
source $script_dir/gen_bd_core_$FPGA_SIZE.tcl

#create the bd wrapper
make_wrapper -files [get_files $proj_dir/${proj_name}.srcs/sources_1/bd/core/core.bd] -top
add_files -norecurse $proj_dir/${proj_name}.srcs/sources_1/bd/core/hdl/core_wrapper.vhd

#Add elf file (DO not add elf file in the .bit)
#add_files -norecurse $root_dir/sdk/fir_00251_output/Debug/fir_00251_output.elf

#Extract addrs map of tel2000 axil port
source $script_dir/tel_xparam_extract.tcl

#close the bd design
close_bd_design core

#make the core diagram Out of context module for faster compile time
#create_fileset -blockset -define_from core core

#Set top level design
set_property top fir_251_output_top_$FPGA_SIZE [current_fileset]

update_compile_order -fileset sources_1

#Limit max fanout (see UG949 p143 for Fanout Guidelines table)
set_property STEPS.SYNTH_DESIGN.ARGS.FANOUT_LIMIT 200 [get_runs synth_1]

#Enable post-place optimization (see UG904 p87-93 for more details)
set_property STEPS.PHYS_OPT_DESIGN.IS_ENABLED true [get_runs impl_1]
set_property STEPS.PHYS_OPT_DESIGN.ARGS.DIRECTIVE Default [get_runs impl_1]
