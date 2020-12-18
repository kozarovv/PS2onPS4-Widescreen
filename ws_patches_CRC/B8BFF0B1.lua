apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Armored Core - Silent Line SLUS_206.44
--comment=Widescreen Hack
eeObj.WriteMem32(0x001241e8,0x3c013f22)
eeObj.WriteMem32(0x0027693c,0x3c013f40)
eeObj.WriteMem32(0x0034B36C,0x43F00000)
end

emuObj.AddVsyncHook(widescreen)