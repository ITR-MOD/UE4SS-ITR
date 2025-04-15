default: ITR

ITR:
	# Force LuaMods directory
	sed -i 's|^ModsFolderPath =.*|ModsFolderPath = ./LuaMods|g' ./ue4ss/UE4SS-settings.ini
	# Force Enable the GUI Console
	sed -i 's|^ConsoleEnabled =.*|ConsoleEnabled = 1|g' ./ue4ss/UE4SS-settings.ini
	sed -i 's|^GuiConsoleEnabled =.*|GuiConsoleEnabled = 1|g' ./ue4ss/UE4SS-settings.ini
	sed -i 's|^GuiConsoleVisible =.*|ConsoleVisible = 1|g' ./ue4ss/UE4SS-settings.ini
	sed -i 's|^GraphicsAPI =.*|GraphicsAPI = dx11|g' ./ue4ss/UE4SS-settings.ini
	
	zip -r UE4SS-ITR.zip ./ue4ss override.txt dwmapi.dll