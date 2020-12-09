apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Armored Core - Silent Line (K) (SLKA_250.41)
--comment=Widescreen Hack by ElHecht (NTSC-K by Arapapa)

-- 16:9 (00000000(*) 00000000 43ad1346 00000000(*) 00000000(*))
eeObj.WriteMem32(0x0031e374,0x3c013f40)
eeObj.WriteMem32(0x0031e380,0x44810000)
eeObj.WriteMem32(0x0031e384,0x4600c602)

eeObj.WriteMem32(0x00193f60,0x3c0143d6)
end

emuObj.AddVsyncHook(widescreen)