apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hacks by Aced14

--16:9 Widescreen

--Title Menu
eeObj.WriteMem32(0x006E1500,0x43BA0000)
eeObj.WriteMem32(0x006E1520,0x3F206D3A)

--Crush-O-Rama Camera Distance (normally based on X FOV)
eeObj.WriteMem32(0x0011F52C,0x00000000)
eeObj.WriteMem32(0x0011F564,0x00000000)

--1 Player
eeObj.WriteMem32(0x006E12C0,0x43900000)
eeObj.WriteMem32(0x006E12E0,0x3F206D3A)
eeObj.WriteMem32(0x006E1680,0x43900000)
eeObj.WriteMem32(0x006E16A0,0x3F206D3A)
eeObj.WriteMem32(0x00143060,0x0000C33A)
eeObj.WriteMem32(0x00143064,0x00006666)
eeObj.WriteMem32(0x00144390,0x0000001A)
eeObj.WriteMem32(0x00145ED4,0x0000001E)
eeObj.WriteMem32(0x001D1E4C,0x00000208)

--2 Players - Separator Bar
eeObj.WriteMem32(0x001448A8,0x0000FFFB)

--2 Players - Unified View Black Bar Fix
--Prevents black bar from appearing in the far right of unified view in 2 player matches
eeObj.WriteMem32(0x00010001,0x006F8A8C)
eeObj.WriteMem32(0x00188908,0x00000000)
eeObj.WriteMem32(0x00010000,0x006F8A8C)
eeObj.WriteMem32(0x00188908,0x0C0511E6)

--2 Players - Unified View Black Bar Fix (alternate MIPS version)
--Useful if injecting the fix into a hacked ELF or if using an older PS2 cheat device.
--eeObj.WriteMem32(0x00188908,0x0C07F3CC)
--eeObj.WriteMem32(0x001FCF30,0x3C020070)
--eeObj.WriteMem32(0x001FCF34,0x8C428A8C)
--eeObj.WriteMem32(0x001FCF38,0x14400003)
--eeObj.WriteMem32(0x001FCF3C,0x00000000)
--eeObj.WriteMem32(0x001FCF40,0x080511E6)
--eeObj.WriteMem32(0x001FCF44,0x00000000)
--eeObj.WriteMem32(0x001FCF48,0x03E00008)
--eeObj.WriteMem32(0x001FCF4C,0x00000000)

--2 Players - Player 1
eeObj.WriteMem32(0x006E1380,0x43840000)
eeObj.WriteMem32(0x006E13A0,0x3F206D39)
eeObj.WriteMem32(0x00143090,0x0000C2C7)
eeObj.WriteMem32(0x00143094,0x00000000)
eeObj.WriteMem32(0x00145D04,0x0000001A)
eeObj.WriteMem32(0x001442E0,0x00000018)
eeObj.WriteMem32(0x0012EC4C,0x00000018)
eeObj.WriteMem32(0x0011AFD8,0x00000018)
eeObj.WriteMem32(0x0012E120,0x00000018)

--2 Players - Player 2
eeObj.WriteMem32(0x006E1440,0x43840000)
eeObj.WriteMem32(0x006E1460,0x3F206D39)
eeObj.WriteMem32(0x001430D8,0x000042C7)
eeObj.WriteMem32(0x001430DC,0x00000000)
eeObj.WriteMem32(0x001430A4,0x0000433A)
eeObj.WriteMem32(0x001430A8,0x00006666)
eeObj.WriteMem32(0x001443A8,0x00000262)
eeObj.WriteMem32(0x00145F04,0x00000262)
eeObj.WriteMem32(0x00145D2C,0x00000125)
eeObj.WriteMem32(0x001442F8,0x00000122)
eeObj.WriteMem32(0x0012EC90,0x00000131)
eeObj.WriteMem32(0x0011B020,0x00000275)
eeObj.WriteMem32(0x0012E178,0x00000275)

--Health Icons
eeObj.WriteMem32(0x002A3038,0x00000014)
eeObj.WriteMem32(0x002A30C8,0x00000014)
eeObj.WriteMem32(0x002A305C,0x00000014)
eeObj.WriteMem32(0x002A30EC,0x00000014)
eeObj.WriteMem32(0x002A3080,0x00000014)
eeObj.WriteMem32(0x002A3110,0x00000014)
eeObj.WriteMem32(0x002A30A4,0x00000014)
eeObj.WriteMem32(0x002A3134,0x00000014)

--Distant Shadows
eeObj.WriteMem32(0x0025A828,0x43C00000)
eeObj.WriteMem32(0x0025A8F0,0x43C00000)

--Sprites
eeObj.WriteMem32(0x0025A990,0x43C00000)
eeObj.WriteMem32(0x0025AAE0,0x43C00000)

--Loading Bar
eeObj.WriteMem32(0x00225D54,0x3404014A)

--Generic Font - Width
--Impacts top + bottom title screen text, unselected unlocks screen text, and pause menu text.
eeObj.WriteMem32(0x001FCA04,0x00000007)

--Sub Pixels Font - Width and Spacing
--Impacts all other text.
eeObj.WriteMem32(0x001FCF78,0x0807F38E)
eeObj.WriteMem32(0x001FCE38,0x3C013F40)
eeObj.WriteMem32(0x001FCE3C,0x4481E800)
eeObj.WriteMem32(0x001FCE40,0x3C013F00)
eeObj.WriteMem32(0x001FCE44,0x4481F000)
eeObj.WriteMem32(0x001FCE48,0x4485F800)
eeObj.WriteMem32(0x001FCE4C,0x4680FFE0)
eeObj.WriteMem32(0x001FCE50,0x461DFFC2)
eeObj.WriteMem32(0x001FCE54,0x461EFFC0)
eeObj.WriteMem32(0x001FCE58,0x4600FFE4)
eeObj.WriteMem32(0x001FCE5C,0x4405F800)
eeObj.WriteMem32(0x001FCE60,0x4487F800)
eeObj.WriteMem32(0x001FCE64,0x4680FFE0)
eeObj.WriteMem32(0x001FCE68,0x461DFFC2)
eeObj.WriteMem32(0x001FCE6C,0x461EFFC1)
eeObj.WriteMem32(0x001FCE70,0x4600FFE4)
eeObj.WriteMem32(0x001FCE74,0x4407F800)
eeObj.WriteMem32(0x001FCE78,0x0807F3E0)
eeObj.WriteMem32(0x001FCE7C,0x00832018)

--Unlocks - All Text Positioning (fontSpritePrintCenteredXY)
eeObj.WriteMem32(0x0019F23C,0x000000FD)
eeObj.WriteMem32(0x0019F2B4,0x000000FD)
eeObj.WriteMem32(0x0019F364,0x000001A2)
eeObj.WriteMem32(0x0019F428,0x000001A2)
eeObj.WriteMem32(0x0019F538,0x000001A2)
eeObj.WriteMem32(0x0019F33C,0x000001A2)
eeObj.WriteMem32(0x0019F3D8,0x000001A2)
eeObj.WriteMem32(0x0019F584,0x000001A2)
eeObj.WriteMem32(0x0019F5D4,0x000001A2)
end

emuObj.AddVsyncHook(widescreen)