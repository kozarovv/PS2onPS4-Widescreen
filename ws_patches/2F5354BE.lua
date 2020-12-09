apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack
eeObj.WriteMem32(0x00154984,0x3C023F40)
end

emuObj.AddVsyncHook(widescreen)