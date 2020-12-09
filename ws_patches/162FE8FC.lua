apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Little Gaint

eeObj.WriteMem32(0x00118e00,0x3c013fe3)
eeObj.WriteMem32(0x00118e04,0x3421e838)
end

emuObj.AddVsyncHook(widescreen)