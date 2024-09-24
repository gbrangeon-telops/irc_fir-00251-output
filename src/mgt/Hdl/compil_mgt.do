alib work
setactivelib work

setenv MGT "$FIR251OUT/src/mgt/Hdl"
setenv OUTPUT "$FIR251OUT"

 acom -nowarn DAGGEN_0523 \
 "$MGT/mgt_stream_unmerger.vhd" \
 "$MGT/mgt_block_data_video.bde" \
 "$MGT/mgt_wrapper_data_video.bde"	
