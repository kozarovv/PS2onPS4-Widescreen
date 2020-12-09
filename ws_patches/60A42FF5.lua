apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack

eeObj.WriteMem32(0x00527e14,0x3c013fe3)
eeObj.WriteMem32(0x00527e18,0x34218e34)

eeObj.WriteMem32(0x00527e14,0x3c013fe3)
eeObj.WriteMem32(0x00527e18,0x34218e34)
end

emuObj.AddVsyncHook(widescreen)