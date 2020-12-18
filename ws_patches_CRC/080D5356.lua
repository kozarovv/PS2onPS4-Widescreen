apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack
eeObj.WriteMem32(0x002b4904,0x3c01bf22)
eeObj.WriteMem32(0x002bce28,0x3c013f22)
end

emuObj.AddVsyncHook(widescreen)