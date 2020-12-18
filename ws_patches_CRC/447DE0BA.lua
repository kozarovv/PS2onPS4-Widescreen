apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack
eeObj.WriteMem32(0x001125C8,0x3C033FAA)
end

emuObj.AddVsyncHook(widescreen)