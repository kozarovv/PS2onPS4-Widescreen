apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by No.47
eeObj.WriteMem32(0x00500C14,0x3FC71C71)
eeObj.WriteMem32(0x00500C94,0x3FC71C71)
end

emuObj.AddVsyncHook(widescreen)