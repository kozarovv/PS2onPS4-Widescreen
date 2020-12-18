apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack
eeObj.WriteMem32(0x001a5adc,0x3c014455)
eeObj.WriteMem32(0x001a5af8,0x3c013fe3)
eeObj.WriteMem32(0x001a5afc,0x34218e38)
eeObj.WriteMem32(0x0019dae4,0x3c013f22)
end

emuObj.AddVsyncHook(widescreen)