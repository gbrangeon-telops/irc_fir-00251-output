
proc DebugPause {} {
    puts "\n<W> Paused"
    puts -nonewline "> "
    flush stdout
    gets stdin
    puts "\n"
}

proc fetchHwSwFiles {SwFile hwFile} {
    #clean up
    file delete -force $hwFile
    file copy -force $SwFile $hwFile
}

proc updateReleaseSvnRevsFile {fpgaSize} {
    global scriptsDir
    set revFile ""
    set svn_subwcrev ""
    set hwFile ""
    set elfFile ""
    set bootFile ""
    set commonDir ""

    source "${scriptsDir}/setEnvironment.tcl"
    setEnvironmentVariable $fpgaSize

    # clean up
    if {[ catch {[file delete -force $revFile]} ]} {
        puts "Error: Can't delete $revFile"
    }
    set Vfo [open $revFile w]
    set rev [git_get_rev ${hwFile} 1]
    puts $Vfo "set rel_out_hw_rev \"$rev\""
    close $Vfo
   
    set Vfo [open $revFile a]
    set rev [git_get_rev ${elfFile} 1]

    puts $Vfo "set rel_out_sw_rev \"$rev\""
    close $Vfo
    
    set Vfo [open $revFile a]
    puts $Vfo "set rel_out_boot_rev 0"
    set rev [git_get_rev ${commonDir} 1]

    puts $Vfo "set rel_out_common_rev \"$rev\""
    close $Vfo
}

proc read_file {filename} {
    set fh [open $filename r]
    set fileStr [read $fh]
    close $fh
    return $fileStr
}

proc verifyRelease {outputBuildInfoFile outputReleaseInfoFile outputFpgaSize} {
    set error 0

    # Parse output build info file
    set outputBuildInfoFileStr [read_file $outputBuildInfoFile]
    set outputBuildInfoFileSubstr [string range $outputBuildInfoFileStr \
    [string first "ARCH_FPGA_$outputFpgaSize" $outputBuildInfoFileStr] end]
    set outputBuildInfoHardware ""
    set outputBuildInfoSoftware ""
    set outputBuildInfoBootLoader ""
    set outputBuildInfoCommon ""

    if {[regexp {SVN_HARDWARE_REV[^\n\r0-9]+0x([a-fA-F0-9]+)} $outputBuildInfoFileSubstr match outputBuildInfoHardware]} {
	    set outputBuildInfoHardware $outputBuildInfoHardware
		puts "outputBuildInfoHardware=$outputBuildInfoHardware"
    } else {
        set error 1
    }
    if {[regexp {SVN_SOFTWARE_REV[^\n\r0-9]+0x([a-fA-F0-9]+)} $outputBuildInfoFileSubstr match outputBuildInfoSoftware]} {
        set outputBuildInfoSoftware $outputBuildInfoSoftware
		puts "outputBuildInfoSoftware=$outputBuildInfoSoftware"
    } else {
        set error 1
    }
    if {[regexp {SVN_BOOTLOADER_REV[^\n\r0-9]+(\d+)} $outputBuildInfoFileSubstr match outputBuildInfoBootLoader]} {
        set outputBuildInfoBootLoader $outputBuildInfoBootLoader
		puts "outputBuildInfoBootLoader=$outputBuildInfoBootLoader"

    } else {
        set error 1
    }
    if {[regexp {SVN_COMMON_REV[^\n\r0-9]+0x([a-fA-F0-9]+)} $outputBuildInfoFileSubstr match outputBuildInfoCommon]} {
        set outputBuildInfoCommon $outputBuildInfoCommon
		puts "outputBuildInfoCommon=$outputBuildInfoCommon"

    } else {
        set error 1
    }

    if {$error == 1} {
        puts "Cannot parse proc build info file"
        exit 1
    }
	
    # Parse output release info file
    set outputReleaseInfoFileStr [read_file $outputReleaseInfoFile]
    set outputReleaseInfoHardware ""
    set outputReleaseInfoSoftware ""
    set outputReleaseInfoBootLoader ""
    set outputReleaseInfoCommon ""

    if {[regexp {rel_out_hw_rev[^\n\r0-9]+\"([a-zA-Z0-9]+)\"} $outputReleaseInfoFileStr match outputReleaseInfoHardware]} {
        set outputReleaseInfoHardware $outputReleaseInfoHardware
		puts "outputReleaseInfoHardware $outputReleaseInfoHardware"
    } else {
        set error 1
    }
    if {[regexp {rel_out_sw_rev[^\n\r0-9]+\"([a-zA-Z0-9]+)\"} $outputReleaseInfoFileStr match outputReleaseInfoSoftware]} {
        set outputReleaseInfoSoftware $outputReleaseInfoSoftware
		puts "outputReleaseInfoSoftware $outputReleaseInfoSoftware"	
    } else {
        set error 1
    }
    if {[regexp {rel_out_boot_rev[^\n\r0-9]+(\d+)} $outputReleaseInfoFileStr match outputReleaseInfoBootLoader]} {
        set outputReleaseInfoBootLoader $outputReleaseInfoBootLoader
		puts "outputReleaseInfoBootLoader $outputReleaseInfoBootLoader"
    } else {
        set error 1
    }
    if {[regexp {rel_out_common_rev[^\n\r0-9]+\"([a-zA-Z0-9]+)\"} $outputReleaseInfoFileStr match outputReleaseInfoCommon]} {
        set outputReleaseInfoCommon $outputReleaseInfoCommon
		puts "outputReleaseInfoCommon $outputReleaseInfoCommon"

    } else {
        set error 1
    }

    if {$error == 1} {
        puts "Cannot  parse output release info file"
        exit 1
    }

    # Verify output build info file
    if {($outputReleaseInfoHardware != $outputBuildInfoHardware) ||
    ($outputReleaseInfoSoftware != $outputBuildInfoSoftware) ||
    ($outputReleaseInfoBootLoader != $outputBuildInfoBootLoader) ||
    ($outputReleaseInfoCommon != $outputBuildInfoCommon)} {
        puts "Output FPGA release info does not match build info"
        exit 1
    }

    # Verify output release log file
    puts "Output FPGA release passed"

}

source setEnvironment.tcl
#global scriptsDir
#set scriptsDir "D:/Telops/FIR-00251-Output/bin/scripts" 

set TestMode "None"
#Argument check
if { $argc == 1 } {
	puts "Call FirmwareReleaseScript in TestMode"
	set TestMode [lindex $argv 0 ]
} 

#set projectDir "D:/Telops/FIR-00251-Output"
set FirmwareReleaseVersionFile "$procDir/bin/FirmwareReleaseVersion.txt"
set FirmwareReleaseLogFile "$projectDir/bin/scripts/FirmwareRelease.log"
set svnDir "http://einstein/svn/firmware/"
set tortoiseSvnBin "C:/Program Files/TortoiseSVN/bin/svn.exe"

#In this mode, skip the release procedure and get only the process
if {$TestMode == "Source"} {
    exit 0
}
#clean up
file delete -force $FirmwareReleaseLogFile

set major ""
set minor ""
set build ""

set fid [open $FirmwareReleaseVersionFile r]
set contents [read $fid]
set lines [split $contents "\n"]
close $fid

foreach line $lines {
    if {[string match "*firmwareVersionMajor*" $line]} {
        set major [lindex [split $line "="] 1]
    } elseif {[string match "*firmwareVersionMinor*" $line]} {
        set minor [lindex [split $line "="] 1]
    } elseif {[string match "*firmwareVersionBuild*" $line]} {
        set build [lindex [split $line "="] 1]
    }   
}

set firmwareReleaseVersion [format "%s.%s.x.%s" $major $minor $build]
puts "*****************************************"
puts "BEGIN Firmware release $firmwareReleaseVersion"
puts "*****************************************"
puts ""

set fid [open $FirmwareReleaseLogFile w]
puts $fid "*****************************************"
puts $fid "BEGIN Firmware release $firmwareReleaseVersion"
puts $fid "*****************************************"
puts $fid ""

puts $fid "BEGIN Pre-release compile"

# Set environment variables
source "${scriptsDir}/setEnvironment.tcl"
setEnvironmentVariable 70

# Create and build for pre-release
source  "$projectDir/sdk/sdk_output_cmd.tcl" 
#sdkDir is used in create and build
if {$TestMode != "SkipOne"} {
    create_output_sw
    build_output_sw

    if {![file exists $sdkDir/fir_00251_output_70/Release/fir_00251_output_70.elf]} {
        puts $fid "Create and build project 70 failed!\n"
        # Append log content to the log file
        close $fid
        error "Create and build project 70 failed!\n"
    }
    if {![file exists $sdkDir/fir_00251_output_160/Release/fir_00251_output_160.elf]} {
        puts $fid "Create and build project 160 failed!\n"
        # Append log content to the log file
        close $fid
        error "Create and build project 160 failed!\n"
    }
    puts $fid "Create and build project (70 and 160) done\n"

    # Copy files
    fetchHwSwFiles "$sdkDir/${baseName}/Release/${baseName}.elf" $elfFile
    setEnvironmentVariable 160
    fetchHwSwFiles "$sdkDir/${baseName}/Release/${baseName}.elf" $elfFile

    puts $fid "fetchHwSwFiles done"
    puts $fid ""
    puts "END Pre-release compile"

}

if {$TestMode == "Debug"} {
    DebugPause
}

set preReleaseMessage "Pre-release $firmwareReleaseVersion"
exec git add -u
exec git commit -m \"$preReleaseMessage\"

puts $fid "*****************************************"
puts $fid "Pre-release commit done"
puts $fid "*****************************************"
puts $fid ""

puts "*****************************************"
puts "Pre-release commit done"
puts "*****************************************"
puts ""


puts $fid "BEGIN Release compile"

#Build main project
setEnvironmentVariable 70

build_output_sw

if {![file exists $sdkDir/fir_00251_output_70/Release/fir_00251_output_70.elf]} {
    puts $fid "Build project 70 failed!"
    # Append log content to the log file
    close $fid
    error "Build project 70 failed!"
}
if {![file exists $sdkDir/fir_00251_output_160/Release/fir_00251_output_160.elf]} {
    puts $fid "Build project 160 failed!"
    # Append log content to the log file
    close $fid
    error "Build project 160 failed!"
}
puts $fid "Build project (70 and 160) done"

if {$TestMode == "Debug"} {
    DebugPause
}

#updateReleaseSvnRevsFile
updateReleaseSvnRevsFile 70
puts "updateReleaseSvnRevsFile 70 done"
puts $fid "updateReleaseSvnRevsFile 70 done"

# Verify release files
verifyRelease $buildInfoFile $revFile 70
puts $fid "verifyRelease 70 done"
# Note: Because generatePromFile uses the vivado bin, we have to call the .bat
if {[ catch {[exec $scriptsDir/70/generatePromFile.bat]} err]} {
    #Note: The command catch an error anyway, see log for more information
    puts $err
}

puts $fid "generatePromFile 70 done"
puts "generatePromFile 70 done"

setEnvironmentVariable 160 

#updateReleaseSvnRevsFile
updateReleaseSvnRevsFile 160
puts "updateReleaseSvnRevsFile 160 done"
puts $fid "updateReleaseSvnRevsFile 160 done"

# Verify release files
verifyRelease $buildInfoFile $revFile 160
puts $fid "verifyRelease 160 done"
# Note: Because generatePromFile uses the vivado bin, we have to call the .bat
if {[ catch {[exec $scriptsDir/160/generatePromFile.bat]} err]} {
    #Note: The command catch an error anyway, see log for more information
    puts $err
}
puts $fid "generatePromFile 160 done"
puts "generatePromFile 160 done"

puts $fid "END Release compile"
puts ""

set releaseMessage "Release $firmwareReleaseVersion"
exec git add -u
exec git commit -m \"$releaseMessage\"

puts $fid "*****************************************"
puts $fid "Release commit done"
puts $fid "*****************************************"
puts $fid ""

puts $fid "*****************************************"
puts $fid "END Firmware release $firmwareReleaseVersion"
puts $fid "*****************************************"
close $fid
#Open release file
exec {*}[auto_execok start] "" [file nativename [file normalize $FirmwareReleaseLogFile]]
