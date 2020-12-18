apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack (16:9) by ElHecht (NTSC-K by Arapapa)

eeObj.WriteMem32(0x00179c38,0x3c023f19)
eeObj.WriteMem32(0x00179c40,0x3442999a)

eeObj.WriteMem32(0x00179df8,0x3c023f19)
eeObj.WriteMem32(0x00179e00,0x3442999a)

eeObj.WriteMem32(0x0017a0c4,0x3c03440a)
eeObj.WriteMem32(0x0017a064,0x3c03440a)
end

emuObj.AddVsyncHook(widescreen)