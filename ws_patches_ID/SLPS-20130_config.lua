apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Shin Best Play Pro Yakyuu (J)(SLPS-20130)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x00255658,0x3c063f40)
end

emuObj.AddVsyncHook(widescreen)