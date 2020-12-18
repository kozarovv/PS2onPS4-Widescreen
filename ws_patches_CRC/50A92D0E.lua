apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--02100046 4000a1e7
eeObj.WriteMem32(0x00134a00,0x08030000)

eeObj.WriteMem32(0x000c0000,0x46001002)
eeObj.WriteMem32(0x000c0004,0x3c013fa0)
eeObj.WriteMem32(0x000c0008,0x3421aaab)
eeObj.WriteMem32(0x000c000c,0x4481f000)
eeObj.WriteMem32(0x000c0010,0x461e0002)
eeObj.WriteMem32(0x000c0014,0x0804d281)

--Zoom
--eeObj.WriteMem32(0x001349c8,0x3c023f40)
end

emuObj.AddVsyncHook(widescreen)