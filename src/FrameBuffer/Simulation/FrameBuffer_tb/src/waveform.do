onerror { resume }
transcript off
add wave -noreg -logic {/fb_intf_tb/STIM/CLK100}
add wave -noreg -logic {/fb_intf_tb/STIM/CLK160}
add wave -noreg -logic {/fb_intf_tb/STIM/ARESETN}
add wave -noreg -logic {/fb_intf_tb/DUT/FSM/CLK_CTRL}
add wave -noreg -logic {/fb_intf_tb/DUT/FSM/CLK_DATA}
add wave -noreg -logic {/fb_intf_tb/DUT/FSM/ARESETN}
add wave -noreg -logic {/fb_intf_tb/DUT/FSM/SOF}
add wave -noreg -logic {/fb_intf_tb/DUT/FSM/sof_i}
add wave -noreg -decimal -literal {/fb_intf_tb/DUT/FSM/AXIS_MM2S_CMD_MOSI}
add wave -noreg -decimal -literal {/fb_intf_tb/DUT/FSM/AXIS_MM2S_STS_MOSI}
add wave -noreg -decimal -literal {/fb_intf_tb/DUT/FSM/AXIS_MM2S_STS_MISO}
add wave -noreg -decimal -literal {/fb_intf_tb/DUT/DM/axi_mm2s_mosi}
add wave -noreg -decimal -literal {/fb_intf_tb/DUT/DM/axi_mm2s_miso}
add wave -noreg -decimal -literal -unsigned {/fb_intf_tb/DUT/FSM/AXIS_S2MM_CMD_MOSI}
add wave -noreg -decimal -literal -unsigned {/fb_intf_tb/DUT/FSM/AXIS_S2MM_CMD_MISO}
add wave -noreg -decimal -literal -unsigned {/fb_intf_tb/DUT/FSM/AXIS_S2MM_STS_MOSI}
add wave -noreg -decimal -literal -unsigned {/fb_intf_tb/DUT/FSM/AXIS_S2MM_STS_MISO}
add wave -noreg -decimal -literal -unsigned {/fb_intf_tb/DUT/DM/axi_s2mm_mosi}
add wave -noreg -decimal -literal -unsigned {/fb_intf_tb/DUT/DM/axi_s2mm_miso}
add wave -noreg -decimal -literal {/fb_intf_tb/DUT/DM/axis_data_write_mosi}
add wave -noreg -decimal -literal {/fb_intf_tb/DUT/DM/axis_data_write_miso}
add wave -noreg -decimal -literal {/fb_intf_tb/DUT/DM/axis_data_read_mosi}
add wave -noreg -decimal -literal {/fb_intf_tb/DUT/DM/axis_data_read_miso}
add wave -noreg -decimal -literal -unsigned {/fb_intf_tb/DUT/FSM/FB_MODE}
add wave -noreg -decimal -literal -unsigned {/fb_intf_tb/DUT/FSM/FRAME_WIDTH}
add wave -noreg -decimal -literal -unsigned {/fb_intf_tb/DUT/FSM/FRAME_HEIGHT}
add wave -noreg -decimal -literal -unsigned {/fb_intf_tb/DUT/FSM/BASE_ADDR}
add wave -noreg -decimal -literal -unsigned {/fb_intf_tb/DUT/FSM/FRAME_SIZE}
add wave -noreg -decimal -literal -unsigned {/fb_intf_tb/DUT/FSM/HDR_SIZE}
add wave -noreg -decimal -literal -unsigned {/fb_intf_tb/DUT/FSM/IMG_SIZE}
add wave -noreg -logic {/fb_intf_tb/DUT/FSM/CONFIG_VALID}
add wave -noreg -decimal -literal {/fb_intf_tb/DUT/FSM/AXIS_MM2S_CMD_MISO}
add wave -noreg -logic {/fb_intf_tb/DUT/FSM/DATAIN_WATERLEVEL}
add wave -noreg -logic {/fb_intf_tb/DUT/FSM/DATAOUT_WATERLEVEL}
add wave -noreg -decimal -literal -unsigned {/fb_intf_tb/DUT/FSM/S2MM_ERR}
add wave -noreg -decimal -literal -unsigned {/fb_intf_tb/DUT/FSM/MM2S_ERR}
add wave -noreg -logic {/fb_intf_tb/DUT/FSM/sreset}
add wave -noreg -logic {/fb_intf_tb/DUT/FSM/areset}
add wave -noreg -decimal -literal -unsigned {/fb_intf_tb/DUT/FSM/next_img_write_loc}
add wave -noreg -decimal -literal -unsigned {/fb_intf_tb/DUT/FSM/next_img_read_loc}
add wave -noreg -decimal -literal -unsigned {/fb_intf_tb/DUT/FSM/write_img_loc}
add wave -noreg -decimal -literal -unsigned {/fb_intf_tb/DUT/FSM/read_img_loc}
add wave -noreg -literal {/fb_intf_tb/DUT/FSM/write_state}
add wave -noreg -literal {/fb_intf_tb/DUT/FSM/read_state}
add wave -noreg -decimal -literal -unsigned {/fb_intf_tb/DUT/FSM/fb_mode_s}
add wave -noreg -decimal -literal -unsigned {/fb_intf_tb/DUT/FSM/frame_width_s}
add wave -noreg -decimal -literal -unsigned {/fb_intf_tb/DUT/FSM/frame_height_s}
add wave -noreg -decimal -literal -unsigned {/fb_intf_tb/DUT/FSM/baseaddr_s}
add wave -noreg -decimal -literal -unsigned {/fb_intf_tb/DUT/FSM/baseaddr_u}
add wave -noreg -decimal -literal -unsigned {/fb_intf_tb/DUT/FSM/framesize_s}
add wave -noreg -decimal -literal {/fb_intf_tb/DUT/FSM/hdrsize_s}
add wave -noreg -decimal -literal {/fb_intf_tb/DUT/FSM/imgsize_s}
add wave -noreg -logic {/fb_intf_tb/DUT/FSM/config_valid_s}
add wave -noreg -decimal -literal {/fb_intf_tb/DUT/FSM/s_mm2s_cmd_tag}
add wave -noreg -decimal -literal -unsigned {/fb_intf_tb/DUT/FSM/s_s2mm_cmd_tag}
add wave -noreg -decimal -literal {/fb_intf_tb/DUT/FSM/s_mm2s_saddr}
add wave -noreg -decimal -literal -unsigned {/fb_intf_tb/DUT/FSM/s_s2mm_saddr}
add wave -noreg -logic {/fb_intf_tb/DUT/FSM/s_mm2s_eof}
add wave -noreg -logic {/fb_intf_tb/DUT/FSM/s_s2mm_eof}
add wave -noreg -decimal -literal {/fb_intf_tb/DUT/FSM/s_mm2s_btt}
add wave -noreg -decimal -literal -unsigned {/fb_intf_tb/DUT/FSM/s_s2mm_btt}
add wave -noreg -decimal -literal {/fb_intf_tb/DUT/FSM/mm2s_err_o}
add wave -noreg -decimal -literal {/fb_intf_tb/DUT/FSM/s2mm_err_o}
add wave -noreg -decimal -literal {/fb_intf_tb/DUT/FSM/s2mm_cmd_mosi}
add wave -noreg -decimal -literal {/fb_intf_tb/DUT/FSM/mm2s_cmd_mosi}
add wave -noreg -decimal -literal {/fb_intf_tb/DUT/FSM/s2mm_cmd_miso}
add wave -noreg -decimal -literal {/fb_intf_tb/DUT/FSM/mm2s_cmd_miso}
add wave -noreg -decimal -literal {/fb_intf_tb/DUT/FSM/s2mm_sts_mosi}
add wave -noreg -decimal -literal {/fb_intf_tb/DUT/FSM/mm2s_sts_mosi}
add wave -noreg -decimal -literal {/fb_intf_tb/DUT/FSM/s2mm_sts_miso}
add wave -noreg -decimal -literal {/fb_intf_tb/DUT/FSM/mm2s_sts_miso}
cursor "Cursor 1" 56528125ps  
transcript on
