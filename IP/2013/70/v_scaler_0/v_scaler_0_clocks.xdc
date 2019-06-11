
  set video_clk [get_clocks -of [get_ports core_clk]]
  set input_clk [get_clocks -of [get_ports s_axis_video_aclk]]
  set output_clk [get_clocks -of [get_ports m_axis_video_aclk]]

  set axilite_clk [get_clocks -of [get_ports s_axi_aclk]]
  set_max_delay -from $input_clk   -to [all_registers -clock $axilite_clk] -datapath_only [expr min([join [get_property PERIOD $input_clk] ,])]
  set_max_delay -from $axilite_clk -to [all_registers -clock $input_clk]   -datapath_only [expr min([join [get_property PERIOD $axilite_clk] ,])]


  set_max_delay -from $input_clk -to [all_registers -clock $video_clk] -datapath_only [expr min([join [get_property PERIOD $input_clk] ,])]
  set_max_delay -from $video_clk -to [all_registers -clock $input_clk] -datapath_only [expr min([join [get_property PERIOD $video_clk] ,])]

  set_max_delay -from $output_clk -to [all_registers -clock $video_clk]  -datapath_only [expr min([join [get_property PERIOD $output_clk] ,])]
  set_max_delay -from $video_clk  -to [all_registers -clock $output_clk] -datapath_only [expr min([join [get_property PERIOD $video_clk] ,])]

  set_max_delay -from $output_clk -to [all_registers -clock $input_clk]  -datapath_only [expr min([join [get_property PERIOD $output_clk] ,])]
  set_max_delay -from $input_clk  -to [all_registers -clock $output_clk] -datapath_only [expr min([join [get_property PERIOD $input_clk] ,])]


