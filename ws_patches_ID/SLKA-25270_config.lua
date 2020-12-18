apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Armored Core - Fomula Front (K) (SLKA_252.70)
--comment=Widescreen Hack by ElHecht (NTSC-K by Arapapa)

-- 16:9 (search 00000000 00000000 43ad1346 00000000)
eeObj.WriteMem32(0x0013e1ac,0x3c013f40)
eeObj.WriteMem32(0x0013e1b8,0x44810000)
eeObj.WriteMem32(0x0013e1bc,0x4600c602)

eeObj.WriteMem32(0x001d8790,0x3c033f19)
eeObj.WriteMem32(0x001d8798,0x3462999a)
eeObj.WriteMem32(0x00202190,0x3c0243d6)
end

emuObj.AddVsyncHook(widescreen)