rem Clean up
del %binDir%\download_%fpgaSize%.bit
del %binDir%\_data2mem_%fpgaSize%.log
del %binDir%\_promgen_%fpgaSize%.log

rem Fetch hw and sw files
call %scriptsDir%\fetchHwSwFiles.bat
set bitFile=%sdkDir%\hw_platform_%fpgaSize%\fir_251_output_top_%fpgaSize%.bit
set mmiFile=%sdkDir%\hw_platform_%fpgaSize%\fir_251_output_top_%fpgaSize%.mmi

rem Integrate software elf file to bit file
set mcuInstPath=U1/MB/core_wrapper_i/core_i/MCU/microblaze_0
call %x_updatemem% -meminfo %mmiFile% -data %elfFile% -bit %bitFile% -proc %mcuInstPath% -out %binDir%\download_%fpgaSize%.bit -force
if errorlevel 1 (
	echo ELF anb bit file integration failed!
	pause
	exit
)
rem Clean up
del %scriptsDir%\%fpgaSize%\updatemem*

rem Generate PROM file
%x_promgen% -w -p mcs -spi -c FF -o "%binDir%\prom\%baseName%.mcs" -s 16384 -u 0 %binDir%\download_%fpgaSize%.bit > %binDir%\_promgen_%fpgaSize%.log
if errorlevel 1 (
	echo PROM file generation failed!
	pause
   exit
)
