proc create_output_project {project_name} {
	global projectDir
	puts projectDir=$projectDir

	set base_dir "$projectDir"
	puts projectDir=$projectDir

	#force writable directory
	file attributes $base_dir/xilinx/ -readonly 0
	
	#Create project 
	source $base_dir/scripts/gen_project_${project_name}.tcl
}

proc build_output_project {} {
	global projectDir
	set base_dir "$projectDir"
	#Get project name
	set proj_name [get_project]
	#Get top level file name
	set top_lvl [get_property top [current_fileset]]
	#Get FPGA Size
	set FPGA_SIZE [string range $proj_name 16 end]

	#generate bitstream
	launch_runs impl_1 -to_step write_bitstream
	
	#wait for run end
	wait_on_run impl_1
	
	#Export bitstream
	file copy -force $base_dir/xilinx/${proj_name}.runs/impl_1/${top_lvl}.sysdef $base_dir/sdk/${top_lvl}.hdf
	#Build git revision
	source $base_dir/scripts/updateHwRev.tcl 
	updateHwSvnRev ${FPGA_SIZE}

	#open implemented design
	open_run impl_1
	
	#Save Report
	report_timing_summary -file $base_dir/Reports/${proj_name}_timing_summary_routed.rpt
	report_power -file $base_dir/Reports/${proj_name}_power.rpt
	report_clock_utilization -file $base_dir/Reports/${proj_name}_clock_utilization_placed.rpt
	report_utilization -file $base_dir/Reports/${proj_name}_utilization_placed.rpt
	report_utilization -file $base_dir/Reports/${proj_name}_utilization_placed_hier.rpt -hierarchical -hierarchical_depth 5
	
	# End of this build
	close_project
}

proc create_build_output {project_name} {
	create_output_project ${project_name}
	build_output_project
}
