apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=F1 Championship Season 2000 (E)(SLES-50017)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x001265b8,0x3c013fe3)
eeObj.WriteMem32(0x001265bc,0x34218e2a)
end

emuObj.AddVsyncHook(widescreen)