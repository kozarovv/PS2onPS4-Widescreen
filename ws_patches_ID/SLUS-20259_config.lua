apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Wizardry Tale of the Forsaken Land SLUS_202.59
--comment=Widescreen Hack
eeObj.WriteMem32(0x00119d1c,0x3c0143d5)
end

emuObj.AddVsyncHook(widescreen)