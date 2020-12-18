apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x003595e4,0x08030000)

eeObj.WriteMem32(0x000c0000,0x46020103)
eeObj.WriteMem32(0x000c0004,0x3c013f40)
eeObj.WriteMem32(0x000c0008,0x4481f000)
eeObj.WriteMem32(0x000c000c,0x461e2102)
eeObj.WriteMem32(0x000c0010,0x080d657a)
end

emuObj.AddVsyncHook(widescreen)