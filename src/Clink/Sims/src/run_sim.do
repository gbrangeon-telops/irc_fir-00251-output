#Simulation file

asim -ses +access +r clink_tb
#transcript off
do "$FIR251OUT/src/Clink/Sims/src/waveform.do"
#transcript on
-- run 20 us
-- run 2500 us	
run 2000 us