apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Altered Beast SLES_530.24
--comment=Widescreen Hack
eeObj.WriteMem32(0x003e499c,0x3c033fe3)
eeObj.WriteMem32(0x003e49a4,0x34648e38)
eeObj.WriteMem32(0x005d4250,0x3c033f20)
end

emuObj.AddVsyncHook(widescreen)