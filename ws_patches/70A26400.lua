apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack
eeObj.WriteMem32(0x00117104,0x3c013f22)
eeObj.WriteMem32(0x00203710,0x3fe38e39)
end

emuObj.AddVsyncHook(widescreen)