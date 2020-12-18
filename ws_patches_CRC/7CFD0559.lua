apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hacks by Aced14

--16:9 Widescreen

--Title Menu
eeObj.WriteMem32(0x006E0800,0x43BA0000)
eeObj.WriteMem32(0x006E0820,0x3F206D3A)

--1 Player
eeObj.WriteMem32(0x006E05C0,0x43900000)
eeObj.WriteMem32(0x006E05E0,0x3F206D3A)
eeObj.WriteMem32(0x006E0980,0x43900000)
eeObj.WriteMem32(0x006E09A0,0x3F206D3A)
eeObj.WriteMem32(0x00143070,0x0000C33A)
eeObj.WriteMem32(0x00143074,0x00006666)
eeObj.WriteMem32(0x00145D04,0x0000001E)

--2 Players - Separator Bar
eeObj.WriteMem32(0x001446D8,0x0000FFFB)

--2 Players - Unified View Black Bar Fix
--Prevents black bar from appearing in the far right of unified view in 2 player matches
eeObj.WriteMem32(0x00010001,0x006F7D94)
eeObj.WriteMem32(0x00188758,0x00000000)
eeObj.WriteMem32(0x00010000,0x006F7D94)
eeObj.WriteMem32(0x00188758,0x0C051172)

--2 Players - Unified View Black Bar Fix (alternate MIPS version)
--Useful if injecting the fix into a hacked ELF or if using an older PS2 cheat device.
--eeObj.WriteMem32(0x00188758,0x0C07F084)
--eeObj.WriteMem32(0x001FC210,0x3C02006F)
--eeObj.WriteMem32(0x001FC214,0x8C427D94)
--eeObj.WriteMem32(0x001FC218,0x14400003)
--eeObj.WriteMem32(0x001FC21C,0x00000000)
--eeObj.WriteMem32(0x001FC220,0x08051172)
--eeObj.WriteMem32(0x001FC224,0x00000000)
--eeObj.WriteMem32(0x001FC228,0x03E00008)
--eeObj.WriteMem32(0x001FC22C,0x00000000)

--2 Players - Player 1
eeObj.WriteMem32(0x006E0680,0x43840000)
eeObj.WriteMem32(0x006E06A0,0x3F206D39)
eeObj.WriteMem32(0x001430A0,0x0000C2C7)
eeObj.WriteMem32(0x001430A4,0x00000000)
eeObj.WriteMem32(0x00145B34,0x0000001A)

--2 Players - Player 2
eeObj.WriteMem32(0x006E0740,0x43840000)
eeObj.WriteMem32(0x006E0760,0x3F206D39)
eeObj.WriteMem32(0x001430E8,0x000042C7)
eeObj.WriteMem32(0x001430EC,0x00000000)
eeObj.WriteMem32(0x001430B4,0x0000433A)
eeObj.WriteMem32(0x001430B8,0x00006666)
eeObj.WriteMem32(0x00145D34,0x00000262)
eeObj.WriteMem32(0x00145B5C,0x00000125)

--Health Icons
eeObj.WriteMem32(0x002A2308,0x00000014)
eeObj.WriteMem32(0x002A2398,0x00000014)
eeObj.WriteMem32(0x002A232C,0x00000014)
eeObj.WriteMem32(0x002A23BC,0x00000014)

--Distant Shadows
eeObj.WriteMem32(0x00259AE8,0x43C00000)
eeObj.WriteMem32(0x00259BB0,0x43C00000)

--Sprites
eeObj.WriteMem32(0x00259C50,0x43C00000)
eeObj.WriteMem32(0x00259DA0,0x43C00000)

--Loading Bar
eeObj.WriteMem32(0x00225034,0x3404014A)

--Generic Font - Width
--Impacts top + bottom title screen text, unselected unlocks screen text, and pause menu text.
eeObj.WriteMem32(0x001FBCE4,0x00000007)

--Sub Pixels Font - Width and Spacing
--Impacts all other text.
eeObj.WriteMem32(0x001FC258,0x0807F046)
eeObj.WriteMem32(0x001FC118,0x3C013F40)
eeObj.WriteMem32(0x001FC11C,0x4481E800)
eeObj.WriteMem32(0x001FC120,0x3C013F00)
eeObj.WriteMem32(0x001FC124,0x4481F000)
eeObj.WriteMem32(0x001FC128,0x4485F800)
eeObj.WriteMem32(0x001FC12C,0x4680FFE0)
eeObj.WriteMem32(0x001FC130,0x461DFFC2)
eeObj.WriteMem32(0x001FC134,0x461EFFC0)
eeObj.WriteMem32(0x001FC138,0x4600FFE4)
eeObj.WriteMem32(0x001FC13C,0x4405F800)
eeObj.WriteMem32(0x001FC140,0x4487F800)
eeObj.WriteMem32(0x001FC144,0x4680FFE0)
eeObj.WriteMem32(0x001FC148,0x461DFFC2)
eeObj.WriteMem32(0x001FC14C,0x461EFFC1)
eeObj.WriteMem32(0x001FC150,0x4600FFE4)
eeObj.WriteMem32(0x001FC154,0x4407F800)
eeObj.WriteMem32(0x001FC158,0x0807F098)
eeObj.WriteMem32(0x001FC15C,0x00832018)
end

emuObj.AddVsyncHook(widescreen)