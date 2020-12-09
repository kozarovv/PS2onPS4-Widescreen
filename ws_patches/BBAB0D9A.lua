apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Lethal Skies Elite Pilot: Team SW [PAL] (SLES_508.92)
--comment=Widescreen pnach by El_Patas

--Gameplay 16:9
eeObj.WriteMem32(0x0014E450,0x3C0143C0)
eeObj.WriteMem32(0x001006D4,0x3C0143B4)
end

emuObj.AddVsyncHook(widescreen)