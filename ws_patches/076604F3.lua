apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack
eeObj.WriteMem32(0x001dd764,0x3c023fab)
end

emuObj.AddVsyncHook(widescreen)