@echo off
set AIR_SDK=C:\Users\andrew.klaassen\AIRSDK_Compiler-29-beta
set PAUSE_ERRORS=1
call bat\SetupSDK.bat
call bat\SetupApplication.bat

echo.
echo Starting AIR Debug Launcher...
echo.

adl "%APP_XML%" .
if errorlevel 1 goto error
goto end

:error
pause

:end
