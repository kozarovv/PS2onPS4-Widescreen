apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa
 
--Gameplay 16:9

eeObj.WriteMem32(0x0020c8dc,0x3c013fe3)
eeObj.WriteMem32(0x0020c8e0,0x34218e2a)

eeObj.WriteMem32(0x0021438c,0x3c013fab)
end

emuObj.AddVsyncHook(widescreen)