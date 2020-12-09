apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack (16:9) by ElHecht (NTSC-K by Arapapa)

eeObj.WriteMem32(0x0017a658,0x3c023f19)
eeObj.WriteMem32(0x0017a660,0x3442999a)


eeObj.WriteMem32(0x0017a818,0x3c033f19)
eeObj.WriteMem32(0x0017a820,0x3463999a)

eeObj.WriteMem32(0x0017aaf4,0x3c03440a)
eeObj.WriteMem32(0x0017aa94,0x3c03440a)
end

emuObj.AddVsyncHook(widescreen)