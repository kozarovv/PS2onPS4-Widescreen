apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Naruto - Uzumaki Chronicles (NTSC-U)
--comment= Widescreen Hack (16:9)

-- 16:9
-- 613f023c af474234 (search twice)
eeObj.WriteMem32(0x002d84b8,0x3c023f28)
eeObj.WriteMem32(0x002d84bc,0x3442f5c3)

eeObj.WriteMem32(0x002d8b50,0x3c023f28)
eeObj.WriteMem32(0x002d8b54,0x3442f5c3)
end

emuObj.AddVsyncHook(widescreen)