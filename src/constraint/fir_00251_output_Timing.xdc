## Timing Constraints Section

# Primary clocks
create_clock -period 5.000 [get_ports SYS_CLK_P2]
create_clock -period 30.003 -name gige_clk [get_ports GIGE_IN_CLK1]
create_clock -period 6.734 -name sdi_clk [get_ports SDI_CLK_P]
create_clock -period 13.468 [get_pins *TXOUTCLK -hier -filter {name =~ *gt0_k7gtx_sdi_wrapper*}]
create_clock -period 13.468 [get_pins *RXOUTCLK -hier -filter {name =~ *gt0_k7gtx_sdi_wrapper*}]
create_clock -period 8.000 -name aurora_clk [get_ports AURORA_CLK_P2]
create_clock -period 10.000 [get_pins *TXOUTCLK -hier -filter {name =~ *gt0_data_mgt*}]
create_clock -period 10.000 [get_pins *TXOUTCLK -hier -filter {name =~ *gt0_video_mgt*}]

create_clock -period 20.000 -name clk50 [get_pins *CLKOUT0 -hier -filter {name =~ *clk_wiz_0*}]
create_clock -period 11.764 -name clk85 [get_pins *CLKOUT1 -hier -filter {name =~ *clk_wiz_0*}]
create_clock -period 11.764 -name clk85n -waveform {5.882 11.764} [get_pins *CLKOUT2 -hier -filter {name =~ *clk_wiz_0*}]
create_clock -period 5.882 -name clk170 [get_pins *CLKOUT3 -hier -filter {name =~ *clk_wiz_0*}]
create_clock -period 1.680 -name clk_dout_mult [get_pins *CLKOUT1 -hier -filter {name =~ *clink_mmcm*}]
create_clock -period 11.764 -name clk_dout [get_pins *CLKOUT0 -hier -filter {name =~ *clink_mmcm*}]
create_clock -period 10.000 -name clk100 [get_pins *mmcm_i/CLKFBOUT -hier -filter {name =~ *mig*}]

# Virtual clocks

# Generated clocks
create_generated_clock -name clk_74_25 -source [get_ports SDI_CLK_P] -divide_by 2 [get_pins SDI/CLK_IBUFDS/ODIV2]

# Clock Groups
set_clock_groups -asynchronous -group [get_clocks -include_generated_clocks *SYS_CLK_P2]
set_clock_groups -asynchronous -group [get_clocks -include_generated_clocks gige_clk]
set_clock_groups -asynchronous -group [get_clocks -include_generated_clocks sdi_clk]
set_clock_groups -asynchronous -group [get_clocks -include_generated_clocks *sdi_wrapper*TXOUTCLK]
set_clock_groups -asynchronous -group [get_clocks -include_generated_clocks *sdi_wrapper*RXOUTCLK]
set_clock_groups -asynchronous -group [get_clocks -include_generated_clocks aurora_clk]
set_clock_groups -asynchronous -group [get_clocks -include_generated_clocks *data_mgt*TXOUTCLK]
set_clock_groups -asynchronous -group [get_clocks -include_generated_clocks *video_mgt*TXOUTCLK]

set_clock_groups -asynchronous -group [get_clocks -include_generated_clocks clk100]
set_clock_groups -asynchronous -group [get_clocks -include_generated_clocks clk170]
set_clock_groups -asynchronous -group [get_clocks -include_generated_clocks clk50]
set_clock_groups -asynchronous -group [get_clocks -include_generated_clocks clk85]
set_clock_groups -asynchronous -group [get_clocks -include_generated_clocks clk85n]
set_clock_groups -asynchronous -group [get_clocks -include_generated_clocks clk_dout_mult]
set_clock_groups -asynchronous -group [get_clocks -include_generated_clocks clk_dout]

# Input and output delay constraints

## Timing Exceptions Section

# False Paths
set_false_path -from [get_cells *reset*_reg* -hierarchical -filter {NAME =~ *proc_sys_reset_1*}]

# Max Delay / Min Delay
# Multicycle Paths
# Case Analysis

# Disable Timing
set_disable_timing [get_ports FPGA_TO_FPGA0]
set_disable_timing [get_ports FPGA_TO_FPGA1]
set_disable_timing [get_ports FPGA_TO_FPGA2]
set_disable_timing [get_ports FPGA_TO_FPGA3]
set_disable_timing [get_ports WATERLEVEL_TO_PROC]
set_disable_timing [get_ports FPGA_TO_FPGA5]
set_disable_timing [get_ports MOI_TO_STORAGE]
set_disable_timing [get_ports WATERLEVEL_TO_STORAGE]
set_disable_timing [get_ports UART_TX_TO_STORAGE]
set_disable_timing [get_ports UART_RX_FROM_STORAGE]
set_disable_timing [get_ports G10_PWR_ON_RST_N]
set_disable_timing [get_ports GIGE_PWR_ON_RST_N]
set_disable_timing [get_ports GIGE_WATERLEVEL]
set_disable_timing [get_ports DEBUG_LED_OUT]
set_disable_timing [get_ports ddr3_addr15_rfu]
set_disable_timing [get_ports CL_SER_TC_P]
set_disable_timing [get_ports CL_SER_TFG_P]
set_disable_timing [get_ports VIDEO_SDA]
set_disable_timing [get_ports VIDEO_SCL]
set_disable_timing [get_ports VIDEO_EQ_EN_N]
set_disable_timing [get_ports VIDEO_ENABLE1]
set_disable_timing [get_ports VIDEO_RST_N]
set_disable_timing [get_ports VIDEO_SD_HD_N]
