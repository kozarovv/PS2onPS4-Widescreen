apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack
eeObj.WriteMem32(0x003488c8,0x3c023f22)
eeObj.WriteMem32(0x0032a974,0x3c023f22)
--eeObj.WriteMem32(0x003488dc,0x3c023ec0)
eeObj.WriteMem32(0x01a1b54c,0x3ff19fdd)
eeObj.WriteMem32(0x01a45f6c,0x3ff19fdd)
end

emuObj.AddVsyncHook(widescreen)