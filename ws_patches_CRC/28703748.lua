apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen fix by nemesis2000 (pnach by nemesis2000)

--Widescreen fix 
eeObj.WriteMem32(0x00471640,0x14640007)
eeObj.WriteMem32(0x00471644,0x3c030022)
eeObj.WriteMem32(0x00471648,0x2404bec0)
eeObj.WriteMem32(0x0047164c,0xa464280c)
eeObj.WriteMem32(0x00471650,0x24043fc0)
eeObj.WriteMem32(0x00471654,0x3c03001d)
eeObj.WriteMem32(0x00471658,0xa4644cf4)
eeObj.WriteMem32(0x0047165c,0x10000007)
eeObj.WriteMem32(0x00471660,0x2404bf00)
eeObj.WriteMem32(0x00471664,0xa464280c)
eeObj.WriteMem32(0x00471668,0x24044000)
eeObj.WriteMem32(0x0047166c,0x3c03001d)
eeObj.WriteMem32(0x00471670,0xa4644cf4)
eeObj.WriteMem32(0x00471674,0x00000000)
eeObj.WriteMem32(0x00471678,0x00000000)

eeObj.WriteMem32(0x00010000,0x005e09b8)
eeObj.WriteMem32(0x00729748,0x435c0000)

eeObj.WriteMem32(0x00010000,0x005e09b8)
eeObj.WriteMem32(0x0072974c,0x435c0000)

eeObj.WriteMem32(0x0001aaab,0x005e09b8)
eeObj.WriteMem32(0x00729748,0x432b0000)

eeObj.WriteMem32(0x0001aaab,0x005e09b8)
eeObj.WriteMem32(0x0072974c,0x432b0000)

--eeObj.WriteMem32(0x0001aaab,0x005e09b8)
--eeObj.WriteMem32(0x0047163c,0x24030000)

--eeObj.WriteMem32(0x0001aaab,0x005e09b8)
--eeObj.WriteMem32(0x0022280c,0x3c01bec0)

--eeObj.WriteMem32(0x0001aaab,0x005e09b8)
--eeObj.WriteMem32(0x001d4cf4,0x3c023fc0)

--eeObj.WriteMem32(0x00010000,0x005e09b8)
--eeObj.WriteMem32(0x0047163c,0x9063702e)

--eeObj.WriteMem32(0x00010000,0x005e09b8)
--eeObj.WriteMem32(0x0022280c,0x3c01bf00)

--eeObj.WriteMem32(0x00010000,0x005e09b8)
--eeObj.WriteMem32(0x001d4cf4,0x3c024000)

--480p
eeObj.WriteMem32(0x0023ea90,0x24060050)
eeObj.WriteMem32(0x0023ea94,0x24050000)
eeObj.WriteMem32(0x0023ea9c,0x23070001)
end

emuObj.AddVsyncHook(widescreen)