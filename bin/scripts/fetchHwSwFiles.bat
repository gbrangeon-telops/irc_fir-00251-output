set config=Release

rem Clean up
del %elfFile%

rem Fetch hw and sw files
copy %sdkDir%\%baseName%\%config%\%baseName%.elf %elfFile%
if errorlevel 1 goto err

goto end

:err
echo Copy failed!
pause
exit

:end
