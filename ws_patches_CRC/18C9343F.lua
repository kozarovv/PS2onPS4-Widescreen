apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Devil May Cry 3: Dante's Awakening: Special Edition (SLES-54186)
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000 )

--gameplay
eeObj.WriteMem32(0x001ac7a4,0x3c013f40)
eeObj.WriteMem32(0x001ac7a8,0x4481a000)
eeObj.WriteMem32(0x001ac7ac,0x3c0101d1)
eeObj.WriteMem32(0x001ac7b0,0xe43407a0)
eeObj.WriteMem32(0x001ac7b4,0x46000d03)

eeObj.WriteMem32(0x001ac814,0x3c013f40)
eeObj.WriteMem32(0x001ac818,0x4481a000)
eeObj.WriteMem32(0x001ac81c,0x3c0101d1)
eeObj.WriteMem32(0x001ac820,0xe43407a0)
eeObj.WriteMem32(0x001ac824,0x46000d03)

--FMV's fix
eeObj.WriteMem32(0x00231cb8,0x24040180)
eeObj.WriteMem32(0x00232dcc,0x240301aa)
eeObj.WriteMem32(0x002e5a8c,0x240801aa)
eeObj.WriteMem32(0x00307d4c,0x24050040)
eeObj.WriteMem32(0x00307d54,0x24070180)

--rfix 1
eeObj.WriteMem32(0x001ac844,0x3c0345bf)
eeObj.WriteMem32(0x001ac96c,0x3c0345bf)

--rfix 2
eeObj.WriteMem32(0x001acf0c,0x3c013f40)

eeObj.WriteMem32(0x001acf24,0x44812000)
eeObj.WriteMem32(0x001acf28,0x460418c2)
eeObj.WriteMem32(0x001acf2c,0x460018c3)
eeObj.WriteMem32(0x001acf30,0x46001083)
eeObj.WriteMem32(0x001acf34,0x46000803)
eeObj.WriteMem32(0x001acf38,0xe7a30030)
eeObj.WriteMem32(0x001acf3c,0xe7a20034)

eeObj.WriteMem32(0x001acfa0,0x460418c2)
eeObj.WriteMem32(0x001acfa4,0x460018c3)
eeObj.WriteMem32(0x001acfa8,0x46001083)
eeObj.WriteMem32(0x001acfac,0x46000803)
eeObj.WriteMem32(0x001acfb0,0xe7a30030)
eeObj.WriteMem32(0x001acfb4,0xe7a20034)

eeObj.WriteMem32(0x001ad020,0x460418c2)
eeObj.WriteMem32(0x001ad024,0x460018c3)
eeObj.WriteMem32(0x001ad028,0x46001083)
eeObj.WriteMem32(0x001ad02c,0x46000803)
eeObj.WriteMem32(0x001ad030,0xe7a30030)
eeObj.WriteMem32(0x001ad034,0xe7a20034)

eeObj.WriteMem32(0x001ad0a0,0x460418c2)
eeObj.WriteMem32(0x001ad0a4,0x460018c3)
eeObj.WriteMem32(0x001ad0a8,0x46001083)
eeObj.WriteMem32(0x001ad0ac,0x46000803)
eeObj.WriteMem32(0x001ad0b0,0xe7a30030)
eeObj.WriteMem32(0x001ad0b4,0xe7a20034)
end

emuObj.AddVsyncHook(widescreen)