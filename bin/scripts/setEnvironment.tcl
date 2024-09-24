#get root directory relative to this file
set current_file_location_absolute_path [file normalize [file dirname [info script]]]
set parts [file split $current_file_location_absolute_path]
set root_location_absolute_path [file join {*}[lrange $parts 0 end-3]]

#set project info from the root location
set commonDir "$root_location_absolute_path/irc_fir-00251-common"
set procDir "$root_location_absolute_path/irc_fir-00251-proc"
set projectDir "$root_location_absolute_path/irc_fir-00251-output"
set sdkDir "$projectDir/sdk"
set srcDir "$projectDir/src"
set binDir "$projectDir/bin"
set scriptsDir "$projectDir/bin/scripts"

proc setEnvironmentVariable {fpgaSize} {
    upvar 1 baseName baseName
	
    global commonDir
    global projectDir
    global sdkDir
    global srcDir
    global binDir
    global scriptsDir

    upvar 1 elfFile elfFile
    upvar 1 hwFile hwFile
    upvar 1 buildInfoFile buildInfoFile
    upvar 1 revFile revFile


    upvar 1 tortoiseSVNDir tortoiseSVNDir
    upvar 1 svn_subwcrev svn_subwcrev
    upvar 1 xDir xDir
    upvar 1 x_mb-objcopy x_mb-objcopy
    upvar 1 x_xsct x_xsct

    set baseName "fir_00251_output_$fpgaSize"
    #Import build fonction


    set elfFile "$binDir/${baseName}.elf"
    set hwFile "$sdkDir/fir_251_output_top_$fpgaSize.hdf"
    set buildInfoFile "$srcDir/BuildInfo/BuildInfo.h"
    set revFile "$binDir/svnrevs_$fpgaSize.tcl"
    set tortoiseSVNDir "C:/Program Files/TortoiseSVN"
    set svn_subwcrev "$tortoiseSVNDir/bin/SubWCRev.exe" 
    set xDir "C:/Xilinx"
    if {[file exists "D:/Xilinx/SDK/2018.3/*.*"]} {
        set xDir "D:/Xilinx"
    }
    puts "Xilinx directory: $xDir"
    set x_mb-objcopy "$xDir/SDK/2018.3/gnu/microblaze/nt/bin/mb-objcopy.exe"
    set x_xsct "$xDir/SDK/2018.3/bin/xsct.bat"

}



#git tools

proc is_git_file_modified {filepath} {
	set status [catch {exec git diff $filepath } result]
	if {$result == ""} {
	   set returnValue 0	   
	} else {
	   set returnValue 1
	}
	return $returnValue
}

proc git_last_modification_commit_hash {filepath} {
	set is_file [file isfile $filepath]
	if {$is_file == 1} {
		set directory [file dirname $filepath]
	} else {
		set directory $filepath
	}
	#switch dir to be able to execute the git command correctly when folder is outside current repo
	set current_dir [pwd]
	cd $directory
	set status [catch {exec  git log -n 1 --pretty=format:%h -- $filepath } result]
	cd $current_dir

	return $result
}

proc git_get_rev {filepath trace_modified} {
	set git_diff_status [is_git_file_modified $filepath]
	if {$git_diff_status == 0 || $trace_modified==0} {
	   set hash [git_last_modification_commit_hash $filepath]
	} else {
	   set hash "modified"
	}
    puts "the hash value is $hash"

	return $hash
}
