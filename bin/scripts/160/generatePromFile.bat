call D:\Telops\FIR-00251-Output\bin\scripts\setEnvironment.bat 160

rem Clean up
del %binDir%\download_160.bit
del %binDir%\_data2mem_160.log
del %binDir%\_promgen_160.log

rem Fetch hw and sw files
call %scriptsDir%\160\fetchHwSwFiles.bat

rem Integrate software elf file to bit file
%x_data2mem% -bm %bmmFile% -bt %bitFile% -bd %elfFile% -o b %binDir%\download_160.bit -log %binDir%\_data2mem_160.log
if errorlevel 1 (
	echo ELF anb bit file integration failed!
	pause
	exit
)

rem Generate PROM file
%x_promgen% -w -p mcs -spi -c FF -o "%binDir%\prom\%baseName%.mcs" -s 16384 -u 0 %binDir%\download_160.bit > %binDir%\_promgen_160.log
if errorlevel 1 (
	echo PROM file generation failed!
	pause
)
