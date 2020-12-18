apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Magna Carta - Tears of Blood (K) (SCKA_20043)
--comment=Widescreen Hack by ElHecht (NTSC-K by Arapapa)

--16:9 (b002a427 00608044 803f023c 00688244 00000000 86630046 30c2050c)
eeObj.WriteMem32(0x002bdae8,0x3c023f40)
end

emuObj.AddVsyncHook(widescreen)