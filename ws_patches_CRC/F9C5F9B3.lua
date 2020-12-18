apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Tengai Makyou II - Manji Maru (Tsujyo Level Shiyou) (J)(SLPM-65401) and (SLPM-65402)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x00141b00,0x3c02bf40)
end

emuObj.AddVsyncHook(widescreen)