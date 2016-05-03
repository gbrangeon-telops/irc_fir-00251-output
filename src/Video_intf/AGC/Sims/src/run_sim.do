#Simulation file

asim -ses +access +r tb_agc_top
#transcript off
do "D:\Telops\FIR-00251-Output\src\SDI\AGC\Sims\src\waveform.do"
#transcript on
run 200 us
						