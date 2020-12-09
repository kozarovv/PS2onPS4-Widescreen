apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack
eeObj.WriteMem32(0x00203a90,0x3fe38e39)
eeObj.WriteMem32(0x0011723c,0x3c013f22)
end

emuObj.AddVsyncHook(widescreen)