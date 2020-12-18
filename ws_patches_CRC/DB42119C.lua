apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=TMNT 3 Mutant Nightmare SLUS_211.84
--comment=Widescreen Hack
eeObj.WriteMem32(0x0028fd80,0x3c023f1e)
eeObj.WriteMem32(0x0028fdb0,0x3c023fe3)
eeObj.WriteMem32(0x0028fdb8,0x34428e38)
end

emuObj.AddVsyncHook(widescreen)