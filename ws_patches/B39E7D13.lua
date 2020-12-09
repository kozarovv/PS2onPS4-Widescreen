apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=WWE SmackDown vs. Raw 2007 (PAL-E) (SLES-54489)
--comment=Widescreen hack by nemesis2000
-- Ported to PAL, added 16:10 support (ElHecht)

-- 16:9
eeObj.WriteMem32(0x002b0830,0x3c013f40)

-- 16:10
--eeObj.WriteMem32(0x001025b0,0x3c1b3f55)
--eeObj.WriteMem32(0x001025b4,0x377b5555)
--eeObj.WriteMem32(0x002b0834,0x449ba000)
end

emuObj.AddVsyncHook(widescreen)