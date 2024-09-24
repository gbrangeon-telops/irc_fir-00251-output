set fpgaSize=%1
set baseName=fir_00251_output_%fpgaSize%

set currentDir=%~dp0
set rootDir=%~dp0/../../../

set commonDir=%rootDir%\irc_fir-00251-common
set projectDir=%rootDir%\irc_fir-00251-output
set sdkDir=%projectDir%\sdk
set srcDir=%projectDir%\src
set binDir=%projectDir%\bin
set scriptsDir=%binDir%\scripts

set elfFile=%binDir%\%baseName%.elf
set hwFile=%sdkDir%\fir_251_output_top_%fpgaSize%.hdf

set buildInfoFile=%srcDir%\BuildInfo\BuildInfo.h
set revFile=%binDir%\svnrevs_%fpgaSize%.tcl

set tortoiseSVNDir="C:\Program Files\TortoiseSVN"
set svn_subwcrev=%tortoiseSVNDir%\bin\SubWCRev.exe

set xDir=C:\Xilinx
if exist D:\Xilinx\SDK\2018.3\*.* set xDir=D:\Xilinx
@echo Xilinx directory: %xDir%

set x_updatemem=%xDir%\SDK\2018.3\bin\updatemem.bat
set x_xsct=%xDir%\SDK\2018.3\bin\xsct.bat

