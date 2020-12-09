apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Fallout - Brotherhood of Steel (J)(SLPM-65915)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--803f013c 00608144 ee3e013c (1st, 2nd, 3nd and 4th from Bottom)
eeObj.WriteMem32(0x001f1b80,0x3c013f40)
eeObj.WriteMem32(0x00219cb8,0x3c013f40)
eeObj.WriteMem32(0x00219d38,0x3c013f40)
eeObj.WriteMem32(0x00219da4,0x3c013f40)

--X-Fov (Flare and etc)
eeObj.WriteMem32(0x0013ae7c,0x3c013f40)
--eeObj.WriteMem32(0x0013aeec,0x3c013f40)
eeObj.WriteMem32(0x0013af5c,0x3c013f40)
eeObj.WriteMem32(0x001e09f4,0x3c013f40)
eeObj.WriteMem32(0x001ee1b0,0x3c013f40)
eeObj.WriteMem32(0x001f1b30,0x3c013f40)

--Render fix
--aa3f013c 713d2134
eeObj.WriteMem32(0x0021026c,0x3c013ff0)
eeObj.WriteMem32(0x00210270,0x34210000)
eeObj.WriteMem32(0x00213220,0x3c013ff0)
eeObj.WriteMem32(0x00213224,0x34210000)
end

emuObj.AddVsyncHook(widescreen)