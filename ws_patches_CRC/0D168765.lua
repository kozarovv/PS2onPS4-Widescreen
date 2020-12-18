apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack
eeObj.WriteMem32(0x002B5880,0x43f00000)
eeObj.WriteMem32(0x001b4508,0x3c013f40)
eeObj.WriteMem32(0x001c54e4,0x3c013f40)
eeObj.WriteMem32(0x001c5614,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)