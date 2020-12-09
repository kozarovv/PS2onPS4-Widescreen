apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack

eeObj.WriteMem32(0x00762BB0,0x3F100000)
eeObj.WriteMem32(0x006F2734,0x3FCF5C29)
end

emuObj.AddVsyncHook(widescreen)