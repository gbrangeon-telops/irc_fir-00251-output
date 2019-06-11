
# This constraints file contains default clock frequencies to be used during out-of-context flows such as
# OOC Synthesis and Hierarchical Designs. For best results the frequencies should be modified
# to match the target frequencies. 
# This constraints file is not used in normal top-down synthesis (the default flow of Vivado)

create_clock -name s_axis_video_aclk -period 13.468 [get_ports s_axis_video_aclk] 
create_clock -name m_axis_video_aclk -period 5 [get_ports m_axis_video_aclk]
create_clock -name core_clk -period 5 [get_ports core_clk]

create_clock -name s_axi_aclk -period 10 [get_ports s_axi_aclk] 

