apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Devil May Cry 3 (PAL-M5) (SLES-53038) Widescreen Hack (16:9) by ElHecht
eeObj.WriteMem32(0x01CB2A90,0x3F400000)
end

emuObj.AddVsyncHook(widescreen)