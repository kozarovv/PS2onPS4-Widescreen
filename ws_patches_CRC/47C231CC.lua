apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
eeObj.WriteMem32(0x0034D0F8,0x3fe38e39)

--FMV's fix by nemesis2000
eeObj.WriteMem32(0x001b34d4,0x00000000)
eeObj.WriteMem32(0x0033a57c,0x24060015)
eeObj.WriteMem32(0x0033a754,0x000b5843)
eeObj.WriteMem32(0x0033a75c,0x00ab2820)

eeObj.WriteMem32(0x001b312c,0x3c040034)
eeObj.WriteMem32(0x001b3130,0x9082a720)
eeObj.WriteMem32(0x001b3134,0x1440000f)
eeObj.WriteMem32(0x001b3138,0x3c010126)
eeObj.WriteMem32(0x001b313c,0x34212818)
eeObj.WriteMem32(0x001b3140,0xac81a720)
eeObj.WriteMem32(0x001b3144,0x3c012406)
eeObj.WriteMem32(0x001b3148,0x34211c00)
eeObj.WriteMem32(0x001b314c,0xac81a724)
eeObj.WriteMem32(0x001b3150,0x3c0100c5)
eeObj.WriteMem32(0x001b3154,0x34215822)
eeObj.WriteMem32(0x001b3158,0xac81a728)
eeObj.WriteMem32(0x001b315c,0x3c040033)
eeObj.WriteMem32(0x001b3160,0x24013fab)
eeObj.WriteMem32(0x001b3164,0xa48168e0)
eeObj.WriteMem32(0x001b3168,0x3c014481)
eeObj.WriteMem32(0x001b316c,0x34217800)
eeObj.WriteMem32(0x001b3170,0xac8168e4)
end

emuObj.AddVsyncHook(widescreen)