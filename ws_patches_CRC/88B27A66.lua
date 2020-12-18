apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000 )
eeObj.WriteMem32(0x0014708c,0x3c0243d6)
eeObj.WriteMem32(0x0019fb2c,0x3c023f2b)
end

emuObj.AddVsyncHook(widescreen)