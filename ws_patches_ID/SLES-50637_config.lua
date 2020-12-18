apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Pro Rally 2002 (E)(SLES-50637)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x00070030,0x00100008)
eeObj.WriteMem32(0x0011b760,0x08063b04)
eeObj.WriteMem32(0x0018ec10,0x4617b042)
eeObj.WriteMem32(0x0018ec14,0x3c013faa)
eeObj.WriteMem32(0x0018ec18,0x3421aaab)
eeObj.WriteMem32(0x0018ec1c,0x4481f000)
eeObj.WriteMem32(0x0018ec20,0x461e0842)
eeObj.WriteMem32(0x0018ec24,0x08046dd9)
end

emuObj.AddVsyncHook(widescreen)