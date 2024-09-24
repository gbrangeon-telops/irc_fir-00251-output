#Simulation file

asim -ses +access +r pleora_tb
#transcript off
do "$FIR251OUT/src/pleora_intf/Simulations/gige_intf_tb/src/waveform.do"
#transcript on
run 800 us
						