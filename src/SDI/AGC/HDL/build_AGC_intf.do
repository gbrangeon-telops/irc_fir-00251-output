alib work
setActivelib work

setenv AGC_INTF "D:\Telops\FIR-00251-Output\src\SDI\AGC"
setenv COMMON "D:\Telops\FIR-00251-Common"
setenv COMMON_HDL "D:\Telops\Common_HDL"


#AGC
acom "$AGC_INTF\HDL\AGC_CUMSUM.vhd"
acom -relax "$AGC_INTF\HDL\AGC_Ctrl.vhd"
acom "$AGC_INTF\HDL\AGC.bde"


