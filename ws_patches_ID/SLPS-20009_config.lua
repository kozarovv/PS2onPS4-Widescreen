apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Golf Paradise (J)(SLPS-20009)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x00338DA0,0x3f400000)
end

emuObj.AddVsyncHook(widescreen)