apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Little Gaint

eeObj.WriteMem32(0x00118e34,0x3c024408)
eeObj.WriteMem32(0x002CBDEC,0x3F9F3B64)
end

emuObj.AddVsyncHook(widescreen)