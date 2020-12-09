apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Indiana Jones and the Emperor's Tomb (PAL-E) (SLES-50836)
--comment=Widescreen Hack (16:9) by ElHecht

-- 16:9
eeObj.WriteMem32(0x0011cf0c,0x3c013f24)
eeObj.WriteMem32(0x0011cf10,0x34216666)
end

emuObj.AddVsyncHook(widescreen)