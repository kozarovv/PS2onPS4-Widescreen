apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Batman - Vengeance (E)(SLES-50355)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Zoom
--00000000 a80020c6 003f023c 00088244
eeObj.WriteMem32(0x002a1e58,0x3c023f1e)

--Y-Fov
--c2030146 06a40046
eeObj.WriteMem32(0x002a1ea4,0x0813bd30)

eeObj.WriteMem32(0x004ef4c0,0x460103c2)
eeObj.WriteMem32(0x004ef4c4,0x3c013f40)
eeObj.WriteMem32(0x004ef4c8,0x4481f000)
eeObj.WriteMem32(0x004ef4cc,0x461e7bc2)
eeObj.WriteMem32(0x004ef4d0,0x080a87aa)
end

emuObj.AddVsyncHook(widescreen)