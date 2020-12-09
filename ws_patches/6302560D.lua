apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack
eeObj.WriteMem32(0x0037FA68,0x3Faaaaab)
end

emuObj.AddVsyncHook(widescreen)