apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Lupin Sansei - Lupin ni wa Shi o, Zenigata ni wa Koi o (SLPS-25740)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--803f023c 00008244 00000000 43000146
eeObj.WriteMem32(0x0035c5b4,0x3c023fab)
end

emuObj.AddVsyncHook(widescreen)