onerror { resume }
transcript off
add wave -named_row "UBLAZE"
add wave -noreg -logic {/tb_sdi_sim/U2/ARESETN}
add wave -noreg -logic {/tb_sdi_sim/U2/CLK160}
add wave -noreg -logic {/tb_sdi_sim/U2/CLK100}
add wave -noreg -logic {/tb_sdi_sim/U2/MGT_REFCLK_P}
add wave -noreg -logic {/tb_sdi_sim/U2/MGT_REFCLK_N}
add wave -noreg -hexadecimal -literal {/tb_sdi_sim/U2/AXIL_MOSI}
add wave -noreg -hexadecimal -literal {/tb_sdi_sim/U2/AXIL_MISO}
add wave -noreg -logic {/tb_sdi_sim/U2/TEST_RDY}
add wave -named_row "MGT_DATA"
add wave -noreg -logic {/tb_sdi_sim/U6/CLK160}
add wave -noreg -logic {/tb_sdi_sim/U6/ARESETN}
add wave -noreg -logic {/tb_sdi_sim/U6/ENABLE}
add wave -noreg -hexadecimal -literal {/tb_sdi_sim/U6/AXIS_MOSI}
add wave -noreg -hexadecimal -literal {/tb_sdi_sim/U6/AXIS_MISO}
add wave -noreg -hexadecimal -literal {/tb_sdi_sim/test_data_cnt/PIXEL_CNT}
add wave -noreg -hexadecimal -literal {/tb_sdi_sim/U6/IMG_WIDTH}
add wave -noreg -hexadecimal -literal {/tb_sdi_sim/U6/IMG_HEIGTH}
add wave -noreg -hexadecimal -literal {/tb_sdi_sim/U6/h_cnt}
add wave -noreg -hexadecimal -literal {/tb_sdi_sim/U6/v_cnt}
add wave -noreg -hexadecimal -literal {/tb_sdi_sim/U6/img_width_i}
add wave -noreg -hexadecimal -literal {/tb_sdi_sim/U6/img_heigth_i}
add wave -named_row "SDI_CTRL"
add wave -noreg -logic {/tb_sdi_sim/U1/U17/Sys_clk}
add wave -noreg -hexadecimal -literal {/tb_sdi_sim/U1/U17/Axi_Miso}
add wave -noreg -hexadecimal -literal {/tb_sdi_sim/U1/U17/Axi_Mosi}
add wave -noreg -hexadecimal -literal {/tb_sdi_sim/U1/U17/Input_Img_Height}
add wave -noreg -hexadecimal -literal {/tb_sdi_sim/U1/U17/Input_Img_Size}
add wave -noreg -hexadecimal -literal {/tb_sdi_sim/U1/U17/Input_Img_Width}
add wave -noreg -hexadecimal -literal {/tb_sdi_sim/U1/U17/SDI_Pattern_Selector}
add wave -noreg -logic {/tb_sdi_sim/U1/U17/SDI_ResetN}
add wave -named_row "VIDEO_GENERATOR"
add wave -noreg -logic {/tb_sdi_sim/U1/U12/video_aresetn}
add wave -noreg -logic {/tb_sdi_sim/U1/U12/core_aresetn}
add wave -noreg -hexadecimal -literal {/tb_sdi_sim/U1/U12/Pattern_switch}
add wave -noreg -hexadecimal -literal {/tb_sdi_sim/U1/U12/Axis_Video_Miso}
add wave -noreg -hexadecimal -literal {/tb_sdi_sim/U1/U12/Axis_Video_Mosi}
add wave -noreg -hexadecimal -literal {/tb_sdi_sim/U1/U12/video_stream_miso}
add wave -noreg -hexadecimal -literal {/tb_sdi_sim/U1/U12/video_stream_mosi}
add wave -noreg -hexadecimal -literal {/tb_sdi_sim/U1/vid_gen_cnt/PIXEL_CNT}
add wave -named_row "AXIS_FIFO"
add wave -noreg -logic {/tb_sdi_sim/U1/U1/TX_CLK}
add wave -noreg -logic {/tb_sdi_sim/U1/U1/ARESETN}
add wave -noreg -hexadecimal -literal {/tb_sdi_sim/U1/U1/RX_MISO}
add wave -noreg -hexadecimal -literal {/tb_sdi_sim/U1/U1/RX_MOSI}
add wave -noreg -hexadecimal -literal {/tb_sdi_sim/U1/U1/TX_MISO}
add wave -noreg -hexadecimal -literal {/tb_sdi_sim/U1/U1/TX_MOSI}
add wave -named_row "FB"
add wave -noreg -hexadecimal -literal {/tb_sdi_sim/U1/U20/axis_data_read_miso}
add wave -noreg -hexadecimal -literal {/tb_sdi_sim/U1/U20/axis_data_read_mosi}
add wave -noreg -hexadecimal -literal {/tb_sdi_sim/U1/U20/axis_data_write_miso}
add wave -noreg -hexadecimal -literal {/tb_sdi_sim/U1/U20/axis_data_write_mosi}
add wave -noreg -hexadecimal -literal {/tb_sdi_sim/U1/U11/AXIS_MM2S_CMD_MISO}
add wave -noreg -hexadecimal -literal {/tb_sdi_sim/U1/U11/AXIS_MM2S_CMD_MOSI}
add wave -noreg -virtual "Read_Add"  {/tb_sdi_sim/U1/U11/AXIS_MM2S_CMD_MOSI.TDATA(63)} {/tb_sdi_sim/U1/U11/AXIS_MM2S_CMD_MOSI.TDATA(62)} {/tb_sdi_sim/U1/U11/AXIS_MM2S_CMD_MOSI.TDATA(61)} {/tb_sdi_sim/U1/U11/AXIS_MM2S_CMD_MOSI.TDATA(60)} {/tb_sdi_sim/U1/U11/AXIS_MM2S_CMD_MOSI.TDATA(59)} {/tb_sdi_sim/U1/U11/AXIS_MM2S_CMD_MOSI.TDATA(58)} {/tb_sdi_sim/U1/U11/AXIS_MM2S_CMD_MOSI.TDATA(57)} {/tb_sdi_sim/U1/U11/AXIS_MM2S_CMD_MOSI.TDATA(56)} {/tb_sdi_sim/U1/U11/AXIS_MM2S_CMD_MOSI.TDATA(55)} {/tb_sdi_sim/U1/U11/AXIS_MM2S_CMD_MOSI.TDATA(54)} {/tb_sdi_sim/U1/U11/AXIS_MM2S_CMD_MOSI.TDATA(53)} {/tb_sdi_sim/U1/U11/AXIS_MM2S_CMD_MOSI.TDATA(52)} {/tb_sdi_sim/U1/U11/AXIS_MM2S_CMD_MOSI.TDATA(51)} {/tb_sdi_sim/U1/U11/AXIS_MM2S_CMD_MOSI.TDATA(50)} {/tb_sdi_sim/U1/U11/AXIS_MM2S_CMD_MOSI.TDATA(49)} {/tb_sdi_sim/U1/U11/AXIS_MM2S_CMD_MOSI.TDATA(48)} {/tb_sdi_sim/U1/U11/AXIS_MM2S_CMD_MOSI.TDATA(47)} {/tb_sdi_sim/U1/U11/AXIS_MM2S_CMD_MOSI.TDATA(46)} {/tb_sdi_sim/U1/U11/AXIS_MM2S_CMD_MOSI.TDATA(45)} {/tb_sdi_sim/U1/U11/AXIS_MM2S_CMD_MOSI.TDATA(44)} {/tb_sdi_sim/U1/U11/AXIS_MM2S_CMD_MOSI.TDATA(43)} {/tb_sdi_sim/U1/U11/AXIS_MM2S_CMD_MOSI.TDATA(42)} {/tb_sdi_sim/U1/U11/AXIS_MM2S_CMD_MOSI.TDATA(41)} {/tb_sdi_sim/U1/U11/AXIS_MM2S_CMD_MOSI.TDATA(40)} {/tb_sdi_sim/U1/U11/AXIS_MM2S_CMD_MOSI.TDATA(39)} {/tb_sdi_sim/U1/U11/AXIS_MM2S_CMD_MOSI.TDATA(38)} {/tb_sdi_sim/U1/U11/AXIS_MM2S_CMD_MOSI.TDATA(37)} {/tb_sdi_sim/U1/U11/AXIS_MM2S_CMD_MOSI.TDATA(36)} {/tb_sdi_sim/U1/U11/AXIS_MM2S_CMD_MOSI.TDATA(35)} {/tb_sdi_sim/U1/U11/AXIS_MM2S_CMD_MOSI.TDATA(34)} {/tb_sdi_sim/U1/U11/AXIS_MM2S_CMD_MOSI.TDATA(33)} {/tb_sdi_sim/U1/U11/AXIS_MM2S_CMD_MOSI.TDATA(32)}
add wave -noreg -virtual "Write_addr"  {/tb_sdi_sim/U1/U11/AXIS_S2MM_CMD_MOSI.TDATA(63)} {/tb_sdi_sim/U1/U11/AXIS_S2MM_CMD_MOSI.TDATA(62)} {/tb_sdi_sim/U1/U11/AXIS_S2MM_CMD_MOSI.TDATA(61)} {/tb_sdi_sim/U1/U11/AXIS_S2MM_CMD_MOSI.TDATA(60)} {/tb_sdi_sim/U1/U11/AXIS_S2MM_CMD_MOSI.TDATA(59)} {/tb_sdi_sim/U1/U11/AXIS_S2MM_CMD_MOSI.TDATA(58)} {/tb_sdi_sim/U1/U11/AXIS_S2MM_CMD_MOSI.TDATA(57)} {/tb_sdi_sim/U1/U11/AXIS_S2MM_CMD_MOSI.TDATA(56)} {/tb_sdi_sim/U1/U11/AXIS_S2MM_CMD_MOSI.TDATA(55)} {/tb_sdi_sim/U1/U11/AXIS_S2MM_CMD_MOSI.TDATA(54)} {/tb_sdi_sim/U1/U11/AXIS_S2MM_CMD_MOSI.TDATA(53)} {/tb_sdi_sim/U1/U11/AXIS_S2MM_CMD_MOSI.TDATA(52)} {/tb_sdi_sim/U1/U11/AXIS_S2MM_CMD_MOSI.TDATA(51)} {/tb_sdi_sim/U1/U11/AXIS_S2MM_CMD_MOSI.TDATA(50)} {/tb_sdi_sim/U1/U11/AXIS_S2MM_CMD_MOSI.TDATA(49)} {/tb_sdi_sim/U1/U11/AXIS_S2MM_CMD_MOSI.TDATA(48)} {/tb_sdi_sim/U1/U11/AXIS_S2MM_CMD_MOSI.TDATA(47)} {/tb_sdi_sim/U1/U11/AXIS_S2MM_CMD_MOSI.TDATA(46)} {/tb_sdi_sim/U1/U11/AXIS_S2MM_CMD_MOSI.TDATA(45)} {/tb_sdi_sim/U1/U11/AXIS_S2MM_CMD_MOSI.TDATA(44)} {/tb_sdi_sim/U1/U11/AXIS_S2MM_CMD_MOSI.TDATA(43)} {/tb_sdi_sim/U1/U11/AXIS_S2MM_CMD_MOSI.TDATA(42)} {/tb_sdi_sim/U1/U11/AXIS_S2MM_CMD_MOSI.TDATA(41)} {/tb_sdi_sim/U1/U11/AXIS_S2MM_CMD_MOSI.TDATA(40)} {/tb_sdi_sim/U1/U11/AXIS_S2MM_CMD_MOSI.TDATA(39)} {/tb_sdi_sim/U1/U11/AXIS_S2MM_CMD_MOSI.TDATA(38)} {/tb_sdi_sim/U1/U11/AXIS_S2MM_CMD_MOSI.TDATA(37)} {/tb_sdi_sim/U1/U11/AXIS_S2MM_CMD_MOSI.TDATA(36)} {/tb_sdi_sim/U1/U11/AXIS_S2MM_CMD_MOSI.TDATA(35)} {/tb_sdi_sim/U1/U11/AXIS_S2MM_CMD_MOSI.TDATA(34)} {/tb_sdi_sim/U1/U11/AXIS_S2MM_CMD_MOSI.TDATA(33)} {/tb_sdi_sim/U1/U11/AXIS_S2MM_CMD_MOSI.TDATA(32)}
add wave -noreg -hexadecimal -literal {/tb_sdi_sim/U1/U11/AXIS_MM2S_STS_MISO}
add wave -noreg -hexadecimal -literal {/tb_sdi_sim/U1/U11/AXIS_MM2S_STS_MOSI}
add wave -noreg -hexadecimal -literal {/tb_sdi_sim/U1/U11/AXIS_S2MM_CMD_MISO}
add wave -noreg -hexadecimal -literal {/tb_sdi_sim/U1/U11/AXIS_S2MM_CMD_MOSI}
add wave -noreg -hexadecimal -literal {/tb_sdi_sim/U1/U11/AXIS_S2MM_STS_MISO}
add wave -noreg -hexadecimal -literal {/tb_sdi_sim/U1/U11/AXIS_S2MM_STS_MOSI}
add wave -noreg -hexadecimal -literal {/tb_sdi_sim/U1/U11/BASE_ADDR}
add wave -noreg -logic {/tb_sdi_sim/U1/U11/CONFIG_VALID}
add wave -noreg -hexadecimal -literal {/tb_sdi_sim/U1/U11/FB_MODE}
add wave -noreg -hexadecimal -literal {/tb_sdi_sim/U1/U11/IMG_SIZE}
add wave -noreg -hexadecimal -literal {/tb_sdi_sim/U1/U11/MM2S_ERR}
add wave -noreg -hexadecimal -literal {/tb_sdi_sim/U1/U11/S2MM_ERR}
add wave -noreg -logic {/tb_sdi_sim/U1/U11/SOF}
add wave -noreg -logic {/tb_sdi_sim/U1/U11/sof_i}
add wave -noreg -logic {/tb_sdi_sim/U1/U11/Y_FLIP}
add wave -noreg -hexadecimal -literal {/tb_sdi_sim/U1/U11/write_img_loc}
add wave -noreg -hexadecimal -literal {/tb_sdi_sim/U1/U11/read_img_loc}
add wave -noreg -hexadecimal -literal {/tb_sdi_sim/U1/U11/valide_img_line}
add wave -noreg -hexadecimal -literal {/tb_sdi_sim/U1/U11/next_img_read_loc}
add wave -noreg -hexadecimal -literal {/tb_sdi_sim/U1/U11/next_img_write_loc}
add wave -noreg -literal {/tb_sdi_sim/U1/U11/read_state}
add wave -noreg -hexadecimal -literal {/tb_sdi_sim/U1/U11/s_mm2s_btt}
add wave -noreg -hexadecimal -literal {/tb_sdi_sim/U1/U11/s_mm2s_saddr}
add wave -noreg -hexadecimal -literal {/tb_sdi_sim/U1/U11/s_s2mm_btt}
add wave -noreg -hexadecimal -literal {/tb_sdi_sim/U1/U11/s_s2mm_saddr}
add wave -noreg -literal {/tb_sdi_sim/U1/U11/write_state}
add wave -noreg -logic {/tb_sdi_sim/U1/U20/mm2s_err}
add wave -noreg -logic {/tb_sdi_sim/U1/U20/s2mm_err}
add wave -named_row "FB_FIFO"
add wave -noreg -logic {/tb_sdi_sim/U1/U2/ARESETN}
add wave -noreg -logic {/tb_sdi_sim/U1/U2/RX_CLK}
add wave -noreg -hexadecimal -literal {/tb_sdi_sim/U1/U2/RX_MISO}
add wave -noreg -hexadecimal -literal {/tb_sdi_sim/U1/U2/RX_MOSI}
add wave -noreg -hexadecimal -literal {/tb_sdi_sim/U1/U2/TX_MISO}
add wave -noreg -hexadecimal -literal {/tb_sdi_sim/U1/U2/TX_MOSI}
add wave -named_row "ColorMapTop"
add wave -noreg -logic {/tb_sdi_sim/U1/U6/aresetn}
add wave -noreg -hexadecimal -literal {/tb_sdi_sim/U1/U6/X_MOSI}
add wave -noreg -hexadecimal -literal {/tb_sdi_sim/U1/U6/X_MISO}
add wave -noreg -hexadecimal -literal {/tb_sdi_sim/U1/U6/axis_colormap_mosi}
add wave -noreg -hexadecimal -literal {/tb_sdi_sim/U1/U6/axis_colormap_miso}
add wave -noreg -hexadecimal -literal {/tb_sdi_sim/U1/U6/TX_MOSI}
add wave -noreg -hexadecimal -literal {/tb_sdi_sim/U1/U6/TX_MISO}
add wave -named_row "VIDEO_SCALER"
add wave -noreg -hexadecimal -literal {/tb_sdi_sim/U1/U19/axil_mosi}
add wave -noreg -hexadecimal -literal {/tb_sdi_sim/U1/U19/axil_miso}
add wave -noreg -hexadecimal -literal {/tb_sdi_sim/U1/U19/axis_video_in_mosi}
add wave -noreg -hexadecimal -literal {/tb_sdi_sim/U1/U19/axis_video_in_miso}
add wave -noreg -hexadecimal -literal {/tb_sdi_sim/U1/U19/axis_video_out_mosi}
add wave -noreg -hexadecimal -literal {/tb_sdi_sim/U1/U19/axis_video_out_miso}
add wave -noreg -hexadecimal -literal {/tb_sdi_sim/U1/U19/U1/U0/s_axis_video_tdata}
add wave -noreg -logic {/tb_sdi_sim/U1/U19/U1/U0/s_axis_video_tready}
add wave -noreg -logic {/tb_sdi_sim/U1/U19/U1/U0/s_axis_video_tvalid}
add wave -noreg -logic {/tb_sdi_sim/U1/U19/U1/U0/s_axis_video_tlast}
add wave -noreg -logic {/tb_sdi_sim/U1/U19/U1/U0/s_axis_video_tuser}
add wave -noreg -hexadecimal -literal {/tb_sdi_sim/U1/U19/U1/U0/m_axis_video_tdata}
add wave -noreg -logic {/tb_sdi_sim/U1/U19/U1/U0/m_axis_video_tvalid}
add wave -noreg -logic {/tb_sdi_sim/U1/U19/U1/U0/m_axis_video_tready}
add wave -noreg -logic {/tb_sdi_sim/U1/U19/U1/U0/m_axis_video_tlast}
add wave -noreg -logic {/tb_sdi_sim/U1/U19/U1/U0/m_axis_video_tuser}
add wave -noreg -hexadecimal -literal {/tb_sdi_sim/U1/U19/Input_Img_Size}
add wave -noreg -hexadecimal -literal {/tb_sdi_sim/U1/U19/Input_Img_Width}
add wave -noreg -hexadecimal -literal {/tb_sdi_sim/U1/U19/compteur_pixel_scaler}
add wave -noreg -hexadecimal -literal {/tb_sdi_sim/U1/U19/compteur_line_scaler}
add wave -noreg -logic {/tb_sdi_sim/U1/U19/m_axis_scaler_fifo_tuser}
add wave -noreg -logic {/tb_sdi_sim/U1/U19/m_axis_scaler_fifo_tlast}
add wave -noreg -logic {/tb_sdi_sim/U1/U19/m_axis_scaler_fifo_tvalid}
add wave -noreg -logic {/tb_sdi_sim/U1/U19/m_axis_scaler_fifo_tready}
add wave -named_row "Bad_FRAME_SYNC"
add wave -noreg -logic {/tb_sdi_sim/U1/U13/CLK}
add wave -noreg -logic {/tb_sdi_sim/U1/U13/ARESETN}
add wave -noreg -hexadecimal -literal {/tb_sdi_sim/U1/U13/axis_video_in_mosi}
add wave -noreg -hexadecimal -literal {/tb_sdi_sim/U1/U13/axis_video_in_miso}
add wave -noreg -hexadecimal -literal {/tb_sdi_sim/U1/U13/axis_video_out_mosi}
add wave -noreg -hexadecimal -literal {/tb_sdi_sim/U1/U13/axis_video_out_miso}
add wave -noreg -hexadecimal -literal {/tb_sdi_sim/U1/U13/Output_Img_Size}
add wave -noreg -hexadecimal -literal {/tb_sdi_sim/U1/U13/Nb_Frame}
add wave -noreg -hexadecimal -literal {/tb_sdi_sim/U1/U13/Img_Width}
add wave -noreg -hexadecimal -literal {/tb_sdi_sim/U1/U13/Img_Heigth}
add wave -noreg -hexadecimal -literal {/tb_sdi_sim/U1/U13/image_pix_cnt}
add wave -noreg -literal {/tb_sdi_sim/U1/U13/replacer_state_s}
add wave -noreg -hexadecimal -literal {/tb_sdi_sim/U1/U13/line_cnt}
add wave -noreg -hexadecimal -literal {/tb_sdi_sim/U1/U13/pixel_cnt}
add wave -noreg -hexadecimal -literal {/tb_sdi_sim/U1/U13/frame_cnt}
add wave -noreg -hexadecimal -literal {/tb_sdi_sim/U1/U9/PIXEL_CNT}
add wave -named_row "RandomMiso"
add wave -noreg -hexadecimal -literal {/tb_sdi_sim/U1/U15/RX_MOSI}
add wave -noreg -hexadecimal -literal {/tb_sdi_sim/U1/U15/RX_MISO}
add wave -noreg -hexadecimal -literal {/tb_sdi_sim/U1/U15/TX_MOSI}
add wave -noreg -hexadecimal -literal {/tb_sdi_sim/U1/U15/TX_MISO}
cursor "Cursor 1" 28306776ps  
cursor "Cursor 2" 176587.5ns  
transcript on
