onerror { resume }
transcript off
add wave -named_row "Stim"
add wave -noreg -logic {/clink_tb/U1/CLK100}
add wave -noreg -logic {/clink_tb/U1/CLK160}
add wave -noreg -logic {/clink_tb/U1/CLK560}
add wave -noreg -logic {/clink_tb/U1/ARESETN}
add wave -noreg -hexadecimal -literal {/clink_tb/U1/clink_stim/pixel}
add wave -noreg -decimal -literal -signed2 {/clink_tb/U1/clink_stim/Hpos}
add wave -noreg -decimal -literal -signed2 {/clink_tb/U1/clink_stim/Vpos}
add wave -noreg -decimal -literal -signed2 {/clink_tb/U1/clink_stim/pixel_index}
add wave -noreg -logic {/clink_tb/U1/clink_stim/frame_transmit}
add wave -noreg -hexadecimal -literal {/clink_tb/U1/AXIS_MOSI}
add wave -noreg -hexadecimal -literal {/clink_tb/U1/AXIS_MISO}
add wave -noreg -hexadecimal -literal {/clink_tb/U1/AXIL_MOSI}
add wave -noreg -hexadecimal -literal {/clink_tb/U1/AXIL_MISO}
add wave -noreg -hexadecimal -literal {/clink_tb/U1/cnt}
add wave -noreg -literal {/clink_tb/U1/frame_gen_state}
add wave -named_row "CTRL"
add wave -noreg -hexadecimal -literal {/clink_tb/U2/CTRL/AXI4_LITE_MOSI}
add wave -noreg -hexadecimal -literal {/clink_tb/U2/CTRL/AXI4_LITE_MISO}
add wave -noreg -logic {/clink_tb/U2/CTRL/LB_SYNC_ERROR}
add wave -noreg -logic {/clink_tb/U2/CTRL/LB_DECODE_ERROR}
add wave -noreg -hexadecimal -literal {/clink_tb/U2/CTRL/LB_DATA_CNT}
add wave -noreg -hexadecimal -literal {/clink_tb/U2/CTRL/LB_WIDTH}
add wave -noreg -hexadecimal -literal {/clink_tb/U2/CTRL/LB_HEIGHT}
add wave -noreg -hexadecimal -literal {/clink_tb/U2/CTRL/CLINK_CONF}
add wave -noreg -logic {/clink_tb/U2/CTRL/CL_DESYNC_ERR}
add wave -noreg -logic {/clink_tb/U2/CTRL/CL_TC_ERR}
add wave -noreg -logic {/clink_tb/U2/CTRL/CL_UNDERRUN_ERR}
add wave -noreg -logic {/clink_tb/U2/CTRL/CL_ENABLE}
add wave -noreg -logic {/clink_tb/U2/CTRL/CL_ENABLE_FULL_N}
add wave -noreg -logic {/clink_tb/U2/CTRL/CL_ENABLE_DUAL_N}
add wave -noreg -logic {/clink_tb/U2/CTRL/FRAME_RESET}
add wave -noreg -hexadecimal -literal {/clink_tb/U2/CTRL/lb_sync_error_i}
add wave -noreg -hexadecimal -literal {/clink_tb/U2/CTRL/lb_decode_error_i}
add wave -noreg -hexadecimal -literal {/clink_tb/U2/CTRL/lb_datacnt_i}
add wave -noreg -logic {/clink_tb/U2/CTRL/cl_desync_err_i}
add wave -noreg -logic {/clink_tb/U2/CTRL/cl_desync_err_sync}
add wave -noreg -logic {/clink_tb/U2/CTRL/cl_tc_err_i}
add wave -noreg -logic {/clink_tb/U2/CTRL/cl_tc_err_sync}
add wave -noreg -logic {/clink_tb/U2/CTRL/cl_underrun_err_i}
add wave -noreg -logic {/clink_tb/U2/CTRL/cl_underrun_err_sync}
add wave -noreg -hexadecimal -literal {/clink_tb/U2/CTRL/cl_err_i}
add wave -named_row "Line_Buffer"
add wave -noreg -hexadecimal -literal {/clink_tb/U2/LINE_BUFFER/LineFrame/S_DATAFRAME_MOSI}
add wave -noreg -hexadecimal -literal {/clink_tb/U2/LINE_BUFFER/LineFrame/S_DATAFRAME_MISO}
add wave -noreg -hexadecimal -literal {/clink_tb/U2/LINE_BUFFER/LineFrame/S_DATALINE_MOSI}
add wave -noreg -hexadecimal -literal {/clink_tb/U2/LINE_BUFFER/LineFrame/S_DATALINE_MISO}
add wave -noreg -hexadecimal -literal {/clink_tb/U2/LINE_BUFFER/LineFrame/WIDTH}
add wave -noreg -hexadecimal -literal {/clink_tb/U2/LINE_BUFFER/LineFrame/HEIGHT}
add wave -noreg -logic {/clink_tb/U2/LINE_BUFFER/LineFrame/OUT_OF_SYNC}
add wave -noreg -hexadecimal -literal {/clink_tb/U2/LINE_BUFFER/LineFrame/width_i}
add wave -noreg -hexadecimal -literal {/clink_tb/U2/LINE_BUFFER/LineFrame/width_slv_i}
add wave -noreg -hexadecimal -literal {/clink_tb/U2/LINE_BUFFER/LineFrame/height_i}
add wave -noreg -hexadecimal -literal {/clink_tb/U2/LINE_BUFFER/LineFrame/height_slv_i}
add wave -noreg -logic {/clink_tb/U2/LINE_BUFFER/LineFrame/out_of_sync_o}
add wave -noreg -hexadecimal -literal {/clink_tb/U2/LINE_BUFFER/LineFrame/pixel_cnt}
add wave -noreg -hexadecimal -literal {/clink_tb/U2/LINE_BUFFER/LineFrame/line_cnt}
add wave -noreg -logic {/clink_tb/U2/LINE_BUFFER/LineFrame/stream_enable}
add wave -named_row "32_64"
add wave -noreg -hexadecimal -literal {/clink_tb/U2/LINE_BUFFER/U2/S_AXI4S_32_MOSI}
add wave -noreg -hexadecimal -literal {/clink_tb/U2/LINE_BUFFER/U2/S_AXI4S_32_MISO}
add wave -noreg -hexadecimal -literal {/clink_tb/U2/LINE_BUFFER/U2/M_AXI4S_64_MOSI}
add wave -noreg -hexadecimal -literal {/clink_tb/U2/LINE_BUFFER/U2/M_AXI4S_64_MISO}
add wave -named_row "Fifo"
add wave -noreg -hexadecimal -literal {/clink_tb/U2/LINE_BUFFER/U5/RX_MOSI}
add wave -noreg -hexadecimal -literal {/clink_tb/U2/LINE_BUFFER/U5/RX_MISO}
add wave -noreg -hexadecimal -literal {/clink_tb/U2/LINE_BUFFER/U5/TX_MOSI}
add wave -noreg -hexadecimal -literal {/clink_tb/U2/LINE_BUFFER/U5/TX_MISO}
add wave -noreg -hexadecimal -literal {/clink_tb/U2/LINE_BUFFER/U5/DATA_COUNT}
add wave -noreg -logic {/clink_tb/U2/LINE_BUFFER/U5/FULL}
add wave -named_row "PHY"
add wave -noreg -hexadecimal -literal {/clink_tb/U2/PHY/CLINK_CONF}
add wave -noreg -logic {/clink_tb/U2/PHY/CLK_CAML}
add wave -noreg -hexadecimal -literal {/clink_tb/U2/PHY/AXIS_DATA_MOSI64}
add wave -noreg -hexadecimal -literal {/clink_tb/U2/PHY/AXIS_DATA_MISO}
add wave -noreg -logic {/clink_tb/U2/PHY/DESYNC_ERR}
add wave -noreg -logic {/clink_tb/U2/PHY/UNDERRUN_ERR}
add wave -noreg -logic {/clink_tb/U2/PHY/TC_ERR}
add wave -noreg -logic {/clink_tb/U2/PHY/CAML_X_LVAL}
add wave -noreg -logic {/clink_tb/U2/PHY/CAML_X_FVAL}
add wave -noreg -logic {/clink_tb/U2/PHY/CAML_X_DVAL}
add wave -noreg -logic {/clink_tb/U2/PHY/CAML_X_SPARE}
add wave -noreg -hexadecimal -literal {/clink_tb/U2/PHY/CAML_PORT_C}
add wave -noreg -hexadecimal -literal {/clink_tb/U2/PHY/CAML_PORT_B}
add wave -noreg -hexadecimal -literal {/clink_tb/U2/PHY/CAML_PORT_A}
add wave -noreg -logic {/clink_tb/U2/PHY/CAML_Y_LVAL}
add wave -noreg -logic {/clink_tb/U2/PHY/CAML_Y_FVAL}
add wave -noreg -logic {/clink_tb/U2/PHY/CAML_Y_DVAL}
add wave -noreg -logic {/clink_tb/U2/PHY/CAML_Y_SPARE}
add wave -noreg -hexadecimal -literal {/clink_tb/U2/PHY/CAML_PORT_F}
add wave -noreg -hexadecimal -literal {/clink_tb/U2/PHY/CAML_PORT_E}
add wave -noreg -hexadecimal -literal {/clink_tb/U2/PHY/CAML_PORT_D}
add wave -noreg -logic {/clink_tb/U2/PHY/CAML_Z_LVAL}
add wave -noreg -logic {/clink_tb/U2/PHY/CAML_Z_FVAL}
add wave -noreg -logic {/clink_tb/U2/PHY/CAML_Z_DVAL}
add wave -noreg -logic {/clink_tb/U2/PHY/CAML_Z_SPARE}
add wave -noreg -hexadecimal -literal {/clink_tb/U2/PHY/CAML_PORT_H}
add wave -noreg -hexadecimal -literal {/clink_tb/U2/PHY/CAML_PORT_G}
add wave -noreg -logic {/clink_tb/U2/PHY/FRAME_RESET}
add wave -noreg -literal {/clink_tb/U2/PHY/cl_state}
add wave -noreg -logic {/clink_tb/U2/PHY/caml_tready}
add wave -noreg -logic {/clink_tb/U2/PHY/adj_tvalid}
cursor "Cursor 1" 10013531ps  
bookmark add 2938.776ns
bookmark add 3685.131ns
transcript on
