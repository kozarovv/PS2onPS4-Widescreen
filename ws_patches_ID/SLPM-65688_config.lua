apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Berserk - Millennium Falcon Hen Seima Senki no Shou (J)(SLPM-65688)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov 
--4c3f033c 703f023c cdcc6334 (3rd)
eeObj.WriteMem32(0x00239aac,0x3c033f19)
eeObj.WriteMem32(0x00239ab4,0x3463999a)
end

emuObj.AddVsyncHook(widescreen)