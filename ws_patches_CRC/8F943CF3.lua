apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Crash Nitro Kart (SLUS-20649)
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000 )
eeObj.WriteMem32(0x0058bcf8,0x3c023f17)
end

emuObj.AddVsyncHook(widescreen)