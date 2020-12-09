apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by El_Patas (NTSC-K by Arapapa)

--Gameplay 16:9

eeObj.WriteMem32(0x0014e438,0x3c0143c0)
eeObj.WriteMem32(0x001004b0,0x3c0143b4)
end

emuObj.AddVsyncHook(widescreen)