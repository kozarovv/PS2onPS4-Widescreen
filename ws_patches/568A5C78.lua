apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack
eeObj.WriteMem32(0x0029cbd0,0x3c013f22)
eeObj.WriteMem32(0x002210a4,0x3c013f22)
eeObj.WriteMem32(0x005560b0,0x44550000)
end

emuObj.AddVsyncHook(widescreen)