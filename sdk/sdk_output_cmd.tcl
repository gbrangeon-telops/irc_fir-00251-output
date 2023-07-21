proc create_output_sw {} {
set current_path [exec pwd]

#Switch directory
cd "d:/Telops/fir-00251-Output/sdk"

#Set workspace
setws -switch "d:/Telops/fir-00251-Output/sdk"

#Create HW projects
createhw -name hw_platform_70 -hwspec "D:/Telops/FIR-00251-Output/sdk/fir_251_output_top_70.hdf"
createhw -name hw_platform_160 -hwspec "D:/Telops/FIR-00251-Output/sdk/fir_251_output_top_160.hdf"

#Create BSP projects
createbsp -name standalone_bsp_70 -hwproject hw_platform_70 -proc MCU_microblaze_0
createbsp -name standalone_bsp_160 -hwproject hw_platform_160 -proc MCU_microblaze_0

#Import projects
importprojects "D:/Telops/FIR-00251-Output/sdk"

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

#Switch directory
cd "d:/Telops/fir-00251-Output/sdk"

#Set workspace
setws -switch "d:/Telops/fir-00251-Output/sdk"

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
