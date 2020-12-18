apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=NHL Hitz Pro (PAL-E) (SLES-51840)
--comment=Widescreen Hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x003f4d14,0x3f100000)

-- 16:10
--eeObj.WriteMem32(0x003f4d14,0x3f200000)
end

emuObj.AddVsyncHook(widescreen)