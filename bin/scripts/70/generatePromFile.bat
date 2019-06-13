call D:\Telops\FIR-00251-Output\bin\scripts\setEnvironment.bat 70

rem Clean up
del %binDir%\download_70.bit
del %binDir%\_promgen_70.log

rem Fetch hw and sw files
call %scriptsDir%\70\fetchHwSwFiles.bat

rem Integrate software elf file to bit file
set mcuInstPath=U1/MB/core_wrapper_i/core_i/MCU/microblaze_0
echo %mmiFile%
echo %bitFile%
echo %elfFile%
echo %mcuInstPath%

call %x_updatemem% --meminfo %mmiFile% --bit %bitFile% --data %elfFile% --proc %mcuInstPath% --out %binDir%\download_70.bit -force
if errorlevel 1 (
	echo ELF anb bit file integration failed!
	pause
)

rem Generate PROM file
%x_promgen% -w -p mcs -spi -c FF -o "%binDir%\prom\%baseName%.mcs" -s 16384 -u 0 %binDir%\download_70.bit > %binDir%\_promgen_70.log
if errorlevel 1 (
	echo PROM file generation failed!
	pause
)

