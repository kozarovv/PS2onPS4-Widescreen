apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Dark Summit (E)(SLES-50575)
--comment=Widescreen hack by Arapapa

Widescreen hack 16:9

--X-Fov
--02000446 280100ae 42080546
eeObj.WriteMem32(0x003d37d0,0x08030000)

eeObj.WriteMem32(0x000c0000,0x46040002)
eeObj.WriteMem32(0x000c0004,0x3c013f40)
eeObj.WriteMem32(0x000c0008,0x00000000)
eeObj.WriteMem32(0x000c000c,0x4481f000)
eeObj.WriteMem32(0x000c0010,0x461e0002)
eeObj.WriteMem32(0x000c0014,0x080f4df5)

--Render fix
--003f013c 00a88144 0000b07f
eeObj.WriteMem32(0x0036444c,0x3c013f2b)
end

emuObj.AddVsyncHook(widescreen)