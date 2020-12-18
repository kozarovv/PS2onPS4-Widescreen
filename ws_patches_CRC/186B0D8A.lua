apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x003bfaf8,0x3c013f40)
eeObj.WriteMem32(0x003bfb08,0x4481f000)
eeObj.WriteMem32(0x003bfbd4,0x461e0303)
eeObj.WriteMem32(0x0040bc14,0x461e0303)
eeObj.WriteMem32(0x00234dd8,0x461e0502)
eeObj.WriteMem32(0x002353b0,0x461e0502)
eeObj.WriteMem32(0x002352cc,0x461e0003)
eeObj.WriteMem32(0x0027c398,0x24020003)
end

emuObj.AddVsyncHook(widescreen)