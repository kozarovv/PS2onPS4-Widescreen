apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x0045c6b0,0x3f2ccccd)
eeObj.WriteMem32(0x0045cee8,0x3f2ccccd)
eeObj.WriteMem32(0x0045d4f4,0x3f2ccccd)
end

emuObj.AddVsyncHook(widescreen)