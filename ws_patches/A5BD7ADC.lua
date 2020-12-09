apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Bomberman Land 3 (J)(SLPM_62643)
--comment=Widescreen Hack by gamemasterplc

eeObj.WriteMem32(0x001327D8,0x3C054455)
end

emuObj.AddVsyncHook(widescreen)