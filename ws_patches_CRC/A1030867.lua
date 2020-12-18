apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Star Wars - Bounty Hunter SLUS_204.20
--comment=Widescreen Hack
eeObj.WriteMem32(0x004509E0,0x3F400000)
--204509f8  bf800000  zoom
--20450a04  3f800000  vert -
eeObj.WriteMem32(0x003CD7D0,0x3Fb00000)
end

emuObj.AddVsyncHook(widescreen)