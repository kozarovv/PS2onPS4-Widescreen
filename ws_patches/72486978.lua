apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack
eeObj.WriteMem32(0x00172538,0x3c023f22)
eeObj.WriteMem32(0x01ec2218,0x3c023f40)
eeObj.WriteMem32(0x002B067C,0x43c00000)
end

emuObj.AddVsyncHook(widescreen)