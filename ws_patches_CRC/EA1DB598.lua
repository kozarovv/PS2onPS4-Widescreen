apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Simple 2000 Series Ultimate Vol.03 - Saisoku! Zokusha King - Buchigiri Densetsu (J)(SLPM-62224)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x00192114,0x3f400000)
end

emuObj.AddVsyncHook(widescreen)