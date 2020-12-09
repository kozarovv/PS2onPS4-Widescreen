apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack
eeObj.WriteMem32(0x002fe4cc,0x3fc70fb6)
eeObj.WriteMem32(0x002fe594,0x43c70fb6)
eeObj.WriteMem32(0x00130bf0,0x3c013f10)
end

emuObj.AddVsyncHook(widescreen)