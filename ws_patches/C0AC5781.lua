apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Magna Carta - Tears of Blood - Widescreen Hack (16:9) (NTSC-U)

--16:9 (b002a427 00608044 803f023c 00688244 00000000 86630046 30c2050c)
eeObj.WriteMem32(0x002bd948,0x3c023f40)
end

emuObj.AddVsyncHook(widescreen)