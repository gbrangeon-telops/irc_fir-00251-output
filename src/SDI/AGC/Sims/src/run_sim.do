#Simulation file

asim -ses +access +r tb_agc_top
#transcript off
do "$FIR251OUT/src/SDI/AGC/Sims/src/waveform.do"
#transcript on
run 200 us
						