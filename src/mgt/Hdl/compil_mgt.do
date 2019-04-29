alib work
setActivelib work

setenv MGT "D:\Telops\FIR-00251-Output\src\mgt\Hdl"
setenv OUTPUT "D:\Telops\FIR-00251-Output"

 acom -nowarn DAGGEN_0523 \
 "$MGT\mgt_stream_unmerger.vhd" \
 "$MGT\mgt_block_data_video.bde" \
 "$MGT\mgt_wrapper_data_video.bde"	
