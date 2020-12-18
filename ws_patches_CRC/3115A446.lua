apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Y-Fov (4:3)
--abaaaa3f 00010000 17d0a63f
eeObj.WriteMem32(0x004643f8,0x3fe38e39)

--Zoom fix (4:3 and 16:9)
--0000ace7 0000a27b 0008a248 (3rd)
eeObj.WriteMem32(0x001b80fc,0x08030000)
eeObj.WriteMem32(0x000c0000,0x3c013f52)
eeObj.WriteMem32(0x000c0004,0x4481f000)
eeObj.WriteMem32(0x000c0008,0x461e6303)
eeObj.WriteMem32(0x000c000c,0xe7ac0000)
eeObj.WriteMem32(0x000c0010,0x0806e040)

end

emuObj.AddVsyncHook(widescreen)