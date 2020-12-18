apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Silent Hill 2 (SLPM-65051)
--comment=Widescreen Hack by nemesis2000 (NTSC-K by Arapapa)

--Wide Screen 16:9
eeObj.WriteMem32(0x002ca060,0x3f28f5c3)

--Render fix
eeObj.WriteMem32(0x00187c44,0x3c034455)

--FMV fix (00 74 02 3C 00 70 46 34)
eeObj.WriteMem32(0x002a2bcc,0x3c027200)
eeObj.WriteMem32(0x002a2bd0,0x34467200)
eeObj.WriteMem32(0x002a2bfc,0x34068e00)
eeObj.WriteMem32(0x002a2c04,0x34c68df0)

--Black borders fix (00 74 C6 34 38 34 06 00)
--eeObj.WriteMem32(0x002a2d70,0x34c60000)
--eeObj.WriteMem32(0x002a2dec,0x34c60000)

--Lens Flare's fix
eeObj.WriteMem32(0x00189580,0x3c024010)
eeObj.WriteMem32(0x001895fc,0x3c0243a8)
eeObj.WriteMem32(0x0018a254,0x3c024010)

eeObj.WriteMem32(0x0018a2ec,0x3c0243a8)
eeObj.WriteMem32(0x0018a368,0x3c0243a8)
eeObj.WriteMem32(0x0018a934,0x3c0243a8)
eeObj.WriteMem32(0x0018a9c8,0x3c0243a8)
eeObj.WriteMem32(0x0018aa5c,0x3c0243a8)
eeObj.WriteMem32(0x0018aaf0,0x3c0243a8)
eeObj.WriteMem32(0x0018ae84,0x3c0243a8)
eeObj.WriteMem32(0x0018af18,0x3c0243a8)
eeObj.WriteMem32(0x0018afac,0x3c0243a8)
eeObj.WriteMem32(0x0018b040,0x3c0243a8)

eeObj.WriteMem32(0x0018b234,0x3c0243a8)
eeObj.WriteMem32(0x0018b2a0,0x3c0243a8)
eeObj.WriteMem32(0x0018b3ec,0x3c0243a8)
eeObj.WriteMem32(0x0018b458,0x3c0243a8)

--Loading scene (Foot Print)
--403f023c 00088244 c000a0c7
eeObj.WriteMem32(0x002b2ac4,0x3c023f10)

--Item & Equipment Y-Fov
--8042023c 00008244 00000000 02001446
eeObj.WriteMem32(0x002139e0,0x3c0242aa)
eeObj.WriteMem32(0x002139e4,0x3442aaab)
eeObj.WriteMem32(0x002139e8,0x44820000)

--Item Zoom
--993e033c 9a996334 00008344
eeObj.WriteMem32(0x001d7984,0x3c033daa)
eeObj.WriteMem32(0x001d7988,0x3463aaab)

--Equipment Zoom
--663f023c 66664234 00088244
eeObj.WriteMem32(0x001d7d90,0x3c023f2c)
eeObj.WriteMem32(0x001d7d94,0x3442cccd)
end

emuObj.AddVsyncHook(widescreen)