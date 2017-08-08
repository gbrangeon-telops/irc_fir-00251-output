#set_property BITSTREAM.GENERAL.XADCENHANCEDLINEARITY ON [current_design]
set_operating_conditions -grade industrial
set_property CONFIG_MODE SPIx4 [current_design]
set_property BITSTREAM.CONFIG.CONFIGRATE 33 [current_design]
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]
#set_property LOC BSCAN_X0Y1 [get_cells U1/core_i/MCU/mdm_1/U0/Use_E2.BSCANE2_I]
#set_property LOC XADC_X0Y0 [get_cells U1/core_i/xadc_wiz_0/U0/AXI_XADC_CORE_I/XADC_INST]
set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]

create_clock -period 8.000 -name aurora_clk [get_ports AURORA_CLK_P2]

########### MGT #####################
## TX_OUT_CLK constraint
#create_clock -period 8.000 -name data_mgt_tx_out_clk [get_pins MGT/MGTS/DATA/tx_out_clk]
#create_clock -period 8.000 -name video_mgt_tx_out_clk [get_pins MGT/MGTS/VIDEO/tx_out_clk]
#create_clock -period 8.000 -name exp_mgt_tx_out_clk [get_pins MGT/MGTS/EXP/tx_out_clk]
create_clock -period 8.000 -name data_mgt_tx_out_clk [get_ports MGT/MGTS/DATA/tx_out_clk]
create_clock -period 8.000 -name video_mgt_tx_out_clk [get_ports MGT/MGTS/VIDEO/tx_out_clk]
create_clock -period 8.000 -name exp_mgt_tx_out_clk [get_ports MGT/MGTS/EXP/tx_out_clk]

## USER_CLK constraint
create_clock -period 8.000 -name data_mgt_user_clk_i [get_pins MGT/MGTS/DATA/user_clk]
#create_clock -name video_mgt_user_clk_i -period 10.0 [get_pins MGT/MGTS/VIDEO/user_clk]
#create_clock -period 8.000 -name exp_mgt_user_clk_i [get_pins MGT/MGTS/EXP/user_clk]


###### No cross clock domain analysis. Domains are not related ##############
###### CLK4 to data/exp/user/tx
set_false_path -from [get_clocks clk_out4_core_clk_wiz_0*] -to [get_clocks data_mgt_user_clk_i]
set_false_path -from [get_clocks data_mgt_user_clk_i] -to [get_clocks clk_out4_core_clk_wiz_0*]
#set_false_path -from [get_clocks clk_out4_*] -to [get_clocks data_mgt_user_clk_i]
#set_false_path -from [get_clocks data_mgt_user_clk_i] -to [get_clocks clk_out4_*]


set_false_path -from [get_clocks clk_out4_core_clk_wiz_0*] -to [get_clocks data_mgt_tx_out_clk]
set_false_path -from [get_clocks data_mgt_tx_out_clk] -to [get_clocks clk_out4_core_clk_wiz_0*]
#set_false_path -from [get_clocks clk_out4_*] -to [get_clocks data_mgt_tx_out_clk]
#set_false_path -from [get_clocks data_mgt_tx_out_clk] -to [get_clocks clk_out4*]

#set_false_path -from [get_clocks clk_out4_core_clk_wiz_0*] -to [get_clocks exp_mgt_user_clk_i]
#set_false_path -from [get_clocks exp_mgt_user_clk_i] -to [get_clocks clk_out4_core_clk_wiz_0*]
#set_false_path -from [get_clocks clk_out4_*] -to [get_clocks exp_mgt_user_clk_i]
#set_false_path -from [get_clocks exp_mgt_user_clk_i] -to [get_clocks clk_out4_*]

set_false_path -from [get_clocks clk_out4_core_clk_wiz_0*] -to [get_clocks exp_mgt_tx_out_clk]
set_false_path -from [get_clocks exp_mgt_tx_out_clk] -to [get_clocks clk_out4_core_clk_wiz_0*]
#set_false_path -from [get_clocks clk_out4_*] -to [get_clocks exp_mgt_tx_out_clk]
#set_false_path -from [get_clocks exp_mgt_tx_out_clk] -to [get_clocks clk_out4_core_clk_wiz_0*]

###### CLK1 to data/exp/user/tx
set_false_path -from [get_clocks clk_out1_core_clk_wiz_0*] -to [get_clocks data_mgt_user_clk_i]
set_false_path -from [get_clocks data_mgt_user_clk_i] -to [get_clocks clk_out1_core_clk_wiz_0*]
#set_false_path -from [get_clocks clk_out1_*] -to [get_clocks data_mgt_user_clk_i]
#set_false_path -from [get_clocks data_mgt_user_clk_i] -to [get_clocks clk_out1_core_clk_wiz_0*]


set_false_path -from [get_clocks clk_out1_core_clk_wiz_0*] -to [get_clocks data_mgt_tx_out_clk]
set_false_path -from [get_clocks data_mgt_tx_out_clk] -to [get_clocks clk_out1_core_clk_wiz_0*]
#set_false_path -from [get_clocks clk_out1_*] -to [get_clocks data_mgt_tx_out_clk]
#set_false_path -from [get_clocks data_mgt_tx_out_clk] -to [get_clocks clk_out1_core_clk_wiz_0*]

#set_false_path -from [get_clocks clk_out1_core_clk_wiz_0*] -to [get_clocks exp_mgt_user_clk_i]
#set_false_path -from [get_clocks exp_mgt_user_clk_i] -to [get_clocks clk_out1_core_clk_wiz_0*]
#set_false_path -from [get_clocks clk_out1_*] -to [get_clocks exp_mgt_user_clk_i]
#set_false_path -from [get_clocks exp_mgt_user_clk_i] -to [get_clocks clk_out1_core_clk_wiz_0*]

set_false_path -from [get_clocks clk_out1_core_clk_wiz_0*] -to [get_clocks exp_mgt_tx_out_clk]
set_false_path -from [get_clocks exp_mgt_tx_out_clk] -to [get_clocks clk_out1_core_clk_wiz_0*]
#set_false_path -from [get_clocks clk_out1_*] -to [get_clocks exp_mgt_tx_out_clk]
#set_false_path -from [get_clocks exp_mgt_tx_out_clk] -to [get_clocks clk_out1_core_clk_wiz_0*]



###### CLK1 to CLK4
set_false_path -from [get_clocks clk_out4_core_clk_wiz_0*] -to [get_clocks clk_out1_core_clk_wiz_0*]
set_false_path -from [get_clocks clk_out1_core_clk_wiz_0*] -to [get_clocks clk_out4_core_clk_wiz_0*]
#set_false_path -from [get_clocks clk_out4_*] -to [get_clocks clk_out1_*]
#set_false_path -from [get_clocks clk_out1_*] -to [get_clocks clk_out4_*]


###### CLK1 to CLK 2
set_false_path -from [get_clocks clk_out1_core_clk_wiz_0*] -to [get_clocks clk_out2_core_clk_wiz_0*]
set_false_path -from [get_clocks clk_out2_core_clk_wiz_0*] -to [get_clocks clk_out1_core_clk_wiz_0*]
#set_false_path -from [get_clocks clk_out1_*] -to [get_clocks clk_out2_*]
#set_false_path -from [get_clocks clk_out2_*] -to [get_clocks clk_out1_*]

###### CLK1 to CLK 5
set_false_path -from [get_clocks clk_out1_*] -to [get_clocks clk_out5_*]


###### Clock crossing for Axi-stream to DDR
set_false_path -from [get_clocks clk_pll_i_1] -to [get_clocks clk_out2_core_clk_wiz_0*]
set_false_path -from [get_clocks clk_out2_core_clk_wiz_0*] -to [get_clocks clk_pll_i_1]
#set_false_path -from [get_clocks {clk_pll_i_2}] -to [get_clocks {clk_out1*}]
#set_false_path -from [get_clocks {clk_pll_i_2}] -to [get_clocks {clk_out2*}]

###### RESET
set_false_path -from [get_cells {MB/core_wrapper_i/core_i/proc_sys_reset_1/U0/ACTIVE_LOW_PR_OUT_DFF[0].peripheral_aresetn_reg[0]}] -to [all_registers]

###### CLINK
set_false_path -from [get_pins {CLINK/CTRL/config_i_reg[*][*]/C}] -to [get_pins {CLINK/PHY/clink_conf_sync_reg[*][*]/D}]
set_false_path -from [get_pins CLINK/PHY/*_ERR_reg/C] -to [get_pins CLINK/CTRL/*/flop1/D]

############# DCI CONSTRAINT  ###################
set_property DCI_CASCADE {34} [get_iobanks 33]

############# XADC            ###################
set_property PACKAGE_PIN P11 [get_ports VN]


############## CLOCK CONSTRAINT ###################
set_property IOSTANDARD DIFF_SSTL15 [get_ports SYS_CLK_P2]
set_property PACKAGE_PIN AA2 [get_ports SYS_CLK_N2]

############## AURORA CHANNEL  ####################
set_property PACKAGE_PIN H5 [get_ports AURORA_CLK_N2]
#set_property PACKAGE_PIN F5 [get_ports AURORA_CLK_N3]



set_property PACKAGE_PIN R3 [get_ports {DATA_DOWNLINK_N[0]}]
set_property PACKAGE_PIN N3 [get_ports {DATA_DOWNLINK_N[1]}]


set_property PACKAGE_PIN K2 [get_ports {VIDEO_UPLINK_P[0]}]
set_property PACKAGE_PIN H2 [get_ports {VIDEO_UPLINK_P[1]}]

#set_property PACKAGE_PIN C4 [get_ports {EXP_OUT_P[0]}]
#set_property PACKAGE_PIN B6 [get_ports {EXP_OUT_P[1]}]

#set_property PACKAGE_PIN B2 [get_ports {OUT_EXP_P[0]}]
#set_property PACKAGE_PIN A4 [get_ports {OUT_EXP_P[1]}]

############## FB DDR #############################
set_property SLEW SLOW [get_ports FB_DDR3_*]

############## 3G-SDI  ############################

set_property PACKAGE_PIN F1 [get_ports SDI_TXCLK_N]

set_property PACKAGE_PIN D5 [get_ports SDI_CLK_N]

############## FLASH MEM ############################
set_property IOSTANDARD LVCMOS33 [get_ports OUT_FLASH_D0]
set_property PACKAGE_PIN B24 [get_ports OUT_FLASH_D0]
set_property IOSTANDARD LVCMOS33 [get_ports OUT_FLASH_D1]
set_property PACKAGE_PIN A25 [get_ports OUT_FLASH_D1]
set_property IOSTANDARD LVCMOS33 [get_ports OUT_FLASH_D2]
set_property PACKAGE_PIN B22 [get_ports OUT_FLASH_D2]
set_property IOSTANDARD LVCMOS33 [get_ports OUT_FLASH_D3]
set_property PACKAGE_PIN A22 [get_ports OUT_FLASH_D3]
set_property IOSTANDARD LVCMOS33 [get_ports OUT_FLASH_CS_N]
set_property PACKAGE_PIN C23 [get_ports OUT_FLASH_CS_N]


############## Clink interface  ####################

set_property IOSTANDARD LVDS_25 [get_ports CL_SER_TC_P]
set_property DIFF_TERM TRUE [get_ports CL_SER_TC_P]

set_property IOSTANDARD LVDS_25 [get_ports CL_SER_TFG_P]
set_property IOSTANDARD LVDS_25 [get_ports CH0_CLK_P]
set_property IOSTANDARD LVDS_25 [get_ports CH1_CLK_P]
set_property IOSTANDARD LVDS_25 [get_ports CH2_CLK_P]
set_property IOSTANDARD LVDS_25 [get_ports CL_CC_P*]
set_property IOSTANDARD LVDS_25 [get_ports CL_CH0_DATA_P*]
set_property IOSTANDARD LVDS_25 [get_ports CL_CH1_DATA_P*]
set_property IOSTANDARD LVDS_25 [get_ports CL_CH2_DATA_P*]
set_property IOSTANDARD LVDS_25 [get_ports CL_CH0_DATA_N*]
set_property IOSTANDARD LVDS_25 [get_ports CL_CH1_DATA_N*]
set_property IOSTANDARD LVDS_25 [get_ports CL_CH2_DATA_N*]

set_property PACKAGE_PIN G9 [get_ports CL_CC_N1]
set_property PACKAGE_PIN A12 [get_ports CL_CC_N2]
set_property PACKAGE_PIN A15 [get_ports CL_CC_N3]
set_property PACKAGE_PIN A10 [get_ports CL_CC_N4]

set_property PACKAGE_PIN J10 [get_ports CL_SER_TC_N]
set_property PACKAGE_PIN H13 [get_ports CL_SER_TFG_N]

set_property PACKAGE_PIN E11 [get_ports CH0_CLK_P]
#set_property PACKAGE_PIN D11 [get_ports {CH0_CLK_N}]
set_property PACKAGE_PIN C14 [get_ports CH1_CLK_P]
#set_property PACKAGE_PIN C13 [get_ports {CH1_CLK_N}]
set_property PACKAGE_PIN H14 [get_ports CH2_CLK_P]
#set_property PACKAGE_PIN G14 [get_ports {CH2_CLK_N}]


set_property IOSTANDARD LVCMOS25 [get_ports CL_ENABLE]
set_property IOSTANDARD LVCMOS25 [get_ports CL_ENABLE_FULL_N]
set_property IOSTANDARD LVCMOS25 [get_ports CL_ENABLE_DUAL_N]

set_property PACKAGE_PIN B12 [get_ports CL_ENABLE]
set_property PACKAGE_PIN B14 [get_ports CL_ENABLE_FULL_N]
set_property PACKAGE_PIN A14 [get_ports CL_ENABLE_DUAL_N]


set_property PACKAGE_PIN B9 [get_ports {CL_CH0_DATA_N[0]}]
set_property PACKAGE_PIN F10 [get_ports {CL_CH0_DATA_N[1]}]
set_property PACKAGE_PIN D10 [get_ports {CL_CH0_DATA_N[2]}]
set_property PACKAGE_PIN C11 [get_ports {CL_CH0_DATA_N[3]}]


set_property PACKAGE_PIN F13 [get_ports {CL_CH1_DATA_N[0]}]
set_property PACKAGE_PIN F12 [get_ports {CL_CH1_DATA_N[1]}]
set_property PACKAGE_PIN D13 [get_ports {CL_CH1_DATA_N[2]}]
set_property PACKAGE_PIN E12 [get_ports {CL_CH1_DATA_N[3]}]


set_property PACKAGE_PIN A8 [get_ports {CL_CH2_DATA_N[0]}]
set_property PACKAGE_PIN D8 [get_ports {CL_CH2_DATA_N[1]}]
set_property PACKAGE_PIN F8 [get_ports {CL_CH2_DATA_N[2]}]
set_property PACKAGE_PIN H11 [get_ports {CL_CH2_DATA_N[3]}]

############## BANK 13 ################################
set_property IOSTANDARD LVCMOS25 [get_ports IN1_*]
set_property PACKAGE_PIN N16 [get_ports {IN1_PDATA[0]}]
set_property PACKAGE_PIN M22 [get_ports {IN1_PDATA[1]}]
set_property PACKAGE_PIN U16 [get_ports {IN1_PDATA[2]}]
set_property PACKAGE_PIN M21 [get_ports {IN1_PDATA[3]}]
set_property PACKAGE_PIN N23 [get_ports {IN1_PDATA[4]}]
set_property PACKAGE_PIN P23 [get_ports {IN1_PDATA[5]}]
set_property PACKAGE_PIN H19 [get_ports {IN1_PDATA[6]}]
set_property PACKAGE_PIN N22 [get_ports {IN1_PDATA[7]}]
set_property PACKAGE_PIN N21 [get_ports {IN1_PDATA[8]}]
set_property PACKAGE_PIN P21 [get_ports {IN1_PDATA[9]}]
set_property PACKAGE_PIN R23 [get_ports {IN1_PDATA[10]}]
set_property PACKAGE_PIN T25 [get_ports {IN1_PDATA[11]}]
set_property PACKAGE_PIN R20 [get_ports {IN1_PDATA[12]}]
set_property PACKAGE_PIN T24 [get_ports {IN1_PDATA[13]}]
set_property PACKAGE_PIN R21 [get_ports {IN1_PDATA[14]}]
set_property PACKAGE_PIN R22 [get_ports {IN1_PDATA[15]}]
set_property PACKAGE_PIN T20 [get_ports {IN1_PDATA[16]}]
set_property PACKAGE_PIN T22 [get_ports {IN1_PDATA[17]}]
set_property PACKAGE_PIN U19 [get_ports {IN1_PDATA[18]}]
set_property PACKAGE_PIN T19 [get_ports {IN1_PDATA[19]}]
set_property PACKAGE_PIN K26 [get_ports {IN1_PDATA[20]}]
set_property PACKAGE_PIN T18 [get_ports {IN1_PDATA[21]}]
set_property PACKAGE_PIN T23 [get_ports {IN1_PDATA[22]}]
set_property PACKAGE_PIN U20 [get_ports {IN1_PDATA[23]}]
set_property PACKAGE_PIN R17 [get_ports {IN1_PDATA[24]}]
set_property PACKAGE_PIN M19 [get_ports {IN1_PDATA[25]}]
set_property PACKAGE_PIN R16 [get_ports {IN1_PDATA[26]}]
set_property PACKAGE_PIN N18 [get_ports {IN1_PDATA[27]}]
set_property PACKAGE_PIN T17 [get_ports {IN1_PDATA[28]}]
set_property PACKAGE_PIN U17 [get_ports {IN1_PDATA[29]}]
set_property PACKAGE_PIN G19 [get_ports {IN1_PDATA[30]}]
set_property PACKAGE_PIN P18 [get_ports {IN1_PDATA[31]}]
set_property PACKAGE_PIN R18 [get_ports {IN1_PDATA[32]}]
set_property PACKAGE_PIN P26 [get_ports {IN1_PDATA[33]}]
set_property PACKAGE_PIN L25 [get_ports {IN1_PDATA[34]}]
set_property PACKAGE_PIN N24 [get_ports {IN1_PDATA[35]}]
set_property PACKAGE_PIN M26 [get_ports {IN1_PDATA[36]}]
set_property PACKAGE_PIN P24 [get_ports {IN1_PDATA[37]}]
set_property PACKAGE_PIN R26 [get_ports {IN1_PDATA[38]}]
set_property PACKAGE_PIN M25 [get_ports {IN1_PDATA[39]}]
set_property PACKAGE_PIN N26 [get_ports {IN1_PDATA[40]}]
set_property PACKAGE_PIN R25 [get_ports {IN1_PDATA[41]}]
set_property PACKAGE_PIN N19 [get_ports {IN1_PDATA[42]}]
set_property PACKAGE_PIN L24 [get_ports {IN1_PDATA[43]}]
set_property PACKAGE_PIN P20 [get_ports {IN1_PDATA[44]}]
set_property PACKAGE_PIN M24 [get_ports {IN1_PDATA[45]}]
set_property PACKAGE_PIN P25 [get_ports {IN1_PDATA[46]}]
set_property PACKAGE_PIN M20 [get_ports {IN1_PDATA[47]}]

set_property PACKAGE_PIN K25 [get_ports IN1_SPARE1]
set_property PACKAGE_PIN N17 [get_ports IN1_XCLK]
set_property PACKAGE_PIN P19 [get_ports IN1_SPARE2]
set_property PACKAGE_PIN P16 [get_ports IN1_YCLK]

############## BANK 14 ################################
set_property IOSTANDARD LVCMOS33 [get_ports GIGE_DATA*]
set_property IOSTANDARD LVCMOS33 [get_ports GIGE_WATERLEVEL]
set_property IOSTANDARD LVCMOS33 [get_ports GIGE_CC*]
set_property IOSTANDARD LVCMOS33 [get_ports GIGE_SPARE]
set_property IOSTANDARD LVCMOS33 [get_ports GIGE_FVAL]
set_property IOSTANDARD LVCMOS33 [get_ports GIGE_DVAL]
set_property IOSTANDARD LVCMOS33 [get_ports GIGE_LVAL]
set_property IOSTANDARD LVCMOS33 [get_ports GIGE_IN_CLK1]
set_property IOSTANDARD LVCMOS33 [get_ports GIGE_IN_CLK2]
set_property IOSTANDARD LVCMOS33 [get_ports GIGE_IN_CLK3]
set_property IOSTANDARD LVCMOS33 [get_ports GIGE_PIXEL_CLK]
set_property IOSTANDARD LVCMOS33 [get_ports FPGA_OUT_PWM]
set_property IOSTANDARD LVCMOS33 [get_ports VIDEO_RST_N]
set_property IOSTANDARD LVCMOS33 [get_ports VIDEO_ENABLE1]
set_property IOSTANDARD LVCMOS33 [get_ports VIDEO_SDA]
set_property IOSTANDARD LVCMOS33 [get_ports VIDEO_SCL]
set_property IOSTANDARD LVCMOS33 [get_ports VIDEO_SD_HD_N]
set_property IOSTANDARD LVCMOS33 [get_ports VIDEO_EQ_EN_N]

set_property PACKAGE_PIN E26 [get_ports {GIGE_DATA[16]}]
set_property PACKAGE_PIN F25 [get_ports {GIGE_DATA[17]}]
set_property PACKAGE_PIN H26 [get_ports {GIGE_DATA[18]}]
set_property PACKAGE_PIN J26 [get_ports {GIGE_DATA[19]}]
set_property PACKAGE_PIN G21 [get_ports {GIGE_DATA[20]}]
set_property PACKAGE_PIN H21 [get_ports {GIGE_DATA[21]}]
set_property PACKAGE_PIN H24 [get_ports {GIGE_DATA[22]}]
set_property PACKAGE_PIN H23 [get_ports {GIGE_DATA[23]}]

set_property PACKAGE_PIN C22 [get_ports GIGE_WATERLEVEL]
set_property PULLDOWN TRUE [get_ports GIGE_WATERLEVEL]

set_property PACKAGE_PIN D26 [get_ports {GIGE_CC[0]}]
set_property PACKAGE_PIN C26 [get_ports {GIGE_CC[1]}]
set_property PACKAGE_PIN A23 [get_ports {GIGE_CC[2]}]
set_property PACKAGE_PIN A24 [get_ports {GIGE_CC[3]}]

set_property PACKAGE_PIN K23 [get_ports GIGE_SPARE]

set_property PACKAGE_PIN J24 [get_ports GIGE_IN_CLK1]
set_property PACKAGE_PIN J25 [get_ports GIGE_IN_CLK2]
set_property PACKAGE_PIN J21 [get_ports GIGE_IN_CLK3]

set_property PACKAGE_PIN H22 [get_ports GIGE_PIXEL_CLK]

set_property PACKAGE_PIN B26 [get_ports DEBUG_LED_OUT]
set_property PACKAGE_PIN C24 [get_ports FPGA_OUT_PWM]
set_property IOSTANDARD LVCMOS33 [get_ports DEBUG_LED_OUT]



set_property PACKAGE_PIN E21 [get_ports VIDEO_RST_N]
set_property PACKAGE_PIN E22 [get_ports VIDEO_ENABLE1]
set_property PACKAGE_PIN B20 [get_ports VIDEO_SDA]
set_property PACKAGE_PIN A20 [get_ports VIDEO_SCL]
set_property PACKAGE_PIN D21 [get_ports VIDEO_SD_HD_N]
set_property PACKAGE_PIN B25 [get_ports VIDEO_EQ_EN_N]

############## BANK 15 ################################
set_property IOSTANDARD LVCMOS25 [get_ports IN2_*]
set_property IOSTANDARD LVCMOS25 [get_ports G10_BULK*]
set_property IOSTANDARD LVCMOS25 [get_ports GIGE_OUT_CLK_*]
set_property IOSTANDARD LVDS_25 [get_ports B15_EXP_SPARE_*]
set_property IOSTANDARD LVCMOS25 [get_ports GIGE_FPGA_SEL*]
set_property IOSTANDARD LVCMOS25 [get_ports PMBUS_*]

set_property PACKAGE_PIN E20 [get_ports IN1_LVAL1]
set_property PACKAGE_PIN F19 [get_ports IN1_DVAL1]
set_property PACKAGE_PIN G20 [get_ports IN1_FVAL1]

set_property PACKAGE_PIN D20 [get_ports IN1_LVAL2]
set_property PACKAGE_PIN D19 [get_ports IN1_DVAL2]
set_property PACKAGE_PIN F20 [get_ports IN1_FVAL2]

set_property PACKAGE_PIN D18 [get_ports IN2_LVAL1]
set_property PACKAGE_PIN E18 [get_ports IN2_DVAL1]
set_property PACKAGE_PIN H18 [get_ports IN2_FVAL1]

set_property PACKAGE_PIN K15 [get_ports IN2_LVAL2]
set_property PACKAGE_PIN M16 [get_ports IN2_DVAL2]
set_property PACKAGE_PIN E16 [get_ports IN2_FVAL2]

set_property PACKAGE_PIN H17 [get_ports IN2_PDATA06]
set_property PACKAGE_PIN E15 [get_ports IN2_PDATA30]

set_property PACKAGE_PIN F18 [get_ports G10_BULK_CLK1]
set_property PACKAGE_PIN G17 [get_ports G10_BULK_CLK4]
set_property PACKAGE_PIN J16 [get_ports G10_BULK_RX0]
set_property PACKAGE_PIN J15 [get_ports G10_BULK_RX1]
set_property PACKAGE_PIN G15 [get_ports G10_BULK_RX4]

set_property IOSTANDARD LVCMOS25 [get_ports G10_PWR_ON_RST_N]
set_property PACKAGE_PIN F15 [get_ports G10_PWR_ON_RST_N]
set_property PACKAGE_PIN H16 [get_ports G10_BULK_TX1]
set_property PACKAGE_PIN D16 [get_ports G10_BULK_TX0]
set_property PACKAGE_PIN C17 [get_ports G10_BULK_TX4]

set_property IOSTANDARD LVCMOS25 [get_ports G10_FPGA_LOAD_SEL]
set_property PACKAGE_PIN C18 [get_ports G10_FPGA_LOAD_SEL]

set_property PACKAGE_PIN J20 [get_ports GIGE_FPGA_SEL0]
set_property PACKAGE_PIN K20 [get_ports GIGE_FPGA_SEL1]
set_property IOSTANDARD LVCMOS25 [get_ports GIGE_PWR_ON_RST_N]
set_property PACKAGE_PIN B16 [get_ports GIGE_PWR_ON_RST_N]
set_property PACKAGE_PIN F17 [get_ports GIGE_OUT_CLK_P]
set_property PACKAGE_PIN E17 [get_ports GIGE_OUT_CLK_N]

set_property PACKAGE_PIN C16 [get_ports PMBUS_ALERT_N]
set_property PACKAGE_PIN G16 [get_ports PMBUS_DATA]
set_property PACKAGE_PIN D15 [get_ports PMBUS_CLK]

set_property PACKAGE_PIN A18 [get_ports {IN1_CC[0]}]
set_property PACKAGE_PIN A19 [get_ports {IN1_CC[1]}]
set_property PACKAGE_PIN L17 [get_ports {IN1_CC[2]}]
set_property PACKAGE_PIN K18 [get_ports {IN1_CC[3]}]

set_property PACKAGE_PIN C19 [get_ports {IN2_CC[0]}]
set_property PACKAGE_PIN B17 [get_ports {IN2_CC[1]}]
set_property PACKAGE_PIN B19 [get_ports {IN2_CC[2]}]
set_property PACKAGE_PIN A17 [get_ports {IN2_CC[3]}]


set_property PACKAGE_PIN L18 [get_ports {B15_EXP_SPARE_N[0]}]
set_property PACKAGE_PIN K17 [get_ports {B15_EXP_SPARE_N[1]}]
set_property PACKAGE_PIN L20 [get_ports {B15_EXP_SPARE_N[2]}]
set_property PACKAGE_PIN J19 [get_ports {B15_EXP_SPARE_N[3]}]

############## BANK 33 34 #############################

set_property IOSTANDARD DIFF_SSTL15 [get_ports B34_EXP_SPARE*]

set_property IOSTANDARD SSTL15 [get_ports FPGA_TO_FPGA0]
set_property PACKAGE_PIN AB2 [get_ports FPGA_TO_FPGA0]
set_property IOSTANDARD SSTL15 [get_ports FPGA_TO_FPGA1]
set_property PACKAGE_PIN AC2 [get_ports FPGA_TO_FPGA1]
set_property IOSTANDARD SSTL15 [get_ports FPGA_TO_FPGA2]
set_property PACKAGE_PIN W1 [get_ports FPGA_TO_FPGA2]
set_property IOSTANDARD SSTL15 [get_ports FPGA_TO_FPGA3]
set_property PACKAGE_PIN Y1 [get_ports FPGA_TO_FPGA3]
set_property IOSTANDARD SSTL15 [get_ports WATERLEVEL_TO_PROC]
set_property PACKAGE_PIN T7 [get_ports WATERLEVEL_TO_PROC]
set_property IOSTANDARD SSTL15 [get_ports FPGA_TO_FPGA5]
set_property PACKAGE_PIN U4 [get_ports FPGA_TO_FPGA5]
#set_property IOSTANDARD SSTL15_T_DCI [get_ports FPGA_TO_FPGA6]
set_property IOSTANDARD SSTL15 [get_ports FPGA_TO_FPGA6]
set_property PACKAGE_PIN AC8 [get_ports FPGA_TO_FPGA6]
#set_property IOSTANDARD SSTL15_T_DCI [get_ports FPGA_TO_FPGA7]
set_property IOSTANDARD SSTL15 [get_ports FPGA_TO_FPGA7]
set_property PACKAGE_PIN AD8 [get_ports FPGA_TO_FPGA7]
#set_property IOSTANDARD SSTL15_T_DCI [get_ports FPGA_TO_FPGA8]
set_property IOSTANDARD SSTL15 [get_ports FPGA_TO_FPGA8]
set_property PACKAGE_PIN Y11 [get_ports FPGA_TO_FPGA8]


set_property PACKAGE_PIN W3 [get_ports {B34_EXP_SPARE_N[4]}]
set_property PACKAGE_PIN AB4 [get_ports {B34_EXP_SPARE_N[5]}]
set_property PACKAGE_PIN AC3 [get_ports {B34_EXP_SPARE_N[6]}]
set_property PACKAGE_PIN AB5 [get_ports {B34_EXP_SPARE_N[7]}]
set_property PACKAGE_PIN AC6 [get_ports {B34_EXP_SPARE_N[8]}]
set_property PACKAGE_PIN Y5 [get_ports {B34_EXP_SPARE_N[9]}]


set_property PACKAGE_PIN W5 [get_ports UART_TX_TO_STORAGE]
set_property IOSTANDARD SSTL15 [get_ports UART_TX_TO_STORAGE]
set_property PACKAGE_PIN W6 [get_ports UART_RX_FROM_STORAGE]
set_property IOSTANDARD SSTL15 [get_ports UART_RX_FROM_STORAGE]
set_property PACKAGE_PIN U1 [get_ports MOI_TO_STORAGE]
set_property IOSTANDARD SSTL15 [get_ports MOI_TO_STORAGE]
set_property PACKAGE_PIN U2 [get_ports WATERLEVEL_TO_STORAGE]
set_property IOSTANDARD SSTL15 [get_ports WATERLEVEL_TO_STORAGE]
set_property PACKAGE_PIN AD5 [get_ports {B34_BUFFER_SPARE_N[2]}]
set_property PACKAGE_PIN AD6 [get_ports {B34_BUFFER_SPARE_P[2]}]
set_property PACKAGE_PIN U5 [get_ports {B34_BUFFER_SPARE_N[3]}]
set_property PACKAGE_PIN U6 [get_ports {B34_BUFFER_SPARE_P[3]}]
set_property PACKAGE_PIN AC1 [get_ports {B34_BUFFER_SPARE_N[4]}]
set_property PACKAGE_PIN AB1 [get_ports {B34_BUFFER_SPARE_P[4]}]
set_property PACKAGE_PIN V1 [get_ports {B34_BUFFER_SPARE_N[5]}]
set_property PACKAGE_PIN V2 [get_ports {B34_BUFFER_SPARE_P[5]}]
set_property PACKAGE_PIN Y2 [get_ports {B34_BUFFER_SPARE_N[6]}]
set_property PACKAGE_PIN Y3 [get_ports {B34_BUFFER_SPARE_P[6]}]
set_property PACKAGE_PIN V6 [get_ports {B34_BUFFER_SPARE_N[7]}]
set_property PACKAGE_PIN U7 [get_ports {B34_BUFFER_SPARE_P[7]}]
set_property IOSTANDARD SSTL15 [get_ports B34_BUFFER_SPARE*]

## WARNING: B32_BUFFER_SPARE_8 are connected on a bank at 1.5V on Buffer board

############## Temporary placement ####################
set_property IOSTANDARD SSTL15 [get_ports ddr3_addr15_rfu]
set_property PACKAGE_PIN AA13 [get_ports ddr3_addr15_rfu]

############## GIGE IOB packagin ######################
set_property IOB FALSE [get_ports GIGE_WATERLEVEL]
set_property IOB FALSE [get_ports {GIGE_CC[0]}]
set_property IOB FALSE [get_ports {GIGE_CC[1]}]
set_property IOB FALSE [get_ports {GIGE_CC[2]}]
set_property IOB FALSE [get_ports {GIGE_CC[3]}]
set_property IOB FALSE [get_ports {GIGE_DATA[0]}]
set_property IOB FALSE [get_ports {GIGE_DATA[1]}]
set_property IOB FALSE [get_ports {GIGE_DATA[2]}]
set_property IOB FALSE [get_ports {GIGE_DATA[3]}]
set_property IOB FALSE [get_ports {GIGE_DATA[4]}]
set_property IOB FALSE [get_ports {GIGE_DATA[5]}]
set_property IOB FALSE [get_ports {GIGE_DATA[6]}]
set_property IOB FALSE [get_ports {GIGE_DATA[7]}]
set_property IOB FALSE [get_ports {GIGE_DATA[8]}]
set_property IOB FALSE [get_ports {GIGE_DATA[9]}]
set_property IOB FALSE [get_ports {GIGE_DATA[10]}]
set_property IOB FALSE [get_ports {GIGE_DATA[11]}]
set_property IOB FALSE [get_ports {GIGE_DATA[12]}]
set_property IOB FALSE [get_ports {GIGE_DATA[13]}]
set_property IOB FALSE [get_ports {GIGE_DATA[14]}]
set_property IOB FALSE [get_ports {GIGE_DATA[15]}]
set_property IOB FALSE [get_ports {GIGE_DATA[16]}]
set_property IOB FALSE [get_ports {GIGE_DATA[17]}]
set_property IOB FALSE [get_ports {GIGE_DATA[18]}]
set_property IOB FALSE [get_ports {GIGE_DATA[19]}]
set_property IOB FALSE [get_ports {GIGE_DATA[20]}]
set_property IOB FALSE [get_ports {GIGE_DATA[21]}]
set_property IOB FALSE [get_ports {GIGE_DATA[22]}]
set_property IOB FALSE [get_ports {GIGE_DATA[23]}]
set_property IOB FALSE [get_ports GIGE_DVAL]
set_property IOB FALSE [get_ports GIGE_FPGA_SEL0]
set_property IOB FALSE [get_ports GIGE_FPGA_SEL1]
set_property IOB FALSE [get_ports GIGE_FVAL]
set_property IOB FALSE [get_ports GIGE_IN_CLK1]
set_property IOB FALSE [get_ports GIGE_IN_CLK2]
set_property IOB FALSE [get_ports GIGE_IN_CLK3]
set_property IOB FALSE [get_ports GIGE_LVAL]
set_property IOB FALSE [get_ports GIGE_OUT_CLK_N]
set_property IOB FALSE [get_ports GIGE_OUT_CLK_P]
set_property IOB FALSE [get_ports GIGE_PIXEL_CLK]
set_property IOB FALSE [get_ports GIGE_PWR_ON_RST_N]
set_property IOB FALSE [get_ports GIGE_SPARE]

############# Differential Ports #####################

###### DEBUG NET #######################




#set_property LOC OLOGIC_X0Y50 [get_cells {PLEORA/U2/gige_data_o_reg[1]}]
#set_property LOC OLOGIC_X0Y51 [get_cells PLEORA/U2/fval_o_reg]
#set_property LOC OLOGIC_X0Y53 [get_cells PLEORA/U2/dval_o_reg]
#set_property LOC OLOGIC_X0Y54 [get_cells PLEORA/U2/lval_o_reg]
#set_property LOC OLOGIC_X0Y67 [get_cells {PLEORA/U2/gige_data_o_reg[14]}]
#set_property LOC OLOGIC_X0Y68 [get_cells {PLEORA/U2/gige_data_o_reg[15]}]
#set_property LOC OLOGIC_X0Y69 [get_cells {PLEORA/U2/gige_data_o_reg[12]}]
#set_property LOC OLOGIC_X0Y70 [get_cells {PLEORA/U2/gige_data_o_reg[13]}]
#set_property LOC OLOGIC_X0Y71 [get_cells {PLEORA/U2/gige_data_o_reg[10]}]
#set_property LOC OLOGIC_X0Y72 [get_cells {PLEORA/U2/gige_data_o_reg[11]}]
#set_property LOC OLOGIC_X0Y73 [get_cells {PLEORA/U2/gige_data_o_reg[8]}]
#set_property LOC OLOGIC_X0Y74 [get_cells {PLEORA/U2/gige_data_o_reg[9]}]
#set_property LOC OLOGIC_X0Y75 [get_cells {PLEORA/U2/gige_data_o_reg[6]}]
#set_property LOC OLOGIC_X0Y76 [get_cells {PLEORA/U2/gige_data_o_reg[7]}]
#set_property LOC OLOGIC_X0Y77 [get_cells {PLEORA/U2/gige_data_o_reg[4]}]
#set_property LOC OLOGIC_X0Y78 [get_cells {PLEORA/U2/gige_data_o_reg[5]}]
#set_property LOC OLOGIC_X0Y79 [get_cells {PLEORA/U2/gige_data_o_reg[2]}]
#set_property LOC OLOGIC_X0Y80 [get_cells {PLEORA/U2/gige_data_o_reg[3]}]
#set_property LOC OLOGIC_X0Y99 [get_cells {PLEORA/U2/gige_data_o_reg[0]}]




#TODO WHY THOSE CONSTRAINT
#set_property LOC BSCAN_X0Y1 [get_cells MB/core_wrapper_i/core_i/MCU/mdm_1/U0/Use_E2.BSCANE2_I]
#set_property LOC MMCME2_ADV_X1Y0 [get_cells MB/core_wrapper_i/core_i/FB_MEMORY/mig_7series_0/u_core_mig_7series_0_0_mig/u_ddr3_infrastructure/gen_mmcm.mmcm_i]
set_property PACKAGE_PIN K21 [get_ports {GIGE_DATA[0]}]
set_property PACKAGE_PIN L23 [get_ports {GIGE_DATA[1]}]
set_property PACKAGE_PIN B21 [get_ports {GIGE_DATA[2]}]
set_property PACKAGE_PIN C21 [get_ports {GIGE_DATA[3]}]
set_property PACKAGE_PIN D24 [get_ports {GIGE_DATA[4]}]
set_property PACKAGE_PIN D23 [get_ports {GIGE_DATA[5]}]
set_property PACKAGE_PIN E23 [get_ports {GIGE_DATA[6]}]
set_property PACKAGE_PIN F22 [get_ports {GIGE_DATA[7]}]
set_property PACKAGE_PIN F23 [get_ports {GIGE_DATA[8]}]
set_property PACKAGE_PIN G22 [get_ports {GIGE_DATA[9]}]
set_property PACKAGE_PIN F24 [get_ports {GIGE_DATA[10]}]
set_property PACKAGE_PIN G24 [get_ports {GIGE_DATA[11]}]
set_property PACKAGE_PIN D25 [get_ports {GIGE_DATA[12]}]
set_property PACKAGE_PIN E25 [get_ports {GIGE_DATA[13]}]
set_property PACKAGE_PIN G26 [get_ports {GIGE_DATA[14]}]
set_property PACKAGE_PIN G25 [get_ports {GIGE_DATA[15]}]
set_property PACKAGE_PIN K22 [get_ports GIGE_DVAL]
set_property PACKAGE_PIN J23 [get_ports GIGE_FVAL]
set_property PACKAGE_PIN L22 [get_ports GIGE_LVAL]

#make_diff_pair_ports SDI_CLK_P SDI_CLK_N





make_diff_pair_ports B15_EXP_SPARE_P[0] B15_EXP_SPARE_N[0]
make_diff_pair_ports B15_EXP_SPARE_P[1] B15_EXP_SPARE_N[1]
make_diff_pair_ports B15_EXP_SPARE_P[2] B15_EXP_SPARE_N[2]
make_diff_pair_ports B15_EXP_SPARE_P[3] B15_EXP_SPARE_N[3]
make_diff_pair_ports B34_EXP_SPARE_P[4] B34_EXP_SPARE_N[4]
make_diff_pair_ports B34_EXP_SPARE_P[5] B34_EXP_SPARE_N[5]
make_diff_pair_ports B34_EXP_SPARE_P[6] B34_EXP_SPARE_N[6]
make_diff_pair_ports B34_EXP_SPARE_P[7] B34_EXP_SPARE_N[7]
make_diff_pair_ports B34_EXP_SPARE_P[8] B34_EXP_SPARE_N[8]
make_diff_pair_ports B34_EXP_SPARE_P[9] B34_EXP_SPARE_N[9]
make_diff_pair_ports CL_CC_P1 CL_CC_N1
make_diff_pair_ports CL_CC_P2 CL_CC_N2
make_diff_pair_ports CL_CC_P3 CL_CC_N3
make_diff_pair_ports CL_CC_P4 CL_CC_N4

