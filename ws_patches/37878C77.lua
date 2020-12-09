apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--02410446 380081e4 c2400346
eeObj.WriteMem32(0x001bfacc,0x08030000)

eeObj.WriteMem32(0x000c0000,0x46044102)
eeObj.WriteMem32(0x000c0004,0x3c013f40)
eeObj.WriteMem32(0x000c0008,0x00000000)
eeObj.WriteMem32(0x000c000c,0x4481f000)
eeObj.WriteMem32(0x000c0010,0x461e2102)
eeObj.WriteMem32(0x000c0014,0x0806feb4)
end

emuObj.AddVsyncHook(widescreen)