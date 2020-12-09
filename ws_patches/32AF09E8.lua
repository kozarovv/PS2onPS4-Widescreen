apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack

eeObj.WriteMem32(0x00630240,0x3f400000)
eeObj.WriteMem32(0x00651670,0x3f400000)
eeObj.WriteMem32(0x00630590,0x3f400000)
end

emuObj.AddVsyncHook(widescreen)