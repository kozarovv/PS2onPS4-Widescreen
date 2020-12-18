apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack
eeObj.WriteMem32(0x0013f45c,0x3c0142ae)
eeObj.WriteMem32(0x0021ef9c,0x3c013b36)
eeObj.WriteMem32(0x0021efa0,0x342103ce)
end

emuObj.AddVsyncHook(widescreen)