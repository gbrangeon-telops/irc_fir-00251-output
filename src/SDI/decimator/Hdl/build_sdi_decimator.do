alib work
setActivelib work

setenv COMMON "D:\Telops\FIR-00251-Common"
setenv UTILITIES "D:\Telops\Common_HDL\Utilities"

# Package
acom "$COMMON\VHDL\tel2000pkg.vhd"	 
acom "D:\Telops\FIR-00251-Output\src\SDI\decimator\Hdl\sdi_decimator_define.vhd"

#common_hdl
do "D:\Telops\FIR-00251-Proc\src\compil_utilities.do"

#source 
acom "D:\Telops\FIR-00251-Output\src\SDI\decimator\Hdl\sdi_decimator_ctrl_intf.vhd"

#Top
acom "D:\Telops\FIR-00251-Output\src\SDI\decimator\Hdl\sdi_decimator.bde"
											  
