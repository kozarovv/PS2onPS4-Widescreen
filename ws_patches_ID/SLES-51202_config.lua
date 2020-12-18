apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Wreckless - The Yakuza Missions (PAL-M3) (SLES-51202)
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x00147ca4,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)