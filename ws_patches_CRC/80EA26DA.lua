apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack
eeObj.WriteMem32(0x001c5c98,0x3c013f40)
eeObj.WriteMem32(0x0020d690,0x3c013fab)
eeObj.WriteMem32(0x00284084,0x3c010000)
eeObj.WriteMem32(0x0078d930,0xbfab0000)
end

emuObj.AddVsyncHook(widescreen)