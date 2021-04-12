onerror { resume }
transcript off	  

add wave -named_row "stim" 	
add wave -noreg -logic {/Top/U1/ARESETN} 
add wave -noreg -logic {/Top/U1/CLK_DATA}
add wave -noreg -logic {/Top/U1/transmit}
add wave -noreg -logic {/Top/U1/MB_MISO} 	 
add wave -noreg -logic {/Top/U1/MB_MOSI} 

add wave -noreg -logic {/Top/U1/AXIS_MOSI.TDATA} 
add wave -noreg -logic {/Top/U1/AXIS_MOSI.TVALID} 
add wave -noreg -logic {/Top/U1/AXIS_MOSI.TLAST} 
add wave -noreg -logic {/Top/U1/AXIS_MISO.TREADY} 

add wave -named_row "------------------------CTRL INTF-------------------------------------"
add wave -noreg -logic {/Top/CTRL/AXI4_LITE_MOSI}   
add wave -noreg -logic {/Top/CTRL/AXI4_LITE_MISO} 
add wave -noreg -logic {/Top/CTRL/FB_CONF} 
add wave -noreg -logic {/Top/CTRL/DECIMATOR_CONF} 
add wave -noreg -logic {/Top/CTRL/VIDEO_CONFIG} 
add wave -noreg -logic {} 
add wave -noreg -logic {} 
add wave -noreg -logic {} 
add wave -noreg -logic {} 

 
add wave -named_row "------------------------hdr mng-------------------------------------"
add wave -noreg -logic {/Top/U3/RX_MOSI.TDATA} 
add wave -noreg -logic {/Top/U3/RX_MOSI.TVALID} 
add wave -noreg -logic {/Top/U3/RX_MOSI.TLAST} 
add wave -noreg -logic {/Top/U3/RX_MOSI.TID} 
add wave -noreg -logic {/Top/U3/RX_MISO.TREADY} 
add wave -noreg -logic {/Top/U3/TX_MOSI.TDATA} 
add wave -noreg -logic {/Top/U3/TX_MOSI.TVALID} 
add wave -noreg -logic {/Top/U3/TX_MOSI.TLAST} 
add wave -noreg -logic {/Top/U3/TX_MOSI.TID} 
add wave -noreg -logic {/Top/U3/TX_MISO.TREADY} 

add wave -named_row "------------------------row decimator-------------------------------------"


add wave -noreg -logic {/Top/U2/U1/AXIS_RX_DATA_MOSI.TVALID} 
add wave -noreg -logic {/Top/U2/U1/AXIS_RX_DATA_MISO.TREADY} 
add wave -noreg -logic {/Top/U2/U1/AXIS_RX_DATA_MOSI.TDATA} 
add wave -noreg -logic {/Top/U2/U1/AXIS_RX_DATA_MOSI.TLAST} 
add wave -noreg -logic {/Top/U2/U1/AXIS_TX_DATA_MOSI.TVALID} 
add wave -noreg -logic {/Top/U2/U1/AXIS_TX_DATA_MISO.TREADY} 
add wave -noreg -logic {/Top/U2/U1/AXIS_TX_DATA_MOSI.TDATA} 
add wave -noreg -logic {/Top/U2/U1/AXIS_TX_DATA_MOSI.TLAST} 
add wave -noreg -logic {/Top/U2/U1/pix_cnt} 
add wave -noreg -logic {/Top/U2/U1/row_decimator_state} 

add wave -named_row "------------------------column decimator-------------------------------------"
add wave -noreg -logic {/Top/U2/U3/AXIS_RX_DATA_MOSI.TVALID} 
add wave -noreg -logic {/Top/U2/U3/AXIS_RX_DATA_MISO.TREADY} 
add wave -noreg -logic {/Top/U2/U3/AXIS_RX_DATA_MOSI.TDATA} 
add wave -noreg -logic {/Top/U2/U3/AXIS_RX_DATA_MOSI.TLAST} 

add wave -noreg -logic {/Top/U2/U3/asym_fifo_input_i.TVALID} 
add wave -noreg -logic {/Top/U2/U3/asym_fifo_input_i.TDATA} 
add wave -noreg -logic {/Top/U2/U3/asym_fifo_input_i.TLAST}

add wave -noreg -logic {/Top/U2/U3/AXIS_TX_DATA_MOSI.TVALID} 
add wave -noreg -logic {/Top/U2/U3/AXIS_TX_DATA_MISO.TREADY}
add wave -noreg -logic {/Top/U2/U3/AXIS_TX_DATA_MOSI.TDATA} 
add wave -noreg -logic {/Top/U2/U3/AXIS_TX_DATA_MOSI.TLAST}

add wave -named_row "------------------------asym fifo-------------------------------------"

add wave -noreg -logic {/Top/U2/U3/U2/fifo_din} 
add wave -noreg -logic {/Top/U2/U3/U2/fifo_wr_en} 
add wave -noreg -logic {/Top/U2/U3/U2/rx_tready} 
add wave -noreg -logic {/Top/U2/U3/U2/fifo_rd_en} 
add wave -noreg -logic {/Top/U2/U3/U2/fifo_full} 
add wave -noreg -logic {/Top/U2/U3/U2/fifo_overflow} 
add wave -noreg -logic {/Top/U2/U3/U2/fifo_valid} 
add wave -noreg -logic {/Top/U2/U3/U2/fifo_dout} 
add wave -noreg -logic {/Top/U2/U3/U2/RX_MOSI} 
add wave -noreg -logic {/Top/U2/U3/U2/RX_MISO} 
add wave -noreg -logic {/Top/U2/U3/U2/TX_MOSI}
add wave -noreg -logic {/Top/U2/U3/U2/TX_MISO}

add wave -noreg -logic {} 
add wave -noreg -logic {} 
add wave -noreg -logic {} 
add wave -noreg -logic {} 
add wave -noreg -logic {} 
add wave -noreg -logic {}
add wave -noreg -logic {} 
add wave -noreg -logic {} 
add wave -noreg -logic {} 
add wave -noreg -logic {} 
add wave -noreg -logic {} 
add wave -noreg -logic {} 
add wave -noreg -logic {} 
add wave -noreg -logic {}
add wave -noreg -logic {} 
add wave -noreg -logic {} 
add wave -noreg -logic {} 
add wave -noreg -logic {} 
add wave -noreg -logic {} 
add wave -noreg -logic {} 
add wave -noreg -logic {} 
add wave -noreg -logic {}
add wave -noreg -logic {} 
add wave -noreg -logic {} 
add wave -noreg -logic {} 
add wave -noreg -logic {} 
add wave -noreg -logic {} 
add wave -noreg -logic {} 
add wave -noreg -logic {} 
add wave -noreg -logic {}


  
transcript on
