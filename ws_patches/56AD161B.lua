apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack
eeObj.WriteMem32(0x001374c4,0x3c033f19)
eeObj.WriteMem32(0x001374c8,0x3463999a)
eeObj.WriteMem32(0x001374e4,0x3c0343f7)
end

emuObj.AddVsyncHook(widescreen)