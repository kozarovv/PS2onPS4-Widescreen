apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Mission Impossible - Operation Surma (U)(SLUS-20400)
--comment=Widescreen patch by Arapapa

-- 16:9 (0000803f 00000000 00000000 00000000 00000080)
eeObj.WriteMem32(0x00657E60,0x3F400000)
end

emuObj.AddVsyncHook(widescreen)