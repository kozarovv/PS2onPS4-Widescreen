apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Little Gaint

eeObj.WriteMem32(0x00262FE0,0x43870000)
eeObj.WriteMem32(0x001DECC4,0x3FEEEEEE)
end

emuObj.AddVsyncHook(widescreen)