set base_dir "d:/Telops/FIR-00251-Output"


#Build project PelicanD
source $base_dir/scripts/gen_project_output.tcl
#generate bitstream
launch_runs impl_1 -to_step write_bitstream
#wait for run end
wait_on_run impl_1
#open implemented design
open_run impl_1
#Open Block diagram
open_bd_design {D:/Telops/FIR-00251-Output/xilinx/fir_0251_Output.srcs/sources_1/bd/core/code.bd}
#Export hardware for sdk
export_hardware [get_files D:/Telops/FIR-00251-Output/xilinx/fir_0251_Output.srcs/sources_1/bd/core/core.bd] [get_runs impl_1] -bitstream -dir D:/Telops/FIR-00251-Output/sdk
# End of this build
close_project 
