apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack
eeObj.WriteMem32(0x00146bc8,0x3c023f1f)
eeObj.WriteMem32(0x00146bd0,0x344249f9)
eeObj.WriteMem32(0x00146de4,0x3c023f1f)
eeObj.WriteMem32(0x00146dec,0x344249f9)
eeObj.WriteMem32(0x001e746c,0x3c044328)
end

emuObj.AddVsyncHook(widescreen)