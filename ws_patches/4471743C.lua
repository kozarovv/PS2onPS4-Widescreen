apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x00132070,0x3c053f40)

--Render fix
eeObj.WriteMem32(0x001320d8,0x08044a28)

eeObj.WriteMem32(0x001128a0,0x46020842)
eeObj.WriteMem32(0x001128a4,0x3c153ff0)
eeObj.WriteMem32(0x001128a8,0x4495f000)
eeObj.WriteMem32(0x001128ac,0x461e0842)
eeObj.WriteMem32(0x001128b0,0x0804c837)
end

emuObj.AddVsyncHook(widescreen)