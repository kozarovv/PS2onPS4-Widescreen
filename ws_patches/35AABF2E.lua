apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack
eeObj.WriteMem32(0x00181528,0x3c023f28)
eeObj.WriteMem32(0x00181530,0x3442f5c3)
end

emuObj.AddVsyncHook(widescreen)