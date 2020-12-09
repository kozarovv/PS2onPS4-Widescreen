apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--0c0002c6 4000a2e7
eeObj.WriteMem32(0x001891a0,0x08030000)

eeObj.WriteMem32(0x000c0000,0xc602000c)
eeObj.WriteMem32(0x000c0004,0x3c013f40)
eeObj.WriteMem32(0x000c0008,0x4481f000)
eeObj.WriteMem32(0x000c000c,0x461e1082)
eeObj.WriteMem32(0x000c0010,0x08062469)

--Render fix
--00000000 00000000 03050246 00000000
--ab3f013c 00f88144 03050246 42ad1f46
eeObj.WriteMem32(0x00189058,0x3c013fab)
eeObj.WriteMem32(0x0018905c,0x4481f800)
eeObj.WriteMem32(0x00189064,0x461fad42)
end

emuObj.AddVsyncHook(widescreen)