apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Momotarou Dentetsu 16 - Hokkaido Dai Idou no Kan (J)(SLPM-62750)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--5555953f db0f4940
eeObj.WriteMem32(0x003b83f0,0x3FC71C76)
end

emuObj.AddVsyncHook(widescreen)