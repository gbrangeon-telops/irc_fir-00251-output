set FPGA_SIZE 160
#get root directory relative to this file
set current_file_location_absolute_path [file normalize [file dirname [info script]]]
source $current_file_location_absolute_path/setEnvironment.tcl

source $projectDir/scripts/gen_project_output.tcl
