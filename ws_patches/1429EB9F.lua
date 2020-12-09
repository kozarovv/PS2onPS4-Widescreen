apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=16:9 widescreen hack
--16:9 widescreen hack by 99skull
eeObj.WriteMem32(0x0014CB88,0x3C013F2A)
eeObj.WriteMem32(0x0014CBC0,0x44819800)
eeObj.WriteMem32(0x0014CBCC,0x46009802)
eeObj.WriteMem32(0x0014CD68,0x3C053FAA)
end

emuObj.AddVsyncHook(widescreen)