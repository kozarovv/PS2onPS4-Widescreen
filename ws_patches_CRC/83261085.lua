apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack

-- 16:9
eeObj.WriteMem32(0x00154998,0x3c033f40)
eeObj.WriteMem32(0x001549e0,0x3c033f40)
eeObj.WriteMem32(0x00155168,0x3c024458)
eeObj.WriteMem32(0x001553d0,0x3c024458)

-- 16:10
--eeObj.WriteMem32(0x002453d0,0x3c1b3f55)
--eeObj.WriteMem32(0x002453d8,0x377b5555)
--eeObj.WriteMem32(0x001549bc,0xac5b0000)
--eeObj.WriteMem32(0x00154a04,0xac5b0000)
--eeObj.WriteMem32(0x00155168,0x3c024443)
--eeObj.WriteMem32(0x001553d0,0x3c024443)
end

emuObj.AddVsyncHook(widescreen)