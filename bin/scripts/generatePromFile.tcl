if { $argc == 1 } {
  set fpga_size [lindex $argv 0]
  puts "Target for generatePromFile: $fpga_size"
} else {
    error "ERROR: Invalid Arguments"
}

#set variables
set project_dir "D:/Telops/FIR-00251-Output"
set bin_dir "${project_dir}/bin"
set sdk_dir "${project_dir}/sdk"
set base_name "fir_00251_output_${fpga_size}"
set elf_file "${bin_dir}/${base_name}.elf"

#CLean up
file delete -force "${bin_dir}/tempS0_${fpga_size}.bit"
file delete -force "${bin_dir}/_data2mem_${fpga_size}.log"
file delete -force "${bin_dir}/_promgen_${fpga_size}.log"

#fetch hw and sw files
file delete -force "${elf_file}"
if {[ catch {[file copy "${sdk_dir}/${base_name}/Release/${base_name}.elf" ${elf_file}]} err]} {
    puts $err
} else {
    set bit_file "${sdk_dir}/hw_platform_${fpga_size}/fir_251_output_top_${fpga_size}.bit"
    set mmi_file "${sdk_dir}/hw_platform_${fpga_size}/fir_251_output_top_${fpga_size}.mmi"

    #Integrate software elf file to bit file
    set mcu_inst_path "U1/MB/core_wrapper_i/core_i/MCU/microblaze_0"
    if {[ catch {[exec updatemem -meminfo $mmi_file -data $elf_file -bit $bit_file -proc $mcu_inst_path -out "${bin_dir}/download_${fpga_size}.bit" -force]} err]} {
        #Note: The command catch an error even the command is done successfully, see log for more information
        puts $err
    }
    #Clean up
    if {[ catch {[file delete -force {*}[glob *.backup.log] ]} err]} {
        puts $err
    } 
    if {[ catch {[file delete -force {*}[glob *.backup.jou]  ]} err]} {
        puts $err
    } 

    #Generate PROM file
    #Here the size is in M Bytes (was K Bytes), default checksum FF
    write_cfgmem -format mcs -size 16 -interface SPIx4 -loadbit "up 0x00000000 ${bin_dir}/download_${fpga_size}.bit" -checksum -force -file "${bin_dir}/prom/${base_name}.mcs"

} 





