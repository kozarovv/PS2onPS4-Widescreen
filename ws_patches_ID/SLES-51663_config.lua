apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Dynasty Warriors 4 (PAL-G) (SLES-51663)
--comment=Widescreen Hack (16:9) by ElHecht
--
-- 16:9
eeObj.WriteMem32(0x00137060,0x3c0243b4)
eeObj.WriteMem32(0x00137110,0x3c0243f0)
eeObj.WriteMem32(0x00264114,0x3c023f40)
eeObj.WriteMem32(0x00183d30,0x3c023f18)
end

emuObj.AddVsyncHook(widescreen)