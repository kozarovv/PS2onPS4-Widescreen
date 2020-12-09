apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Full Spectrum Warrior (K)(SLKA-25264)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--/X-Fov (Need Render fix)
--803f013c 00a88144 80001026
eeObj.WriteMem32(0x00403900,0x3c013fab)
 
--X-Fov (Menu and etc)
--8c3f013c cdcc2134 00088144 40134224
eeObj.WriteMem32(0x004026a8,0x3c013f53)
eeObj.WriteMem32(0x004026ac,0x34213333)

--Black Bar (Get rid of Black Bar)
--4842013c 00a08144 80730e46
eeObj.WriteMem32(0x002eb440,0x3c010000)

--Black Bar Size Y 0
--eeObj.WriteMem32(0x002eb3a4,0x3c010000)

--Get rid of fading effect (Black Scene)
--803f013c 00008144 00000000 34000c46 (1st)
eeObj.WriteMem32(0x002eb7f0,0x3c010000)
--803f013c 00008144 0800e003 409980e7
eeObj.WriteMem32(0x002eb368,0x3c010000)
--7f43013c 00008144 140042c4 061b0046
eeObj.WriteMem32(0x002eb93c,0x3c010000)

--Render fix

--00000000 00000000 c3b00046 700115e6 00000000 00000000 03110046 800115e6 00000000 00000000 43a10046
--ab3f013c 00f08144 c3b00046 700115e6 00000000 03110046 02211e46 800115e6 00000000 43a10046 42291e46

eeObj.WriteMem32(0x0042df8c,0x3c013fab)
eeObj.WriteMem32(0x0042df90,0x4481f000)
eeObj.WriteMem32(0x0042dfa0,0x46001103)
eeObj.WriteMem32(0x0042dfa4,0x461e2102)
eeObj.WriteMem32(0x0042dfb0,0x4600a143)
eeObj.WriteMem32(0x0042dfb4,0x461e2942)


--------------------------------------------------------------------
--X-Fov (Needs more render fix)
--8c3f013c cdcc2134 00088144 00000000 (2nd)
--eeObj.WriteMem32(0x00403a14,0x3c013f53)
--eeObj.WriteMem32(0x00403a18,0x34213333)
--Render fix 
--003f013c 00008144 3d1be24b (2nd)
--eeObj.WriteMem32(0x003c8b4c,0x3c013f40)

--003f013c 00008144 c1500846  xxxxxx
--eeObj.WriteMem32(0x001a2c98,0x3c013ec0)

--2071269C Fog effect

--xxx
--eeObj.WriteMem32(0x003052ec,0x3c013fab)
--eeObj.WriteMem32(0x003c8a34,0x3c013fab)
--eeObj.WriteMem32(0x003c8bac,0x3c013fab)
--eeObj.WriteMem32(0x003dc8e8,0x3c013fab)

--eeObj.WriteMem32(0x0042e500,0x3c013f40)

--Y-Fov
--883f013c c3f52134 00088144 (1st)
--eeObj.WriteMem32(0x00403a30,0x3c013fb6)
--eeObj.WriteMem32(0x00403a34,0x34219cfe)

--Zoom
--003f013c 00088144 418c1046
--eeObj.WriteMem32(0x003c8990,0x3c013f20)
--003f013c 00008144 80730f46
--eeObj.WriteMem32(0x003c8a10,0x3c013ec0)

--Gameplay Zoom
--eeObj.WriteMem32(0x00237d2c,0x3c013f40)
--eeObj.WriteMem32(0x00237d44,0x3c0140ab)

--eeObj.WriteMem32(0x002eb854,0x3c013fB0)
end

emuObj.AddVsyncHook(widescreen)