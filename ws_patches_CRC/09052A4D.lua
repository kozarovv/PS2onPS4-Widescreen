apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Zoom
--003f013c 00008144 3c008cc4
eeObj.WriteMem32(0x0014a0e0,0x3c013f21)

--Y-Fov
--43000146 0400048e
eeObj.WriteMem32(0x002881c8,0x08045ca0)

eeObj.WriteMem32(0x00117280,0x46010043)
eeObj.WriteMem32(0x00117284,0x3c013f40)
eeObj.WriteMem32(0x00117288,0x4481f000)
eeObj.WriteMem32(0x0011728c,0x461e1082)
eeObj.WriteMem32(0x00117290,0x080a2073)
end

emuObj.AddVsyncHook(widescreen)