apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Little Gaint

eeObj.WriteMem32(0x007E219C,0x3F533334)
end

emuObj.AddVsyncHook(widescreen)