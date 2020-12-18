apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Freekstyle (K)(SLPM-64517)
--comment=Widescreen Hack (NTSC-K by Arapapa)

--Gameplay 16:9

eeObj.WriteMem32(0x00144474,0x3c023f40)
end

emuObj.AddVsyncHook(widescreen)