proc create_output_sw {} {
set current_path [exec pwd]
global sdkDir

#Switch directory
cd "$sdkDir"

#Set workspace
setws -switch "$sdkDir"

#Create HW projects
if {[catch {createhw -name hw_platform_70 -hwspec "$sdkDir/fir_251_output_top_70.hdf"} errMsg]} {
    if { $errMsg == "Failed to create Hardware platform project hw_platform_70" } {
        puts $errMsg
    } else {
        error $errMsg
    }
}
if {[catch {createhw -name hw_platform_160 -hwspec "$sdkDir/fir_251_output_top_160.hdf"} errMsg]} {
        if { $errMsg == "Failed to create Hardware platform project hw_platform_160" } {
        puts $errMsg
    } else {
        error $errMsg
    }
}

#Create BSP projects 
if {[catch {createbsp -name standalone_bsp_70 -hwproject hw_platform_70 -proc MCU_microblaze_0} errMsg]} {
    if { $errMsg == "Failed to create BSP project standalone_bsp_70" } {
        puts $errMsg
    } else {
        error $errMsg
    }
}
if {[catch {createbsp -name standalone_bsp_160 -hwproject hw_platform_160 -proc MCU_microblaze_0} errMsg]} {
    if { $errMsg == "Failed to create BSP project standalone_bsp_160" } {
        puts $errMsg
    } else {
        error $errMsg
    }
}


#Import projects
importprojects "$sdkDir"


#Import makefile
file delete "$sdkDir/fir_00251_output_70/makefile.defs"
file link "$sdkDir/fir_00251_output_70/makefile.defs" "$sdkDir/makefile.defs"
file delete "$sdkDir/fir_00251_output_160/makefile.defs"
file link "$sdkDir/fir_00251_output_160/makefile.defs" "$sdkDir/makefile.defs"

#Clean projects
projects -clean

#Configure in release mode
configapp -app fir_00251_output_70 build-config release
configapp -app fir_00251_output_160 build-config release

#Return to initial path
cd $current_path
}

proc build_output_sw {} {
set current_path [exec pwd]
global sdkDir
#Switch directory
cd "$sdkDir/"

#Set workspace
setws -switch "$sdkDir/"

#Clean projects
projects -clean

#Build projects
projects -build -type bsp -name standalone_bsp_70
projects -build -type app -name fir_00251_output_70
projects -build -type bsp -name standalone_bsp_160
projects -build -type app -name fir_00251_output_160

#Return to initial path
cd $current_path
}
