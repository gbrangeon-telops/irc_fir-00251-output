
#Import build functions
source "D:/Telops/FIR-00251-Output/sdk/sdk_output_cmd.tcl"

#Parse arguments
if {$argc >= 1} {set create_project [lindex $argv 0]} else {set create_project 1}

#Create project
if {$create_project == 1} {
   create_output_sw
}

#prebuild
source "D:/Telops/FIR-00251-Output/bin/scripts/generateBuildInfoFile.tcl"
set scriptEnvironment "D:/Telops/FIR-00251-Output/bin/scripts/setEnvironment.tcl"
genCore $scriptEnvironment "70" 
genCore $scriptEnvironment "160" 

#Build project
build_output_sw
