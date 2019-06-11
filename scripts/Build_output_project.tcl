file attributes $base_dir/xilinx/ -readonly 0

#Build project
source $base_dir/scripts/gen_project_output_${FPGA_SIZE}.tcl

#Generate bitstream
launch_runs impl_1 -to_step write_bitstream

#Wait for run end
wait_on_run impl_1

#Open implemented design
open_run impl_1

#Open Block diagram
open_bd_design $base_dir/xilinx/fir_0251_Output_${FPGA_SIZE}.srcs/sources_1/bd/core/core.bd

#Export hardware for sdk
#export_hardware [get_files $base_dir/xilinx/fir_0251_Output_${FPGA_SIZE}.srcs/sources_1/bd/core/core.bd] [get_runs impl_1] -bitstream -dir $base_dir/sdk
file copy -force D:/Telops/FIR-00251-Output/xilinx/fir_0251_Output_${FPGA_SIZE}.runs/impl_1/fir_251_output_top_${FPGA_SIZE}.sysdef D:/Telops/FIR-00251-Output/sdk/fir_251_output_top_${FPGA_SIZE}.hdf
#write_hwdef -force -file D:/Telops/FIR-00251-Output/sdk/fir_251_output_top_${FPGA_SIZE}.hdf
exec $base_dir/scripts/updateHwSvnRev.bat ${FPGA_SIZE}

#Save Report
report_timing_summary -file $base_dir/Reports/fir_0251_Output_${FPGA_SIZE}_timing_summary_routed.rpt
report_power -file $base_dir/Reports/fir_0251_Output_${FPGA_SIZE}_power.rpt
report_clock_utilization -file $base_dir/Reports/fir_0251_Output_${FPGA_SIZE}_clock_utilization_placed.rpt
report_utilization -file $base_dir/Reports/fir_0251_Output_${FPGA_SIZE}_utilization_placed.rpt
report_utilization -file $base_dir/Reports/fir_0251_Output_${FPGA_SIZE}_utilization_placed_hier.rpt -hierarchical -hierarchical_depth 5

#End of this build
close_project 
