apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Oni (SLES-50176)
--comment=Widescreen Hack by Catarax
eeObj.WriteMem32(0x001346f8,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)