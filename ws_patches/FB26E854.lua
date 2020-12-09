apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=WWE SmackDown vs. Raw 2009 (PAL-M5) (SLES-55251)
--comment=Widescreen hack by nemesis2000
-- Ported to PAL, added 16:10 support (ElHecht)

-- 16:9
eeObj.WriteMem32(0x002a2cb0,0x3c033f40)

-- 16:10
--eeObj.WriteMem32(0x001003c4,0x3c1b3f55)
--eeObj.WriteMem32(0x002a2cb0,0x37635555)
end

emuObj.AddVsyncHook(widescreen)