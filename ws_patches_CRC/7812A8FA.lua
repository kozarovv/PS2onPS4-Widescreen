apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen fix by nemesis2000 (NTSC-J by Arapapa)

--widescreen fix
eeObj.WriteMem32(0x001d96d8,0x468010a0)
eeObj.WriteMem32(0x001d96dc,0xc6650030)
eeObj.WriteMem32(0x001d96e0,0x44830800)
eeObj.WriteMem32(0x001d96e4,0x46800860)

eeObj.WriteMem32(0x001d96e8,0xc6640034)
eeObj.WriteMem32(0x001d96ec,0x44840000)
eeObj.WriteMem32(0x001d96f0,0x46800020)
eeObj.WriteMem32(0x001d96f4,0xc6630038)

eeObj.WriteMem32(0x001d96f8,0x46151082)
eeObj.WriteMem32(0x001d96fc,0x46150842)
eeObj.WriteMem32(0x001d9700,0x46150002)
eeObj.WriteMem32(0x001d9704,0x46022940)

eeObj.WriteMem32(0x001d9708,0x46012100)
eeObj.WriteMem32(0x001d970c,0x460018c0)
eeObj.WriteMem32(0x001d9710,0x4615a034)
eeObj.WriteMem32(0x001d9714,0xe6650030)

eeObj.WriteMem32(0x001d9718,0xe6640034)
eeObj.WriteMem32(0x001d971c,0x45000012)
eeObj.WriteMem32(0x001d9720,0xe6630038)
eeObj.WriteMem32(0x001d9724,0x27c26f90)

eeObj.WriteMem32(0x001d9728,0x24040001)
eeObj.WriteMem32(0x001d972c,0x8c431d04)
eeObj.WriteMem32(0x001d9730,0x1064000d)
eeObj.WriteMem32(0x001d9734,0x24070096)

eeObj.WriteMem32(0x001d9738,0x3c01437f)
eeObj.WriteMem32(0x001d973c,0x44810000)
eeObj.WriteMem32(0x001d9740,0x2405000b)
eeObj.WriteMem32(0x001d9744,0x4600b002)

eeObj.WriteMem32(0x001d9748,0xae05002c)
eeObj.WriteMem32(0x001d974c,0x46000064)
eeObj.WriteMem32(0x001d9750,0x44020800)
eeObj.WriteMem32(0x001d9754,0x24420019)

eeObj.WriteMem32(0x001d9758,0x28430097)
eeObj.WriteMem32(0x001d975c,0x00e3100a)
eeObj.WriteMem32(0x001d9760,0x10000007)
eeObj.WriteMem32(0x001d9764,0xae020028)

eeObj.WriteMem32(0x001d9768,0x8e03002c)
eeObj.WriteMem32(0x001d976c,0x2402000b)
eeObj.WriteMem32(0x001d9770,0x14620003)
eeObj.WriteMem32(0x001d9774,0x2405ffff)

eeObj.WriteMem32(0x001d9778,0xae00002c)
eeObj.WriteMem32(0x001d977c,0xae050028)
eeObj.WriteMem32(0x001d9780,0x0c076724)
eeObj.WriteMem32(0x001d9784,0x0260202d)

eeObj.WriteMem32(0x001d9788,0x0c076726)
eeObj.WriteMem32(0x001d978c,0x0260202d)
eeObj.WriteMem32(0x001d9790,0xc7ac0124)
eeObj.WriteMem32(0x001d9794,0x3c013f9d)

eeObj.WriteMem32(0x001d9798,0x44810000)
eeObj.WriteMem32(0x001d979c,0x0c0978de)
eeObj.WriteMem32(0x001d97a0,0x46006302)
end

emuObj.AddVsyncHook(widescreen)