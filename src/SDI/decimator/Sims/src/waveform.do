onerror { resume }
transcript off	  

add wave -named_row "stim" 		
add wave -noreg -logic {/Top/U1/CLK_DATA}
add wave -noreg -logic {/Top/U1/transmit}
add wave -noreg -logic {/Top/U1/MB_MISO} 	 
add wave -noreg -logic {/Top/U1/MB_MOSI} 
add wave -noreg -logic {/Top/U1/AXIS_MOSI} 
add wave -noreg -logic {/Top/U1/AXIS_MISO} 
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

#add wave -named_row "------------------------WRITER-------------------------------------"
#add wave -noreg -logic {/Top/U1/CLK_DIN} 



  
transcript on
