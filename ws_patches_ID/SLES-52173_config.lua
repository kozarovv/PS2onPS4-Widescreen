apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Dynasty Warriors 4 - Xtreme Legends (PAL-G) (SLES-52173)
--comment=Widescreen Hack (16:9) by ElHecht
--
-- 16:9
eeObj.WriteMem32(0x00139a00,0x3c0243b4)
eeObj.WriteMem32(0x00139ab0,0x3c0243f0)
eeObj.WriteMem32(0x002742a4,0x3c023f40)
eeObj.WriteMem32(0x0018e520,0x3c023f15)
end

emuObj.AddVsyncHook(widescreen)