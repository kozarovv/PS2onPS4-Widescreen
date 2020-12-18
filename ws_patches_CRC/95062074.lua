apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Surfing H3O (U)(SLUS-20092)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--02020746 60004324 600044c4 (1st)
eeObj.WriteMem32(0x001cf4cc,0x08030000)

eeObj.WriteMem32(0x000c0000,0x46070202)
eeObj.WriteMem32(0x000c0004,0x3c013f40)
eeObj.WriteMem32(0x000c0008,0x4481f000)
eeObj.WriteMem32(0x000c000c,0x461e4202)
eeObj.WriteMem32(0x000c0010,0x08073d34)


end

emuObj.AddVsyncHook(widescreen)