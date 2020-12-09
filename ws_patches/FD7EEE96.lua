apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Nickelodeon SpongeBob SquarePants in: Battle for Bikini Bottom (SLUS-20680)
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000)

--gameplay
eeObj.WriteMem32(0x0035ce30,0x0c045286)
eeObj.WriteMem32(0x0035ce34,0x00000000)
eeObj.WriteMem32(0x0035ce38,0x3c023f40)
eeObj.WriteMem32(0x0035ce3c,0x0200202d)
eeObj.WriteMem32(0x0035ce40,0x44820800)
eeObj.WriteMem32(0x0035ce44,0x27a50028)
eeObj.WriteMem32(0x0035ce48,0x46010083)
eeObj.WriteMem32(0x0035ce4c,0xe7a20028)

--480p
eeObj.WriteMem32(0x00263ddc,0x24050000)
eeObj.WriteMem32(0x00263de0,0x24060050)
eeObj.WriteMem32(0x00263128,0x24060050)
eeObj.WriteMem32(0x0026312c,0x24050000)
eeObj.WriteMem32(0x00102254,0x3c090010)
end

emuObj.AddVsyncHook(widescreen)