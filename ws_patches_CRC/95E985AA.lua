apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Samurai Warriors - Xtreme Legends (PAL-G) (SLES-53004)
--comment=Widescreen Hack (16:9) by ElHecht

-- 16:9
eeObj.WriteMem32(0x0013fa48,0x3c024328)
eeObj.WriteMem32(0x0013fc38,0x3c013f40)
eeObj.WriteMem32(0x0013fc3c,0x4481f000)
eeObj.WriteMem32(0x0013fc40,0x461e6b43)
eeObj.WriteMem32(0x0013fc44,0x03e00008)
eeObj.WriteMem32(0x0013fc48,0xe46d02bc)

-- 16:10
--eeObj.WriteMem32(0x0013fa48,0x3c02433a)
--eeObj.WriteMem32(0x0013fa50,0x3442aaab)
--eeObj.WriteMem32(0x0013fa54,0x44820800)
--eeObj.WriteMem32(0x0013fc38,0x3c013f55)
--eeObj.WriteMem32(0x0013fc3c,0x34215555)
--eeObj.WriteMem32(0x0013fc40,0x4481f000)
--eeObj.WriteMem32(0x0013fc44,0x461e6b43)
--eeObj.WriteMem32(0x0013fc48,0x03e00008)
--eeObj.WriteMem32(0x0013fc4c,0xe46d02bc)
end

emuObj.AddVsyncHook(widescreen)