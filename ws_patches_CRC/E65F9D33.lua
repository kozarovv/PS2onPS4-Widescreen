apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Cabela's Outdoor Adventures (2005) (U)(SLUS-21192)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9
s
--Zoom
eeObj.WriteMem32(0x00317bc4,0x3c023f20)

--Y-Fov
--03080046 ec00a0e6 f800a0c6
eeObj.WriteMem32(0x00317c20,0x08030000)

eeObj.WriteMem32(0x000c0000,0x46000803)
eeObj.WriteMem32(0x000c0004,0x3c013f40)
eeObj.WriteMem32(0x000c0008,0x4481f000)
eeObj.WriteMem32(0x000c000c,0x461e0002)
eeObj.WriteMem32(0x000c0010,0x080c5f09)
end

emuObj.AddVsyncHook(widescreen)