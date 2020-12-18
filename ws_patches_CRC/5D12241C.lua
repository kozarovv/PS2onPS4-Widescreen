apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x0013c7f4,0x3c023fab)
eeObj.WriteMem32(0x0010f2a0,0x3c013fab)

eeObj.WriteMem32(0x00140f9c,0x3c023f1f)
eeObj.WriteMem32(0x00140fa0,0x344349f1)
eeObj.WriteMem32(0x0013d4dc,0x3c023f1f)
eeObj.WriteMem32(0x0013d4e0,0x344249f1)
end

emuObj.AddVsyncHook(widescreen)