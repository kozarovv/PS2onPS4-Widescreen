apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Flipnic Ultimate Pinball SLUS_211.57
--comment=Widescreen Hack
eeObj.WriteMem32(0x001865d8,0x3c043f40)
eeObj.WriteMem32(0x001869ac,0x3c023fab)
end

emuObj.AddVsyncHook(widescreen)