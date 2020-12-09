apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=shin sangokumusou 4 xtreme legends
--comment=widescreen hack
eeObj.WriteMem32(0x001472ac,0x3c0243d6)
eeObj.WriteMem32(0x0019824c,0x3c023f2b)

end

emuObj.AddVsyncHook(widescreen)