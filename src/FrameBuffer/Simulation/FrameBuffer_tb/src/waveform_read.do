onerror { resume }
transcript off
add wave -noreg -hexadecimal -literal {/fb_intf_tb/STIM/AXIS_MOSI}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/STIM/AXIS_MISO}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/STIM/AXIL_MOSI}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/STIM/AXIL_MISO}
add wave -noreg -logic {/fb_intf_tb/STIM/CLK100}
add wave -noreg -logic {/fb_intf_tb/STIM/CLK160}
add wave -noreg -logic {/fb_intf_tb/STIM/ARESETN}
add wave -named_row "DUT"
add wave -noreg -hexadecimal -literal {/fb_intf_tb/DUT/AXIL_MOSI}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/DUT/AXIL_MISO}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/DUT/AXI4_FB_S2MM_MOSI}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/DUT/AXI4_FB_S2MM_MISO}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/DUT/DATA_TO_WRITE_MOSI}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/DUT/DATA_TO_WRITE_MISO}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/DUT/AXI4_FB_MM2S_MOSI}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/DUT/AXI4_FB_MM2S_MISO}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/DUT/DATA_READ_GIGE_MOSI}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/DUT/DATA_READ_GIGE_MISO}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/wr_pix_cnt/PIXEL_CNT}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/rd_pix_cnt/PIXEL_CNT}
add wave -named_row "DUT_CTRL"
add wave -noreg -hexadecimal -literal {/fb_intf_tb/DUT/CTRL/AXI4_LITE_MOSI}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/DUT/CTRL/AXI4_LITE_MISO}
add wave -noreg -decimal -literal {/fb_intf_tb/DUT/CTRL/FB_MODE}
add wave -noreg -decimal -literal {/fb_intf_tb/DUT/CTRL/FRAME_WIDTH}
add wave -noreg -decimal -literal {/fb_intf_tb/DUT/CTRL/FRAME_HEIGHT}
add wave -noreg -decimal -literal {/fb_intf_tb/DUT/CTRL/MAX_NUMBER_IMG}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/DUT/CTRL/BASE_ADDR}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/DUT/CTRL/MM2S_ERR}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/DUT/CTRL/S2MM_ERR}
add wave -named_row "FSM"
add wave -noreg -hexadecimal -literal {/fb_intf_tb/DUT/FSM/AXIS_MM2S_CMD_MOSI}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/DUT/FSM/AXIS_MM2S_CMD_MISO}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/DUT/FSM/AXIS_MM2S_STS_MOSI}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/DUT/FSM/AXIS_MM2S_STS_MISO}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/DUT/FSM/FB_MODE}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/DUT/FSM/FRAME_WIDTH}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/DUT/FSM/FRAME_HEIGHT}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/DUT/FSM/MAX_NUMBER_IMG}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/DUT/FSM/BASE_ADDR}
add wave -noreg -logic {/fb_intf_tb/DUT/FSM/sreset}
add wave -noreg -logic {/fb_intf_tb/DUT/FSM/areset}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/DUT/FSM/fb_mode_s}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/DUT/FSM/frame_width_s}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/DUT/FSM/frame_height_s}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/DUT/FSM/max_num_img_s}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/DUT/FSM/baseaddr_s}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/DUT/FSM/baseaddr_u}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/DUT/FSM/framesize_s}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/DUT/FSM/s_mm2s_cmd_tag}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/DUT/FSM/s_mm2s_saddr}
add wave -noreg -logic {/fb_intf_tb/DUT/FSM/s_mm2s_eof}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/DUT/FSM/s_mm2s_btt}
add wave -noreg -literal {/fb_intf_tb/DUT/FSM/write_state}
add wave -noreg -literal {/fb_intf_tb/DUT/FSM/read_state}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/DUT/FSM/next_img_write_loc}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/DUT/FSM/next_img_read_loc}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/DUT/FSM/write_img_loc}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/DUT/FSM/read_img_loc}
add wave -named_row "DATAMOVER"
add wave -noreg -hexadecimal -literal {/fb_intf_tb/DUT/DM/axis_mm2s_cmd_mosi}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/DUT/DM/axis_mm2s_cmd_miso}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/DUT/DM/axis_mm2s_sts_mosi}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/DUT/DM/axis_mm2s_sts_miso}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/DUT/DM/axi_mm2s_mosi}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/DUT/DM/axi_mm2s_miso}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/DUT/DM/axis_data_read_mosi}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/DUT/DM/axis_data_read_miso}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/DUT/DM/axis_s2mm_cmd_mosi}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/DUT/DM/axis_s2mm_cmd_miso}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/DUT/DM/axis_s2mm_sts_mosi}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/DUT/DM/axis_s2mm_sts_miso}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/DUT/DM/axi_s2mm_mosi}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/DUT/DM/axi_s2mm_miso}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/DUT/DM/axis_data_write_mosi}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/DUT/DM/axis_data_write_miso}
add wave -named_row "DM_INTERNAL"
add wave -noreg -logic {/fb_intf_tb/DUT/DM/fb_datamover/U0/m_axi_mm2s_aclk}
add wave -noreg -logic {/fb_intf_tb/DUT/DM/fb_datamover/U0/m_axi_mm2s_aresetn}
add wave -noreg -logic {/fb_intf_tb/DUT/DM/fb_datamover/U0/mm2s_halt}
add wave -noreg -logic {/fb_intf_tb/DUT/DM/fb_datamover/U0/mm2s_halt_cmplt}
add wave -noreg -logic {/fb_intf_tb/DUT/DM/fb_datamover/U0/mm2s_err}
add wave -noreg -logic {/fb_intf_tb/DUT/DM/fb_datamover/U0/m_axis_mm2s_cmdsts_aclk}
add wave -noreg -logic {/fb_intf_tb/DUT/DM/fb_datamover/U0/m_axis_mm2s_cmdsts_aresetn}
add wave -noreg -logic {/fb_intf_tb/DUT/DM/fb_datamover/U0/s_axis_mm2s_cmd_tvalid}
add wave -noreg -logic {/fb_intf_tb/DUT/DM/fb_datamover/U0/s_axis_mm2s_cmd_tready}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/DUT/DM/fb_datamover/U0/s_axis_mm2s_cmd_tdata}
add wave -noreg -logic {/fb_intf_tb/DUT/DM/fb_datamover/U0/m_axis_mm2s_sts_tvalid}
add wave -noreg -logic {/fb_intf_tb/DUT/DM/fb_datamover/U0/m_axis_mm2s_sts_tready}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/DUT/DM/fb_datamover/U0/m_axis_mm2s_sts_tdata}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/DUT/DM/fb_datamover/U0/m_axis_mm2s_sts_tkeep}
add wave -noreg -logic {/fb_intf_tb/DUT/DM/fb_datamover/U0/m_axis_mm2s_sts_tlast}
add wave -noreg -logic {/fb_intf_tb/DUT/DM/fb_datamover/U0/mm2s_allow_addr_req}
add wave -noreg -logic {/fb_intf_tb/DUT/DM/fb_datamover/U0/mm2s_addr_req_posted}
add wave -noreg -logic {/fb_intf_tb/DUT/DM/fb_datamover/U0/mm2s_rd_xfer_cmplt}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/DUT/DM/fb_datamover/U0/m_axi_mm2s_arid}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/DUT/DM/fb_datamover/U0/m_axi_mm2s_araddr}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/DUT/DM/fb_datamover/U0/m_axi_mm2s_arlen}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/DUT/DM/fb_datamover/U0/m_axi_mm2s_arsize}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/DUT/DM/fb_datamover/U0/m_axi_mm2s_arburst}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/DUT/DM/fb_datamover/U0/m_axi_mm2s_arprot}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/DUT/DM/fb_datamover/U0/m_axi_mm2s_arcache}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/DUT/DM/fb_datamover/U0/m_axi_mm2s_aruser}
add wave -noreg -logic {/fb_intf_tb/DUT/DM/fb_datamover/U0/m_axi_mm2s_arvalid}
add wave -noreg -logic {/fb_intf_tb/DUT/DM/fb_datamover/U0/m_axi_mm2s_arready}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/DUT/DM/fb_datamover/U0/m_axi_mm2s_rdata}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/DUT/DM/fb_datamover/U0/m_axi_mm2s_rresp}
add wave -noreg -logic {/fb_intf_tb/DUT/DM/fb_datamover/U0/m_axi_mm2s_rlast}
add wave -noreg -logic {/fb_intf_tb/DUT/DM/fb_datamover/U0/m_axi_mm2s_rvalid}
add wave -noreg -logic {/fb_intf_tb/DUT/DM/fb_datamover/U0/m_axi_mm2s_rready}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/DUT/DM/fb_datamover/U0/m_axis_mm2s_tdata}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/DUT/DM/fb_datamover/U0/m_axis_mm2s_tkeep}
add wave -noreg -logic {/fb_intf_tb/DUT/DM/fb_datamover/U0/m_axis_mm2s_tlast}
add wave -noreg -logic {/fb_intf_tb/DUT/DM/fb_datamover/U0/m_axis_mm2s_tvalid}
add wave -noreg -logic {/fb_intf_tb/DUT/DM/fb_datamover/U0/m_axis_mm2s_tready}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/DUT/DM/fb_datamover/U0/mm2s_dbg_sel}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/DUT/DM/fb_datamover/U0/mm2s_dbg_data}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/DUT/DM/fb_datamover/U0/\^mm2s_dbg_data\}
add wave -named_row "AXI_INTER"
add wave -noreg -logic {/fb_intf_tb/U1/interconnect/INTERCONNECT_ACLK}
add wave -noreg -logic {/fb_intf_tb/U1/interconnect/INTERCONNECT_ARESETN}
add wave -noreg -logic {/fb_intf_tb/U1/interconnect/S00_AXI_ARESET_OUT_N}
add wave -noreg -logic {/fb_intf_tb/U1/interconnect/S00_AXI_ACLK}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/U1/interconnect/S00_AXI_AWID}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/U1/interconnect/S00_AXI_AWADDR}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/U1/interconnect/S00_AXI_AWLEN}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/U1/interconnect/S00_AXI_AWSIZE}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/U1/interconnect/S00_AXI_AWBURST}
add wave -noreg -logic {/fb_intf_tb/U1/interconnect/S00_AXI_AWLOCK}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/U1/interconnect/S00_AXI_AWCACHE}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/U1/interconnect/S00_AXI_AWPROT}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/U1/interconnect/S00_AXI_AWQOS}
add wave -noreg -logic {/fb_intf_tb/U1/interconnect/S00_AXI_AWVALID}
add wave -noreg -logic {/fb_intf_tb/U1/interconnect/S00_AXI_AWREADY}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/U1/interconnect/S00_AXI_WDATA}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/U1/interconnect/S00_AXI_WSTRB}
add wave -noreg -logic {/fb_intf_tb/U1/interconnect/S00_AXI_WLAST}
add wave -noreg -logic {/fb_intf_tb/U1/interconnect/S00_AXI_WVALID}
add wave -noreg -logic {/fb_intf_tb/U1/interconnect/S00_AXI_WREADY}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/U1/interconnect/S00_AXI_BID}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/U1/interconnect/S00_AXI_BRESP}
add wave -noreg -logic {/fb_intf_tb/U1/interconnect/S00_AXI_BVALID}
add wave -noreg -logic {/fb_intf_tb/U1/interconnect/S00_AXI_BREADY}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/U1/interconnect/S00_AXI_ARID}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/U1/interconnect/S00_AXI_ARADDR}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/U1/interconnect/S00_AXI_ARLEN}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/U1/interconnect/S00_AXI_ARSIZE}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/U1/interconnect/S00_AXI_ARBURST}
add wave -noreg -logic {/fb_intf_tb/U1/interconnect/S00_AXI_ARLOCK}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/U1/interconnect/S00_AXI_ARCACHE}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/U1/interconnect/S00_AXI_ARPROT}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/U1/interconnect/S00_AXI_ARQOS}
add wave -noreg -logic {/fb_intf_tb/U1/interconnect/S00_AXI_ARVALID}
add wave -noreg -logic {/fb_intf_tb/U1/interconnect/S00_AXI_ARREADY}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/U1/interconnect/S00_AXI_RID}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/U1/interconnect/S00_AXI_RDATA}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/U1/interconnect/S00_AXI_RRESP}
add wave -noreg -logic {/fb_intf_tb/U1/interconnect/S00_AXI_RLAST}
add wave -noreg -logic {/fb_intf_tb/U1/interconnect/S00_AXI_RVALID}
add wave -noreg -logic {/fb_intf_tb/U1/interconnect/S00_AXI_RREADY}
add wave -noreg -logic {/fb_intf_tb/U1/interconnect/S01_AXI_ARESET_OUT_N}
add wave -noreg -logic {/fb_intf_tb/U1/interconnect/S01_AXI_ACLK}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/U1/interconnect/S01_AXI_AWID}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/U1/interconnect/S01_AXI_AWADDR}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/U1/interconnect/S01_AXI_AWLEN}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/U1/interconnect/S01_AXI_AWSIZE}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/U1/interconnect/S01_AXI_AWBURST}
add wave -noreg -logic {/fb_intf_tb/U1/interconnect/S01_AXI_AWLOCK}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/U1/interconnect/S01_AXI_AWCACHE}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/U1/interconnect/S01_AXI_AWPROT}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/U1/interconnect/S01_AXI_AWQOS}
add wave -noreg -logic {/fb_intf_tb/U1/interconnect/S01_AXI_AWVALID}
add wave -noreg -logic {/fb_intf_tb/U1/interconnect/S01_AXI_AWREADY}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/U1/interconnect/S01_AXI_WDATA}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/U1/interconnect/S01_AXI_WSTRB}
add wave -noreg -logic {/fb_intf_tb/U1/interconnect/S01_AXI_WLAST}
add wave -noreg -logic {/fb_intf_tb/U1/interconnect/S01_AXI_WVALID}
add wave -noreg -logic {/fb_intf_tb/U1/interconnect/S01_AXI_WREADY}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/U1/interconnect/S01_AXI_BID}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/U1/interconnect/S01_AXI_BRESP}
add wave -noreg -logic {/fb_intf_tb/U1/interconnect/S01_AXI_BVALID}
add wave -noreg -logic {/fb_intf_tb/U1/interconnect/S01_AXI_BREADY}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/U1/interconnect/S01_AXI_ARID}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/U1/interconnect/S01_AXI_ARADDR}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/U1/interconnect/S01_AXI_ARLEN}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/U1/interconnect/S01_AXI_ARSIZE}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/U1/interconnect/S01_AXI_ARBURST}
add wave -noreg -logic {/fb_intf_tb/U1/interconnect/S01_AXI_ARLOCK}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/U1/interconnect/S01_AXI_ARCACHE}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/U1/interconnect/S01_AXI_ARPROT}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/U1/interconnect/S01_AXI_ARQOS}
add wave -noreg -logic {/fb_intf_tb/U1/interconnect/S01_AXI_ARVALID}
add wave -noreg -logic {/fb_intf_tb/U1/interconnect/S01_AXI_ARREADY}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/U1/interconnect/S01_AXI_RID}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/U1/interconnect/S01_AXI_RDATA}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/U1/interconnect/S01_AXI_RRESP}
add wave -noreg -logic {/fb_intf_tb/U1/interconnect/S01_AXI_RLAST}
add wave -noreg -logic {/fb_intf_tb/U1/interconnect/S01_AXI_RVALID}
add wave -noreg -logic {/fb_intf_tb/U1/interconnect/S01_AXI_RREADY}
add wave -noreg -logic {/fb_intf_tb/U1/interconnect/M00_AXI_ARESET_OUT_N}
add wave -noreg -logic {/fb_intf_tb/U1/interconnect/M00_AXI_ACLK}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/U1/interconnect/M00_AXI_AWID}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/U1/interconnect/M00_AXI_AWADDR}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/U1/interconnect/M00_AXI_AWLEN}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/U1/interconnect/M00_AXI_AWSIZE}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/U1/interconnect/M00_AXI_AWBURST}
add wave -noreg -logic {/fb_intf_tb/U1/interconnect/M00_AXI_AWLOCK}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/U1/interconnect/M00_AXI_AWCACHE}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/U1/interconnect/M00_AXI_AWPROT}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/U1/interconnect/M00_AXI_AWQOS}
add wave -noreg -logic {/fb_intf_tb/U1/interconnect/M00_AXI_AWVALID}
add wave -noreg -logic {/fb_intf_tb/U1/interconnect/M00_AXI_AWREADY}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/U1/interconnect/M00_AXI_WDATA}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/U1/interconnect/M00_AXI_WSTRB}
add wave -noreg -logic {/fb_intf_tb/U1/interconnect/M00_AXI_WLAST}
add wave -noreg -logic {/fb_intf_tb/U1/interconnect/M00_AXI_WVALID}
add wave -noreg -logic {/fb_intf_tb/U1/interconnect/M00_AXI_WREADY}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/U1/interconnect/M00_AXI_BID}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/U1/interconnect/M00_AXI_BRESP}
add wave -noreg -logic {/fb_intf_tb/U1/interconnect/M00_AXI_BVALID}
add wave -noreg -logic {/fb_intf_tb/U1/interconnect/M00_AXI_BREADY}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/U1/interconnect/M00_AXI_ARID}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/U1/interconnect/M00_AXI_ARADDR}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/U1/interconnect/M00_AXI_ARLEN}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/U1/interconnect/M00_AXI_ARSIZE}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/U1/interconnect/M00_AXI_ARBURST}
add wave -noreg -logic {/fb_intf_tb/U1/interconnect/M00_AXI_ARLOCK}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/U1/interconnect/M00_AXI_ARCACHE}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/U1/interconnect/M00_AXI_ARPROT}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/U1/interconnect/M00_AXI_ARQOS}
add wave -noreg -logic {/fb_intf_tb/U1/interconnect/M00_AXI_ARVALID}
add wave -noreg -logic {/fb_intf_tb/U1/interconnect/M00_AXI_ARREADY}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/U1/interconnect/M00_AXI_RID}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/U1/interconnect/M00_AXI_RDATA}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/U1/interconnect/M00_AXI_RRESP}
add wave -noreg -logic {/fb_intf_tb/U1/interconnect/M00_AXI_RLAST}
add wave -noreg -logic {/fb_intf_tb/U1/interconnect/M00_AXI_RVALID}
add wave -noreg -logic {/fb_intf_tb/U1/interconnect/M00_AXI_RREADY}
add wave -named_row "BRAM"
add wave -noreg -logic {/fb_intf_tb/U2/BR_wrap/s_aclk}
add wave -noreg -logic {/fb_intf_tb/U2/BR_wrap/s_aresetn}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/U2/BR_wrap/s_axi_awid}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/U2/BR_wrap/s_axi_awaddr}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/U2/BR_wrap/s_axi_awlen}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/U2/BR_wrap/s_axi_awsize}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/U2/BR_wrap/s_axi_awburst}
add wave -noreg -logic {/fb_intf_tb/U2/BR_wrap/s_axi_awvalid}
add wave -noreg -logic {/fb_intf_tb/U2/BR_wrap/s_axi_awready}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/U2/BR_wrap/s_axi_wdata}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/U2/BR_wrap/s_axi_wstrb}
add wave -noreg -logic {/fb_intf_tb/U2/BR_wrap/s_axi_wlast}
add wave -noreg -logic {/fb_intf_tb/U2/BR_wrap/s_axi_wvalid}
add wave -noreg -logic {/fb_intf_tb/U2/BR_wrap/s_axi_wready}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/U2/BR_wrap/s_axi_bid}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/U2/BR_wrap/s_axi_bresp}
add wave -noreg -logic {/fb_intf_tb/U2/BR_wrap/s_axi_bvalid}
add wave -noreg -logic {/fb_intf_tb/U2/BR_wrap/s_axi_bready}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/U2/BR_wrap/s_axi_arid}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/U2/BR_wrap/s_axi_araddr}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/U2/BR_wrap/s_axi_arlen}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/U2/BR_wrap/s_axi_arsize}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/U2/BR_wrap/s_axi_arburst}
add wave -noreg -logic {/fb_intf_tb/U2/BR_wrap/s_axi_arvalid}
add wave -noreg -logic {/fb_intf_tb/U2/BR_wrap/s_axi_arready}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/U2/BR_wrap/s_axi_rid}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/U2/BR_wrap/s_axi_rdata}
add wave -noreg -hexadecimal -literal {/fb_intf_tb/U2/BR_wrap/s_axi_rresp}
add wave -noreg -logic {/fb_intf_tb/U2/BR_wrap/s_axi_rlast}
add wave -noreg -logic {/fb_intf_tb/U2/BR_wrap/s_axi_rvalid}
add wave -noreg -logic {/fb_intf_tb/U2/BR_wrap/s_axi_rready}
cursor "Cursor 1" 246865ns  
transcript on
