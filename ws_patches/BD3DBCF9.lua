apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Dynasty Warriors 4: Empires (SLUS-20938)
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000 )
eeObj.WriteMem32(0x00139b54,0x3c0243d6)
eeObj.WriteMem32(0x00188da0,0x3c023f2b)
end

emuObj.AddVsyncHook(widescreen)