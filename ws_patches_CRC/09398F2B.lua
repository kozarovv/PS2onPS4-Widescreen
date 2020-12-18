apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Little Giant

eeObj.WriteMem32(0x006F1C60,0x3F4F5C2A)
end

emuObj.AddVsyncHook(widescreen)