@echo off
	:: DEFINE the following variables where applicable to your install
    SET SteamLogin=USERNAME PASSWORD
    SET DayZBranch=223350
    SET DayZServerPath="C:\Servers\DayZ"
    SET SteamCMDPath="C:\Servers\steamcmd"
	:: _______________________________________________________________

echo.
echo     You are about to update DayZ server
echo        DayZ Server Dir: %DayZServerPath%
echo        SteamCMD Dir: %SteamCMDPath%
echo.
echo     Key "ENTER" to proceed
pause
%SteamCMDPath%\steamcmd.exe +login %SteamLogin% +force_install_dir %DayZServerPath% +"app_update %DayZBranch%" validate +quit
echo .
echo     Your DayZ server is now up to date/validated
echo     key "ENTER" to exit
pause
