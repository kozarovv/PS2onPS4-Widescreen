apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Armored Core 3 SLUS_204.35
--comment=Widescreen Hack
eeObj.WriteMem32(0x00199924,0x3c013f22)
eeObj.WriteMem32(0x002c4be4,0x3c013f40)
eeObj.WriteMem32(0x004279EC,0x43f00000)
end

emuObj.AddVsyncHook(widescreen)