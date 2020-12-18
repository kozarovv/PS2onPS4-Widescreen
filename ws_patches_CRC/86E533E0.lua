apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack
eeObj.WriteMem32(0x0019ddc8,0x3c023fef)
eeObj.WriteMem32(0x00345450,0x3f400000)
--60hz
eeObj.WriteMem32(0x0018a9d0,0x3c033fe5)
eeObj.WriteMem32(0x0018a9d8,0x34637d41)
--50hz
--eeObj.WriteMem32(0x0018aa58,0x3c033fee)
--eeObj.WriteMem32(0x0018aa5c,0x3464dfa4)
end

emuObj.AddVsyncHook(widescreen)