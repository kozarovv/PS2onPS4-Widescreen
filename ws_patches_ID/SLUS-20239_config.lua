apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Driven (U)(SLUS-20239)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--43000146 0400048e 03000246
eeObj.WriteMem32(0x001c01a8,0x08030000)

eeObj.WriteMem32(0x000c0000,0x46010043)
eeObj.WriteMem32(0x000c0004,0x3c013f40)
eeObj.WriteMem32(0x000c0008,0x4481f000)
eeObj.WriteMem32(0x000c000c,0x461e0842)
eeObj.WriteMem32(0x000c0010,0x0807006b)
end

emuObj.AddVsyncHook(widescreen)