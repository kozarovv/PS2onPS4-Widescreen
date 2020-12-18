apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Half-Life
--comment=Widescreen Hack
eeObj.WriteMem32(0x002aa91c,0x3c013fe3)
eeObj.WriteMem32(0x002aa920,0x34218e38)
eeObj.WriteMem32(0x002aa158,0x3c013f2b)
end

emuObj.AddVsyncHook(widescreen)