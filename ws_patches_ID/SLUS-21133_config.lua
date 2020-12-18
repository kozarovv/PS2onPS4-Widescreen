apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Xenosaga Episode II: Jenseits von Gut und Böse (Disc 1) (SLUS-20892) / Xenosaga Episode II: Jenseits von Gut und Böse (Disc 2) (SLUS-21133)
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000)

--gameplay
eeObj.WriteMem32(0x0069B784,0x4182e8ba)
end

emuObj.AddVsyncHook(widescreen)