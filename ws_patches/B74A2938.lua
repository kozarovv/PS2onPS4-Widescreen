apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Disney Stitch: Experiment 626 [PAL-M2] [Esp-Por] (SCES_509.59)
--comment=Widescreen Hack by El_Patas

--Zoom 16:9
eeObj.WriteMem32(0x00236AE4,0x3C023F1E)

--Y-FOV 16:9
eeObj.WriteMem32(0x00236F34,0x3C03BFAC)
end

emuObj.AddVsyncHook(widescreen)