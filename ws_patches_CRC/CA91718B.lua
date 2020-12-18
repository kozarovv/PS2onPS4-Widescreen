apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Jade Cocoon 2 SLUS_203.09
--comment=Widescreen Hack
eeObj.WriteMem32(0x01E2EDCC,0x3F400000)
end

emuObj.AddVsyncHook(widescreen)