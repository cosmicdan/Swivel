@echo off
set AIR_SDK=C:\Users\andrew.klaassen\AIRSDK_Compiler-29-beta
set PAUSE_ERRORS=1
call bat\SetupSDK.bat
call bat\SetupApplication.bat

set AIR_TARGET=
set OPTIONS=
call bat\Packager.bat

echo. 2>bin\Swivel\META-INF\AIR\debug

"C:\Program Files (x86)\NSIS\Bin\makensis.exe" win-installer.nsi

pause
