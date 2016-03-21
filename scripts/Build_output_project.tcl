set base_dir "d:/Telops/FIR-00251-Output"

file attributes $base_dir/xilinx/ -readonly 0
#Build project
source $base_dir/scripts/gen_project_output.tcl
#generate bitstream
launch_runs impl_1 -to_step write_bitstream
#wait for run end
wait_on_run impl_1
#open implemented design
open_run impl_1
#Save Report
report_timing_summary -file $base_dir/Reports/fir_0251_Output_timing_summary_routed.rpt
report_clock_utilization -file $base_dir/Reports/fir_0251_Output_clock_utilization_placed.rpt
report_utilization -file $base_dir/Reports/fir_0251_Output_utilization_placed.rpt
report_utilization -file $base_dir/Reports/fir_0251_Output_utilization_placed_hier.rpt -hierarchical -hierarchical_depth 5
#Open Block diagram
open_bd_design $base_dir/xilinx/fir_0251_Output.srcs/sources_1/bd/core/code.bd
#Export hardware for sdk
export_hardware [get_files $base_dir/xilinx/fir_0251_Output.srcs/sources_1/bd/core/core.bd] [get_runs impl_1] -bitstream -dir $base_dir/sdk
exec $base_dir/scripts/updateHwSvnRev.bat
# End of this build
close_project 
