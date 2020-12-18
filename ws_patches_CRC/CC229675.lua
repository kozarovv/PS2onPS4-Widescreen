apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Seven Samurai 20XX (PAL-M5) (SLES-52348)
--comment=Widescreen Hack (16:9) by ElHecht

-- 16:9
eeObj.WriteMem32(0x001bce24,0x3c094455)
eeObj.WriteMem32(0x001bce5c,0x35235555)
end

emuObj.AddVsyncHook(widescreen)