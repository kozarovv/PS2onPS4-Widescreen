apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Skyscraper (E)(SLES-55152)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x0025c240,0x3c013fab)

end

emuObj.AddVsyncHook(widescreen)