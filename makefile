default: ITR1 ITR2

ITR1:
	# Unpatch ITR2 Specific Patches and replace with ITR1 Patches
	sed -i 's|RegisterHook("/Script/IntoTheRadius2.RadiusGameMode:OnLevelLoaded", function () --patchmarker|RegisterLoadMapPostHook(function(Engine, World) --patchmarker|g' ./ue4ss/Mods/BPModLoaderMod/Scripts/main.lua
	sed -i 's|    LoadMods(UEHelpers.GetWorld()) --patchmarker|   LoadMods(World:get()) --patchmarker|g' ./ue4ss/Mods/BPModLoaderMod/Scripts/main.lua
	sed -i 's|HookInitGameState = 1|HookInitGameState = 0|g' ./ue4ss/UE4SS-settings.ini

	# Force LuaMods directory
	sed -i 's|^ModsFolderPath =.*|ModsFolderPath = ./LuaMods|g' ./ue4ss/UE4SS-settings.ini
	zip -r UE4SS-ITR1.zip ./ue4ss override.txt dwmapi.dll

ITR2:
	# Unpatch ITR2 Specific Patches and replace with ITR1 Patches
	sed -i 's|RegisterLoadMapPostHook(function(Engine, World) --patchmarker|RegisterHook("/Script/IntoTheRadius2.RadiusGameMode:OnLevelLoaded", function () --patchmarker|g' ./ue4ss/Mods/BPModLoaderMod/Scripts/main.lua
	sed -i 's|    LoadMods(World:get()) --patchmarker|    LoadMods(UEHelpers.GetWorld()) --patchmarker|g' ./ue4ss/Mods/BPModLoaderMod/Scripts/main.lua
	sed -i 's|HookInitGameState = 0|HookInitGameState = 1|g' ./ue4ss/UE4SS-settings.ini
	
	# Force LuaMods directory
	sed -i 's|^ModsFolderPath =.*|ModsFolderPath = ./LuaMods|g' ./ue4ss/UE4SS-settings.ini
	zip -r UE4SS-ITR2.zip ./ue4ss override.txt dwmapi.dll