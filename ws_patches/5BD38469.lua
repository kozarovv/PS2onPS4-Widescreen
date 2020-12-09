apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Zoom
--00000000 a80020c6 003f023c 00088244
eeObj.WriteMem32(0x002a1ff8,0x3c023f1e)

--Y-Fov
--c2030146 06a40046
eeObj.WriteMem32(0x002a2044,0x0813d770)

eeObj.WriteMem32(0x004f5dc0,0x460103c2)
eeObj.WriteMem32(0x004f5dc4,0x3c013f40)
eeObj.WriteMem32(0x004f5dc8,0x4481f000)
eeObj.WriteMem32(0x004f5dcc,0x461e7bc2)
eeObj.WriteMem32(0x004f5dd0,0x080a8812)
end

emuObj.AddVsyncHook(widescreen)