apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Genji - Dawn of the Samurai SCUS-97471
--comment=Widescreen Hack
eeObj.WriteMem32(0x002e1070,0x3c014455)

--FMV fix by Arapapa
--e043013c 00608144 00108244
eeObj.WriteMem32(0x002c6754,0x3c0143a8)
end

emuObj.AddVsyncHook(widescreen)