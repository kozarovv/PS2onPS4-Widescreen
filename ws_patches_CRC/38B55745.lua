apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x00272c90,0x3c033f40)
eeObj.WriteMem32(0x00272c9c,0x46000803)
eeObj.WriteMem32(0x0017a3bc,0x3c02402b)
eeObj.WriteMem32(0x0017a42c,0x3c023fc0)
eeObj.WriteMem32(0x0017ae20,0x3c013f40)
eeObj.WriteMem32(0x0017ae3c,0x4481f000)
eeObj.WriteMem32(0x0017aeb4,0x4614f742)
eeObj.WriteMem32(0x0017aec8,0x461d0842)
eeObj.WriteMem32(0x0017ae84,0x461e0f02)
eeObj.WriteMem32(0x0017ae88,0x4602e042)
eeObj.WriteMem32(0x00272e94,0x3c033faa)
eeObj.WriteMem32(0x00272ee8,0x3463aaab)
eeObj.WriteMem32(0x00272eec,0x44830800)

-- 16:10
--eeObj.WriteMem32(0x00272c90,0x3c033f55)
--eeObj.WriteMem32(0x00272c94,0x34425555)
--eeObj.WriteMem32(0x00272c98,0x44830000)
--eeObj.WriteMem32(0x00272c9c,0x46000803)
--eeObj.WriteMem32(0x0017a3bc,0x3c02401a)
--eeObj.WriteMem32(0x0017a42c,0x3c023fd6)
--eeObj.WriteMem32(0x0017ae20,0x3c013f55)
--eeObj.WriteMem32(0x0017ae34,0x34215555)
--eeObj.WriteMem32(0x0017ae3c,0x4481f000)
--eeObj.WriteMem32(0x0017aeb4,0x4614f742)
--eeObj.WriteMem32(0x0017aec8,0x461d0842)
--eeObj.WriteMem32(0x0017ae84,0x461e0f02)
--eeObj.WriteMem32(0x0017ae88,0x4602e042)
--eeObj.WriteMem32(0x00272e94,0x3c033f99)
--eeObj.WriteMem32(0x00272ee8,0x3463999a)
--eeObj.WriteMem32(0x00272eec,0x44830800)
end

emuObj.AddVsyncHook(widescreen)