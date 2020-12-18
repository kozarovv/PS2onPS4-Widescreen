apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by No.47

eeObj.WriteMem32(0x001b08a4,0x3c01464F)

eeObj.WriteMem32(0x001b0a38,0x3c01464F)

eeObj.WriteMem32(0x001b0a58,0x3c013f9f)
eeObj.WriteMem32(0x001b0a5c,0x3421ea28)
end

emuObj.AddVsyncHook(widescreen)