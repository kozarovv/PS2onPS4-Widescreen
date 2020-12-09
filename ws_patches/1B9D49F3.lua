apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack
eeObj.WriteMem32(0x0016ec34,0x3c023fe3)
eeObj.WriteMem32(0x0016ec38,0x34428e38)
end

emuObj.AddVsyncHook(widescreen)