apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack
eeObj.WriteMem32(0x006746c8,0x3f9c67c8)
end

emuObj.AddVsyncHook(widescreen)