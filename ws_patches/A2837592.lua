apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=The Mark of Kri (PAL-M5) (SCES-51164)
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x002d3f18,0x3c013ec0)
eeObj.WriteMem32(0x00311c74,0x3c0143a8)

eeObj.WriteMem32(0x00311c80,0x080fa25b)
eeObj.WriteMem32(0x00311c84,0x00000000)

eeObj.WriteMem32(0x003e896c,0x4600ad43)
eeObj.WriteMem32(0x003e8970,0xe600002c)

eeObj.WriteMem32(0x000c0000,0x0036f5dc)
eeObj.WriteMem32(0x003e8974,0x3c0143f3)
eeObj.WriteMem32(0x003e8978,0x3421c000)
eeObj.WriteMem32(0x003e897c,0xae010000)
eeObj.WriteMem32(0x003e8980,0x3c01bf9c)
eeObj.WriteMem32(0x003e8984,0xae010040)
eeObj.WriteMem32(0x003e8988,0x3c01bfd0)
eeObj.WriteMem32(0x003e898c,0xae010054)
eeObj.WriteMem32(0x003e8990,0x00000000)
eeObj.WriteMem32(0x003e8994,0x00000000)
eeObj.WriteMem32(0x003e8998,0x00000000)
eeObj.WriteMem32(0x003e899c,0x00000000)
eeObj.WriteMem32(0x003e89a0,0x00000000)


eeObj.WriteMem32(0x001a0001,0x0036f5dc)

eeObj.WriteMem32(0x000c0001,0x003927c0)
eeObj.WriteMem32(0x003e8974,0x3c013f5d)
eeObj.WriteMem32(0x003e8978,0x3421b3e5)
eeObj.WriteMem32(0x003e897c,0x4481f000)
eeObj.WriteMem32(0x003e8980,0xc61f0000)
eeObj.WriteMem32(0x003e8984,0x461effc2)
eeObj.WriteMem32(0x003e8988,0xe61f0000)
eeObj.WriteMem32(0x003e898c,0x3c01bf5d)
eeObj.WriteMem32(0x003e8990,0x3421b3e5)
eeObj.WriteMem32(0x003e8994,0xae010040)
eeObj.WriteMem32(0x003e8998,0x3c01bf94)
eeObj.WriteMem32(0x003e899c,0x00000000)
eeObj.WriteMem32(0x003e89a0,0xae010054)

eeObj.WriteMem32(0x000c0000,0x003927c0)
eeObj.WriteMem32(0x003e8974,0x3c014396)
eeObj.WriteMem32(0x003e8978,0xae010000)
eeObj.WriteMem32(0x003e897c,0x3c01bf40)
eeObj.WriteMem32(0x003e8980,0xae010040)
eeObj.WriteMem32(0x003e8984,0x3c01bf80)
eeObj.WriteMem32(0x003e8988,0xae010054)
eeObj.WriteMem32(0x003e898c,0x00000000)
eeObj.WriteMem32(0x003e8990,0x00000000)
eeObj.WriteMem32(0x003e8994,0x00000000)
eeObj.WriteMem32(0x003e8998,0x00000000)
eeObj.WriteMem32(0x003e899c,0x00000000)
eeObj.WriteMem32(0x003e89a0,0x00000000)

eeObj.WriteMem32(0x003e89b8,0x080c4721)
end

emuObj.AddVsyncHook(widescreen)