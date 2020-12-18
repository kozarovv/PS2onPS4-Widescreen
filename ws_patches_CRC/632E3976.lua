apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack
--16:9
eeObj.WriteMem32(0x00492F88,0x3FAB851F)
end

emuObj.AddVsyncHook(widescreen)