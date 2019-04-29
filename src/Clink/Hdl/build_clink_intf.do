alib work
setActivelib work

setenv CLINK_INTF "D:\Telops\FIR-00251-Output\src\Clink\Hdl"
setenv COMMON "D:\Telops\FIR-00251-Common"
setenv COMMON_HDL "D:\Telops\Common_HDL"
setenv OUTPUT "D:\Telops\FIR-00251-Output"



 # Package
acom -nowarn DAGGEN_0523 \
 "$CLINK_INTF\CLINK_define.vhd" \
 "$CLINK_INTF\Clink_Phy.vhd" \
 "$CLINK_INTF\clink_port_mapper.vhd" \
 "$CLINK_INTF\clink_ctrl.vhd" \
 "$CLINK_INTF\LineFraming.vhd" \
 "$CLINK_INTF\clink_intf.bde"