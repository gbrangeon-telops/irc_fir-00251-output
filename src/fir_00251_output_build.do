adel -all
alib work
SetActiveLib work

#setenv FIR251PROC "$dsn"
setenv FIR251OUT "D:\Telops\FIR-00251-Output"
setenv FIR251COMMON "D:\Telops\FIR-00251-common"

#__BEGIN COMPILE OUTPUT

do "$FIR251OUT\src\compil_utilities.do"

#Package
acom  "D:\Telops\FIR-00251-Common\VHDL\tel2000pkg.vhd"

#Common
do "$FIR251COMMON\compile_all_common.do"

#MGT
do "$FIR251OUT\src\mgt\Hdl\compil_mgt.do"

#CLINK
do "$FIR251OUT\src\clink\hdl\build_clink_intf.do"

#FRAMEBUFFER
do "$FIR251OUT\src\FrameBuffer\HDL\build_FrameBuffer_intf.do"
  
#PLEORA
do "$FIR251OUT\src\pleora_intf\HDL\build_gige_intf.do"

#SDI
do "$FIR251OUT\src\SDI\HDL\build_SDI_Intf.do"

#CORE
acom  "$FIR251OUT\src\BD\bd_wrapper.vhd"

#TOP_LEVEL
acom  "$FIR251OUT\src\fir_251_output_top.bde"
acom  "$FIR251OUT\src\fir_251_output_top_70.bde"
acom  "$FIR251OUT\src\fir_251_output_top_160.bde"

#__END COMPILE OUTPUT