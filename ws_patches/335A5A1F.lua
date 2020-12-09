apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x001363c4,0x3c1b3f40)
eeObj.WriteMem32(0x001363d4,0x449b4800)
eeObj.WriteMem32(0x00136400,0x3c1b004b)
eeObj.WriteMem32(0x00136404,0x46090242)
eeObj.WriteMem32(0x00136408,0xe769d000)
eeObj.WriteMem32(0x0013640c,0xe760d014)
end

emuObj.AddVsyncHook(widescreen)