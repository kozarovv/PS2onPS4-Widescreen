apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=TMNT - Teenage Mutant Ninja Turtles (NTSC-U)
--comment=Widescreen Hack (16:9) by ElHecht
--
-- 16:9
eeObj.WriteMem32(0x0041e5f8,0x3c023fe3)
eeObj.WriteMem32(0x0041e5fc,0x34427fa9)
eeObj.WriteMem32(0x0041e65c,0x3c013f40)
eeObj.WriteMem32(0x0041e660,0x44816000)
end

emuObj.AddVsyncHook(widescreen)