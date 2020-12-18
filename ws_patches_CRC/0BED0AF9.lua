apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack

eeObj.WriteMem32(0x01CB0590,0x3F400000)
end

emuObj.AddVsyncHook(widescreen)