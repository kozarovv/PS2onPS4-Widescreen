apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Club Football - Juventus (PAL)(SLES-51081)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Menu 3D Fov
--aa3f013c abaa2134
eeObj.WriteMem32(0x0032aa44,0x3c013fe2)
eeObj.WriteMem32(0x0032aa48,0x34218e32)

--Game Play and Replay Fov
--aa3f013c be9f2134
eeObj.WriteMem32(0x001532f4,0x3c013fe3)
eeObj.WriteMem32(0x001532f8,0x34217fa6)

--Game play - Players entering in the ground - Scene Fov
--aa3f013c be9f2134
eeObj.WriteMem32(0x002ab73c,0x3c013fe3)
eeObj.WriteMem32(0x002ab740,0x34217fa6)

eeObj.WriteMem32(0x0032ac90,0x3c013fe2)
eeObj.WriteMem32(0x0032ac94,0x34218e32)

--Menu 3D Zoom
--803f013c 00088144 02200046
eeObj.WriteMem32(0x00368530,0x3c013f40)

--Game Play Zoom
--803f013c 00188144 02200046
eeObj.WriteMem32(0x003684e4,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)