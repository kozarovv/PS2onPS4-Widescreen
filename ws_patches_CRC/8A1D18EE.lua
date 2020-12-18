apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by El_Patas (NTSC-U by Arapapa)

--Gameplay 16:9
eeObj.WriteMem32(0x00741A54,0x3FE38E38)
end

emuObj.AddVsyncHook(widescreen)