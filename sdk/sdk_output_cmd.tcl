

cd "d:/Telops/fir-00251-Output/sdk/"

importprojects D:/Telops/FIR-00251-Output/sdk
createhw -name hw_platform_70 -hwspec D:/Telops/FIR-00251-Output/sdk/fir_251_output_top_70.hdf
createbsp -name standalone_bsp_70 -hwproject hw_platform_70 -proc MCU_microblaze_0
createhw -name hw_platform_160 -hwspec D:/Telops/FIR-00251-Output/sdk/fir_251_output_top_160.hdf
createbsp -name standalone_bsp_160 -hwproject hw_platform_160 -proc MCU_microblaze_0

configbsp -bsp standalone_bsp_70 stdin fpga_comm_uart
configbsp -bsp standalone_bsp_70 stdout fpga_comm_uart
updatemss -mss standalone_bsp_70/system.mss
configbsp -bsp standalone_bsp_160 stdin fpga_comm_uart
configbsp -bsp standalone_bsp_160 stdout fpga_comm_uart
updatemss -mss standalone_bsp_160/system.mss

#Clean projects
projects -clean

configapp -app fir_00251_output_70 build-config release
configapp -app fir_00251_output_160 build-config release

projects -build -type bsp -name standalone_bsp_70
projects -build -type app -name fir_00251_proc_70
projects -build -type bsp -name standalone_bsp_160
projects -build -type app -name fir_00251_proc_160