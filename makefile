default:
	zip -r ue4ss.zip ./ue4ss override.txt dwmapi.dll

ITR1:
	sed -i 's|RegisterHook("/Script/IntoTheRadius2.RadiusGameMode:OnLevelLoaded", function ()[^}]*LoadModsManual()|RegisterLoadMapPostHook(function(Engine, World)\n    LoadMods(World:get())|g' ./ue4ss/Mods/BPModLoaderMod/Scripts/main.lua

ITR2:
	sed -i 's|RegisterLoadMapPostHook(function(Engine, World)[^}]*LoadMods(World:get())|RegisterHook("/Script/IntoTheRadius2.RadiusGameMode:OnLevelLoaded", function ()\n    LoadModsManual()|g' ./ue4ss/Mods/BPModLoaderMod/Scripts/main.lua
