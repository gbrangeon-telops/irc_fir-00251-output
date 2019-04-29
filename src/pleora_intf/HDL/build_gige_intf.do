alib work
setActivelib work

setenv GIGE_INTF "D:\Telops\FIR-00251-Output\src\pleora_intf\HDL"

# Package
acom "$GIGE_INTF\GIGE_define.vhd"

#source
acom "$GIGE_INTF\Gige_sync_intf.vhd"
acom "$GIGE_INTF\Gige_Clink_phy.vhd"
acom -relax "$GIGE_INTF\pleora_ctrl.vhd"

#top_level
acom "$GIGE_INTF\pleora_intf.bde"
