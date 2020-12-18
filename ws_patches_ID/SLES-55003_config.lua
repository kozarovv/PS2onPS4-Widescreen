apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Need for Speed - ProStreet (PAL-M2) (SLES-55003)
--comment=Widescreen Hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x00682bd4,0x3f400000)
eeObj.WriteMem32(0x00682bec,0x3f400000)
eeObj.WriteMem32(0x00685c38,0x3f2aaaab)

-- 16:10
--eeObj.WriteMem32(0x00682bd4,0x3f555555)
--eeObj.WriteMem32(0x00682bec,0x3f555555)
--eeObj.WriteMem32(0x00685c38,0x3f19999a)
end

emuObj.AddVsyncHook(widescreen)