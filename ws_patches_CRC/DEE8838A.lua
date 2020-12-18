apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Momotarou Dentetsu 15 - Godai Bonbi Toujo! no Kan (J)(SLPM-62702)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--aaaaaa3f db0f4940
eeObj.WriteMem32(0x00390178,0x3fe38e38)
end

emuObj.AddVsyncHook(widescreen)