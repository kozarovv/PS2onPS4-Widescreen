apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack
eeObj.WriteMem32(0x003a83e0,0x43e00000)
eeObj.WriteMem32(0x003a8400,0x43e00000)
eeObj.WriteMem32(0x0048bfa8,0x3F400000)
end

emuObj.AddVsyncHook(widescreen)