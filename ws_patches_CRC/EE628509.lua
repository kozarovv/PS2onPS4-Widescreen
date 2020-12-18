apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=TMNT2 Battle Nexus SLUS_209.81
--comment=Widescreen Hack
eeObj.WriteMem32(0x00234ca4,0x3c023f1e)
eeObj.WriteMem32(0x00234cb8,0x3c023fe3)
eeObj.WriteMem32(0x00234cc0,0x34428e38)
end

emuObj.AddVsyncHook(widescreen)