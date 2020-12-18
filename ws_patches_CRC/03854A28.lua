apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x00192b2c,0x3c014370)
eeObj.WriteMem32(0x00192b70,0x3c014020)


end

emuObj.AddVsyncHook(widescreen)