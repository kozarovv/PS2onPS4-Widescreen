apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x004EF0DC,0x00000a01)
eeObj.WriteMem32(0x004EF0F0,0x00000a01)
eeObj.WriteMem32(0x0031db2c,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)