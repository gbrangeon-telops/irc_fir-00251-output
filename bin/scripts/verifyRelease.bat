call %x_xsct%  %scriptsDir%\verifyRelease.tcl^
   -obf %buildInfoFile% -of %revFile% -osize %fpgaSize%
if errorlevel 1 (
	echo Verify release failed for output %fpgaSize%
	pause
	exit
)
