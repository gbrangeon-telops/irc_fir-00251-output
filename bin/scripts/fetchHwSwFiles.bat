call D:\Telops\FIR-00251-Output\bin\scripts\setEnvironment.bat

set config=Release

rem Clean up
del %elfFile%
del %bitFile%
del %bmmFile%

rem Fetch hw and sw files
copy %sdkDir%\%baseName%\%config%\%baseName%.elf %elfFile%
copy %sdkDir%\hw\fir_251_output_top.bit %bitFile%
copy %sdkDir%\hw\fir_251_output_top_bd.bmm %bmmFile%
