apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=LEGO Star Wars II - The Original Trilogy (U)(SLUS-21409)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x00352de8,0x3c013f10)
eeObj.WriteMem32(0x0012a250,0x3c013fab)
eeObj.WriteMem32(0x00174f0c,0x3c013f40)
eeObj.WriteMem32(0x00174f88,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)