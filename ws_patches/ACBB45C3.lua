apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Juuni Kokuki - Kakukakutaru Oudou, Kouryoku no Uka (J)(SLPM-65596)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x002a0570,0x3c03bf40)
end

emuObj.AddVsyncHook(widescreen)