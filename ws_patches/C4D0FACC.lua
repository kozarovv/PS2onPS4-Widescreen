apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=SD Gundam G Generation Wars (J)(SLPS-25941)
--comment=Widescreen hack by Arapapa

--Widescreen 16:9

eeObj.WriteMem32(0x005c47b0,0x080a6610)

eeObj.WriteMem32(0x00299840,0x3c013f40)
eeObj.WriteMem32(0x00299844,0x4481f000)
eeObj.WriteMem32(0x00299848,0xc6010068)
eeObj.WriteMem32(0x0029984c,0xc602006c)
eeObj.WriteMem32(0x00299850,0x461e0843)
eeObj.WriteMem32(0x00299854,0xe6010068)
eeObj.WriteMem32(0x00299858,0x081711ee)

------------------------------------------------/
--Zoom
--eeObj.WriteMem32(0x001ab6f4,0x3c03402a)
--eeObj.WriteMem32(0x001ab6f8,0x3463aaab)
--eeObj.WriteMem32(0x001ab6fc,0x9382baa4)
--eeObj.WriteMem32(0x001ab700,0x44830800)

--Y-Fov
--eeObj.WriteMem32(0x001ab794,0x081bba48)

--eeObj.WriteMem32(0x006ee920,0x46142802)
--eeObj.WriteMem32(0x006ee924,0x3c013f40)
--eeObj.WriteMem32(0x006ee928,0x4481f000)
--eeObj.WriteMem32(0x006ee92c,0x461e0002)
--eeObj.WriteMem32(0x006ee930,0x0806ade6)

--2D LEFT (In the battles)
--eeObj.WriteMem32(0x0052b6a8,0x3c02bf40)
end

emuObj.AddVsyncHook(widescreen)