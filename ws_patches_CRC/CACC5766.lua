apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Cabela's Alaskan Adventures (U)(SLUS-21384)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Zoom
eeObj.WriteMem32(0x003276e4,0x3c023f20)

--Y-Fov
eeObj.WriteMem32(0x00327730,0x08030000)

eeObj.WriteMem32(0x000c0000,0xc6a000e4)
eeObj.WriteMem32(0x000c0004,0x3c013faa)
eeObj.WriteMem32(0x000c0008,0x3421aaab)
eeObj.WriteMem32(0x000c000c,0x4481f000)
eeObj.WriteMem32(0x000c0010,0x461e0002)
eeObj.WriteMem32(0x000c0014,0x080c9dcd)


end

emuObj.AddVsyncHook(widescreen)