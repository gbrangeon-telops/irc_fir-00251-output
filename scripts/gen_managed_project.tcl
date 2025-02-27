set proj_name "managed_ip_project"
set root_dir "D:/Telops/FIR-00251-Output"
set script_dir $root_dir/scripts
set proj_dir $root_dir/IP/$FPGA_SIZE/managed_ip_project
set ip_dir $root_dir/IP/$FPGA_SIZE
# Create project
create_project $proj_name $proj_dir -ip

# Set project properties
set obj [get_projects managed_ip_project]
if {$FPGA_SIZE == 70} {
	set_property "part" "xc7k70tfbg676-1" $obj
} elseif {$FPGA_SIZE == 160} {
	set_property "part" "xc7k160tfbg676-1" $obj
}
set_property "simulator_language" "Mixed" $obj
set_property "target_language" "VHDL" $obj


# Create 'sources_1' fileset (if not found)
if {[string equal [get_filesets sources_1] ""]} {
  create_fileset -srcset sources_1
}

# Add IP sources
set ipfilelist {}
foreach subdir [glob -nocomplain -type d $ip_dir/*] {
   if {[glob -nocomplain $subdir/*.xci] != {}} {lappend ipfilelist [glob $subdir/*.xci]}
}
add_files $ipfilelist

# Create 'constrs_1' fileset (if not found)
if {[string equal [get_filesets constrs_1] ""]} {
  create_fileset -constrset constrs_1
}

# Set 'constrs_1' fileset properties
set obj [get_filesets constrs_1]

puts "INFO: Project created:$proj_name"


