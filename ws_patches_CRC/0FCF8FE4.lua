apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack
eeObj.WriteMem32(0x00153984,0x3C024500)
eeObj.WriteMem32(0x00153a20,0x3C023F40)
eeObj.WriteMem32(0x0015390c,0x3C02442B)
end

emuObj.AddVsyncHook(widescreen)