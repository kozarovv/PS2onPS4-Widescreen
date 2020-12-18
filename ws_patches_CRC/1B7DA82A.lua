apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack
eeObj.WriteMem32(0x002d8c00,0x3c013fe3)
eeObj.WriteMem32(0x002d8c04,0x34218e38)
end

emuObj.AddVsyncHook(widescreen)