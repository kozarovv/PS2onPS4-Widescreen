apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Zoom
eeObj.WriteMem32(0x001b2b24,0x3c023f25)

--Y-Fov
eeObj.WriteMem32(0x00171264,0x08030000)

eeObj.WriteMem32(0x000c0000,0xc6010074)
eeObj.WriteMem32(0x000c0004,0x3c013faa)
eeObj.WriteMem32(0x000c0008,0x3421aaab)
eeObj.WriteMem32(0x000c000c,0x4481f000)
eeObj.WriteMem32(0x000c0010,0x461e0842)
eeObj.WriteMem32(0x000c0014,0x0805c49a)
end

emuObj.AddVsyncHook(widescreen)