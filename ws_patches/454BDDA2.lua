apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x001d7ff4,0x08030010)
eeObj.WriteMem32(0x000c0040,0x4616a583)
eeObj.WriteMem32(0x000c0044,0x3c013f40)
eeObj.WriteMem32(0x000c0048,0x4481f000)
eeObj.WriteMem32(0x000c004c,0x461eb582)
eeObj.WriteMem32(0x000c0050,0x08075ffe)

--Hud
--46750046 8000b7ff
eeObj.WriteMem32(0x0015379c,0x08030000)
eeObj.WriteMem32(0x000c0000,0x46007546)
eeObj.WriteMem32(0x000c0004,0x3c013f40)
eeObj.WriteMem32(0x000c0008,0x4481f000)
eeObj.WriteMem32(0x000c000c,0x461ead42)
eeObj.WriteMem32(0x000c0010,0x08054de8)

--Map
/eeObj.WriteMem32(0x0014c214,0x08030008)
--eeObj.WriteMem32(0x000c0020,0x4600cb06)
--eeObj.WriteMem32(0x000c0024,0x3c013f40)
--eeObj.WriteMem32(0x000c0028,0x4481f000)
--eeObj.WriteMem32(0x000c002c,0x461e6302)
--eeObj.WriteMem32(0x000c0030,0x08053086)

--eeObj.WriteMem32(0x0014bdf0,0x3c013f2a)


end

emuObj.AddVsyncHook(widescreen)