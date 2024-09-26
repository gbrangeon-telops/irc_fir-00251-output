proc updateHwSvnRev {fpgaSize} {
	package require fileutil
	set current_file_location_absolute_path [file normalize [file dirname [info script]]]
	source $current_file_location_absolute_path/setEnvironment.tcl

	set srcExtensionList "*.bde *.vhd *.xdc"
	set hwRevFile  "$outputDir/sdk/hw_svn_rev_${fpgaSize}.txt"

	# clean up hwRevFile file
	if {[ catch {[file delete -force $hwRevFile]} ]} {
		puts "Error: Can't delete $hwRevFile"
	}

	puts "hwRevFile $hwRevFile"
	set fileobject [open $hwRevFile w]

	puts $fileobject "* indicates local modifications"
	puts $fileobject ""
	
	#get git revision of the global folder
	set rev [git_get_rev ${outputDir} 1]
	puts $fileobject "[string range ${outputDir} [string length ${root_location_absolute_path}] end] ${rev}"

	#output ip files
	foreach file [fileutil::findByPattern $outputDir/IP/$fpgaSize/ *.xci] {
		if {-1 == [string last $file "managed_ip_project"] } {
			set rev [git_get_rev ${file} 1]
			if {$rev != ""} {
				puts $fileobject "[string range ${file} [string length ${root_location_absolute_path}] end] ${rev}"
			}
		}
	}

	#output script files
	foreach file [fileutil::findByPattern $outputDir/scripts {*.tcl *.bat}  ] {
		set rev [git_get_rev ${file} 1]
		if {$rev != ""} {
			puts $fileobject "[string range ${file} [string length ${root_location_absolute_path}] end] ${rev}"
		}
	}

	#output source files
	foreach file [fileutil::findByPattern  $outputDir/src {*.bde *.vhd *.xdc} ] {
		puts "file found = ${file}"
		set rev [git_get_rev ${file} 1]
		if {$rev != ""} {
			puts $fileobject "[string range ${file} [string length ${root_location_absolute_path}] end] ${rev}"
		}
	}

	#common dir
	set rev [git_get_rev ${commonDir} 1]
	puts $fileobject "${commonDir} ${rev}"

	#common source files
	foreach file [fileutil::findByPattern $commonDir/VHDL {*.bde *.vhd *.xdc} ] {
		set rev [git_get_rev ${file} 1]
		if {$rev != ""} {
			puts $fileobject "[string range ${file} [string length ${root_location_absolute_path}] end] ${rev}"
		}
	}

	#common_hdl dir
	set rev [git_get_rev ${commonHDLDir} 1]
	puts $fileobject "[string range ${commonHDLDir} [string length ${root_location_absolute_path}] end] ${rev}"

	#common_HDL FPA  files
	foreach file [fileutil::findByPattern $commonHDLDir/Common_Projects/TEL2000/FPA_common/src {*.bde *.vhd *.xdc} ] {
		set rev [git_get_rev ${file} 1]
		if {$rev != ""} {
			puts $fileobject "[string range ${file} [string length ${root_location_absolute_path}] end] ${rev}"
		}
	}

	#common_HDL FPA  files
	foreach file [fileutil::findByPattern $commonHDLDir/gh_vhdl_lib/custom_MSI *] {
		set rev [git_get_rev ${file} 1]
		if {$rev != ""} {
			puts $fileobject "[string range ${file} [string length ${root_location_absolute_path}] end] ${rev}"
		}
	}

	#common_HDL RS232 file
	set rev [git_get_rev ${commonHDLDir}/RS232/uarts.vhd 1]
	if {$rev != ""} {
		puts $fileobject "[string range ${commonHDLDir}/RS232/uarts.vhd [string length ${root_location_absolute_path}] end] ${rev}"
	}

	#common_HDL SPI file
	foreach file [fileutil::findByPattern $commonHDLDir/SPI/ *.vhd ] {
		set rev [git_get_rev ${file} 1]
		if {$rev != ""} {
			puts $fileobject "[string range ${file} [string length ${root_location_absolute_path}] end] ${rev}"
		}
	}

	#common_HDL Utilities file
	foreach file [fileutil::findByPattern $commonHDLDir/Utilities/ *.vhd] {
		set rev [git_get_rev ${file} 1]
		if {$rev != ""} {
			puts $fileobject "[string range ${file} [string length ${root_location_absolute_path}] end] ${rev}"
		}
	}

	close $fileobject
}