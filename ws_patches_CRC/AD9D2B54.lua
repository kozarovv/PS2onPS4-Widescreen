apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Dream Mix TV - World Fighters (J)(SLPM-65384)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Zoom
--
eeObj.WriteMem32(0x0029a02c,0x3c01bec0)

--Y-Fov
--
eeObj.WriteMem32(0x0029a0f8,0x080bcf14)

eeObj.WriteMem32(0x002f3c50,0x46070a02)
eeObj.WriteMem32(0x002f3c54,0x3c013faa)
eeObj.WriteMem32(0x002f3c58,0x3421aaab)
eeObj.WriteMem32(0x002f3c5c,0x4481f000)
eeObj.WriteMem32(0x002f3c60,0x461e4202)
eeObj.WriteMem32(0x002f3c64,0x080a683f)
end

emuObj.AddVsyncHook(widescreen)