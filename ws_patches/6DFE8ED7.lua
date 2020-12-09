apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack
--eeObj.WriteMem32(0x001110e0,0x00000000)
eeObj.WriteMem32(0x00218E84,0x3C023F17)
eeObj.WriteMem32(0x00218EB0,0x3C023F10)
end

emuObj.AddVsyncHook(widescreen)