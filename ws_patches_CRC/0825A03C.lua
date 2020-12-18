apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hacks by Aced14 (NTSC-K by Arapapa)

--16:9 Widescreen

--Title Menu
--00 00 F8 43 80 02 E0 00 80 02 E0 00
eeObj.WriteMem32(0x006e5880,0x43BA0000)
--D7 A3 F0 3E 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 AE 1D 57 BF AE 1D 57 3F 00 00 00 00
eeObj.WriteMem32(0x006e58a0,0x3F206D3A)

--Crush-O-Rama Camera Distance (normally based on X FOV)
--C2 BD 15 46 06 A3 00 46
eeObj.WriteMem32(0x0011F498,0x00000000)
--02 00 02 46 00 00 4B DA 00 00 02 44
eeObj.WriteMem32(0x0011f4d0,0x00000000)

--1 Player
--00 00 C0 43 80 02 E0 00 80 02 E0 00 00 00 00 00
eeObj.WriteMem32(0x006e5640,0x43900000)
eeObj.WriteMem32(0x006e5660,0x3F206D3A)

--00 00 C0 43 80 02 E0 00 80 02 E0 00 00 00 00 00 (2nd)
eeObj.WriteMem32(0x006e5a00,0x43900000)
eeObj.WriteMem32(0x006e5a20,0x3F206D3A)

--0A C3 01 3C 3D 4A 21
eeObj.WriteMem32(0x00142fa0,0x0000C33A)
eeObj.WriteMem32(0x00142fa4,0x00006666)

--23 00 05 24 F6 FE 07 0C
eeObj.WriteMem32(0x00144878,0x0000001A)
--28 00 05 24 00 00 47 8C
eeObj.WriteMem32(0x001463c4,0x0000001E)
--E0 01 05 24 F6 FE 07 0C
eeObj.WriteMem32(0x001D360C,0x00000208)

--Health Icons
--1A 00 00 00 0D 00 00 00 00 00 00 00 00 00 00 00
eeObj.WriteMem32(0x002a4c38,0x00000014)
eeObj.WriteMem32(0x002A4CC8,0x00000014)
eeObj.WriteMem32(0x002A4C5C,0x00000014)
eeObj.WriteMem32(0x002A4CEC,0x00000014)
eeObj.WriteMem32(0x002A4C80,0x00000014)
eeObj.WriteMem32(0x002A4D10,0x00000014)
eeObj.WriteMem32(0x002A4CA4,0x00000014)
eeObj.WriteMem32(0x002A4D34,0x00000014)

--Distant Shadows
00 00 00 44 BF 21 E0 81 3C 2B 2E 80 DE AD 20 00
eeObj.WriteMem32(0x0025c3e8,0x43C00000)
00 00 00 44 D0 7B 80 81 3C 03 00 80 FF 02 00 00
eeObj.WriteMem32(0x0025c4b0,0x43C00000)

--Sprites
--00 00 00 44 18 02 40 80 45 04 0F 42 FF 02 00 00
eeObj.WriteMem32(0x0025c550,0x43C00000)
--00 00 00 44 18 02 40 80 1B 04 0F 42 FF 02 00 00
eeObj.WriteMem32(0x0025c6a0,0x43C00000)

--Loading Bar
--08 00 A4 8F 80 00 0C 24 C0 39 07 00 00 00 A5 8F
eeObj.WriteMem32(0x00227a54,0x3404014A)

--Generic Font - Width
--Impacts top + bottom title screen text, unselected unlocks screen text, and pause menu text.
--05 00 06 24 1A 00 A6 00 38 00 03 24 75 00 02 3C
eeObj.WriteMem32(0x001Fe594,0x00000007)
end

emuObj.AddVsyncHook(widescreen)