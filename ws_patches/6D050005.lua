apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x0024f4ac,0x3c013fa5)
eeObj.WriteMem32(0x00251bf8,0x3c013ec6)
end

emuObj.AddVsyncHook(widescreen)