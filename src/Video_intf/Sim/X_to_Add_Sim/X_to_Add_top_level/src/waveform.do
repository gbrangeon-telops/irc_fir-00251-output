onerror { resume }
transcript off
add wave -named_row "X_to_Add"
add wave -noreg -logic {/x_to_add_tb/U1/U2/CLK}
add wave -noreg -logic {/x_to_add_tb/U1/U2/aresetn}
add wave -noreg -hexadecimal -literal {/x_to_add_tb/U1/U2/END_ADDR}
add wave -noreg -hexadecimal -literal {/x_to_add_tb/U1/U2/LUT_SIZE}
add wave -noreg -hexadecimal -literal {/x_to_add_tb/U1/U2/START_ADDR}
add wave -noreg -hexadecimal -literal {/x_to_add_tb/U1/U2/TX_MISO}
add wave -noreg -hexadecimal -literal {/x_to_add_tb/U1/U2/X_MIN}
add wave -noreg -hexadecimal -literal {/x_to_add_tb/U1/U2/X_MOSI}
add wave -noreg -hexadecimal -literal {/x_to_add_tb/U1/U2/X_RANGE}
add wave -noreg -hexadecimal -literal {/x_to_add_tb/U1/U2/TX_MOSI}
add wave -noreg -hexadecimal -literal {/x_to_add_tb/U1/U2/X_MISO}
add wave -noreg -hexadecimal -literal {/x_to_add_tb/U1/U2/axis_divide_miso}
add wave -noreg -hexadecimal -literal {/x_to_add_tb/U1/U2/axis_divide_mosi}
add wave -noreg -hexadecimal -literal {/x_to_add_tb/U1/U2/axis_end_miso}
add wave -noreg -hexadecimal -literal {/x_to_add_tb/U1/U2/axis_end_mosi}
add wave -noreg -hexadecimal -literal {/x_to_add_tb/U1/U2/axis_fi16_miso}
add wave -noreg -hexadecimal -literal {/x_to_add_tb/U1/U2/axis_fi16_mosi}
add wave -noreg -hexadecimal -literal {/x_to_add_tb/U1/U2/axis_fplutsize_miso}
add wave -noreg -hexadecimal -literal {/x_to_add_tb/U1/U2/axis_fplutsize_mosi}
add wave -noreg -hexadecimal -literal {/x_to_add_tb/U1/U2/axis_fprange_miso}
add wave -noreg -hexadecimal -literal {/x_to_add_tb/U1/U2/axis_fprange_mosi}
add wave -noreg -hexadecimal -literal {/x_to_add_tb/U1/U2/axis_fp_lutaddr_miso}
add wave -noreg -hexadecimal -literal {/x_to_add_tb/U1/U2/axis_fp_lutaddr_mosi}
add wave -noreg -hexadecimal -literal {/x_to_add_tb/U1/U2/axis_lutsize_miso}
add wave -noreg -hexadecimal -literal {/x_to_add_tb/U1/U2/axis_lutsize_mosi}
add wave -noreg -hexadecimal -literal {/x_to_add_tb/U1/U2/axis_mapaddr_mosi}
add wave -noreg -hexadecimal -literal {/x_to_add_tb/U1/U2/axis_range_miso}
add wave -noreg -hexadecimal -literal {/x_to_add_tb/U1/U2/axis_range_mosi}
add wave -noreg -hexadecimal -literal {/x_to_add_tb/U1/U2/axis_X_lutsize_miso}
add wave -noreg -hexadecimal -literal {/x_to_add_tb/U1/U2/axis_X_lutsize_mosi}
add wave -noreg -hexadecimal -literal {/x_to_add_tb/U1/U2/axis_X_max_mosi}
add wave -named_row "Colormap"
add wave -noreg -logic {/x_to_add_tb/U1/U1/clk}
add wave -noreg -logic {/x_to_add_tb/U1/U1/aresetn}
add wave -noreg -hexadecimal -literal {/x_to_add_tb/U1/U1/RX_MOSI}
add wave -noreg -hexadecimal -literal {/x_to_add_tb/U1/U1/RX_MISO}
add wave -noreg -hexadecimal -literal {/x_to_add_tb/U1/U1/TX_MOSI}
add wave -noreg -hexadecimal -literal {/x_to_add_tb/U1/U1/TX_MISO}
add wave -noreg -hexadecimal -literal {/x_to_add_tb/U1/U1/colormap_data_i}
add wave -noreg -hexadecimal -literal {/x_to_add_tb/U1/U1/colormap_addr_i}
add wave -noreg -hexadecimal -literal {/x_to_add_tb/U1/U1/tvalid_reg_i}
add wave -noreg -logic {/x_to_add_tb/U1/U1/ycb_reg_i}
cursor "Cursor 1" 1.1us  
transcript on
