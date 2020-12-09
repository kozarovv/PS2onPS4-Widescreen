apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack
eeObj.WriteMem32(0x001CAADC,0x3F2AAAAB)
end

emuObj.AddVsyncHook(widescreen)