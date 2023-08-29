## Timing Constraints Section

# Clock Groups
set_clock_groups -asynchronous -group [get_clocks -include_generated_clocks *video_mgt*TXOUTCLK]
set_clock_groups -asynchronous -group [get_clocks -include_generated_clocks *video_mgt*RXOUTCLK]
