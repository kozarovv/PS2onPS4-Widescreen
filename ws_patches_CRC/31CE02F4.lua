apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack
eeObj.WriteMem32(0x0048e2f0,0x43ab0000)
eeObj.WriteMem32(0x0048e2f8,0x3f400000)
eeObj.WriteMem32(0x0048e304,0x442b0000)
end

emuObj.AddVsyncHook(widescreen)