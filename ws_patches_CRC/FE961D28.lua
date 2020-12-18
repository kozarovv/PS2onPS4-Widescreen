apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=DragonBall Z - Budokai Tenkaichi 2 SLUS_214.41
--comment=Widescreen Hack
eeObj.WriteMem32(0x0012ba08,0x3c013f10)
eeObj.WriteMem32(0x00386dc8,0x3FC71C55)
eeObj.WriteMem32(0x00386da4,0x3FC71C55)
eeObj.WriteMem32(0x00386dd8,0x4410553E)
eeObj.WriteMem32(0x00386da0,0x4410553E)
eeObj.WriteMem32(0x00386e00,0x4410553E)
eeObj.WriteMem32(0x00386df4,0x4410553E)
eeObj.WriteMem32(0x0025B694,0x3C013f40)
end

emuObj.AddVsyncHook(widescreen)