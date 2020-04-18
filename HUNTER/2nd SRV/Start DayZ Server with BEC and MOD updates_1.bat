@echo off
TITLE DayZ SA Server - Status (Server 2)
COLOR 0A
	:: DEFINE the following variables where applicable to your install
    SET SteamLogin=USERNAME PASSWORD
    SET DayZBranch=223350
    SET DayZServerPath="C:\Servers\DayZ"
    SET SteamCMDPath="C:\Servers\steamcmd"
	SET BECPath="C:\Servers\BEC"
	:: DayZ Mod Parameters
	set DayZModList=(C:\Servers\DayZ\Modlist_1.txt)
	set SteamCMDWorkshopPath="C:\Servers\steamcmd\steamapps\workshop\content\221100"
	set SteamCMDDelay=5
	setlocal EnableDelayedExpansion
	:: _______________________________________________________________

goto checkServer
pause

:checkServer
tasklist /fi "imagename eq DayZServer_x64_1.exe" 2>NUL | find /i /n "DayZServer_x64_1.exe">NUL
if "%ERRORLEVEL%"=="0" goto checkBEC
cls
echo Server is not running, taking care of it..
goto killServer

:checkBEC
tasklist /fi "imagename eq BEC_1.exe" 2>NUL | find /i /n "BEC_1.exe">NUL
if "%ERRORLEVEL%"=="0" goto loopServer
cls
echo Bec is not running, taking care of it..
goto startBEC

:loopServer
FOR /L %%s IN (30,-1,0) DO (
	cls
	echo Server is running. Checking again in %%s seconds..
	timeout 1 >nul
)
goto checkServer

:killServer
taskkill /f /im Bec_1.exe
taskkill /f /im DayZServer_x64_1.exe
taskkill /f /im DZSALModServer_1.exe
goto updateServer

:updateServer
cls
echo Updating DayZ SA Server.
timeout 1 >nul
cls
echo Updating DayZ SA Server..
timeout 1 >nul
cls
echo Updating DayZ SA Server...
cd "%SteamCMDPath%"
steamcmd.exe +login %SteamLogin% +force_install_dir %DayZServerPath% +"app_update %DayZBranch%" +quit
goto updateMods

:startServer
cls
echo Starting DayZ SA Server.
timeout 1 >nul
cls
echo Starting DayZ SA Server..
timeout 1 >nul
cls
echo Starting DayZ SA Server...
cd "%DayZServerPath%"
start DZSALModServer_1.exe -dayzserver=DayZServer_x64_1.exe -instanceId=2 -config=serverDZ_1.cfg -profiles=SNOW_Livonia -port=2306 -mod=!MODS_TO_LOAD!% -cpuCount=4 -noFilePatching -dologs -adminlog -freezecheck
FOR /l %%s IN (45,-1,0) DO (
	cls
	echo Initializing server, wait %%s seconds to initialize BEC..
	timeout 1 >nul
)
goto startBEC

:startBEC
cls
echo Starting BEC.
timeout 1 >nul
cls
echo Starting BEC..
timeout 1 >nul
cls
echo Starting BEC...
timeout 1 >nul
cd "%BECPath%"
start Bec_1.exe -f Config_1.cfg --dsc
goto checkServer

:updateMods
cls
FOR /L %%s IN (%SteamCMDDelay%,-1,0) DO (
	cls
	echo Checking for mod updates in %%s seconds..
	timeout 1 >nul
)
echo Updating Steam Workshop Mods...
@ timeout 1 >nul
cd %SteamCMDPath%
for /f "tokens=1,2 delims=," %%g in %DayZModList% do steamcmd.exe +login %SteamLogin% +workshop_download_item 221100 "%%g" +quit
cls
echo Steam Workshop files are up-to-date! Syncing Workshop source with server destination...
@ timeout 2 >nul
cls
@ for /f "tokens=1,2 delims=," %%g in %DayZModList% do robocopy "%SteamCMDWorkshopPath%\%%g" "%DayZServerPath%\%%h" *.* /mir
@ for /f "tokens=1,2 delims=," %%g in %DayZModList% do forfiles /p "%DayZServerPath%\%%h" /m *.bikey /s /c "cmd /c copy @path %DayZServerPath%\keys"
cls
echo Sync complete!
@ timeout 3 >nul
cls
set "MODS_TO_LOAD="
for /f "tokens=1,2 delims=," %%g in %DayZModList% do (
set "MODS_TO_LOAD=!MODS_TO_LOAD!%%h;"
)
set "MODS_TO_LOAD=!MODS_TO_LOAD:~0,-1!"
ECHO Will start DayZ with the following mods: !MODS_TO_LOAD!%
@ timeout 3 >nul
goto startServer
