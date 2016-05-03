alib work
setActivelib work

setenv AGC_INTF "D:\Telops\FIR-00251-Output\src\SDI\AGC"
setenv COMMON "D:\Telops\FIR-00251-Common"
setenv COMMON_HDL "D:\Telops\Common_HDL"

#AGC
do "$AGC_INTF\HDL\build_AGC_intf.do"			  

#Common
acom "$COMMON\VHDL\Utilities\axis16_RandomMiso.vhd"

#Simulation
acom "$AGC_INTF\Sims\src\agc_tb_stim.vhd"
acom "$AGC_INTF\Sims\src\tb_agc_top.bde"


