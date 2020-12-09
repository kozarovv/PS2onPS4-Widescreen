apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=NBA Live 2003 (E)(SLES-51198).
--comment=Widescreen hack by Arapapa
 
--Gameplay 16:9

eeObj.WriteMem32(0x0020c9dc,0x3c013fe3)
eeObj.WriteMem32(0x0020c9e0,0x34218e2a)

eeObj.WriteMem32(0x0021448c,0x3c013fab)
end

emuObj.AddVsyncHook(widescreen)