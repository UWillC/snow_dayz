@echo off
	:: DEFINE the following variables where applicable to your install
    SET SteamLogin=anonymous
    SET DayZBranch=223350
    SET DayZServerPath="C:\Servers\DayZ"
    SET SteamCMDPath="C:\Servers\SteamCMD"
	:: _______________________________________________________________

echo.
echo     Checking for DayZ server update
echo        DayZ Server Dir: %DayZServerPath%
echo        SteamCMD Dir: %SteamCMDPath%
echo.
%SteamCMDPath%\steamcmd.exe +login %SteamLogin% +force_install_dir %DayZServerPath% +"app_update %DayZBranch%" +quit
echo .
echo     Your DayZ server is up to date

start DayZServer_x64.exe -instanceId=1 -config=serverDZ.cfg -profiles=ServerName -port=2302 -cpuCount=8 -noFilePatching -dologs -adminlog -freezecheck
