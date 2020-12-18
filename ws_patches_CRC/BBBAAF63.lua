apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Xenosaga Episode II: Jenseits von Gut und Böse (Disc 1) (SLUS-20892) / Xenosaga Episode II: Jenseits von Gut und Böse (Disc 2) (PAL)
--comment=Widescreen hack

--gameplay
eeObj.WriteMem32(0x00694790,0x4182e8ba)
end

emuObj.AddVsyncHook(widescreen)