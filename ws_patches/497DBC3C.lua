apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hacks by...
--comment=-No.47 (NTSC-J Alien Syndrome/Virtua Racing)
--comment=-sergx12 (NTSC-J Out Run)
--comment=-FeRcHuLeS (original Golden Axe/Space Harrier hacks)
--comment=-Devina (NTSC-U ports of NTSC-J hacks)
--comment=-Aced14 (enable conditions, Golden Axe/Space Harrier ELF hacks)

--Alien Syndrome
eeObj.WriteMem32(0x00033f80,0x0039fcfa)
eeObj.WriteMem32(0x0039fcf8,0x3faaaaab)
eeObj.WriteMem32(0x00125398,0x3c023fe3)
eeObj.WriteMem32(0x0012539c,0x34428e38)

--Golden Axe
eeObj.WriteMem32(0x0001aaab,0x0033b308)
eeObj.WriteMem32(0x0033b308,0x3fe38e39)
--eeObj.WriteMem32(0x001339a4,0x3c013f40)
--eeObj.WriteMem32(0x001339a8,0x44810000)

--Out Run
eeObj.WriteMem32(0x00023f80,0x00124010)
eeObj.WriteMem32(0x00124010,0x3c083fab)
eeObj.WriteMem32(0x0012c548,0x3c043f40)

--Space Harrier
eeObj.WriteMem32(0x0003d000,0x002ea418)
eeObj.WriteMem32(0x002ea418,0x44091c00)
eeObj.WriteMem32(0x002eaef0,0x43f3c000)
eeObj.WriteMem32(0x002eaee8,0x3f999999)

--Virtua Racing
eeObj.WriteMem32(0x0003d70a,0x001e6560)
eeObj.WriteMem32(0x001e6560,0x3ef5c28f)
eeObj.WriteMem32(0x0018a7c4,0x3c033fd3)
eeObj.WriteMem32(0x0018bd6c,0x34643333)
end

emuObj.AddVsyncHook(widescreen)