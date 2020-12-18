apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=SpongeBob SquarePants - Creature from the Krusty Krab (K)(SCKA-20098)
--comment=Widescreen hack by Arapapa
 
--Widescreen 16:9

--X-Fov
00000000 00000000 83ad0046 00000000
403f013c 00f08144 83ad0046 82b51e46
eeObj.WriteMem32(0x0043cb1c,0x3c013f40)
eeObj.WriteMem32(0x0043cb20,0x4481f000)
eeObj.WriteMem32(0x0043cb28,0x461eb582)


------------------------------------------------

--Zoom
--eeObj.WriteMem32(0x0043caf0,0x3c013f20)

--X-Fov
--eeObj.WriteMem32(0x0043caf8,0x080800b0)

--eeObj.WriteMem32(0x002002c0,0xc60c0098)
--eeObj.WriteMem32(0x002002c4,0x3c013f90)
--eeObj.WriteMem32(0x002002c8,0x4481f000)
--eeObj.WriteMem32(0x002002cc,0x461e6302)
--eeObj.WriteMem32(0x002002d0,0x0810f2bf)
end

emuObj.AddVsyncHook(widescreen)