alib work
setactivelib work

setenv CLINK_INTF "$FIR251OUT/src/Clink/Hdl"
setenv OUTPUT "$FIR251OUT"



 # Package
acom -nowarn DAGGEN_0523 \
 "$CLINK_INTF/CLINK_define.vhd" \
 "$CLINK_INTF/Clink_Phy.vhd" \
 "$CLINK_INTF/clink_port_mapper.vhd" \
 "$CLINK_INTF/clink_ctrl.vhd" \
 "$CLINK_INTF/LineFraming.vhd" \
 "$CLINK_INTF/clink_intf.bde"