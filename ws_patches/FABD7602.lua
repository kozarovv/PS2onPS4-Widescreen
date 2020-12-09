apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=SuperDragonBall Z SLUS_214.42
--comment=Widescreen Hack
eeObj.WriteMem32(0x002b12d4,0x3c023f10)
end

emuObj.AddVsyncHook(widescreen)