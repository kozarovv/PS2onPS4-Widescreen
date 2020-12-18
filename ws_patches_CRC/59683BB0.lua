apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Death by Degrees (PAL-M2) (SCES-53054) Widescreen Hack (16:9) by ElHecht
--
-- Gameplay
eeObj.WriteMem32(0x00188170,0x3C023FE3)
eeObj.WriteMem32(0x00188178,0x34438E38)
-- Cut-Scenes
eeObj.WriteMem32(0x00185f8c,0x3C023FE3)
eeObj.WriteMem32(0x00185f90,0x34438E38)
end

emuObj.AddVsyncHook(widescreen)