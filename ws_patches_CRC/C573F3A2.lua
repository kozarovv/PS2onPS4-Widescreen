apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Disney's Donald Duck - Goin' Quackers (U)(SLUS-20077)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Zoom
--a80000c6 003f023c 00088244
eeObj.WriteMem32(0x002706f8,0x3c023f1d)

--Y-Fov
--c2030146 00888244 06a40046
eeObj.WriteMem32(0x00270748,0x080850e8)

eeObj.WriteMem32(0x002143a0,0x460103c2)
eeObj.WriteMem32(0x002143a4,0x3c013f40)
eeObj.WriteMem32(0x002143a8,0x4481f000)
eeObj.WriteMem32(0x002143ac,0x461e7bc2)
eeObj.WriteMem32(0x002143b0,0x0809c1d3)
end

emuObj.AddVsyncHook(widescreen)