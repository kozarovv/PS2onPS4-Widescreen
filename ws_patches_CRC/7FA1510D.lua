apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack
eeObj.WriteMem32(0x00154998,0x3C033F40)
eeObj.WriteMem32(0x001549E0,0x3C033F40)
eeObj.WriteMem32(0x00155168,0x3C024455)
eeObj.WriteMem32(0x001553D0,0x3C024455)
end

emuObj.AddVsyncHook(widescreen)