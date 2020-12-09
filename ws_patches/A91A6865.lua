apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Naruto - Konoha Spirits (NTSC-J) (SLLPS_25714)
--comment= Widescreen Hack (16:9) by ElHecht (NTSC-J by Arapapa)

-- 16:9
-- 613f023c af474234 (search twice)
eeObj.WriteMem32(0x00206628,0x3c023f28)
eeObj.WriteMem32(0x0020662c,0x3442f5c3)

eeObj.WriteMem32(0x00206ee0,0x3c023f28)
eeObj.WriteMem32(0x00206ee4,0x3442f5c3)
end

emuObj.AddVsyncHook(widescreen)