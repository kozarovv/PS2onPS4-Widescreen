apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Need for Speed - ProStreet (NTSC-U)
--comment=Widescreen Hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x0068CAD0,0x3f400000)
eeObj.WriteMem32(0x00685938,0x3f2aaaab)
end

emuObj.AddVsyncHook(widescreen)