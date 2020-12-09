apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack
eeObj.WriteMem32(0x01019110,0x3F400000)
eeObj.WriteMem32(0x01019120,0x442b0000)
eeObj.WriteMem32(0x01019128,0x3Fab0000)
end

emuObj.AddVsyncHook(widescreen)