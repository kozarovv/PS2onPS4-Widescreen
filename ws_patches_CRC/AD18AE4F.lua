apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Predator Concrete Jungle SLES_530.91
--comment=Widescreen Hack
eeObj.WriteMem32(0x0035d1c4,0x3c013f10)
end

emuObj.AddVsyncHook(widescreen)