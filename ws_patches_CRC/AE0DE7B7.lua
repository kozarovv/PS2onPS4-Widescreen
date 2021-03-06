apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Shin Megami Tensei - Lucifer's Call (SLES-53363) (CRC-AE0DE7B7)
--comment=Widescreen Hack (16:9)
--
-- 16:9 (50Hz)
--eeObj.WriteMem32(0x002fd2b4,0x3fe38e38)
--eeObj.WriteMem32(0x002fd654,0x3fe38e38)
-- 16:9 (60Hz)
eeObj.WriteMem32(0x002fd2b4,0x3fc30000)
eeObj.WriteMem32(0x002fd654,0x3fc30000)

--Optional shadow alpha hack
----comment=Shadow Override (Krisan Thyme)
--eeObj.WriteMem32(0x00303680,0x00000000)
--eeObj.WriteMem32(0x00303684,0x00000000)
--eeObj.WriteMem32(0x00303688,0x00000000)
--eeObj.WriteMem32(0x0030368C,0x00000000)
--eeObj.WriteMem32(0x00303690,0x00000000)
--eeObj.WriteMem32(0x00303694,0x00000000)
--eeObj.WriteMem32(0x00303698,0x00000000)
--eeObj.WriteMem32(0x0030369C,0x00000000)
--eeObj.WriteMem32(0x003036A0,0x00000000)
--eeObj.WriteMem32(0x003036A4,0x00000000)
--eeObj.WriteMem32(0x003036A8,0x00000000)
--eeObj.WriteMem32(0x003036AC,0x00000000)
--eeObj.WriteMem32(0x003036B0,0x00000000)
--eeObj.WriteMem32(0x003036B4,0x00000000)
--eeObj.WriteMem32(0x003036B8,0x00000000)
--eeObj.WriteMem32(0x003036BC,0x00000000)
--eeObj.WriteMem32(0x003036C0,0x00000000)
--eeObj.WriteMem32(0x003036C4,0x00000000)
--eeObj.WriteMem32(0x003036C8,0x00000000)
--eeObj.WriteMem32(0x003036CC,0x00000000)
--eeObj.WriteMem32(0x003036D0,0x00000000)
--eeObj.WriteMem32(0x003036D4,0x00000000)
--eeObj.WriteMem32(0x003036D8,0x00000000)
--eeObj.WriteMem32(0x003036DC,0x00000000)
--eeObj.WriteMem32(0x003036E0,0x00000000)
--eeObj.WriteMem32(0x003036E4,0x00000000)
--eeObj.WriteMem32(0x003036E8,0x00000000)
--eeObj.WriteMem32(0x003036EC,0x00000000)
--eeObj.WriteMem32(0x003036F0,0x00000000)
--eeObj.WriteMem32(0x003036F4,0x00000000)
--eeObj.WriteMem32(0x003036F8,0x00000000)
--eeObj.WriteMem32(0x003036FC,0x00000000)
end

emuObj.AddVsyncHook(widescreen)