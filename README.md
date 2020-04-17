# SNOW_DayZ

DayZ Server settings files... prepared based on official post on forum located in https://forums.dayz.com/topic/239635-dayz-server-files-documentation/?tab=comments#comment-2396573

# Prerequsits

Minimal System Requirements are listed on official website, to host the server Operating System must be fro Windows Server 2012 up to Windows Server 2019 as well as Winsows 10.

DirectX must be installed on the machine https://www.microsoft.com/en-us/download/details.aspx?id=35
Microsoft Visual C++ 2015 Redistributable (x64) must be installed https://www.microsoft.com/en-us/download/details.aspx?id=52685

Tools which will be very usefull during DayZ Server Management are...
Notepad++ for configuration files modification https://notepad-plus-plus.org/
7zip for archive management https://www.7-zip.org/
SteamCMD which is command line utulity used instead of Steam Game Client to update and launch server https://developer.valvesoftware.com/wiki/SteamCMD
Dart Rcon Client for server management https://forums.dayz.com/topic/68933-dart-a-lightweight-dayz-and-arma-rcon-tool-v21-11102015/

Client Tools which will help to find our server in game...
DayZ Standalone Launcher for stand alone server listing http://dayzsalauncher.com/#/home

# DayZ Server Files

serverDZ.cfg - The file usually is located in the root directory of the server but can be placed elsewhere with the startup parameter -config. To ensure, that Steam does not overwrite this file with an update, be sure to have a copy of this original file and rename it.

dayzsettings.xml - provides number of worker threads for jobsystem by "maxcores" and "reservedcores" parameters

BEServer_x64.cfg - needs to be in the same folder as BEServer_x64.dll.The location of this folder can be customized via the startup parameters -bePath and -profiles.

Start DayZ Server.bat - batch file to run the server, before each run server is checking for updates

Update DayZ.bat - batch file to initialy run empty server and update if needed, verification of the server install is done on this step, when some files are missing from the server this batch file will fix it
