apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Pnach by Little Giant

--black borders's fix (optional)
eeObj.WriteMem32(0x00260A9C,0x24020000)
end

emuObj.AddVsyncHook(widescreen)