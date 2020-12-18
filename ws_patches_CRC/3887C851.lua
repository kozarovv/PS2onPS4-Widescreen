apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack
eeObj.WriteMem32(0x00264678,0x3c013f10)
eeObj.WriteMem32(0x0023466c,0x3c013f14)
end

emuObj.AddVsyncHook(widescreen)