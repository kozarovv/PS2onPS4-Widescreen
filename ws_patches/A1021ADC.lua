apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Dynasty Warriors 3 (PAL-M3) (SLES-50641)
--comment=Widescreen Hack (16:9) by ElHecht
--
-- 16:9
eeObj.WriteMem32(0x002f42c8,0x3fa00000)
eeObj.WriteMem32(0x002f42d4,0x3faaaaab)
eeObj.WriteMem32(0x00261e84,0x3c023f40)
eeObj.WriteMem32(0x001778d0,0x3c023f20)
end

emuObj.AddVsyncHook(widescreen)