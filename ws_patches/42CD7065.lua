apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Magna Carta - Les Larmes de Sang - Widescreen Hack (16:9) (PAL-FR) By Bigdemon

--16:9
eeObj.WriteMem32(0x002bd228,0x3c023f40)
end

emuObj.AddVsyncHook(widescreen)