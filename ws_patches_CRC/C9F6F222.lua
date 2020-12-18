apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Bloody Roar 4 (SLUS-20795)
--comment=Widescreen patch 16:9 by paul_met
eeObj.WriteMem32(0x00115768,0x3c013fe3)
end

emuObj.AddVsyncHook(widescreen)