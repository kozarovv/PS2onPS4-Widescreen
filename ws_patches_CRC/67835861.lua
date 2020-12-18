apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack
eeObj.WriteMem32(0x00323af4,0x3c033fab)
end

emuObj.AddVsyncHook(widescreen)