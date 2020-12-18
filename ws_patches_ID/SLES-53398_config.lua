apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Zombie Zone (PAL-E) (SLES-53398)
--comment=Widescreen Hack (16:9) by ElHecht

-- 16:9
eeObj.WriteMem32(0x001d0104,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)