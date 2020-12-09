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
eeObj.WriteMem32(0x0028d07c,0x080e83b8)
eeObj.WriteMem32(0x003a0ee0,0x460103c2)
eeObj.WriteMem32(0x003a0ee4,0x3c013f40)
eeObj.WriteMem32(0x003a0ee8,0x4481f000)
eeObj.WriteMem32(0x003a0eec,0x461e7bc2)
eeObj.WriteMem32(0x003a0ef0,0x080a3420)
end

emuObj.AddVsyncHook(widescreen)