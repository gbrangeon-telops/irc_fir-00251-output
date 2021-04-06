alib work
setActivelib work


setenv COMMON "D:\Telops\FIR-00251-Common"
setenv OUTPUT   "D:\Telops\FIR-00251-Output"
setenv UTILITIES "D:\Telops\Common_HDL\Utilities"

-- decimator src
do "D:\Telops\FIR-00251-Proc\src\compil_utilities.do"
acom  "$COMMON\VHDL\tel2000pkg.vhd"	 

acom "D:\Telops\FIR-00251-Output\src\SDI\decimator\Hdl\sdi_decimator_define.vhd"

--acom "D:\Telops\Common_HDL\gh_vhdl_lib\custom_MSI\gh_stretch.vhd"

acom "D:\Telops\FIR-00251-Output\src\SDI\decimator\Hdl\sdi_decimator_ctrl_intf.vhd"
acom "D:\Telops\FIR-00251-Output\src\SDI\decimator\Hdl\sdi_decimator.bde"

-- Simulation src	 
acom "D:\Telops\FIR-00251-Output\src\SDI\decimator\Sims\src\sdi_decimator_testbench_pkg.vhd"

acom -relax "D:\Telops\FIR-00251-Output\src\SDI\decimator\Sims\src\stim.vhd"
acom "D:\Telops\FIR-00251-Output\src\SDI\decimator\Sims\src\Top.bde"



