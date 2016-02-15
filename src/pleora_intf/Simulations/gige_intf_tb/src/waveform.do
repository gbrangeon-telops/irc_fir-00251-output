onerror { resume }
transcript off
add wave -named_row "STIM"
add wave -noreg -hexadecimal -literal {/pleora_tb/STIM/AXIS_MOSI}
add wave -noreg -hexadecimal -literal {/pleora_tb/STIM/AXIS_MISO}
add wave -noreg -hexadecimal -literal {/pleora_tb/STIM/AXIL_FB_MOSI}
add wave -noreg -hexadecimal -literal {/pleora_tb/STIM/AXIL_FB_MISO}
add wave -noreg -hexadecimal -literal {/pleora_tb/STIM/AXIL_PLEORA_MOSI}
add wave -noreg -hexadecimal -literal {/pleora_tb/STIM/AXIL_PLEORA_MISO}
add wave -noreg -logic {/pleora_tb/STIM/CLK80}
add wave -noreg -logic {/pleora_tb/STIM/CLK80_N}
add wave -noreg -logic {/pleora_tb/STIM/CLK100}
add wave -noreg -logic {/pleora_tb/STIM/CLK160}
add wave -noreg -logic {/pleora_tb/STIM/ARESETN}
add wave -named_row "FRAMEBUFFER"
add wave -noreg -hexadecimal -literal {/pleora_tb/U1/AXIL_MOSI}
add wave -noreg -hexadecimal -literal {/pleora_tb/U1/AXIL_MISO}
add wave -noreg -hexadecimal -literal {/pleora_tb/U1/DATA_TO_WRITE_MOSI}
add wave -noreg -hexadecimal -literal {/pleora_tb/U1/DATA_TO_WRITE_MISO}
add wave -noreg -hexadecimal -literal {/pleora_tb/U1/DATA_READ_GIGE_MOSI}
add wave -noreg -hexadecimal -literal {/pleora_tb/U1/DATA_READ_GIGE_MISO}
add wave -noreg -hexadecimal -literal {/pleora_tb/U1/AXI4_FB_S2MM_MOSI}
add wave -noreg -hexadecimal -literal {/pleora_tb/U1/AXI4_FB_S2MM_MISO}
add wave -noreg -hexadecimal -literal {/pleora_tb/U1/AXI4_FB_MM2S_MOSI}
add wave -noreg -hexadecimal -literal {/pleora_tb/U1/AXI4_FB_MM2S_MISO}
add wave -noreg -hexadecimal -literal {/pleora_tb/U1/ctrl_mm2s_err}
add wave -noreg -hexadecimal -literal {/pleora_tb/U1/ctrl_s2mm_err}
add wave -noreg -hexadecimal -literal {/pleora_tb/U1/fsm_mm2s_err}
add wave -noreg -hexadecimal -literal {/pleora_tb/U1/fsm_s2mm_err}
add wave -noreg -logic {/pleora_tb/U1/dm_mm2s_err}
add wave -noreg -logic {/pleora_tb/U1/dm_reset_n}
add wave -noreg -logic {/pleora_tb/U1/dm_s2mm_err}
add wave -noreg -logic {/pleora_tb/U1/config_valid}
add wave -noreg -hexadecimal -literal {/pleora_tb/U1/FSM/write_img_loc}
add wave -noreg -hexadecimal -literal {/pleora_tb/U1/FSM/read_img_loc}
add wave -named_row "AXI_INTER"
add wave -noreg -logic {/pleora_tb/U3/inter_aclk}
add wave -noreg -logic {/pleora_tb/U3/s00_aclk}
add wave -noreg -logic {/pleora_tb/U3/s01_aclk}
add wave -noreg -logic {/pleora_tb/U3/m00_aclk}
add wave -noreg -logic {/pleora_tb/U3/aresetn}
add wave -noreg -logic {/pleora_tb/U3/s00_arestn_out}
add wave -noreg -logic {/pleora_tb/U3/s01_arestn_out}
add wave -noreg -logic {/pleora_tb/U3/m00_arestn_out}
add wave -noreg -hexadecimal -literal {/pleora_tb/U3/axi4_s2mm_mosi}
add wave -noreg -hexadecimal -literal {/pleora_tb/U3/axi4_s2mm_miso}
add wave -noreg -hexadecimal -literal {/pleora_tb/U3/axi4_mm2s_mosi}
add wave -noreg -hexadecimal -literal {/pleora_tb/U3/axi4_mm2s_miso}
add wave -noreg -hexadecimal -literal {/pleora_tb/U3/axi4_mig_mosi}
add wave -noreg -hexadecimal -literal {/pleora_tb/U3/axi4_mig_miso}
add wave -named_row "FB_RAM"
add wave -noreg -logic {/pleora_tb/U4/aclk}
add wave -noreg -logic {/pleora_tb/U4/aresetn}
add wave -noreg -hexadecimal -literal {/pleora_tb/U4/axi4_ram_mosi}
add wave -noreg -hexadecimal -literal {/pleora_tb/U4/axi4_ram_miso}
add wave -named_row "PLEORA_INTF"
add wave -noreg -logic {/pleora_tb/U2/ARESETN}
add wave -noreg -logic {/pleora_tb/U2/CLK100}
add wave -noreg -logic {/pleora_tb/U2/CLK160}
add wave -noreg -logic {/pleora_tb/U2/CLK_80}
add wave -noreg -logic {/pleora_tb/U2/CLK_80_N}
add wave -noreg -hexadecimal -literal {/pleora_tb/U2/AXIL_MOSI}
add wave -noreg -hexadecimal -literal {/pleora_tb/U2/AXIL_MISO}
add wave -noreg -hexadecimal -literal {/pleora_tb/U2/AXIS_DATA_MOSI}
add wave -noreg -hexadecimal -literal {/pleora_tb/U2/AXIS_DATA_MISO}
add wave -noreg -logic {/pleora_tb/U2/GIGE_DVAL}
add wave -noreg -logic {/pleora_tb/U2/GIGE_LVAL}
add wave -noreg -logic {/pleora_tb/U2/GIGE_FVAL}
add wave -noreg -logic {/pleora_tb/U2/GIGE_SPARE}
add wave -noreg -hexadecimal -literal {/pleora_tb/U2/GIGE_DATA_OUT}
add wave -named_row "PLEORA_CTRL"
add wave -noreg -hexadecimal -literal {/pleora_tb/U2/U3/AXI4_LITE_MISO}
add wave -noreg -hexadecimal -literal {/pleora_tb/U2/U3/GIGE_PHY_ERR}
add wave -noreg -hexadecimal -literal {/pleora_tb/U2/U3/GIGE_CONFIG}
add wave -named_row "AXIS32_16"
add wave -noreg -hexadecimal -literal {/pleora_tb/U2/U5/AXIS32_MOSI}
add wave -noreg -hexadecimal -literal {/pleora_tb/U2/U5/AXIS32_MISO}
add wave -noreg -hexadecimal -literal {/pleora_tb/U2/U5/AXIS16_MOSI}
add wave -noreg -hexadecimal -literal {/pleora_tb/U2/U5/AXIS16_MISO}
add wave -named_row "AXIS16_DIV2"
add wave -noreg -logic {/pleora_tb/U2/U6/CLK2X}
add wave -noreg -logic {/pleora_tb/U2/U6/CLK1X}
add wave -noreg -hexadecimal -literal {/pleora_tb/U2/U6/AXIS16_2X_MOSI}
add wave -noreg -hexadecimal -literal {/pleora_tb/U2/U6/AXIS16_2X_MISO}
add wave -noreg -hexadecimal -literal {/pleora_tb/U2/U6/AXIS16_1X_MOSI}
add wave -noreg -hexadecimal -literal {/pleora_tb/U2/U6/AXIS16_1X_MISO}
add wave -named_row "PLEORA_PHY"
add wave -noreg -logic {/pleora_tb/U2/U1/CLK_USR}
add wave -noreg -logic {/pleora_tb/U2/U1/CLK_GIGE}
add wave -noreg -hexadecimal -literal {/pleora_tb/U2/U1/GIGE_CONF}
add wave -noreg -hexadecimal -literal {/pleora_tb/U2/U1/gige_conf_sync}
add wave -noreg -hexadecimal -literal {/pleora_tb/U2/U1/AXIS_DATA_MOSI16}
add wave -noreg -hexadecimal -literal {/pleora_tb/U2/U1/AXIS_DATA_MISO}
add wave -noreg -logic {/pleora_tb/U2/U1/GIGE_X_LVAL}
add wave -noreg -logic {/pleora_tb/U2/U1/GIGE_X_FVAL}
add wave -noreg -logic {/pleora_tb/U2/U1/GIGE_X_DVAL}
add wave -noreg -logic {/pleora_tb/U2/U1/GIGE_X_SPARE}
add wave -noreg -hexadecimal -literal {/pleora_tb/U2/U1/GIGE_PORT_A}
add wave -noreg -hexadecimal -literal {/pleora_tb/U2/U1/GIGE_PORT_B}
add wave -noreg -hexadecimal -literal {/pleora_tb/U2/U1/GIGE_PORT_C}
add wave -noreg -logic {/pleora_tb/U2/U1/DESYNC_ERR}
add wave -noreg -logic {/pleora_tb/U2/U1/TC_ERR}
add wave -noreg -literal {/pleora_tb/U2/U1/gige_state}
add wave -noreg -logic {/pleora_tb/U2/U1/dval}
add wave -noreg -logic {/pleora_tb/U2/U1/lval}
add wave -noreg -logic {/pleora_tb/U2/U1/fval}
add wave -noreg -hexadecimal -literal {/pleora_tb/U2/U1/gige_port_a_reg}
add wave -noreg -hexadecimal -literal {/pleora_tb/U2/U1/gige_port_b_reg}
add wave -noreg -hexadecimal -literal {/pleora_tb/U2/U1/pix_cnt}
add wave -noreg -hexadecimal -literal {/pleora_tb/U2/U1/line_cnt}
add wave -noreg -hexadecimal -literal {/pleora_tb/U2/U1/lpause_cnt}
add wave -noreg -hexadecimal -literal {/pleora_tb/U2/U1/fpause_cnt}
add wave -noreg -logic {/pleora_tb/U2/U1/gige_tready}
add wave -noreg -logic {/pleora_tb/U2/U1/sreset_GIGE}
add wave -noreg -logic {/pleora_tb/U2/U1/sreset_usr}
add wave -noreg -hexadecimal -literal {/pleora_tb/U2/U1/gige_conf_sync}
add wave -noreg -logic {/pleora_tb/U2/U1/resyncing}
add wave -named_row "GIGE_SYNC"
add wave -noreg -logic {/pleora_tb/U2/U2/ARESET}
add wave -noreg -logic {/pleora_tb/U2/U2/CLK_GIGE}
add wave -noreg -logic {/pleora_tb/U2/U2/DVAL}
add wave -noreg -logic {/pleora_tb/U2/U2/LVAL}
add wave -noreg -logic {/pleora_tb/U2/U2/FVAL}
add wave -noreg -logic {/pleora_tb/U2/U2/SPARE}
add wave -noreg -hexadecimal -literal {/pleora_tb/U2/U2/GIGE_PORT_A}
add wave -noreg -hexadecimal -literal {/pleora_tb/U2/U2/GIGE_PORT_B}
add wave -noreg -hexadecimal -literal {/pleora_tb/U2/U2/GIGE_PORT_C}
add wave -noreg -logic {/pleora_tb/U2/U2/CLK_GIGE_OUT}
add wave -noreg -logic {/pleora_tb/U2/U2/DVAL_OUT}
add wave -noreg -logic {/pleora_tb/U2/U2/LVAL_OUT}
add wave -noreg -logic {/pleora_tb/U2/U2/FVAL_OUT}
add wave -noreg -logic {/pleora_tb/U2/U2/SPARE_OUT}
add wave -noreg -hexadecimal -literal {/pleora_tb/U2/U2/GIGE_DATA_OUT}
cursor "Cursor 1" 369257944ps  
transcript on
