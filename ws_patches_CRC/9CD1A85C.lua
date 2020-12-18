apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Naruto - Uzumaki Chronicles (NTSC-K) (SLKA-25313)
--comment= Widescreen Hack (16:9) (NTSC-K by Arapapa)

-- 16:9
-- 613f023c af474234 (search twice)
eeObj.WriteMem32(0x001ea3f8,0x3c023f28)
eeObj.WriteMem32(0x001ea3fc,0x3442f5c3)

eeObj.WriteMem32(0x001eaa90,0x3c023f28)
eeObj.WriteMem32(0x001eaa94,0x3442f5c3)
end

emuObj.AddVsyncHook(widescreen)