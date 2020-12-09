apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by No.47
eeObj.WriteMem32(0x004588D0,0x3F400000)
eeObj.WriteMem32(0x00459140,0x3F400000)
eeObj.WriteMem32(0x004599B0,0x3F400000)
eeObj.WriteMem32(0x0045A220,0x3F400000)
end

emuObj.AddVsyncHook(widescreen)