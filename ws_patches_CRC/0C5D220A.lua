apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack
eeObj.WriteMem32(0x002f7110,0x44c00000)
end

emuObj.AddVsyncHook(widescreen)