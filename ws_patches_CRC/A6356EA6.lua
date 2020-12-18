apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Seven Samurai 20XX (U) (SLUS_206.21)
--comment=Widescreen Hack (16:9) by ElHecht (pnach by Arapapa)

-- 16:9
eeObj.WriteMem32(0x001bcdd4,0x3c094455)
eeObj.WriteMem32(0x001bce0c,0x35235555)
end

emuObj.AddVsyncHook(widescreen)