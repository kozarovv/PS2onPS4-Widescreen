apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack
eeObj.WriteMem32(0x00128708,0x3c024328)
eeObj.WriteMem32(0x002c20cc,0x3c024395)
end

emuObj.AddVsyncHook(widescreen)