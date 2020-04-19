# Mods installed on the server

## List of the mods and updateing the mods

Mods will be posted in the file Modlist.txt and while running new batch file mods will be updated and if not installed they will be installed in the specified folder.

# [@CF](https://steamcommunity.com/sharedfiles/filedetails/?id=1559212036&searchtext=cf)

Extract archive to the DayZ folder, copy key file from the @CF/keys to the DayZ/keys folder and then delete the keys folder inside @CF

Add -mod=@CF to the start batch file

# [@Trader](https://steamcommunity.com/sharedfiles/filedetails/?id=1590841260&searchtext=trader)

This mode must be placed in the Modlist.txt file after the @CF mod and before any admin mod.

Copy @Trader\ServerProfileFolder\Trader folder to the folder with the name of your instance and then edit the item database which is located in the mpmission folder \mpmissions\dayzOffline.chernarusplus\db\types.xml for the vehicles lifetime extended to 45 days (value 3888000) and to add currency to the spawning items on the map so the players will be able to find some in the loot.

Each respective vehicle which will be avaiable in the traders office must have all respetcive parts included in the config and for each position in types.xml the lifetime must be extended.

Example types.xml with the currency of 1 and 5 rubles spawning configured...

```
	<type name="MoneyRuble1">
		<nominal>150</nominal>
		<lifetime>7200</lifetime>
		<restock>0</restock>
		<min>100</min>
		<quantmin>1</quantmin>
		<quantmax>100</quantmax>
		<cost>100</cost>
		<flags count_in_cargo="0" count_in_hoarder="0" count_in_map="1" count_in_player="0" crafted="0" deloot="0"/>
		<category name="tools"/>
		<tag name="shelves"/>
		<usage name="Town"/>
		<usage name="Village"/>
		<usage name="Hunting"/>
	</type>
	<type name="MoneyRuble5">
		<nominal>150</nominal>
		<lifetime>7200</lifetime>
		<restock>0</restock>
		<min>100</min>
		<quantmin>1</quantmin>
		<quantmax>100</quantmax>
		<cost>100</cost>
		<flags count_in_cargo="0" count_in_hoarder="0" count_in_map="1" count_in_player="0" crafted="0" deloot="0"/>
		<category name="tools"/>
		<tag name="shelves"/>
		<usage name="Town"/>
		<usage name="Village"/>
		<usage name="Hunting"/>
	</type>
```

# [@Community-Online-Tools](https://steamcommunity.com/sharedfiles/filedetails/?id=1564026768&searchtext=cf)

If we have already CF installed there is no need for the key to be copied because this mode was done by the same developer, just delete the key folder.

Next remove the dasher from the folder name and add to the start batch file of the server.

Next create two (2) folders in DayZ\SNOW_DayZ and subfolders
```
  CommunityOnlineTools
    | ItemSets
    | Vehicles
  PermissionsFramework
    | Permissions
    | Players
    | Roles
```    
Using steamrep.com find your steam id and create file inside PermissionsFramework\Permissions\steamIDnumber.txt and inside this file give respective permissions.

##### steamIDnumber.txt

```
Admin 2
Admin.Player 2
Admin.Player.Read 2
Admin.Player.Ban 2
Admin.Player.Kick 2
Admin.Player.Godmode 2
Admin.Player.Spectate 2
Admin.Player.Set 2
Admin.Player.Set.Health 2
Admin.Player.Set.Shock 2
Admin.Player.Set.Blood 2
Admin.Player.Set.Energy 2
Admin.Player.Set.Water 2
Admin.Player.Set.HeatComfort 2
Admin.Player.Set.Wet 2
Admin.Player.Set.Tremor 2
Admin.Player.Set.Stamina 2
Admin.Player.Set.LastShaved 2
Admin.Player.Set.BloodyHands 2
Admin.Player.Transport 2
Admin.Player.Transport.Kick 2
Admin.Player.Transport.Repair 2
Admin.Player.Teleport 2
Admin.Player.Teleport.ToMe 2
Admin.Player.Teleport.MeTo 2
Admin.Permissions 2
COT 2
COT.Show 2
Object 2
Object.Spawn 2
Object.Spawn.Position 2
Object.Spawn.Inventory 2
Teleport 2
Teleport.Cursor 2
Teleport.Predefined 2
CameraTools 2
CameraTools.EnterCamera 2
CameraTools.LeaveCamera 2
CameraTools.UpdateNetworkBubble 2
Game 2
Game.ChangeAimingMode 2
Game.ThrowApple 2
Game.Spawn 2
Game.Spawn.Vehicle 2
Game.Spawn.Vehicle.OffroadHatchback 2
Game.Spawn.BaseBuilding 2
Game.Spawn.BaseBuilding.Platform 2
Game.Spawn.BaseBuilding.Gate 2
Game.Spawn.BaseBuilding.Gate.Wood 2
Game.Spawn.BaseBuilding.Gate.Metal 2
Game.Spawn.BaseBuilding.Fence 2
Game.Spawn.BaseBuilding.Fence.Metal 2
Game.Spawn.BaseBuilding.Fence.Wood 2
Game.Spawn.BaseBuilding.Watchtower 2
Game.Spawn.BaseBuilding.Watchtower.Wood 2
Game.Spawn.BaseBuilding.Watchtower.Metal 2
Weather 2
Weather.SetDate 2
Weather.SetWindFunctionParams 2
Weather.SetOvercast 2
Weather.SetFog 2
Weather.SetRain 2
Weather.SetStorm 2
```

Next in PermissionsFramework\Players add admin player with GUID and steamID with the name steamIDnumber.json

##### steamIDnumber.json

```
{
    "Names": [
    ],
    "GUID": "",
    "Steam64ID": "",
    "Roles": [
    	"admin"
    ]
}
```

# [@BuildAnywhere](https://steamcommunity.com/sharedfiles/filedetails/?id=1574054508&searchtext=build)

No specific configuration for this mod is required.

# [@Mass'sManyItemOverhaul](https://steamcommunity.com/sharedfiles/filedetails/?id=1566911166&searchtext=mass)

To run the specific mod which adds more then 250 items to the game, there need to be done specific changes to the game files as well as to the trader configuration.

From the file located in the plugin directory named cfgspawnabletypes(NOT A REPLACER).c copy the content to the mission folder i.e. \mpmissions\dayzOffline.chernarusplus\cfgspawnabletypes.xml at the end of the block with the types, just before the zombies configuration past the file content (initially line 753 of the file is not modifed before).

```
	</type>
	<type name="NBCJacketGray">
	</type>

	<type name="MassKivaari">
        <attachments chance="0.20">
            <item name="HuntingOptic" chance="0.50" />
            <item name="ACOGOptic" chance="0.50" />
        </attachments>
    </type>
	<type name="Massm300">
        <attachments chance="0.20">
            <item name="HuntingOptic" chance="0.50" />
            <item name="ACOGOptic" chance="0.50" />
        </attachments>
    </type>
	<type name="Massarmsan">
        <attachments chance="0.20">
            <item name="HuntingOptic" chance="1.0" />
        </attachments>
        <attachments chance="0.30">
            <item name="shotgunSuppressor" chance="1.0" />
        </attachments>
    </type>
	<type name="MassB52">
        <attachments chance="0.20">
            <item name="ACOGOptic" chance="1.0" />
        </attachments>
    </type>
	<type name="MassScout556">
		<attachments chance="0.50">
            <item name="MassScoutLRS" chance="1.0" />
        </attachments>
    </type>
		
	<!--START OF ZOMBIES  -->
```

Next all the items must be aadded to the types.xml from the plugin file named types(NOT A REPLACER).xml ccopy the content to the db folder in specific mission i.e. \mpmissions\dayzOffline.chernarusplus\db\types.xml but in this step be carefull because file has some additional lines which should be deleted, basically copy only below content to the [types.xml](/HUNTER/MODS/chernarus/types.xml) file... in the charnorus repository.

And the last step is to modify the trader plugin where in the file located in the server profile all items must be added \DayZ\SNOW_DayZ\Trader\traderconfig.txt - respective file is uploaded [here](/HUNTER/MODS/SNOW_DayZ/Trader/TraderConfig.txt) because there is a lot of changes based on the item type. It was identified by the name of the item where it should belong to but some items may be misplaced, it must be verified in-game. Moreover some items were put to Misc Trader with the Category Mass's ManyItemOverhaul and they should be also verified and placed to the proper categories while verified in game. To ease the identification of all these items price was set to 1000 buy value and 5 sell value (1000, 5).
