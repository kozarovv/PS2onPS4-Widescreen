apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Musashi - Samurai Legend (PAL-M5) (SLES-53521)
--comment=Widescreen Hack (16:9)
-- values by sergx12
-- ported to PAL, updated to ELF addresses by ElHecht
eeObj.WriteMem32(0x00119344,0x3c013f19)
eeObj.WriteMem32(0x00119348,0x3421999a)
end

emuObj.AddVsyncHook(widescreen)