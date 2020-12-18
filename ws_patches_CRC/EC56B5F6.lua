apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Bomberman Kart (PAL)(SLES-51302)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9
eeObj.WriteMem32(0x0014e3f8,0x3c033fab)
--eeObj.WriteMem32(0x0014ed40,0x3c033fab)
end

emuObj.AddVsyncHook(widescreen)