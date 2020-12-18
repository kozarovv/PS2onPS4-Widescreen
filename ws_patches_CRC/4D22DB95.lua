apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack
eeObj.WriteMem32(0x002c3768,0x3c013fe3)
eeObj.WriteMem32(0x002c376c,0x34217fa5)
end

emuObj.AddVsyncHook(widescreen)