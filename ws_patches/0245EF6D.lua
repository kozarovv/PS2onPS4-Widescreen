apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
eeObj.WriteMem32(0x0038ca78,0x3fe38e39)

--FMV's fix by nemesis2000
eeObj.WriteMem32(0x001bbb04,0x00000000)

eeObj.WriteMem32(0x0037968c,0x24060015)
eeObj.WriteMem32(0x00379864,0x000b5843)
eeObj.WriteMem32(0x0037986c,0x00ab2820)

eeObj.WriteMem32(0x001bb75c,0x3c040038)
eeObj.WriteMem32(0x001bb760,0x90829830)
eeObj.WriteMem32(0x001bb764,0x1440000f)
eeObj.WriteMem32(0x001bb768,0x3c010126)
eeObj.WriteMem32(0x001bb76c,0x34212818)
eeObj.WriteMem32(0x001bb770,0xac819830)
eeObj.WriteMem32(0x001bb774,0x3c012406)
eeObj.WriteMem32(0x001bb778,0x34211c00)
eeObj.WriteMem32(0x001bb77c,0xac819834)
eeObj.WriteMem32(0x001bb780,0x3c0100c5)
eeObj.WriteMem32(0x001bb784,0x34215822)
eeObj.WriteMem32(0x001bb788,0xac819838)
eeObj.WriteMem32(0x001bb78c,0x3c040037)
eeObj.WriteMem32(0x001bb790,0x24013fab)
eeObj.WriteMem32(0x001bb794,0xa4815a00)
eeObj.WriteMem32(0x001bb798,0x3c014481)
eeObj.WriteMem32(0x001bb79c,0x34217800)
eeObj.WriteMem32(0x001bb7a0,0xac815a04)
end

emuObj.AddVsyncHook(widescreen)