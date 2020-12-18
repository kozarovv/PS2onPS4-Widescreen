apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x00251140,0x3c013fe3)
eeObj.WriteMem32(0x00251144,0x34218e38)
end

emuObj.AddVsyncHook(widescreen)