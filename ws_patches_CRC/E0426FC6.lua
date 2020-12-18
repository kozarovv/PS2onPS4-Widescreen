apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Okage Shadow King SCUS_971.29
--comment=Widescreen Hack
eeObj.WriteMem32(0x001FE2E4,0x3F400000)
end

emuObj.AddVsyncHook(widescreen)