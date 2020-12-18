apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack
eeObj.WriteMem32(0x003DD108,0x3F19999A)
end

emuObj.AddVsyncHook(widescreen)