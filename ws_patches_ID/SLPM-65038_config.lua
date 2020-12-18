apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Devil May Cry (J)(SLPM-65038)
--comment=Widescreen hack by nemesis2000 (NTSC-J by Arapapa)
--NTSC-J is a little different to NTSC-U
--NOTICE... After you run the new game, rectangle appears in the upper-left of the screen.
--NOTICE... Entering the options menu, it does not go out after.

--gameplay
eeObj.WriteMem32(0x0014d2e8,0x3c023f19)
eeObj.WriteMem32(0x0014d2ec,0x3448999a)

--render fix
eeObj.WriteMem32(0x0024fce4,0x0c040b90)
eeObj.WriteMem32(0x0024fcec,0x4615a800)
eeObj.WriteMem32(0x0024fcf0,0x3c0342a0)
eeObj.WriteMem32(0x0024fcf4,0x3c010075)
eeObj.WriteMem32(0x0024fcf8,0x8c2449c0)
eeObj.WriteMem32(0x0024fcfc,0x44830800)
eeObj.WriteMem32(0x0024fd00,0x3c024220)
eeObj.WriteMem32(0x0024fd04,0x46000803)
eeObj.WriteMem32(0x0024fd08,0x3c033f00)
eeObj.WriteMem32(0x0024fd0c,0x44822000)
eeObj.WriteMem32(0x0024fd10,0x44831800)
eeObj.WriteMem32(0x0024fd14,0x3c033f30)
eeObj.WriteMem32(0x0024fd18,0x46030042)
eeObj.WriteMem32(0x0024fd1c,0xe4810024)
eeObj.WriteMem32(0x0024fd20,0x44830800)
eeObj.WriteMem32(0x0024fd24,0x46010042)
eeObj.WriteMem32(0x0024fd34,0xe4810010)
eeObj.WriteMem32(0x0024fd38,0x3c02c000)
eeObj.WriteMem32(0x0024fd3c,0x44820800)
eeObj.WriteMem32(0x0024fd40,0x3c033f80)
eeObj.WriteMem32(0x0024fd44,0x4604a002)
eeObj.WriteMem32(0x0024fd48,0x8c2249c0)
eeObj.WriteMem32(0x0024fd4c,0x46000802)
eeObj.WriteMem32(0x0024fd50,0x46021843)
eeObj.WriteMem32(0x0024fd54,0xe4410038)
eeObj.WriteMem32(0x0024fd58,0x8c2249c0)
eeObj.WriteMem32(0x0024fd5c,0x46020003)
end

emuObj.AddVsyncHook(widescreen)