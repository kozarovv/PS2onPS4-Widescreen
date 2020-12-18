apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack
eeObj.WriteMem32(0x00269E60,0xBFAAAAAA)
end

emuObj.AddVsyncHook(widescreen)