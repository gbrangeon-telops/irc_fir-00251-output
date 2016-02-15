alib work
setActivelib work

setenv GIGE_INTF "D:\Telops\FIR-00251-Output\src\pleora_intf\HDL"

# Package
acom  "D:\Telops\FIR-00251-Common\VHDL\tel2000pkg.vhd"
acom "$GIGE_INTF\GIGE_define.vhd"

#fir_00251_common
acom "D:\Telops\FIR-00251-Common\IP\axis_32_to_16_lite\axis_32_to_16_lite_funcsim.vhdl"
acom "D:\Telops\FIR-00251-Common\IP\axis16_clkdiv2_lite\axis16_clkdiv2_lite_funcsim.vhdl"
acom "D:\Telops\FIR-00251-Common\VHDL\Utilities\axis_32_to_16_lite_wrap.vhd"
acom "D:\Telops\FIR-00251-Common\VHDL\Utilities\axis16_clkdiv2_lite_wrap.vhd"


#common_hdl
acom "D:\Telops\Common_HDL\Utilities\SYNC_RESET.vhd"

#source
--clink PHY
acom "$GIGE_INTF\Gige_sync_intf.vhd"
acom "$GIGE_INTF\Gige_Clink_phy.vhd"
acom -relax "$GIGE_INTF\pleora_ctrl.vhd"

--clink intf  top_level
acom "$GIGE_INTF\pleora_intf.bde"
