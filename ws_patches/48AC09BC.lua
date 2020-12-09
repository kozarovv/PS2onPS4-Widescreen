apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack  (Converted from NTSC patch by Somechump)
eeObj.WriteMem32(0x00132B40,0x3c033f40)
eeObj.WriteMem32(0x00132998,0x3c0643d6)
end

emuObj.AddVsyncHook(widescreen)