adel -all
alib work
setactivelib work

#get root directory relative to this file
set current_file_location_absolute_path [file normalize [file dirname [info script]]]
set parts [file split $current_file_location_absolute_path]
setenv root_location_absolute_path [file join {*}[lrange $parts 0 end-2]]
				 
#setenv root_location_absolute_path "D:/Telops/Git/"
#setenv FIR251PROC "$dsn"
setenv FIR251OUT "$root_location_absolute_path/irc_fir-00251-output/"
setenv FIR251PROC "$root_location_absolute_path/irc_fir-00251-proc/"
setenv FIR251COMMON "$root_location_absolute_path/irc_fir-00251-common/"
setenv COMMON_HDL "$root_location_absolute_path/irc_common_hdl/"
#__BEGIN COMPILE OUTPUT

do "$FIR251OUT/src/compil_utilities.do"

#Package
acom  "$FIR251COMMON/VHDL/tel2000pkg.vhd"

#Common
do "$FIR251COMMON/compile_all_common.do"

#MGT
do "$FIR251OUT/src/mgt/Hdl/compil_mgt.do"

#CLINK
do "$FIR251OUT/src/clink/hdl/build_clink_intf.do"

#FRAMEBUFFER
do "$FIR251OUT/src/FrameBuffer/HDL/build_FrameBuffer_intf.do"
  
#PLEORA
do "$FIR251OUT/src/pleora_intf/HDL/build_gige_intf.do"

#SDI
do "$FIR251OUT/src/SDI/HDL/build_SDI_Intf.do"

#CORE
acom  "$FIR251OUT/src/BD/bd_wrapper.vhd"

#TOP_LEVEL
acom  "$FIR251OUT/src/fir_251_output_top.bde"
acom  "$FIR251OUT/src/fir_251_output_top_70.bde"
acom  "$FIR251OUT/src/fir_251_output_top_160.bde"

#__END COMPILE OUTPUT