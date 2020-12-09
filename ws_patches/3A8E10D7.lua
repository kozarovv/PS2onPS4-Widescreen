apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack
eeObj.WriteMem32(0x0019e668,0x3c024455)
eeObj.WriteMem32(0x001a60e0,0x3c0243a8)
eeObj.WriteMem32(0x001a6108,0x3c0243c0)
end

emuObj.AddVsyncHook(widescreen)