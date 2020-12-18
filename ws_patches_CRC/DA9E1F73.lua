apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Kelly Slater's Pro Surfer [PAL-M3-En-Fr-De] (SLES_512.01)
--comment=Widescreen hack by El_Patas

--Gameplay 16:9
eeObj.WriteMem32(0x0029FB58,0x3C01435F)
eeObj.WriteMem32(0x004ACD24,0x3FE38E39)
end

emuObj.AddVsyncHook(widescreen)