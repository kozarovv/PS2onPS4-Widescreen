apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack
eeObj.WriteMem32(0x001b9d20,0x3c023f40)
eeObj.WriteMem32(0x001b9a80,0x3c023f40)
end

emuObj.AddVsyncHook(widescreen)