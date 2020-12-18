apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x001bb1c8,0x08052064)
eeObj.WriteMem32(0x001bb1cc,0x00000000)

eeObj.WriteMem32(0x00148190,0x3c013f40)
eeObj.WriteMem32(0x00148194,0x4481f000)
eeObj.WriteMem32(0x00148198,0xc6010068)
eeObj.WriteMem32(0x0014819c,0xc602006c)
eeObj.WriteMem32(0x001481a0,0x461e0843)
eeObj.WriteMem32(0x001481a4,0xe6010068)
eeObj.WriteMem32(0x001481a8,0x0806ec74)
end

emuObj.AddVsyncHook(widescreen)