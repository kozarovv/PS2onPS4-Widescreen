apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Harry Potter and the Goblet of Fire SLUS_213.25
--comment=Widescreen Hack
eeObj.WriteMem32(0x0029fd74,0x3c013fe3)
eeObj.WriteMem32(0x0029fd78,0x34218e39)
end

emuObj.AddVsyncHook(widescreen)