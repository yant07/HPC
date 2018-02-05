help([[module e help]])

local name = myModuleFullName()

-- load module only if it is not loaded
if not isloaded("a") then
	LmodMessage("Loading module a")
	load("a")
end

if not isloaded("b") then
	LmodMessage("Loading module b")
	load("b")
end

if mode() == "unload" then
	LmodMessage("Unloading module ", name)
end

