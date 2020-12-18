apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Rise of the Kasai SCUS_974.16
--comment=Widescreen Hack
eeObj.WriteMem32(0x003414fc,0x3c0143a8)
eeObj.WriteMem32(0x002dbf68,0x3c014396)
eeObj.WriteMem32(0x00323f3c,0x3c014396)
end

emuObj.AddVsyncHook(widescreen)