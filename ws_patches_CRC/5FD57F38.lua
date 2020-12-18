apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hacks by Aced14

--16:9 Widescreen

--Title Menu
eeObj.WriteMem32(0x006E8580,0x43BA0000)
eeObj.WriteMem32(0x006E85A0,0x3F3BBBBC)

--Crush-O-Rama Camera Distance (normally based on X FOV)
eeObj.WriteMem32(0x0011F818,0x00000000)
eeObj.WriteMem32(0x0011F850,0x00000000)

--1 Player
eeObj.WriteMem32(0x006E8340,0x43900000)
eeObj.WriteMem32(0x006E8360,0x3F3BBBBC)
eeObj.WriteMem32(0x006E8700,0x43900000)
eeObj.WriteMem32(0x006E8720,0x3F3BBBBC)
eeObj.WriteMem32(0x00143820,0x0000C33A)
eeObj.WriteMem32(0x00143824,0x00006666)
eeObj.WriteMem32(0x00145200,0x0000001A)
eeObj.WriteMem32(0x00147004,0x0000001E)
eeObj.WriteMem32(0x001D53EC,0x00000208)

--2 Players - Separator Bar
eeObj.WriteMem32(0x00145718,0x0000FFFB)

--2 Players - Unified View Black Bar Fix
--Prevents black bar from appearing in the far right of unified view in 2 player matches
eeObj.WriteMem32(0x00010001,0x00707D64)
eeObj.WriteMem32(0x0018B238,0x00000000)
eeObj.WriteMem32(0x00010000,0x00707D64)
eeObj.WriteMem32(0x0018B238,0x0C051582)

--2 Players - Unified View Black Bar Fix (alternate MIPS version)
--Useful if injecting the fix into a hacked ELF or if using an older PS2 cheat device.
--eeObj.WriteMem32(0x0018B238,0x0C08036C)
--eeObj.WriteMem32(0x00200DB0,0x3C020070)
--eeObj.WriteMem32(0x00200DB4,0x8C427D64)
--eeObj.WriteMem32(0x00200DB8,0x14400003)
--eeObj.WriteMem32(0x00200DBC,0x00000000)
--eeObj.WriteMem32(0x00200DC0,0x08051582)
--eeObj.WriteMem32(0x00200DC4,0x00000000)
--eeObj.WriteMem32(0x00200DC8,0x03E00008)
--eeObj.WriteMem32(0x00200DCC,0x00000000)

--2 Players - Player 1
eeObj.WriteMem32(0x006E8400,0x43840000)
eeObj.WriteMem32(0x006E8420,0x3F3BBBBC)
eeObj.WriteMem32(0x00143850,0x0000C2C7)
eeObj.WriteMem32(0x00143854,0x00000000)
eeObj.WriteMem32(0x00146E28,0x0000001A)
eeObj.WriteMem32(0x0014507C,0x00000018)
eeObj.WriteMem32(0x0012F2C0,0x00000018)
eeObj.WriteMem32(0x0011B174,0x00000018)
eeObj.WriteMem32(0x0012E4C8,0x00000018)

--2 Players - Player 2
eeObj.WriteMem32(0x006E84C0,0x43840000)
eeObj.WriteMem32(0x006E84E0,0x3F3BBBBC)
eeObj.WriteMem32(0x00143898,0x000042C7)
eeObj.WriteMem32(0x0014389C,0x00000000)
eeObj.WriteMem32(0x00143864,0x0000433A)
eeObj.WriteMem32(0x00143868,0x00006666)
eeObj.WriteMem32(0x00145218,0x00000262)
eeObj.WriteMem32(0x00147038,0x00000262)
eeObj.WriteMem32(0x00146E54,0x00000125)
eeObj.WriteMem32(0x00145094,0x00000122)
eeObj.WriteMem32(0x0012F394,0x00000131)
eeObj.WriteMem32(0x0011B25C,0x00000275)
eeObj.WriteMem32(0x0012E604,0x00000275)

--Health Icons
eeObj.WriteMem32(0x002A85B8,0x00000014)
eeObj.WriteMem32(0x002A8648,0x00000014)
eeObj.WriteMem32(0x002A85DC,0x00000014)
eeObj.WriteMem32(0x002A866C,0x00000014)
eeObj.WriteMem32(0x002A8600,0x00000014)
eeObj.WriteMem32(0x002A8690,0x00000014)
eeObj.WriteMem32(0x002A8624,0x00000014)
eeObj.WriteMem32(0x002A86B4,0x00000014)

--Distant Shadows
eeObj.WriteMem32(0x0025FD88,0x43C00000)
eeObj.WriteMem32(0x0025FE50,0x43C00000)

--Sprites
eeObj.WriteMem32(0x0025FEF0,0x43C00000)
eeObj.WriteMem32(0x00260040,0x43C00000)

--Loading Bar
eeObj.WriteMem32(0x0022980C,0x3404014A)

--Generic Font - Width
--Impacts top + bottom title screen text, unselected unlocks screen text, and pause menu text.
eeObj.WriteMem32(0x00200884,0x00000007)

--Sub Pixels Font - Width and Spacing
--Impacts all other text.
eeObj.WriteMem32(0x00200DF8,0x0808032E)
eeObj.WriteMem32(0x00200CB8,0x3C013F40)
eeObj.WriteMem32(0x00200CBC,0x4481E800)
eeObj.WriteMem32(0x00200CC0,0x3C013F00)
eeObj.WriteMem32(0x00200CC4,0x4481F000)
eeObj.WriteMem32(0x00200CC8,0x4485F800)
eeObj.WriteMem32(0x00200CCC,0x4680FFE0)
eeObj.WriteMem32(0x00200CD0,0x461DFFC2)
eeObj.WriteMem32(0x00200CD4,0x461EFFC0)
eeObj.WriteMem32(0x00200CD8,0x4600FFE4)
eeObj.WriteMem32(0x00200CDC,0x4405F800)
eeObj.WriteMem32(0x00200CE0,0x4487F800)
eeObj.WriteMem32(0x00200CE4,0x4680FFE0)
eeObj.WriteMem32(0x00200CE8,0x461DFFC2)
eeObj.WriteMem32(0x00200CEC,0x461EFFC1)
eeObj.WriteMem32(0x00200CF0,0x4600FFE4)
eeObj.WriteMem32(0x00200CF4,0x4407F800)
eeObj.WriteMem32(0x00200CF8,0x08080380)
eeObj.WriteMem32(0x00200CFC,0x00832018)

--Unlocks - Left Text Positioning (fontSpritePrintCenteredXY)
eeObj.WriteMem32(0x00200BC4,0x08080312)
eeObj.WriteMem32(0x00200C48,0x240B00E6)
eeObj.WriteMem32(0x00200C4C,0x14AB0002)
eeObj.WriteMem32(0x00200C50,0x00000000)
eeObj.WriteMem32(0x00200C54,0x240500FD)
eeObj.WriteMem32(0x00200C58,0x080802F3)
eeObj.WriteMem32(0x00200C5C,0x0080982D)

--Unlocks - Right Text Positioning (fontSpritePrintCenteredXY)
eeObj.WriteMem32(0x001A1868,0x000001A2)
eeObj.WriteMem32(0x001A18A0,0x000001A2)
eeObj.WriteMem32(0x001A19C0,0x000001A2)
eeObj.WriteMem32(0x001A1A18,0x000001A2)
eeObj.WriteMem32(0x001A1A70,0x000001A2)
end

emuObj.AddVsyncHook(widescreen)