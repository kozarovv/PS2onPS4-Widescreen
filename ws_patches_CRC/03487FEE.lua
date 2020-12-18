apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by ElHecht (NTSC-J by Arapapa)

--Widescreen hack 16:9

eeObj.WriteMem32(0x001991b8,0x3c023f19)
eeObj.WriteMem32(0x001991c0,0x3442999a)

eeObj.WriteMem32(0x00199048,0x3c033f19)
eeObj.WriteMem32(0x00199050,0x3463999a)

eeObj.WriteMem32(0x00198d70,0x3c02440a)
eeObj.WriteMem32(0x00198c70,0x3c02440a)
eeObj.WriteMem32(0x0024d9c8,0x3c0243ab)
end

emuObj.AddVsyncHook(widescreen)