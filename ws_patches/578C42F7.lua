apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack
eeObj.WriteMem32(0x002ab418,0x3c013f40)
eeObj.WriteMem32(0x00152e5c,0x3c013f25)
end

emuObj.AddVsyncHook(widescreen)