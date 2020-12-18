apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack
eeObj.WriteMem32(0x0019884c,0x3c013f1a)
eeObj.WriteMem32(0x0040918c,0x43a80000)
end

emuObj.AddVsyncHook(widescreen)