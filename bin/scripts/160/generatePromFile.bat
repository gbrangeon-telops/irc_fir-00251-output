call D:\Telops\FIR-00251-Output\bin\scripts\setEnvironment.bat 160

rem Clean up
del %binDir%\download_%fpgaSize%.bit
del %binDir%\_data2mem_%fpgaSize%.log
del %binDir%\_promgen_%fpgaSize%.log

rem Fetch hw and sw files
call %scriptsDir%\%fpgaSize%\fetchHwSwFiles.bat

rem Integrate software elf file to bit file
set mcuInstPath=U1/MB/core_wrapper_i/core_i/MCU/microblaze_0
call %x_updatemem% --meminfo %mmiFile% --bit %bitFile% --data %elfFile% --proc %mcuInstPath% --out %binDir%\download_%fpgaSize%.bit -force
if errorlevel 1 (
	echo ELF anb bit file integration failed!
	pause
)

rem Generate PROM file
%x_promgen% -w -p mcs -spi -c FF -o "%binDir%\prom\%baseName%.mcs" -s 16384 -u 0 %binDir%\download_%fpgaSize%.bit > %binDir%\_promgen_%fpgaSize%.log
if errorlevel 1 (
	echo PROM file generation failed!
	pause
)
