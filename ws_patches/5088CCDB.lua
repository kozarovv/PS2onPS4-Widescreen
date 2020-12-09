apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000)

--gameplay
eeObj.WriteMem32(0x003d6030,0x3f400000)
eeObj.WriteMem32(0x001d9ae8,0x3c023f28)
eeObj.WriteMem32(0x001d9aec,0x3442f5c3)
eeObj.WriteMem32(0x001B4E64,0x3c023f28)
eeObj.WriteMem32(0x001b4e68,0x3442f5c3)

--FMV's fix

--PAL mode
eeObj.WriteMem32(0x002b6674,0x24106D50)
eeObj.WriteMem32(0x002b6688,0x24112550)
eeObj.WriteMem32(0x002b67ac,0x24100000)
eeObj.WriteMem32(0x002b67b4,0x24100000)

--NTSC mode
eeObj.WriteMem32(0x002b6678,0x24037000)
eeObj.WriteMem32(0x002b668c,0x24032000)
eeObj.WriteMem32(0x002b67cc,0x24100000)
eeObj.WriteMem32(0x002b67d0,0x24100000)

--Items & Weapons and Supplies fix
eeObj.WriteMem32(0x002adf48,0x3c023f19)
eeObj.WriteMem32(0x002adf4c,0x3442999a)
end

emuObj.AddVsyncHook(widescreen)