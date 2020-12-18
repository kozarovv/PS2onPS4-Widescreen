apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Zero 零 Zero (J)(SLPS-25074)
--comment=Widescreen Hack by nemesis2000 and devina40 (NTSC-J by Arapapa)

--Game Play
eeObj.WriteMem32(0x00186f14,0x3c013f40)

--Cutscenes by pgert
eeObj.WriteMem32(0x001828ec,0x3C013F40)

--Cut-scene render fix
--0045013c 00208144 280040e6
eeObj.WriteMem32(0x001828e0,0x3c0145C0)

--FMV's fix
eeObj.WriteMem32(0x0017f520,0x24027100)
eeObj.WriteMem32(0x0017f530,0x24027100)
eeObj.WriteMem32(0x0017f538,0x24091e00)

--Lens Flare's fix
--Modified based on PAL (0,875 instead of 0,75) - better.   
eeObj.WriteMem32(0x0013601c,0x3c013f12)
eeObj.WriteMem32(0x001349a8,0x3C01428C)
eeObj.WriteMem32(0x00134a8c,0x3C01410C)
eeObj.WriteMem32(0x00134a54,0x3C014128)
eeObj.WriteMem32(0x00134a10,0x3C0141A8)

--Remove effects (Memory Hack)
--6666f643 0000803f 0000803f
--eeObj.WriteMem32(0x003496CC,0x00000000)
--00002044 0000e043 0000803f 0000803f 00000000 00000000 (10)
--eeObj.WriteMem32(0x00349B4C,0x00000000)
--00002044 0000e043 0000803f 0000803f 00000000 00000000 (8)
--eeObj.WriteMem32(0x003499DC,0x00000000)

--No interlacing by asasega
eeObj.WriteMem32(0x0022e3cc,0x00000000)
end

emuObj.AddVsyncHook(widescreen)