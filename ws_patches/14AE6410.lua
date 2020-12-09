apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--07a80046 803f013c
eeObj.WriteMem32(0x001157a4,0x080a5be8)

eeObj.WriteMem32(0x00296fa0,0x3c013f40)
eeObj.WriteMem32(0x00296fa4,0x4481f000)
eeObj.WriteMem32(0x00296fa8,0x461eb582)
eeObj.WriteMem32(0x00296fac,0x4600a807)
eeObj.WriteMem32(0x00296fb0,0x080455ea)

--Render fix
--003f013c 00088144 a891e724 (1st)
eeObj.WriteMem32(0x001157e8,0x3c013f2b)
end

emuObj.AddVsyncHook(widescreen)