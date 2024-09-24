alib work
setactivelib work

setenv GIGE_INTF "$FIR251OUT/src/pleora_intf/HDL"

# GIGE
do "$FIR251OUT/src/pleora_intf/HDL/build_gige_intf.do"

# Frame Buffer
do "$FIR251OUT/src/FrameBuffer/HDL/build_FrameBuffer_intf.do"

# GIGE sim 
acom "$FIR251OUT/src/pleora_intf/Simulations/gige_intf_tb/src/gige_out_stim.vhd"

#top level tb
acom "$FIR251OUT/src/pleora_intf/Simulations/gige_intf_tb/src/pleora_tb.bde"