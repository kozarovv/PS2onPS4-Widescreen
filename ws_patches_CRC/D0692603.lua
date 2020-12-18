apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Donald Duck - Rescue Daisakusen!! (J)(SLPS-20070)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Zoom
--a80000c6 003f023c 00088244
eeObj.WriteMem32(0x002731a8,0x3c023f1d)

--Y-Fov
--c2030146 00888244 06a40046
eeObj.WriteMem32(0x002731f8,0x08030000)

eeObj.WriteMem32(0x000c0000,0x460103c2)
eeObj.WriteMem32(0x000c0004,0x3c013f40)
eeObj.WriteMem32(0x000c0008,0x4481f000)
eeObj.WriteMem32(0x000c000c,0x461e7bc2)
eeObj.WriteMem32(0x000c0010,0x0809cc7f)
end

emuObj.AddVsyncHook(widescreen)