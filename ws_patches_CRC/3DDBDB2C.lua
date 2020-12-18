apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Zoom
eeObj.WriteMem32(0x001684e4,0x3c013f88)
eeObj.WriteMem32(0x001684e8,0x34218883)

--Y-Fov
eeObj.WriteMem32(0x00168500,0x08030000)

eeObj.WriteMem32(0x000c0000,0x4600a343)
eeObj.WriteMem32(0x000c0004,0x3c013faa)
eeObj.WriteMem32(0x000c0008,0x3421aaab)
eeObj.WriteMem32(0x000c000c,0x4481f000)
eeObj.WriteMem32(0x000c0010,0x461e6b42)
eeObj.WriteMem32(0x000c0014,0x0805a141)
end

emuObj.AddVsyncHook(widescreen)