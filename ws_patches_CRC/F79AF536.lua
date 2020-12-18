apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Resident Evil - Dead Aim (PAL-M5) (SLES-51448)
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x00233368,0x3c1943f0)
eeObj.WriteMem32(0x0023336c,0x46021003)
eeObj.WriteMem32(0x0023339c,0xac99000c)

-- Ammo Cheat
-- eeObj.WriteMem32(0x00252b68,0x0000000F)
-- eeObj.WriteMem32(0x002deadc,0x0000000F)
end

emuObj.AddVsyncHook(widescreen)