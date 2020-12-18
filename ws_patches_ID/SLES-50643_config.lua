apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Shifters (PAL-M2) (SLES-50643)
--comment=Widescreen Hack by ElHecht
--
-- 16:9 
eeObj.WriteMem32(0x003d71e4,0x080f40b3)
eeObj.WriteMem32(0x003d71e8,0x00000000)

eeObj.WriteMem32(0x003d02cc,0x3c013f40)
eeObj.WriteMem32(0x003d02d0,0x4481f000)
eeObj.WriteMem32(0x003d02d4,0x461e2102)
eeObj.WriteMem32(0x003d02d8,0xe4840000)
eeObj.WriteMem32(0x003d02dc,0xe4850010)
eeObj.WriteMem32(0x003d02e0,0x080f5c7a)
end

emuObj.AddVsyncHook(widescreen)