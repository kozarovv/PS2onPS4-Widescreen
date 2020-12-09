apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x0027d5f0,0x3c033f40)
eeObj.WriteMem32(0x0027d5fc,0x46000803)
eeObj.WriteMem32(0x00184d9c,0x3c02402b)
eeObj.WriteMem32(0x00184e0c,0x3c023fc0)
eeObj.WriteMem32(0x00185800,0x3c013f40)
eeObj.WriteMem32(0x0018581c,0x4481f000)
eeObj.WriteMem32(0x00185894,0x4614f742)
eeObj.WriteMem32(0x001858a8,0x461d0842)
eeObj.WriteMem32(0x00185864,0x461e0f02)
eeObj.WriteMem32(0x00185868,0x4602e042)
eeObj.WriteMem32(0x0027d7f4,0x3c033faa)
eeObj.WriteMem32(0x0027d848,0x3463aaab)
eeObj.WriteMem32(0x0027d84c,0x44830800)

-- 16:10
--eeObj.WriteMem32(0x0027d5f0,0x3c033f55)
--eeObj.WriteMem32(0x0027d5f4,0x34425555)
--eeObj.WriteMem32(0x0027d5f8,0x44830000)
--eeObj.WriteMem32(0x0027d5fc,0x46000803)
--eeObj.WriteMem32(0x00184d9c,0x3c02401a)
--eeObj.WriteMem32(0x00184e0c,0x3c023fd6)
--eeObj.WriteMem32(0x00185800,0x3c013f55)
--eeObj.WriteMem32(0x00185814,0x34215555)
--eeObj.WriteMem32(0x0018581c,0x4481f000)
--eeObj.WriteMem32(0x00185894,0x4614f742)
--eeObj.WriteMem32(0x001858a8,0x461d0842)
--eeObj.WriteMem32(0x00185864,0x461e0f02)
--eeObj.WriteMem32(0x00185868,0x4602e042)
--eeObj.WriteMem32(0x0027d7f4,0x3c033f99)
--eeObj.WriteMem32(0x0027d848,0x3463999a)
--eeObj.WriteMem32(0x0027d84c,0x44830800)
end

emuObj.AddVsyncHook(widescreen)