@echo off
ECHO Starting DayZ Server

start "" "DayZServer_x64.exe" -instanceId=1 -config=serverDZ.cfg -profiles=SNOW_DayZ -port=2302 -cpuCount=4 -noFilePatching -dologs -adminlog -freezecheck

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
