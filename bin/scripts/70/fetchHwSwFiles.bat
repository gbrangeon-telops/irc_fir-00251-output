call D:\Telops\FIR-00251-Output\bin\scripts\setEnvironment.bat 70

set config=Release

rem Clean up
del %elfFile%
del %bitFile%
del %mmiFile%

rem Fetch hw and sw files
copy %sdkDir%\%baseName%\%config%\%baseName%.elf %elfFile%
if errorlevel 1 goto err
copy %sdkDir%\hw_platform_%fpgaSize%\fir_251_output_top_%fpgaSize%.bit %bitFile%
if errorlevel 1 goto err
copy %sdkDir%\hw_platform_%fpgaSize%\fir_251_output_top_%fpgaSize%.mmi %mmiFile%
if errorlevel 1 goto err
goto end

:err
echo Copy failed!
pause
exit

:end
