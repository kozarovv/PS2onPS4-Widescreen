apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack
eeObj.WriteMem32(0x00190620,0x3c014310)
eeObj.WriteMem32(0x00190650,0x3c013fe3)
eeObj.WriteMem32(0x00190654,0x34218e38)
end

emuObj.AddVsyncHook(widescreen)