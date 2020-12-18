apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Silpheed - The Lost Planet (PAL) (SLES_50193)
--comment=Widescreen hack by Arapapa

-- 16:9 (0000803f d7a3703f 0000f943)
eeObj.WriteMem32(0x00432848,0x3F400000)
end

emuObj.AddVsyncHook(widescreen)