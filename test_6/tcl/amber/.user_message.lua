local module = myModuleName()
local version = myModuleVersion()
local moduleInfo = module .. " " .. version
if mode() == "load" then
	LmodMessage(moduleInfo, "has been successfully loaded!")
	LmodMessage("To add any additional packages, use: pip install <package-name> --user")
elseif mode() == "unload" then
	--LmodMessage(mode())
	--LmodMessage("Unloading...")
	LmodMessage(moduleInfo, "has been unloaded!")
end
