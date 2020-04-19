# Important for BEC implementation

Files important which must be modified before the BEC runs smoothly.

Change hosts file in C:\Windows\System32\drivers\etc\hosts
  add to the end of the file two lines
```
    127.0.0.1 ibattle.org
    127.0.0.1 www.ibattle.org
```
Admins.xml to assign administrative privillages for users based on GUID

Config.cfg where port number and BEPath (BattleEye for running server instance) must match the configuration of DayZ Server

Scheduler.xml to configure server restarts and notifications for the users

IMPORTANT! is to create file Bans.txt on the same BEPath for tracking player bans

# Player count display plugin for BEC

Put the plugin file to the folder \BEC\Plugins\PlayerCount\__init__.py, optionally modify the time and messages displayed on the game screen which can be edited in the file section

```
CONFIG = {
    'interval': 5,
    'message_singular': 'There is one player online',
    'base_message': 'There are {} players online'
}
```
