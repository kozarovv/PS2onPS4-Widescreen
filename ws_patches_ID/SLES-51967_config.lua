apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Need for Speed - Underground (PAL-M7) (SLES-51967)
--comment=Widescreen Hack
-- Added 16:10 support (ElHecht)

-- 16:9
eeObj.WriteMem32(0x00438adc,0x3f400000)
eeObj.WriteMem32(0x00438a14,0x3f400000)
eeObj.WriteMem32(0x004ff628,0x3f2aaaab)
eeObj.WriteMem32(0x004ff630,0x3f2aaaab)

-- 16:10
--eeObj.WriteMem32(0x00438adc,0x3f555555)
--eeObj.WriteMem32(0x00438a14,0x3f555555)
--eeObj.WriteMem32(0x004ff628,0x3f19999a)
--eeObj.WriteMem32(0x004ff630,0x3f19999a)
end

emuObj.AddVsyncHook(widescreen)