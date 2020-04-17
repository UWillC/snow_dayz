@echo off
	:: DEFINE the following variables where applicable to your install
    SET SteamLogin=USERNAME PASSWORD
    SET DayZBranch=223350
    SET DayZServerPath="C:\Servers\DayZ"
    SET SteamCMDPath="C:\Servers\steamcmd"
	:: _______________________________________________________________

echo.
echo     Checking for DayZ server update
echo        DayZ Server Dir: %DayZServerPath%
echo        SteamCMD Dir: %SteamCMDPath%
echo.

%SteamCMDPath%\steamcmd.exe +login %SteamLogin% +force_install_dir %DayZServerPath% +"app_update %DayZBranch%" +quit

echo .
echo     Your DayZ server is up to date
echo .
echo      Starting DayZ server
echo .

start DayZServer_x64.exe -instanceId=1 -config=serverDZ.cfg -profiles=SNOW_DayZ -port=2305 -cpuCount=4 -noFilePatching -dologs -adminlog -freezecheck

echo .
echo      Server DayZ Started
echo .

REM PARAMETERS FOR DayZ Server
REM -config=serverDZ.cfg - Selects the Server Config File
REM -port=2302 - Port to have dedicated server listen on
REM -profiles=C:\Users\%USER%\Documents\DayZ Server – Path to the folder containing server profile. By default, server logs are written to server profile folder. Logs/dumps/etc will be created there, along with BattlEye/BEC/Rcon related files. Windows Environment variables are supported (E.g. %userprofile%).
REM -dologs - Enables all log messages in the server RPT
REM -adminlog - Enables the admin log
REM -netlog - Enables the network traffic logging
REM -freezecheck - Stops the server when frozen for more than 5 min and create a dump file
REM -noFilePatching - Ensures that only PBOs are loaded and NO unpacked data.
REM -BEpath= - Sets a custom path to the Battleye files
REM -cpuCount= - Sets the number of logical CPU cores to use for parallel tasks processing. It should be less or equal than the numbers of available cores.
