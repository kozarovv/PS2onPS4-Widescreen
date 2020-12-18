apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Zoom (Gameplay)
--9800a0e7 803f013c 00008144 00000000
eeObj.WriteMem32(0x002463e4,0x3c013f40)

--Zoom (Menu and Cutscene)
--8800a0e7 803f013c 00008144 00000000
eeObj.WriteMem32(0x0012cea0,0x3c013f40)

--Y-Fov (All)
--c3390046 1c0020ae
eeObj.WriteMem32(0x00111e08,0x08030000)

eeObj.WriteMem32(0x000c0000,0x460039c3)
eeObj.WriteMem32(0x000c0004,0x3c013faa)
eeObj.WriteMem32(0x000c0008,0x3421aaab)
eeObj.WriteMem32(0x000c000c,0x4481f000)
eeObj.WriteMem32(0x000c0010,0x461e39c2)
eeObj.WriteMem32(0x000c0014,0x08044783)
end

emuObj.AddVsyncHook(widescreen)