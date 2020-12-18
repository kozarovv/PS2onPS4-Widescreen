apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Ace Combat 04: Shattered Skies (SLUS-20152)
--comment=Widescreen fix by nemesis2000 (pnach by nemesis2000)

--widescreen fix
eeObj.WriteMem32(0x0040DACC,0x441CF7AE)
end

emuObj.AddVsyncHook(widescreen)