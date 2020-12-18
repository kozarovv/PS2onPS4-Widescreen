apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Naruto - Uzumaki Chronicles 2 (NTSC-K) (SLKA_25366)
--comment= Widescreen Hack (16:9) by ElHecht (NTSC-K by Arapapa)

-- 16:9
-- 613f023c af474234 (search twice)
eeObj.WriteMem32(0x00202c98,0x3c023f28)
eeObj.WriteMem32(0x00202c9c,0x3442f5c3)

eeObj.WriteMem32(0x00203550,0x3c023f28)
eeObj.WriteMem32(0x00203554,0x3442f5c3)
end

emuObj.AddVsyncHook(widescreen)