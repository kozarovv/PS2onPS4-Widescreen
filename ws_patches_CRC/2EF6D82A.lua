apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack
eeObj.WriteMem32(0x00231e8c,0x3c013f2b)
eeObj.WriteMem32(0x01ab5264,0xc3950000)
end

emuObj.AddVsyncHook(widescreen)