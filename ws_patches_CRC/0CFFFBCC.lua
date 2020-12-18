apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x0039f504,0x3c033f40)
eeObj.WriteMem32(0x0039f50c,0x4483f000)
eeObj.WriteMem32(0x0039f510,0x461ef143)
eeObj.WriteMem32(0x0039f514,0x4602f083)
eeObj.WriteMem32(0x0044cf30,0x3f5eb852)
eeObj.WriteMem32(0x00166ff0,0x3c054028)
eeObj.WriteMem32(0x00167030,0x3c053ff0)

-- 16:10
--eeObj.WriteMem32(0x0039f504,0x3c033f55)
--eeObj.WriteMem32(0x0039f508,0x34635555)
--eeObj.WriteMem32(0x0039f50c,0x4483f000)
--eeObj.WriteMem32(0x0039f510,0x461ef143)
--eeObj.WriteMem32(0x0039f514,0x4602f083)
--eeObj.WriteMem32(0x0039f578,0x3c05c000)
--eeObj.WriteMem32(0x0039f57c,0x44850000)
--eeObj.WriteMem32(0x0044cf30,0x3f777777)
--eeObj.WriteMem32(0x00166ff0,0x3c05403b)
--eeObj.WriteMem32(0x00167030,0x3c054006)

-- effects
eeObj.WriteMem32(0x002386d4,0x3c014500)
eeObj.WriteMem32(0x0010fc60,0x3c023e80)
end

emuObj.AddVsyncHook(widescreen)