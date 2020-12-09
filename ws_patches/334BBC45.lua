apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--07a80046 803f013c
eeObj.WriteMem32(0x0010ac6c,0x08050a74)

eeObj.WriteMem32(0x001429d0,0x3c013f40)
eeObj.WriteMem32(0x001429d4,0x4481f000)
eeObj.WriteMem32(0x001429d8,0x461eb582)
eeObj.WriteMem32(0x001429dc,0x4600a807)
eeObj.WriteMem32(0x001429e0,0x08042b1c)

--Render fix
--003f013c 00088144 a891e724 (1st)
eeObj.WriteMem32(0x0010acb0,0x3c013f2b)
end

emuObj.AddVsyncHook(widescreen)