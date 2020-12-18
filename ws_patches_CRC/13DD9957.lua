apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack
eeObj.WriteMem32(0x0163DB24,0x3f400000)
eeObj.WriteMem32(0x001551c8,0x3C024455)
eeObj.WriteMem32(0x00155430,0x3C024455)
end

emuObj.AddVsyncHook(widescreen)