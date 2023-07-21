@echo off

call D:\Telops\FIR-00251-Proc\bin\scripts\setEnvironment.bat 70

%xDir%\Vivado\2018.3\bin\vivado -mode batch -source generatePromFile70.tcl

cmd /k
