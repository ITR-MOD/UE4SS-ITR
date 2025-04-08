default: ITR

ITR:
	# Force LuaMods directory
	sed -i 's|^ModsFolderPath =.*|ModsFolderPath = ./LuaMods|g' ./ue4ss/UE4SS-settings.ini
	zip -r UE4SS-ITR.zip ./ue4ss override.txt dwmapi.dll