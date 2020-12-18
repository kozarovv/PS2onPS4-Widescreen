apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Silent Hill 2 (original version) SLUS_202.28
--comment=Widescreen Hack

--16:9
eeObj.WriteMem32(0x002c99e0,0x3f28f5c3)
eeObj.WriteMem32(0x00187984,0x3c034455)

--FMV fix @ 1.55 AR
eeObj.WriteMem32(0x002a258c,0x3c027200)
eeObj.WriteMem32(0x002a25bc,0x34068e00)
eeObj.WriteMem32(0x002a2590,0x34467200)
eeObj.WriteMem32(0x002a25c4,0x34c68df0)

--Black borders fix (00 74 C6 34 38 34 06 00)
eeObj.WriteMem32(0x002a2730,0x34c60000)
eeObj.WriteMem32(0x002a27ac,0x34c60000)

--Lens Flare's fix
eeObj.WriteMem32(0x001892c0,0x3c024010)
eeObj.WriteMem32(0x0018933c,0x3c0243a8)
eeObj.WriteMem32(0x00189f94,0x3c024010)

eeObj.WriteMem32(0x0018a02c,0x3c0243a8)
eeObj.WriteMem32(0x0018a0a8,0x3c0243a8)
eeObj.WriteMem32(0x0018a674,0x3c0243a8)
eeObj.WriteMem32(0x0018a708,0x3c0243a8)
eeObj.WriteMem32(0x0018a79c,0x3c0243a8)
eeObj.WriteMem32(0x0018a830,0x3c0243a8)
eeObj.WriteMem32(0x0018abc4,0x3c0243a8)
eeObj.WriteMem32(0x0018ac58,0x3c0243a8)
eeObj.WriteMem32(0x0018acec,0x3c0243a8)
eeObj.WriteMem32(0x0018ad80,0x3c0243a8)

eeObj.WriteMem32(0x0018af74,0x3c0243a8)
eeObj.WriteMem32(0x0018afe0,0x3c0243a8)
eeObj.WriteMem32(0x0018b12c,0x3c0243a8)
eeObj.WriteMem32(0x0018b198,0x3c0243a8)

--Loading scene (Foot Print)
--403f023c 00088244 c000a0c7
eeObj.WriteMem32(0x002b2454,0x3c023f10)

--Item & Equipment Y-Fov
--8042023c 00008244 00000000 02001446
eeObj.WriteMem32(0x00213560,0x3c0242aa)
eeObj.WriteMem32(0x00213564,0x3442aaab)
eeObj.WriteMem32(0x00213568,0x44820000)

--Item Zoom
--993e033c 9a996334 00008344
eeObj.WriteMem32(0x001d74f4,0x3c033daa)
eeObj.WriteMem32(0x001d74f8,0x3463aaab)

--Equipment Zoom
--663f023c 66664234 00088244
eeObj.WriteMem32(0x001d7900,0x3c023f2c)
eeObj.WriteMem32(0x001d7904,0x3442cccd)
end

emuObj.AddVsyncHook(widescreen)