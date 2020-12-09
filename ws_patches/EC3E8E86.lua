apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Paris-Dakar Rally (U)(SLUS-20324)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9
eeObj.WriteMem32(0x001ab57c,0x3c033f10)
eeObj.WriteMem32(0x0017beb0,0x3c023f10)
end

emuObj.AddVsyncHook(widescreen)