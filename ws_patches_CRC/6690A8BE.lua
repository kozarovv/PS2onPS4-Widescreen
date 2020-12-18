apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack
eeObj.WriteMem32(0x006128a0,0x3CBE95ED)
eeObj.WriteMem32(0x006128a4,0x3Fe38e38)
end

emuObj.AddVsyncHook(widescreen)