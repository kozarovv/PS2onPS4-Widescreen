apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Amplitude demo widescreen hacks by Aced14 (MIPS code injection) and 2007excalibur2007 (initial live memory discovery)
--comment=Frequency demos'/expansion widescreen hacks by Aced14
--comment=Hitman 2 - Silent Assassin widescreen hacks by No.47
--comment=War of the Monsters demo widescreen hacks by Aced14




--Amplitude Demo
--KIOSK Demo Disc 2.9 (NTSC-U) [SCUS-97261] [7656425F]
--Jampack Demo Disc - Summer 2003 [T-Rated] (NTSC-U) [SCUS-97280] [7656425F]
--Jampack Demo Disc - Summer 2003 [M-Rated] (NTSC-U) [SCUS-97281] [7656425F]
--Official U.S. PlayStation Magazine Demo Disc 067 (NTSC-U) [SCUS-97242] [7656425F]
--Official U.S. PlayStation Magazine Demo Disc 104 (NTSC-U) [SCUS-97532] [7656425F]

--16:9 Widescreen
eeObj.WriteMem32(0x00066D61,0x00341B30)
eeObj.WriteMem32(0x001E9214,0x08096C9A)
eeObj.WriteMem32(0x0025B268,0x3C013F40)
eeObj.WriteMem32(0x0025B26C,0x4481F800)
eeObj.WriteMem32(0x0025B270,0x461F07C2)
eeObj.WriteMem32(0x0025B274,0x0807A487)
eeObj.WriteMem32(0x0025B278,0xE61F0160)




--Frequency Demo
--KIOSK Demo Disc 2.5 (NTSC-U) [SCUS-97200] (unconfirmed CRC/demo variant)
--KIOSK Demo Disc 2.6 (NTSC-U) [SCUS-97218] (unconfirmed CRC/demo variant)
--Official U.S. PlayStation Magazine Demo Disc 060 (NTSC-U) [SCUS-97186] [7656425F]
--Official U.S. PlayStation Magazine Demo Disc 104 (NTSC-U) [SCUS-97532] [7656425F]
--PlayStation Underground Jampack Summer 2002 (NTSC-U) [SCUS-97206] (unconfirmed CRC/demo variant)

--16:9 Widescreen
eeObj.WriteMem32(0x00065246,0x008087D0)
eeObj.WriteMem32(0x004CE64C,0x0813F231)
eeObj.WriteMem32(0x004FC8C4,0x3C013F40)
eeObj.WriteMem32(0x004FC8C8,0x4481F800)
eeObj.WriteMem32(0x004FC8CC,0x461F07C2)
eeObj.WriteMem32(0x004FC8D0,0x08133995)
eeObj.WriteMem32(0x004FC8D4,0xE61F0120)




--Frequency Online/Expansion Demo
--Network Adapter Start-Up Disc (NTSC-U) [SCUS-97097] [7656425F]

--16:9 Widescreen
eeObj.WriteMem32(0x00065246,0x00917618)
eeObj.WriteMem32(0x00566D6C,0x0816709C)
eeObj.WriteMem32(0x0059C270,0x3C013F40)
eeObj.WriteMem32(0x0059C274,0x4481F800)
eeObj.WriteMem32(0x0059C278,0x461F07C2)
eeObj.WriteMem32(0x0059C27C,0x08159B5D)
eeObj.WriteMem32(0x0059C280,0xE61F0120)

--eeObj.WriteMem32(0x005CB074,0x00000355)




--Hitman 2 - Silent Assassin (NTSC-U) [SLUS-20374] [7656425F]

--important: addresses are in "STARTUP.ELF", not in the bootfile ("SLUS_203.74")!

--16:9 Widescreen
eeObj.WriteMem32(0x000a3f10,0x00313f7e)
eeObj.WriteMem32(0x00313f7c,0x3c013f10)
eeObj.WriteMem32(0x002bbe18,0x3c1b3f40)
eeObj.WriteMem32(0x002bc00c,0x3c013f00)
eeObj.WriteMem32(0x002bc010,0x4481a800)
eeObj.WriteMem32(0x002bc014,0x4615ad00)
eeObj.WriteMem32(0x002bc018,0x449bf000)
eeObj.WriteMem32(0x002bc054,0x461e0002)
eeObj.WriteMem32(0x002bc058,0x46150002)
eeObj.WriteMem32(0x002bc05c,0x4600a583)
eeObj.WriteMem32(0x002bc060,0xe6200054)
eeObj.WriteMem32(0x002bc064,0x4600a807)




--War of the Monsters Demo
--KIOSK Demo Disc 2.8 (NTSC-U) [SCUS-97261] [7656425F]
--KIOSK Demo Disc 2.9 (NTSC-U) [SCUS-97270] [7656425F]
--Jampack Demo Disc - Summer 2003 [T-Rated] (NTSC-U) [SCUS-97280] [7656425F]
--Jampack Demo Disc - Summer 2003 [M-Rated] (NTSC-U) [SCUS-97281] [7656425F]
--Official U.S. PlayStation Magazine Demo Disc 064 (NTSC-U) [SCUS-97190] [7656425F]
--Official U.S. PlayStation Magazine Demo Disc 069 (NTSC-U) [SCUS-97244] [7656425F]

--16:9 Widescreen

--Enable Condition
--Condition to only enable these hacks when the War of the Monsters demo's ELF file is loaded into memory.
eeObj.WriteMem32(0x00453739,0x002CD4F2)

--Title Menu
eeObj.WriteMem32(0x00705140,0x43BA0000)
eeObj.WriteMem32(0x00705160,0x3F206D3A)

--1 Player
eeObj.WriteMem32(0x00704F00,0x43900000)
eeObj.WriteMem32(0x00704F20,0x3F206D3A)
eeObj.WriteMem32(0x007052C0,0x43900000)
eeObj.WriteMem32(0x007052E0,0x3F206D3A)
eeObj.WriteMem32(0x00147F00,0x1000C33A)
eeObj.WriteMem32(0x00147F04,0x10006666)

--2 Players - Separator Bar
eeObj.WriteMem32(0x001496E8,0x0000FFFB)

--2 Players - Unified View Black Bar Fix
--Prevents black bar from appearing in the far right of unified view in 2 player matches
eeObj.WriteMem32(0x00010001,0x00731874)
eeObj.WriteMem32(0x0019F0E0,0x00000000)
eeObj.WriteMem32(0x00010000,0x00731874)
eeObj.WriteMem32(0x0019F0E0,0x0C052576)

--2 Players - Unified View Black Bar Fix (alternate MIPS version)
--Useful if injecting the fix into a hacked ELF or if using an older PS2 cheat device.
--If this version of the black bar fix gets enabled in the pnach or used with a PS2 cheat device, remove or --comment-out the preceding 4 line version and set the first part of the enable condition to "E04A3739".
--eeObj.WriteMem32(0x0019F0E0,0x0C084D0E)
--eeObj.WriteMem32(0x00213438,0x3C020073)
--eeObj.WriteMem32(0x0021343C,0x8C421874)
--eeObj.WriteMem32(0x00213440,0x14400003)
--eeObj.WriteMem32(0x00213444,0x00000000)
--eeObj.WriteMem32(0x00213448,0x08052576)
--eeObj.WriteMem32(0x0021344C,0x00000000)
--eeObj.WriteMem32(0x00213450,0x03E00008)
--eeObj.WriteMem32(0x00213454,0x00000000)

--2 Players - Player 1
eeObj.WriteMem32(0x00704FC0,0x43840000)
eeObj.WriteMem32(0x00704FE0,0x3F206D39)
eeObj.WriteMem32(0x00147F30,0x1000C2C7)
eeObj.WriteMem32(0x00147F34,0x10000000)

--2 Players - Player 2
eeObj.WriteMem32(0x00705080,0x43840000)
eeObj.WriteMem32(0x007050A0,0x3F206D39)
eeObj.WriteMem32(0x00147F78,0x100042C7)
eeObj.WriteMem32(0x00147F7C,0x10000000)
eeObj.WriteMem32(0x00147F44,0x1000433A)
eeObj.WriteMem32(0x00147F48,0x10006666)
eeObj.WriteMem32(0x0014B60C,0x00000262)
eeObj.WriteMem32(0x0014B440,0x00000125)

--Health Icons
eeObj.WriteMem32(0x002C8168,0x00000014)
eeObj.WriteMem32(0x002C81F8,0x00000014)
eeObj.WriteMem32(0x002C818C,0x00000014)
eeObj.WriteMem32(0x002C821C,0x00000014)

--Distant Shadows
eeObj.WriteMem32(0x0027E758,0x43C00000)
eeObj.WriteMem32(0x0027E820,0x43C00000)

--Sprites
eeObj.WriteMem32(0x0027E8C0,0x43C00000)
eeObj.WriteMem32(0x0027EA10,0x43C00000)

--Loading Bar
eeObj.WriteMem32(0x002497C4,0x3404014A)

--Generic Font - Width
--Impacts top + bottom title screen text, unselected unlocks screen text, and pause menu text.
eeObj.WriteMem32(0x00212F0C,0x00000007)

--Sub Pixels Font - Width and Spacing
--Impacts all other text.
eeObj.WriteMem32(0x00213480,0x08084CD0)
eeObj.WriteMem32(0x00213340,0x3C013F40)
eeObj.WriteMem32(0x00213344,0x4481E800)
eeObj.WriteMem32(0x00213348,0x3C013F00)
eeObj.WriteMem32(0x0021334C,0x4481F000)
eeObj.WriteMem32(0x00213350,0x4485F800)
eeObj.WriteMem32(0x00213354,0x4680FFE0)
eeObj.WriteMem32(0x00213358,0x461DFFC2)
eeObj.WriteMem32(0x0021335C,0x461EFFC0)
eeObj.WriteMem32(0x00213360,0x4600FFE4)
eeObj.WriteMem32(0x00213364,0x4405F800)
eeObj.WriteMem32(0x00213368,0x4487F800)
eeObj.WriteMem32(0x0021336C,0x4680FFE0)
eeObj.WriteMem32(0x00213370,0x461DFFC2)
eeObj.WriteMem32(0x00213374,0x461EFFC1)
eeObj.WriteMem32(0x00213378,0x4600FFE4)
eeObj.WriteMem32(0x0021337C,0x4407F800)
eeObj.WriteMem32(0x00213380,0x08084D22)
eeObj.WriteMem32(0x00213384,0x00832018)

--Left-Aligned Text Positions
--Impacts P1 pickup notifications and tweaks menu.
eeObj.WriteMem32(0x00213178,0x08084CB4)
eeObj.WriteMem32(0x002132D0,0x3C013F40)
eeObj.WriteMem32(0x002132D4,0x4481E800)
eeObj.WriteMem32(0x002132D8,0x3C013F00)
eeObj.WriteMem32(0x002132DC,0x4481F000)
eeObj.WriteMem32(0x002132E0,0x4485F800)
eeObj.WriteMem32(0x002132E4,0x4680FFE0)
eeObj.WriteMem32(0x002132E8,0x461DFFC2)
eeObj.WriteMem32(0x002132EC,0x461EFFC0)
eeObj.WriteMem32(0x002132F0,0x4600FFE4)
eeObj.WriteMem32(0x002132F4,0x4405F800)
eeObj.WriteMem32(0x002132F8,0x08084C60)
eeObj.WriteMem32(0x002132FC,0x00054100)

--Tweaks - Interactive Music - Print Interactive Music Volumes
eeObj.WriteMem32(0x001D5E44,0x0000013B)
eeObj.WriteMem32(0x001D5E70,0x0000013B)
end

emuObj.AddVsyncHook(widescreen)