apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack
eeObj.WriteMem32(0x00211768,0x3c023f22)
end

emuObj.AddVsyncHook(widescreen)