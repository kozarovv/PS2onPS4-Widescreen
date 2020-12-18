apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--020a0746 740062c4 (1st)
eeObj.WriteMem32(0x002a86c0,0x08030000)

eeObj.WriteMem32(0x000c0000,0x46070a02)
eeObj.WriteMem32(0x000c0004,0x3c013f40)
eeObj.WriteMem32(0x000c0008,0x4481f000)
eeObj.WriteMem32(0x000c000c,0x461e4202)
eeObj.WriteMem32(0x000c0010,0x080aa1b1)
end

emuObj.AddVsyncHook(widescreen)