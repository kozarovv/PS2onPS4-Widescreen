apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Kidou Senshi Gundam SEED Destiny - Generation of C.E (J)(SLPS-25549)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x001b5a58,0x080421a8)
eeObj.WriteMem32(0x001b5a5c,0x00000000)

eeObj.WriteMem32(0x001086a0,0x3c013f40)
eeObj.WriteMem32(0x001086a4,0x4481f000)
eeObj.WriteMem32(0x001086a8,0xc6010068)
eeObj.WriteMem32(0x001086ac,0xc602006c)
eeObj.WriteMem32(0x001086b0,0x461e0843)
eeObj.WriteMem32(0x001086b4,0xe6010068)
eeObj.WriteMem32(0x001086b8,0x0806d698)
end

emuObj.AddVsyncHook(widescreen)