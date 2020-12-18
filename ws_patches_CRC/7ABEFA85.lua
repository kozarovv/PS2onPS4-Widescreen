apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack
eeObj.WriteMem32(0x001004b0,0x3c0143b4)
eeObj.WriteMem32(0x0014e450,0x3c0143c0)
end

emuObj.AddVsyncHook(widescreen)