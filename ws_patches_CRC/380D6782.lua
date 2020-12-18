apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by  nemesis2000 and synce

--eeObj.WriteMem32(0x010DDF14,0x43A8F5C2)
eeObj.WriteMem32(0x002d6730,0x3f28f5c3)
eeObj.WriteMem32(0x00189b94,0x3c034455)

--FMV's fix by nemesis2000
eeObj.WriteMem32(0x002ad098,0x24100004)
eeObj.WriteMem32(0x002ad09c,0x24030004)
eeObj.WriteMem32(0x002ad07c,0x340690b0)
eeObj.WriteMem32(0x002ad04c,0x3C026F50)

--eeObj.WriteMem32(0x002ad094,0x34c68c80)
--eeObj.WriteMem32(0x002ad050,0x34467380)

--Lens Flare's fix
eeObj.WriteMem32(0x0018b4f0,0x3c024010)
eeObj.WriteMem32(0x0018b56c,0x3c0243a8)
eeObj.WriteMem32(0x0018c1c4,0x3c024010)
eeObj.WriteMem32(0x0018c25c,0x3c0243a8)
eeObj.WriteMem32(0x0018c2d8,0x3c0243a8)
eeObj.WriteMem32(0x0018c8a4,0x3c0243a8)
eeObj.WriteMem32(0x0018c938,0x3c0243a8)
eeObj.WriteMem32(0x0018c9cc,0x3c0243a8)
eeObj.WriteMem32(0x0018ca60,0x3c0243a8)
eeObj.WriteMem32(0x0018cdf4,0x3c0243a8)
eeObj.WriteMem32(0x0018ce88,0x3c0243a8)
eeObj.WriteMem32(0x0018cf1c,0x3c0243a8)
eeObj.WriteMem32(0x0018cfb0,0x3c0243a8)
eeObj.WriteMem32(0x0018d1a4,0x3c0243a8)
eeObj.WriteMem32(0x0018d210,0x3c0243a8)
eeObj.WriteMem32(0x0018d35c,0x3c0243a8)
eeObj.WriteMem32(0x0018d3c8,0x3c0243a8)

--Loading scene (Foot Print)
--403f023c 00088244 c000a0c7
eeObj.WriteMem32(0x002bd6c4,0x3c023f10)

--Item & Equipment Y-Fov
--8042023c 00008244 00000000 02001446
eeObj.WriteMem32(0x00217310,0x3c0242aa)
eeObj.WriteMem32(0x00217314,0x3442aaab)
eeObj.WriteMem32(0x00217314,0x44820000)

eeObj.WriteMem32(0x00217670,0x3c0242aa)
eeObj.WriteMem32(0x00217674,0x3442aaab)
eeObj.WriteMem32(0x00217678,0x44820000)

--Item Zoom
--993e033c 9a996334 00008344
eeObj.WriteMem32(0x001dad4c,0x3c033daa)
eeObj.WriteMem32(0x001dad50,0x3463aaab)
eeObj.WriteMem32(0x001daddc,0x3c033daa)
eeObj.WriteMem32(0x001dade0,0x3463aaab)

--Equipment Zoom
--663f023c 66664234 00088244
eeObj.WriteMem32(0x001db298,0x3c023f2c)
eeObj.WriteMem32(0x001db29c,0x3442cccd)
end

emuObj.AddVsyncHook(widescreen)