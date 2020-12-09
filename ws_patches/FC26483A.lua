apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=War of the Monsters (NTSC-J) [SLPM-65412]
--comment=Widescreen hacks by Aced14

--16:9 Widescreen

--Title Menu
eeObj.WriteMem32(0x006E9100,0x43BA0000)
eeObj.WriteMem32(0x006E9120,0x3F206D3A)

--Crush-O-Rama Camera Distance (normally based on X FOV)
eeObj.WriteMem32(0x0011F8C4,0x00000000)
eeObj.WriteMem32(0x0011F8FC,0x00000000)

--1 Player
eeObj.WriteMem32(0x006E8EC0,0x43900000)
eeObj.WriteMem32(0x006E8EE0,0x3F206D3A)
eeObj.WriteMem32(0x006E9280,0x43900000)
eeObj.WriteMem32(0x006E92A0,0x3F206D3A)
eeObj.WriteMem32(0x001439C0,0x0000C33A)
eeObj.WriteMem32(0x001439C4,0x00006666)
eeObj.WriteMem32(0x00145360,0x0000001A)
eeObj.WriteMem32(0x00146EEC,0x0000001E)
eeObj.WriteMem32(0x001D409C,0x00000208)

--2 Players - Separator Bar
eeObj.WriteMem32(0x00145878,0x0000FFFB)

--2 Players - Unified View Black Bar Fix
--Prevents black bar from appearing in the far right of unified view in 2 player matches
eeObj.WriteMem32(0x00010001,0x0070A6C4)
eeObj.WriteMem32(0x001896D8,0x00000000)
eeObj.WriteMem32(0x00010000,0x0070A6C4)
eeObj.WriteMem32(0x001896D8,0x0C0515DA)

--2 Players - Unified View Black Bar Fix (alternate MIPS version)
--Useful if injecting the fix into a hacked ELF or if using an older PS2 cheat device.
--eeObj.WriteMem32(0x001896D8,0x0C07FFAC)
--eeObj.WriteMem32(0x001FFEB0,0x3C020071)
--eeObj.WriteMem32(0x001FFEB4,0x8C42A6C4)
--eeObj.WriteMem32(0x001FFEB8,0x14400003)
--eeObj.WriteMem32(0x001FFEBC,0x00000000)
--eeObj.WriteMem32(0x001FFEC0,0x080515DA)
--eeObj.WriteMem32(0x001FFEC4,0x00000000)
--eeObj.WriteMem32(0x001FFEC8,0x03E00008)
--eeObj.WriteMem32(0x001FFECC,0x00000000)

--2 Players - Player 1
eeObj.WriteMem32(0x006E8F80,0x43840000)
eeObj.WriteMem32(0x006E8FA0,0x3F206D39)
eeObj.WriteMem32(0x001439F0,0x0000C2C7)
eeObj.WriteMem32(0x001439F4,0x00000000)
eeObj.WriteMem32(0x00146D10,0x0000001A)
eeObj.WriteMem32(0x0014525C,0x00000018)
eeObj.WriteMem32(0x0012F488,0x00000018)
eeObj.WriteMem32(0x0011B21C,0x00000018)
eeObj.WriteMem32(0x0012E680,0x00000018)

--2 Players - Player 2
eeObj.WriteMem32(0x006E9040,0x43840000)
eeObj.WriteMem32(0x006E9060,0x3F206D39)
eeObj.WriteMem32(0x00143A38,0x000042C7)
eeObj.WriteMem32(0x00143A3C,0x00000000)
eeObj.WriteMem32(0x00143A04,0x0000433A)
eeObj.WriteMem32(0x00143A08,0x00006666)
eeObj.WriteMem32(0x00145378,0x00000262)
eeObj.WriteMem32(0x00146F20,0x00000262)
eeObj.WriteMem32(0x00146D3C,0x00000125)
eeObj.WriteMem32(0x00145274,0x00000122)
eeObj.WriteMem32(0x0012F55C,0x00000131)
eeObj.WriteMem32(0x0011B304,0x00000275)
eeObj.WriteMem32(0x0012E7BC,0x00000275)

--Health Icons
eeObj.WriteMem32(0x002A77B8,0x00000014)
eeObj.WriteMem32(0x002A7848,0x00000014)
eeObj.WriteMem32(0x002A77DC,0x00000014)
eeObj.WriteMem32(0x002A786C,0x00000014)
eeObj.WriteMem32(0x002A7800,0x00000014)
eeObj.WriteMem32(0x002A7890,0x00000014)
eeObj.WriteMem32(0x002A7824,0x00000014)
eeObj.WriteMem32(0x002A78B4,0x00000014)

--Distant Shadows
eeObj.WriteMem32(0x0025EF68,0x43C00000)
eeObj.WriteMem32(0x0025F030,0x43C00000)

--Sprites
eeObj.WriteMem32(0x0025F0D0,0x43C00000)
eeObj.WriteMem32(0x0025F220,0x43C00000)

--Loading Bar
eeObj.WriteMem32(0x0022900C,0x3404014A)

--Generic Font - Width
--Impacts top + bottom title screen text, unselected unlocks screen text, and pause menu text.
eeObj.WriteMem32(0x001FF94C,0x00000007)

--Sub Pixels Font - Width and Spacing
--Impacts all other text.
eeObj.WriteMem32(0x001FFEF8,0x0807FF6E)
eeObj.WriteMem32(0x001FFDB8,0x3C013F40)
eeObj.WriteMem32(0x001FFDBC,0x4481E800)
eeObj.WriteMem32(0x001FFDC0,0x3C013F00)
eeObj.WriteMem32(0x001FFDC4,0x4481F000)
eeObj.WriteMem32(0x001FFDC8,0x4485F800)
eeObj.WriteMem32(0x001FFDCC,0x4680FFE0)
eeObj.WriteMem32(0x001FFDD0,0x461DFFC2)
eeObj.WriteMem32(0x001FFDD4,0x461EFFC0)
eeObj.WriteMem32(0x001FFDD8,0x4600FFE4)
eeObj.WriteMem32(0x001FFDDC,0x4405F800)
eeObj.WriteMem32(0x001FFDE0,0x4487F800)
eeObj.WriteMem32(0x001FFDE4,0x4680FFE0)
eeObj.WriteMem32(0x001FFDE8,0x461DFFC2)
eeObj.WriteMem32(0x001FFDEC,0x461EFFC1)
eeObj.WriteMem32(0x001FFDF0,0x4600FFE4)
eeObj.WriteMem32(0x001FFDF4,0x4407F800)
eeObj.WriteMem32(0x001FFDF8,0x0807FFC0)
eeObj.WriteMem32(0x001FFDFC,0x00832018)

--Unlocks - Left Text Positioning (fontSpritePrintCenteredXY)
eeObj.WriteMem32(0x001FFCC4,0x0807FF52)
eeObj.WriteMem32(0x001FFD48,0x240B00E6)
eeObj.WriteMem32(0x001FFD4C,0x14AB0002)
eeObj.WriteMem32(0x001FFD50,0x00000000)
eeObj.WriteMem32(0x001FFD54,0x240500FD)
eeObj.WriteMem32(0x001FFD58,0x0807FF33)
eeObj.WriteMem32(0x001FFD5C,0x0080982D)

--Unlocks - Right Text Positioning (fontSpritePrintCenteredXY)
eeObj.WriteMem32(0x001A011C,0x000001A2)
eeObj.WriteMem32(0x001A0154,0x000001A2)
eeObj.WriteMem32(0x001A0274,0x000001A2)
eeObj.WriteMem32(0x001A02CC,0x000001A2)
eeObj.WriteMem32(0x001A0324,0x000001A2)
end

emuObj.AddVsyncHook(widescreen)