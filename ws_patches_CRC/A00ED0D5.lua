apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=WWE SmackDown vs. Raw 2010 (SLUS-21901)
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000)
eeObj.WriteMem32(0x002d97bc,0x3c033f40)
end

emuObj.AddVsyncHook(widescreen)