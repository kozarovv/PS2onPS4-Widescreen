apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x00126ddc,0x081032ec)
eeObj.WriteMem32(0x00126de0,0x00000000)

eeObj.WriteMem32(0x0040cbb0,0x3c013f40)
eeObj.WriteMem32(0x0040cbb4,0x4481f000)
eeObj.WriteMem32(0x0040cbb8,0x461e0002)
eeObj.WriteMem32(0x0040cbbc,0xe6000024)
eeObj.WriteMem32(0x0040cbc0,0xc7a10020)
eeObj.WriteMem32(0x0040cbc4,0x461e0843)
eeObj.WriteMem32(0x0040cbc8,0xe7a10020)
eeObj.WriteMem32(0x0040cbcc,0x08049b78)


--Black Bar Fix (Intro Movie, Intro 3D DEMO and etc)
--eeObj.WriteMem32(0x001956dc,0x3c070000)
--eeObj.WriteMem32(0x001956e0,0x3c060000)

--eeObj.WriteMem32(0x00195790,0x3c070000)
--eeObj.WriteMem32(0x00195798,0x3c060000)

--eeObj.WriteMem32(0x0019584c,0x3c060000)
--eeObj.WriteMem32(0x0019585c,0x3c020000)

--eeObj.WriteMem32(0x00195914,0x3c070000)
--eeObj.WriteMem32(0x00195918,0x3c060000)

--eeObj.WriteMem32(0x00195aa8,0x3c070000)
--eeObj.WriteMem32(0x00195aac,0x3c060000)

--Font fix by Arapapa
eeObj.WriteMem32(0x00229c00,0x3c023f10)
eeObj.WriteMem32(0x0022a99c,0x3c023f10)
end

emuObj.AddVsyncHook(widescreen)