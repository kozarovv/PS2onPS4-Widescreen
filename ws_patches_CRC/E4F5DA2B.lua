apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Tales of Legendia (NTSC-K)(SCKA-20050)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--ae47613f 00000045 00000045
eeObj.WriteMem32(0x003D9D20,0x3f266666)
--abaaaa3e 8988083e da0d5d3d
eeObj.WriteMem32(0x003BE830,0x40133333)

--2D Popup Characters Fix

--80bf023c 00608244 00000000 866b0046
eeObj.WriteMem32(0x001e98f4,0x3c02bf40)

--46630046 86630046 (1st)
eeObj.WriteMem32(0x001e999c,0x00000000)
eeObj.WriteMem32(0x001e9998,0x08030008)
eeObj.WriteMem32(0x000c0020,0x46006346)
eeObj.WriteMem32(0x000c0024,0x46006386)
eeObj.WriteMem32(0x000c0028,0x3c013f40)
eeObj.WriteMem32(0x000c002c,0x4481f000)
eeObj.WriteMem32(0x000c0030,0x461e6302)
eeObj.WriteMem32(0x000c0034,0x0807a667)

--Portrait fix (battle)
--4c42023c 001275e4
eeObj.WriteMem32(0x002ad214,0x3c024219)
--4c42033c 68c2023c
eeObj.WriteMem32(0x002ad258,0x3c034219)

/Font Fix
--20 00 00 00 00 00 F0 41 00 02 00 00 C0 01 00 00
--02080446 000000e6 040000c6
eeObj.WriteMem32(0x00060020,0x003d9e18)
eeObj.WriteMem32(0x0023acd0,0x08030000)
eeObj.WriteMem32(0x000c0000,0x46040802)
eeObj.WriteMem32(0x000c0004,0x3c013f40)
eeObj.WriteMem32(0x000c0008,0x4481f000)
eeObj.WriteMem32(0x000c000c,0x461e0002)
eeObj.WriteMem32(0x000c0010,0x0808eb35)

eeObj.WriteMem32(0x00010020,0x103d9e18)
eeObj.WriteMem32(0x0023acd0,0x46040802)

--No Interlacing Code by asasega
--00 10 00 00 00 00 00 00 7C 22 03 02 FF F9 1B 00
eeObj.WriteMem32(0x003F84D0,0x00001000)
eeObj.WriteMem32(0x003F84D0,0x000010E0)

--------------------------------------------------------/
/
--동영상 자막 글자
--Y-position
--eeObj.WriteMem32(0x00208480,0x3c034020)

--X-position
--eeObj.WriteMem32(0x00230154,0x3c0344f0)

--Y-Position
--eeObj.WriteMem32(0x0023015c,0x3c0244e0)

--2D Zoom
--eeObj.WriteMem32(0x0015efbc,0x3c033fab)
--X-Fov
--eeObj.WriteMem32(0x0015bad4,0x3c023ec0)

end

emuObj.AddVsyncHook(widescreen)