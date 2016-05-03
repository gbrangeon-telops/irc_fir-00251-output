onerror { resume }
transcript off
add wave -noreg -logic {/tb_agc_top/U1/ARESETN}
add wave -noreg -logic {/tb_agc_top/U1/CLK100}
add wave -noreg -logic {/tb_agc_top/U1/CLK160}
add wave -named_row "tb_agc_stim"
add wave -noreg -logic {/tb_agc_top/U1/rstn_i}
add wave -noreg -decimal -literal -unsigned {/tb_agc_top/U1/stream_val}
add wave -noreg -logic {/tb_agc_top/U1/AXI_STREAM_MISO.TREADY}
add wave -noreg -hexadecimal -literal {/tb_agc_top/U1/AXI_STREAM_MOSI}
add wave -noreg -logic {/tb_agc_top/U1/AGC_INTERRUPT}
add wave -noreg -decimal -literal -unsigned {/tb_agc_top/U1/lo_image_fraction_o}
add wave -noreg -decimal -literal -unsigned {/tb_agc_top/U1/h_lo_image_fraction_fbck_i}
add wave -noreg -decimal -literal -unsigned {/tb_agc_top/U1/h_lo_bin_id_prev_i}
add wave -noreg -decimal -literal -unsigned {/tb_agc_top/U1/h_lo_cumsum_i}
add wave -noreg -decimal -literal -unsigned {/tb_agc_top/U1/h_lo_cumsum_prev_i}
add wave -noreg -decimal -literal -unsigned {/tb_agc_top/U1/hi_image_fraction_o}
add wave -noreg -decimal -literal -unsigned {/tb_agc_top/U1/h_hi_image_fraction_fbck_i}
add wave -noreg -decimal -literal -unsigned {/tb_agc_top/U1/h_hi_bin_id_prev_i}
add wave -noreg -decimal -literal -unsigned {/tb_agc_top/U1/h_hi_cumsum_i}
add wave -noreg -decimal -literal -unsigned {/tb_agc_top/U1/h_hi_cumsum_prev_i}
add wave -noreg -decimal -literal -unsigned {/tb_agc_top/U1/h_timestamp_i}
add wave -noreg -decimal -literal -unsigned {/tb_agc_top/U1/h_nb_pix_i}
add wave -named_row "AGC_CUMSUM"
add wave -noreg -logic {/tb_agc_top/U2/U2/sreset}
add wave -noreg -literal {/tb_agc_top/U2/U2/AGC_state}
add wave -noreg -logic {/tb_agc_top/U2/U2/AGC_RESET}
add wave -noreg -decimal -literal -unsigned {/tb_agc_top/U2/U2/LO_IMAGE_FRACTION}
add wave -noreg -decimal -literal -unsigned {/tb_agc_top/U2/U2/HI_IMAGE_FRACTION}
add wave -noreg -decimal -literal -unsigned {/tb_agc_top/U2/U2/NB_BIN}
add wave -noreg -binary -literal -unsigned {/tb_agc_top/U2/U2/AGC_MODE}
add wave -noreg -logic {/tb_agc_top/U2/U2/HIST_CLEARMEM}
add wave -noreg -logic {/tb_agc_top/U2/U2/HIST_RDY}
add wave -noreg -logic {/tb_agc_top/U2/U2/tmi_error_s}
add wave -noreg -logic {/tb_agc_top/U2/U2/tmi_idle_s}
add wave -noreg -logic {/tb_agc_top/U2/U2/tmi_busy_s}
add wave -noreg -decimal -literal -unsigned {/tb_agc_top/U2/U2/tmi_add_s}
add wave -noreg -logic {/tb_agc_top/U2/U2/tmi_dval_s}
add wave -noreg -decimal -literal -unsigned {/tb_agc_top/U2/U2/tmi_rddata_s}
add wave -noreg -logic {/tb_agc_top/U2/U2/tmi_rddval_s}
add wave -noreg -decimal -literal -unsigned {/tb_agc_top/U2/U2/CumSum_Acc}
add wave -noreg -decimal -literal -unsigned {/tb_agc_top/U2/U2/CumSum_Acc_prev}
add wave -noreg -decimal -literal -unsigned {/tb_agc_top/U2/U2/TMI_add_out}
add wave -noreg -logic {/tb_agc_top/U2/U2/lo_img_fract_found}
add wave -noreg -logic {/tb_agc_top/U2/U2/hi_img_fract_found}
add wave -noreg -logic {/tb_agc_top/U2/U2/Cumsum_valid}
add wave -noreg -logic {/tb_agc_top/U2/U2/CUMSUM_READY}
add wave -noreg -decimal -literal -unsigned {/tb_agc_top/U2/U2/LO_BINID_PREV}
add wave -noreg -decimal -literal -unsigned {/tb_agc_top/U2/U2/LO_CUMSUM}
add wave -noreg -decimal -literal -unsigned {/tb_agc_top/U2/U2/LO_CUMSUM_PREV}
add wave -noreg -decimal -literal -unsigned {/tb_agc_top/U2/U2/LO_IMAGE_FRACTION_FBCK}
add wave -noreg -decimal -literal -unsigned {/tb_agc_top/U2/U2/HI_BINID_PREV}
add wave -noreg -decimal -literal -unsigned {/tb_agc_top/U2/U2/HI_CUMSUM}
add wave -noreg -decimal -literal -unsigned {/tb_agc_top/U2/U2/HI_CUMSUM_PREV}
add wave -noreg -decimal -literal -unsigned {/tb_agc_top/U2/U2/HI_IMAGE_FRACTION_FBCK}
add wave -noreg -decimal -literal -unsigned {/tb_agc_top/U2/U2/NB_PIXEL}
add wave -noreg -logic {/tb_agc_top/U2/U2/AGC_CTRL_CLEARMEM}
add wave -named_row "histogram_axis_tmi"
add wave -noreg -logic {/tb_agc_top/U2/U3/areset_x6}
add wave -noreg -logic {/tb_agc_top/U2/U3/clk}
add wave -noreg -decimal -literal -unsigned {/tb_agc_top/U2/U3/msb_pos}
add wave -noreg -logic {/tb_agc_top/U2/U3/clear_mem}
add wave -noreg -decimal -literal -unsigned {/tb_agc_top/U2/U3/rx_tdata}
add wave -noreg -logic {/tb_agc_top/U2/U3/rx_tvalid}
add wave -noreg -logic {/tb_agc_top/U2/U3/rx_tready}
add wave -noreg -logic {/tb_agc_top/U2/U3/rx_tlast}
add wave -noreg -logic {/tb_agc_top/U2/U3/histogram_rdy}
cursor "Cursor 1" 200us  
transcript on
