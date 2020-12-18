apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack
eeObj.WriteMem32(0x0034AC20,0x3f533334)
end

emuObj.AddVsyncHook(widescreen)