apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Bomberman Kart (J)(SLPM-62118)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov 

--803f033c aa3f033c aaaa6334
eeObj.WriteMem32(0x00155c38,0x3c033fab)
--eeObj.WriteMem32(0x001563dc,0x3c033fab)
end

emuObj.AddVsyncHook(widescreen)