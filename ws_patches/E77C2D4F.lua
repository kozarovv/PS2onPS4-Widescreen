apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Uo-7-tsu no Mizu to Densetsu no Nushi (J)(SCPS-15069)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--b63f023c 6edb4234 00608244 (1st)
eeObj.WriteMem32(0x00184640,0x3c023ff3)
eeObj.WriteMem32(0x00184644,0x3442cf9a)
end

emuObj.AddVsyncHook(widescreen)