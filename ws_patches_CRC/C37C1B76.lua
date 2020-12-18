apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Kaido Battle 2 - Chain Reaction [NTSC-J] (SLPM-65514)
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000)

eeObj.WriteMem32(0x00149200,0x3c023f40)
end

emuObj.AddVsyncHook(widescreen)