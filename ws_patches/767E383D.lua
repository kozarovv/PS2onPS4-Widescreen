apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack
eeObj.WriteMem32(0x0163aea4,0x3F400000)
eeObj.WriteMem32(0x00155168,0x3C024455)
eeObj.WriteMem32(0x001553D0,0x3C024455)
end

emuObj.AddVsyncHook(widescreen)