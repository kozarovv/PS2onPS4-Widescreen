apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x001342bc,0x08042c68)

eeObj.WriteMem32(0x0010b1a0,0x46160803)
eeObj.WriteMem32(0x0010b1a4,0x3c013f40)
eeObj.WriteMem32(0x0010b1a8,0x4481f000)
eeObj.WriteMem32(0x0010b1ac,0x461e0002)
eeObj.WriteMem32(0x0010b1b0,0x0804d0b0)
end

emuObj.AddVsyncHook(widescreen)