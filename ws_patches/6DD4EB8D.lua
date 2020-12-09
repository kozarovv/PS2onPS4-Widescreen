apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--003f013c 00b88144 1002a0af
eeObj.WriteMem32(0x002ee7bc,0x3c013f21)

--Y-Fov
--02000246 87030046 (2nd)
eeObj.WriteMem32(0x002ee7fc,0x08030000)

eeObj.WriteMem32(0x000c0000,0x46020002)
eeObj.WriteMem32(0x000c0004,0x3c013f40)
eeObj.WriteMem32(0x000c0008,0x4481f000)
eeObj.WriteMem32(0x000c000c,0x461e0002)
eeObj.WriteMem32(0x000c0010,0x080bba00)
end

emuObj.AddVsyncHook(widescreen)