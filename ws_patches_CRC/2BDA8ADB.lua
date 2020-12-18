apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by ElHecht

-- 16:9 single player mode
eeObj.WriteMem32(0x001d87b8,0x3c013fe3)
eeObj.WriteMem32(0x001d87bc,0x34218e39)
eeObj.WriteMem32(0x003327f0,0x3c013fe3)
eeObj.WriteMem32(0x003327f4,0x34218e39)
end

emuObj.AddVsyncHook(widescreen)