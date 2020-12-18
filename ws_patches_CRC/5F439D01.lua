apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack
eeObj.WriteMem32(0x00218700,0x3c014455)
eeObj.WriteMem32(0x00218718,0x3c013ac8)
end

emuObj.AddVsyncHook(widescreen)