apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Kurogane no Houkou 2 - Warship Gunner (J)(SLPM-65267)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--2044023c 00608244 f043023c
eeObj.WriteMem32(0x00279684,0x3c024455)
end

emuObj.AddVsyncHook(widescreen)