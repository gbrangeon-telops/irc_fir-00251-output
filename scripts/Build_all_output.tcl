#Import build fonction
#get root directory relative to this file
set current_file_location_absolute_path [file normalize [file dirname [info script]]]
source $current_file_location_absolute_path/setEnvironment.tcl

source $projectDir/scripts/create_build_output.tcl
puts projectDir=$projectDir
create_build_output output_70
create_build_output output_160
