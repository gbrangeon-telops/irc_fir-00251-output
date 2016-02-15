alib work
setActivelib work

setenv GIGE_INTF "D:\Telops\FIR-00251-Output\src\pleora_intf\HDL"

# GIGE
do "D:\Telops\FIR-00251-Output\src\pleora_intf\HDL\build_gige_intf.do"

# Frame Buffer
do "D:\Telops\FIR-00251-Output\src\FrameBuffer\HDL\build_FrameBuffer_intf.do"

# GIGE sim 
acom "D:\Telops\FIR-00251-Output\src\pleora_intf\Simulations\gige_intf_tb\src\gige_out_stim.vhd"

#top level tb
acom "D:\Telops\FIR-00251-Output\src\pleora_intf\Simulations\gige_intf_tb\src\pleora_tb.bde"