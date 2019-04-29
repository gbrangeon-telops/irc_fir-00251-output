onerror { resume }
transcript off

add wave -noreg -logic {/clink_tb/U4/ARESETN} 
add wave -noreg -logic {/clink_tb/U4/mmcm_locked} 
add wave -noreg -logic {/clink_tb/U4/Aresetn_Locked} 

add wave -noreg -logic {/clink_tb/U4/frame_reset}
add wave -noreg -logic {/clink_tb/U4/clink_config.Valid}
add wave -noreg -logic {/clink_tb/U4/clink_config.CLinkClockMode}
add wave -noreg -logic {/clink_tb/U4/mmcm_locked_err}


add wave -noreg -logic {/clink_tb/U4/clk_in_sel}
add wave -noreg -logic {/clink_tb/U4/clk_dout}
add wave -noreg -logic {/clink_tb/U4/clk_dout_mult}


add wave -named_row "Stim"

add wave -named_row "CTRL - Output"
add wave -noreg -logic {/clink_tb/U4/CTRL/CLINK_CONF}
add wave -noreg -logic {/clink_tb/U4/CTRL/CL_ENABLE}
add wave -noreg -logic {/clink_tb/U4/CTRL/CL_ENABLE_FULL_N}
add wave -noreg -logic {/clink_tb/U4/CTRL/CL_ENABLE_DUAL_N} 

add wave -named_row "Line Framming - Input"
add wave -noreg -logic {/clink_tb/U4/LineFrame/S_DATAFRAME_MOSI.TDATA}
add wave -noreg -logic {/clink_tb/U4/LineFrame/S_DATAFRAME_MOSI.TVALID}
add wave -noreg -logic {/clink_tb/U4/LineFrame/S_DATAFRAME_MISO.TREADY}
add wave -noreg -logic {/clink_tb/U4/LineFrame/S_DATAFRAME_MOSI.TLAST}
add wave -noreg -logic {/clink_tb/U4/LineFrame/S_DATAFRAME_MOSI.TUSER(0)}
add wave -noreg -logic {/clink_tb/U4/LineFrame/S_DATAFRAME_MOSI.TUSER(1)}


add wave -named_row "Async FIFO - Input"
add wave -noreg -logic {/clink_tb/U4/LB_ASYNC_FIFO/RX_MOSI.TDATA}
add wave -noreg -logic {/clink_tb/U4/LB_ASYNC_FIFO/RX_MOSI.TVALID}
add wave -noreg -logic {/clink_tb/U4/LB_ASYNC_FIFO/RX_MISO.TREADY}
add wave -noreg -logic {/clink_tb/U4/LB_ASYNC_FIFO/RX_MOSI.TLAST}
add wave -noreg -logic {/clink_tb/U4/LB_ASYNC_FIFO/RX_MOSI.TUSER(0)}
add wave -noreg -logic {/clink_tb/U4/LB_ASYNC_FIFO/RX_MOSI.TUSER(1)}
	
add wave -named_row "Sync FIFO - Input"
add wave -noreg -logic {/clink_tb/U4/LB_FIFO/RX_MOSI.TDATA}
add wave -noreg -logic {/clink_tb/U4/LB_FIFO/RX_MOSI.TVALID}
add wave -noreg -logic {/clink_tb/U4/LB_FIFO/RX_MISO.TREADY}
add wave -noreg -logic {/clink_tb/U4/LB_FIFO/RX_MOSI.TLAST}
add wave -noreg -logic {/clink_tb/U4/LB_FIFO/RX_MOSI.TUSER(0)}
add wave -noreg -logic {/clink_tb/U4/LB_FIFO/RX_MOSI.TUSER(1)}

add wave -named_row "PHY - Input"
add wave -noreg -logic {/clink_tb/U4/PHY/AXIS_DATA_MOSI.TDATA}
add wave -noreg -logic {/clink_tb/U4/PHY/AXIS_DATA_MOSI.TVALID}
add wave -noreg -logic {/clink_tb/U4/PHY/AXIS_DATA_MOSI.TREADY}
add wave -noreg -logic {/clink_tb/U4/PHY/AXIS_DATA_MOSI.TLAST}
add wave -noreg -logic {/clink_tb/U4/PHY/AXIS_DATA_MOSI.TUSER(0)}
add wave -noreg -logic {/clink_tb/U4/PHY/AXIS_DATA_MOSI.TUSER(1)}

add wave -named_row "PHY - X"
add wave -noreg -logic {/clink_tb/U4/PHY/CLINK_CH_X.Fval}
add wave -noreg -logic {/clink_tb/U4/PHY/CLINK_CH_X.Lval}
add wave -noreg -logic {/clink_tb/U4/PHY/CLINK_CH_X.Dval}
add wave -noreg -logic {/clink_tb/U4/PHY/CLINK_CH_X.Port1}
add wave -noreg -logic {/clink_tb/U4/PHY/CLINK_CH_X.Port2}
add wave -noreg -logic {/clink_tb/U4/PHY/CLINK_CH_X.Port3}

add wave -named_row "PHY - Y"
add wave -noreg -logic {/clink_tb/U4/PHY/CLINK_CH_Y.Fval}
add wave -noreg -logic {/clink_tb/U4/PHY/CLINK_CH_Y.Lval}
add wave -noreg -logic {/clink_tb/U4/PHY/CLINK_CH_Y.Dval}
add wave -noreg -logic {/clink_tb/U4/PHY/CLINK_CH_Y.Port1}
add wave -noreg -logic {/clink_tb/U4/PHY/CLINK_CH_Y.Port2}
add wave -noreg -logic {/clink_tb/U4/PHY/CLINK_CH_Y.Port3}

add wave -named_row "PHY - Z"
add wave -noreg -logic {/clink_tb/U4/PHY/CLINK_CH_Z.Fval}
add wave -noreg -logic {/clink_tb/U4/PHY/CLINK_CH_Z.Lval}
add wave -noreg -logic {/clink_tb/U4/PHY/CLINK_CH_Z.Dval}
add wave -noreg -logic {/clink_tb/U4/PHY/CLINK_CH_Z.Port1}
add wave -noreg -logic {/clink_tb/U4/PHY/CLINK_CH_Z.Port2}
add wave -noreg -logic {/clink_tb/U4/PHY/CLINK_CH_Z.Port3}


add wave -named_row "Port Mapper - ch0"
add wave -noreg -logic {/clink_tb/U4/PHY/CLINK_CH0_o}

add wave -named_row "Port Mapper - ch1"
add wave -noreg -logic {/clink_tb/U4/PHY/CLINK_CH1_o}

add wave -named_row "Port Mapper - ch2"
add wave -noreg -logic {/clink_tb/U4/PHY/CLINK_CH2_o}

transcript on
