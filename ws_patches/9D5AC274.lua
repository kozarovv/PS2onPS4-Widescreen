apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=WWE SmackDown vs. Raw 2007 (SLUS-21427)
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000 )
eeObj.WriteMem32(0x002b1ac8,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)