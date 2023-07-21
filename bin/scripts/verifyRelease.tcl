proc read_file {filename} {
    set fh [open $filename r]
    set fileStr [read $fh]
    close $fh
    return $fileStr
}
proc usage {} {
    #note : see switch case line 25
    puts "Usage: verifyRelease.tcl -obf <procBuildInfoFile> -of <outputBuildInfoFile> -osize <outputFpgaSize> "
}

set outputBuildInfoFile ""
set outputReleaseInfoFile ""
set outputFpgaSize ""

#set argv [lassign $argv _]

while {[llength $argv] > 0} {
    switch -- [lindex $argv 0] {
        "-obf" {
            set outputBuildInfoFile [lindex $argv 1]
            set argv [lrange $argv 2 end]
        }
        "-of" {
            set outputReleaseInfoFile [lindex $argv 1]
            set argv [lrange $argv 2 end]
        }
        "-osize" {
            set outputFpgaSize [lindex $argv 1]
            set argv [lrange $argv 2 end]
        }
    }
}

set error 0

# Parse output build info file
set outputBuildInfoFileStr [read_file $outputBuildInfoFile]
set outputBuildInfoFileSubstr [string range $outputBuildInfoFileStr \
[string first "ARCH_FPGA_$outputFpgaSize" $outputBuildInfoFileStr] end]
set outputBuildInfoHardware ""
set outputBuildInfoSoftware ""
set outputBuildInfoBootLoader ""
set outputBuildInfoCommon ""

if {[regexp {SVN_HARDWARE_REV[^\n\r0-9]+(\d+)} $outputBuildInfoFileSubstr match outputBuildInfoHardware]} {
    set outputBuildInfoHardware $outputBuildInfoHardware
} else {
    set error 1
}
if {[regexp {SVN_SOFTWARE_REV[^\n\r0-9]+(\d+)} $outputBuildInfoFileSubstr match outputBuildInfoSoftware]} {
    set outputBuildInfoSoftware $outputBuildInfoSoftware
} else {
    set error 1
}
if {[regexp {SVN_BOOTLOADER_REV[^\n\r0-9]+(\d+)} $outputBuildInfoFileSubstr match outputBuildInfoBootLoader]} {
    set outputBuildInfoBootLoader $outputBuildInfoBootLoader
} else {
    set error 1
}
if {[regexp {SVN_COMMON_REV[^\n\r0-9]+(\d+)} $outputBuildInfoFileSubstr match outputBuildInfoCommon]} {
    set outputBuildInfoCommon $outputBuildInfoCommon
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

if {[regexp {rel_out_hw_rev[^\n\r0-9]+(\d+)} $outputReleaseInfoFileStr match outputReleaseInfoHardware]} {
    set outputReleaseInfoHardware $outputReleaseInfoHardware
} else {
    set error 1
}
if {[regexp {rel_out_sw_rev[^\n\r0-9]+(\d+)} $outputReleaseInfoFileStr match outputReleaseInfoSoftware]} {
    set outputReleaseInfoSoftware $outputReleaseInfoSoftware
} else {
    set error 1
}
if {[regexp {rel_out_boot_rev[^\n\r0-9]+(\d+)} $outputReleaseInfoFileStr match outputReleaseInfoBootLoader]} {
    set outputReleaseInfoBootLoader $outputReleaseInfoBootLoader
} else {
    set error 1
}
if {[regexp {rel_out_common_rev[^\n\r0-9]+(\d+)} $outputReleaseInfoFileStr match outputReleaseInfoCommon]} {
    set outputReleaseInfoCommon $outputReleaseInfoCommon
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
