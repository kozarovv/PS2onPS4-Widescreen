apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Fire Heroes (E)(SLES-53237)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Y-Fov
eeObj.WriteMem32(0x00296b64,0x3c023fe3)
eeObj.WriteMem32(0x00296b70,0x34428e2a)

--Zoom
eeObj.WriteMem32(0x00296b7c,0x08030000)

eeObj.WriteMem32(0x000c0000,0xc66c00a0)
eeObj.WriteMem32(0x000c0004,0x3c013faa)
eeObj.WriteMem32(0x000c0008,0x3421aaab)
eeObj.WriteMem32(0x000c000c,0x4481f000)
eeObj.WriteMem32(0x000c0010,0x461e6302)
eeObj.WriteMem32(0x000c0014,0x080a5ae0)
end

emuObj.AddVsyncHook(widescreen)