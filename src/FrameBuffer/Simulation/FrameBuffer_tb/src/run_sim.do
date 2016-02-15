#Simulation file
setenv FB_INTF "D:\Telops\FIR-00251-Output\src\FrameBuffer\Hdl"

asim -ses +access +r fb_intf_tb
#transcript off
do "$FB_INTF\..\Simulation\FrameBuffer_tb\src\waveform.do"
#transcript on
run 1 ms
						