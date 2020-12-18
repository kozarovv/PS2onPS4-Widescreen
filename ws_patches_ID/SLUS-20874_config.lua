apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=DragonBall Z - Sagas  SLUS_208.74
--comment=Widescreen Hack
eeObj.WriteMem32(0x005F474C,0x3Fe38e38)
eeObj.WriteMem32(0x005F4860,0x3F031c93)
eeObj.WriteMem32(0x005F4880,0xbF031c93)
end

emuObj.AddVsyncHook(widescreen)