apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=High Rollers Casino (U)(SLUS-21014)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Zoom
eeObj.WriteMem32(0x0013f754,0x3c033f26)

--Y-Fov
eeObj.WriteMem32(0x0013f7b4,0x08030000)

eeObj.WriteMem32(0x000c0000,0x46010002)
eeObj.WriteMem32(0x000c0004,0x3c013f40)
eeObj.WriteMem32(0x000c0008,0x4481f000)
eeObj.WriteMem32(0x000c000c,0x461e0002)
eeObj.WriteMem32(0x000c0010,0x0804fdee)
end

emuObj.AddVsyncHook(widescreen)