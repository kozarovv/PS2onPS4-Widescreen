apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Club Football - Arsenal (PAL)(SLES-51089)
--gametitle=Aston Villa, Bayern Muenchen, Borussia Dortmund, Celtic FC, Chelsea FC, FC Barcelona, FC Internazionale, Hamburger SV, Manchester United, Rangers FC, Real Madrid  
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Menu 3D Fov
--aa3f013c abaa2134
eeObj.WriteMem32(0x0032ab94,0x3c013fe3)
eeObj.WriteMem32(0x0032ab98,0x34218e32)

--Game Play and Replay Fov
--aa3f013c be9f2134
eeObj.WriteMem32(0x001532f4,0x3c013fe3)
eeObj.WriteMem32(0x001532f8,0x34217fa6)

--Game play - Players entering in the ground - Scene Fov
--aa3f013c be9f2134
eeObj.WriteMem32(0x002ab86c,0x3c013fe3)
eeObj.WriteMem32(0x002ab870,0x34217fa6)

--aa3f013c abaa2134
eeObj.WriteMem32(0x0032ade0,0x3c013fe3)
eeObj.WriteMem32(0x0032ade4,0x34218e32)

--Menu 3D Zoom
--803f013c 00088144 02200046
eeObj.WriteMem32(0x00368680,0x3c013f40)

--Game Play Zoom
--803f013c 00188144 02200046
eeObj.WriteMem32(0x00368634,0x3c013f40)

------------------------------/
--Menu and Game Play Y-fov (needs 1 more render fix)
--803f013c 00108144 00000000 83100446
--eeObj.WriteMem32(0x00327138,0x3c013fab)

--Render Fix
--803f013c 00388144 1c0000ae
--eeObj.WriteMem32(0x0031a188,0x3c013fab)

----------------------------/
-- Memory Hack --
--0000803f 0000c843 3333b33e
--eeObj.WriteMem32(0x00A52B60,0x3f400000)
--0000803f be9faa3f 6176696f
--eeObj.WriteMem32(0x00A52B70,0x3f400000)
--0000803f be9faa3f 001d6bcc
--eeObj.WriteMem32(0x00A65170,0x3f400000)
end

emuObj.AddVsyncHook(widescreen)