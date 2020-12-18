apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Teenage Mutant Ninja Turtles 2 - Battle Nexus (PAL-M5) (SLES-53017)
--comment=Widescreen Hack (16:9) by ElHecht
--
-- 16:9
eeObj.WriteMem32(0x00234710,0x460d6302)
eeObj.WriteMem32(0x00234714,0x460d6b42)
end

emuObj.AddVsyncHook(widescreen)