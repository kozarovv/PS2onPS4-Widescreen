apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x002659d8,0x3c013f10)
eeObj.WriteMem32(0x001c8300,0x3c1b3f40)
eeObj.WriteMem32(0x001c8304,0x1060006d)
eeObj.WriteMem32(0x001c8308,0xae220044)
eeObj.WriteMem32(0x001c830c,0xc6200038)
eeObj.WriteMem32(0x001c8310,0x3c013f80)
eeObj.WriteMem32(0x001c8314,0x4481a000)
eeObj.WriteMem32(0x001c8318,0x46140032)
eeObj.WriteMem32(0x001c84bc,0x3c013f00)
eeObj.WriteMem32(0x001c84c0,0x4481a800)
eeObj.WriteMem32(0x001c84c4,0x4615ad00)
eeObj.WriteMem32(0x001c84c8,0x449bf000)
eeObj.WriteMem32(0x001c8504,0x461e0002)
eeObj.WriteMem32(0x001c8508,0x46150002)
eeObj.WriteMem32(0x001c850c,0x4600a583)
eeObj.WriteMem32(0x001c8510,0xe6200054)
eeObj.WriteMem32(0x001c8514,0x4600a807)
end

emuObj.AddVsyncHook(widescreen)