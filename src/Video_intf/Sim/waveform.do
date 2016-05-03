onerror { resume }
transcript off
add wave -noreg -logic {/tlast_sim/U2/aresetn}
add wave -noreg -logic {/tlast_sim/U2/clk160}
add wave -noreg -hexadecimal -literal {/tlast_sim/axis_miso}
add wave -noreg -hexadecimal -literal {/tlast_sim/axis_mosi}
add wave -noreg -hexadecimal -literal {/tlast_sim/Img_Size}
add wave -noreg -hexadecimal -literal {/tlast_sim/U2/compteur_pixel}
add wave -noreg -logic {/tlast_sim/U2/internal_tlast}
add wave -noreg -hexadecimal -literal {/tlast_sim/U2/RX_MOSI}
add wave -noreg -hexadecimal -literal {/tlast_sim/U2/RX_MISO}
add wave -noreg -hexadecimal -literal {/tlast_sim/U2/TX_MOSI}
add wave -noreg -hexadecimal -literal {/tlast_sim/U2/TX_MISO}
add wave -noreg -hexadecimal -literal {/tlast_sim/U2/Input_Img_Size}
add wave -noreg -hexadecimal -literal {/tlast_sim/U2/compteur_pixel}
add wave -noreg -logic {/tlast_sim/U2/internal_tlast}
add wave -noreg -hexadecimal -literal {/tlast_sim/U2/input_img_size_i}
cursor "Cursor 1" 2287.5ns  
transcript on
