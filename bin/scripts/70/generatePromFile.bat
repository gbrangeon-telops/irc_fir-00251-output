@echo off

set currentDir=%~dp0
call %currentDir%\..\setEnvironment.bat 70

call %xDir%\Vivado\2018.3\bin\vivado -mode batch -source %scriptsDir%\generatePromFile.tcl -notrace -tclargs %fpgaSize% 
if errorlevel 1 (
	echo PROM file generation failed!
	pause
   exit
)
