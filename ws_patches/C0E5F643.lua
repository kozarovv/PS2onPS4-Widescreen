apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Devil May Cry (K) (SLPM-67502)
--comment=Widescreen hack by nemesis2000 (pnach NTSC-K by Arapapa)
--NTSC-K is a little diffrent to NTSC-U
--NOTICE... After you run the new game, rectangle appears in the upper-left of the screen. 
--NOTICE... Entering the options menu, it does not go out after.

--gameplay
eeObj.WriteMem32(0x0014d2c8,0x3c023f19)
eeObj.WriteMem32(0x0014d2cc,0x3448999a)

--render fix
eeObj.WriteMem32(0x0024ea44,0x0c040b90)
eeObj.WriteMem32(0x0024ea48,0x00000000)
eeObj.WriteMem32(0x0024ea4c,0x4615a800)
eeObj.WriteMem32(0x0024ea50,0x3c0342a0)

eeObj.WriteMem32(0x0024ea54,0x3c010075)
eeObj.WriteMem32(0x0024ea58,0x8c241040)
eeObj.WriteMem32(0x0024ea5c,0x44830800)
eeObj.WriteMem32(0x0024ea60,0x3c024220)

eeObj.WriteMem32(0x0024ea64,0x46000803)
eeObj.WriteMem32(0x0024ea68,0x3c033f00)
eeObj.WriteMem32(0x0024ea6c,0x44822000)
eeObj.WriteMem32(0x0024ea70,0x44831800)

eeObj.WriteMem32(0x0024ea74,0x3c033f30)
eeObj.WriteMem32(0x0024ea78,0x46030042)
eeObj.WriteMem32(0x0024ea7c,0xe4810024)
eeObj.WriteMem32(0x0024ea80,0x44830800)

eeObj.WriteMem32(0x0024ea84,0x46010042)
eeObj.WriteMem32(0x0024ea88,0x4604a0c0)
eeObj.WriteMem32(0x0024ea8c,0x8c221040)
eeObj.WriteMem32(0x0024ea90,0x4604a081)

eeObj.WriteMem32(0x0024ea94,0xe4810010)
eeObj.WriteMem32(0x0024ea98,0x3c02c000)
eeObj.WriteMem32(0x0024ea9c,0x44820800)
eeObj.WriteMem32(0x0024eaa0,0x3c033f80)

eeObj.WriteMem32(0x0024eaa4,0x4604a002)
eeObj.WriteMem32(0x0024eaa8,0x8c221040)
eeObj.WriteMem32(0x0024eaac,0x46000802)
eeObj.WriteMem32(0x0024eab0,0x46021843)

eeObj.WriteMem32(0x0024eab4,0xe4410038)
eeObj.WriteMem32(0x0024eab8,0x8c221040)
eeObj.WriteMem32(0x0024eabc,0x46020003)
eeObj.WriteMem32(0x0024eac0,0xe4400048)
end

emuObj.AddVsyncHook(widescreen)