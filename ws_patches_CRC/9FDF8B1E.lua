apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Dynasty Warriors 4: Xtreme Legends (SLKA-25085)
--comment=Widescreen hack by nemesis2000 (pnach by saltA)
eeObj.WriteMem32(0x0013a220,0x3c0243d6)
eeObj.WriteMem32(0x0018f460,0x3c023f2b)
end

emuObj.AddVsyncHook(widescreen)