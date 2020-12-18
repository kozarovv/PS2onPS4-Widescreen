apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by No.47
eeObj.WriteMem32(0x00598A08,0x3FC71C71)
eeObj.WriteMem32(0x005995DC,0x3FC71C71)
eeObj.WriteMem32(0x00599664,0x3FC71C71)
eeObj.WriteMem32(0x0059CA10,0x3FC71C71)
end

emuObj.AddVsyncHook(widescreen)