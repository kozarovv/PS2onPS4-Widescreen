apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Legaia 2: Duel Saga SLUS 204.14
--comment=Widescreen Hack
eeObj.WriteMem32(0x0010fef0,0x3c013f40)
eeObj.WriteMem32(0x0010ff7c,0x3c013f40)
eeObj.WriteMem32(0x00156e2c,0x3c0143d5)
eeObj.WriteMem32(0x00156e14,0x3c01c3d5)
end

emuObj.AddVsyncHook(widescreen)