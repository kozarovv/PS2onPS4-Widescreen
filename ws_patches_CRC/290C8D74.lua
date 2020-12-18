apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--066e0046 1800b5e7 (1st)
eeObj.WriteMem32(0x00319920,0x08030000)
eeObj.WriteMem32(0x000c0000,0x46006e06)
eeObj.WriteMem32(0x000c0004,0x3c013f40)
eeObj.WriteMem32(0x000c0008,0x4481f000)
eeObj.WriteMem32(0x000c000c,0x461ec603)
eeObj.WriteMem32(0x000c0010,0x080c6649)

--Render fix
--003f013c 00088144 38004cc4
eeObj.WriteMem32(0x00271d5c,0x3c013f2b)
end

emuObj.AddVsyncHook(widescreen)