call D:\Telops\FIR-00251-Output\bin\scripts\setEnvironment.bat 70

set config=Release

rem Clean up
del %elfFile%
del %bitFile%
del %mmiFile%

rem Fetch hw and sw files
copy %sdkDir%\%baseName%\%config%\%baseName%.elf %elfFile%
if errorlevel 1 goto err
copy %projectDir%\xilinx\fir_0251_Output_70.runs\impl_1\fir_251_output_top_%fpgaSize%.bit %bitFile%
if errorlevel 1 goto err
copy %projectDir%\xilinx\fir_0251_Output_70.runs\impl_1\fir_251_output_top_%fpgaSize%.mmi %mmiFile%
if errorlevel 1 goto err
goto end

:err
echo Copy failed!
pause

:end
