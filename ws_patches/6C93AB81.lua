apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x00232fc8,0x3c023f6e)
eeObj.WriteMem32(0x00232fcc,0x3442eee9)
eeObj.WriteMem32(0x00232fd4,0x3c024002)
eeObj.WriteMem32(0x00232fd8,0x34420820)
end

emuObj.AddVsyncHook(widescreen)