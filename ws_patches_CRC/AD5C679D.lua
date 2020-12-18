apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Real Sports Pro Yakyuu (J)(SLPS-20305)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x0011fa10,0x3c033f29)
end

emuObj.AddVsyncHook(widescreen)