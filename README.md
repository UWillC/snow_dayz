# SNOW_DayZ

# Prerequsits

Minimal System Requirements are listed on official website, to host the server Operating System must be fro Windows Server 2012 up to Windows Server 2019 as well as Winsows 10.

DirectX must be installed on the machine https://www.microsoft.com/en-us/download/details.aspx?id=35

DayZ Server settings files... prepared based on official post on forum located in https://forums.dayz.com/topic/239635-dayz-server-files-documentation/?tab=comments#comment-2396573

DayZ Server Files:

serverDZ.cfg - The file usually is located in the root directory of the server but can be placed elsewhere with the startup parameter -config. To ensure, that Steam does not overwrite this file with an update, be sure to have a copy of this original file and rename it.

dayzsettings.xml - provides number of worker threads for jobsystem by "maxcores" and "reservedcores" parameters

Start DayZ Server.bat - batch file to run the server

BEServer_x64.cfg - needs to be in the same folder as BEServer_x64.dll.The location of this folder can be customized via the startup parameters -bePath and -profiles.
