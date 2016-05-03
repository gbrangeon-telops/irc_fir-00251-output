acom -reorder -O3 -work work -2002  $dsn/src/x_to_add_tb.bde
asim -O5 +access +r +m+x_to_add_tb x_to_add_tb x_to_add_tb
do ".\waveform.do"
run 100 ns
