apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Little Giant

--16:9
eeObj.WriteMem32(0x00025555,0x00A97474)
eeObj.WriteMem32(0x00A6707C,0x3C013F40)
eeObj.WriteMem32(0x00A97474,0x44C71C71)
end

emuObj.AddVsyncHook(widescreen)