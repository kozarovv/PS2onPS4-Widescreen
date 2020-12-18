apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Zoom
--003f023c 00088244 a80020c6
eeObj.WriteMem32(0x0028d01c,0x3c023f20)

--Y-Fov
--c2030146 07030046 (2nd)
eeObj.WriteMem32(0x0028d07c,0x080853d4)
eeObj.WriteMem32(0x00214f50,0x460103c2)
eeObj.WriteMem32(0x00214f54,0x3c013f40)
eeObj.WriteMem32(0x00214f58,0x4481f000)
eeObj.WriteMem32(0x00214f5c,0x461e7bc2)
eeObj.WriteMem32(0x00214f60,0x080a3420)
end

emuObj.AddVsyncHook(widescreen)