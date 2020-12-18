apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by No.47
eeObj.WriteMem32(0x003B0400,0x3F400000)
eeObj.WriteMem32(0x003B0C20,0x3F400000)
eeObj.WriteMem32(0x003B1440,0x3F400000)
end

emuObj.AddVsyncHook(widescreen)