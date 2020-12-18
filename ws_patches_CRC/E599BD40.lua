apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=WWE SmackDown vs. Raw 2011 (SLUS-21939)
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000)
eeObj.WriteMem32(0x0022ed0c,0x3c033f40)
end

emuObj.AddVsyncHook(widescreen)