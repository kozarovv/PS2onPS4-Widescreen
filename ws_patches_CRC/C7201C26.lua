apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=WWE SmackDown vs. Raw 2011 (PAL-M5) (SLES-55635)
--comment=Widescreen hack by nemesis2000
-- Ported to PAL, added 16:10 support (ElHecht)

-- 16:9
eeObj.WriteMem32(0x0022ed0c,0x3c033f40)

-- 16:10
--eeObj.WriteMem32(0x00100514,0x3c1b3f55)
--eeObj.WriteMem32(0x0022ed0c,0x37635555)
end

emuObj.AddVsyncHook(widescreen)