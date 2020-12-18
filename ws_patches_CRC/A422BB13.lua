apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=DragonBall Z - Budokai Tenkaichi 3 SLES_549.45
--comment=Widescreen Hack
eeObj.WriteMem32(0x002ff8fc,0x3fe38e34)
eeObj.WriteMem32(0x00130d08,0x3c013f10)
end

emuObj.AddVsyncHook(widescreen)