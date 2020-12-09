apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack

eeObj.WriteMem32(0x006927AC,0x3F47AE14)
eeObj.WriteMem32(0x006C62BC,0x3F400000)
end

emuObj.AddVsyncHook(widescreen)