apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x0021e97c,0x3c013f40)
eeObj.WriteMem32(0x0021e990,0x4481f000)
eeObj.WriteMem32(0x0021e9a8,0x461ef743)
eeObj.WriteMem32(0x0021e9c0,0x461eef43)
eeObj.WriteMem32(0x0021ea78,0xe61e0120)
eeObj.WriteMem32(0x0021ebb0,0xe61d0158)
eeObj.WriteMem32(0x0021ebb4,0xe61d015c)

-- menu fix 
eeObj.WriteMem32(0x0021f164,0x46010a83)
eeObj.WriteMem32(0x0021f168,0x460a5340)
eeObj.WriteMem32(0x0021f174,0x3c013f40)
eeObj.WriteMem32(0x0021f178,0x4481f000)
eeObj.WriteMem32(0x0021f1a8,0x46005247)
eeObj.WriteMem32(0x0021f1ac,0x461e2103)
end

emuObj.AddVsyncHook(widescreen)