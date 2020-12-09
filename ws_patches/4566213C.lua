apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack

-- 16:9
eeObj.WriteMem32(0x0039e744,0x3c033f40)
eeObj.WriteMem32(0x0039e74c,0x4483f000)
eeObj.WriteMem32(0x0039e750,0x461ef143)
eeObj.WriteMem32(0x0039e754,0x4602f083)
eeObj.WriteMem32(0x0044c180,0x3f5eb852)
eeObj.WriteMem32(0x00166b50,0x3c054028)
eeObj.WriteMem32(0x00166b90,0x3c053ff0)

-- effects
eeObj.WriteMem32(0x00237914,0x3c014500)
eeObj.WriteMem32(0x0010fc60,0x3c023e80)
end

emuObj.AddVsyncHook(widescreen)