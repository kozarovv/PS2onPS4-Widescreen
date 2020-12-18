apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack (NTSC-U by Arapapa)

--Gameplay 16:9

eeObj.WriteMem32(0x002e38d8,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)