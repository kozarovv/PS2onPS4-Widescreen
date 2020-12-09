apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack
eeObj.WriteMem32(0x00151e44,0x3c023ec0)
end

emuObj.AddVsyncHook(widescreen)