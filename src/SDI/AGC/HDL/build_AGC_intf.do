alib work
setactivelib work

setenv AGC_INTF "$FIR251OUT/src/SDI/AGC"


#AGC
acom "$AGC_INTF/HDL/AGC_CUMSUM.vhd"
acom -relax "$AGC_INTF/HDL/AGC_Ctrl.vhd"
acom "$AGC_INTF/HDL/AGC.bde"


