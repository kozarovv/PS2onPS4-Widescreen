apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hacks by Aced14

--16:9 Widescreen

--Main Menu
eeObj.WriteMem32(0x004E25B0,0x43C00000)
eeObj.WriteMem32(0x004E25D0,0x3FAAAAAB)
eeObj.WriteMem32(0x0019D044,0x0000003B)
eeObj.WriteMem32(0x0019D32C,0x0000003B)
eeObj.WriteMem32(0x004E2B34,0x0000009D)

--1 Player
eeObj.WriteMem32(0x004E1F80,0x43E40000)
eeObj.WriteMem32(0x004E1FA0,0x3F3BBBBC)
eeObj.WriteMem32(0x00500318,0xC01F1AA0)
eeObj.WriteMem32(0x00500324,0x40076C8B)
eeObj.WriteMem32(0x001400C4,0x0000004F)
eeObj.WriteMem32(0x0013DC70,0x00000284)
eeObj.WriteMem32(0x0013DFD4,0x00000235)
eeObj.WriteMem32(0x0013DFBC,0x0000022E)

--1 Player - Large Rear View
eeObj.WriteMem32(0x004E29D0,0x43E40000)
eeObj.WriteMem32(0x004E29F0,0x3F3BBBBC)
eeObj.WriteMem32(0x004E2A80,0x43E40000)
eeObj.WriteMem32(0x004E2AA0,0x3F3BBBBC)
eeObj.WriteMem32(0x005002F8,0x3E46A7F0)
eeObj.WriteMem32(0x0050030c,0x3ED47AE1)
eeObj.WriteMem32(0x001400AC,0x00000047)
eeObj.WriteMem32(0x0013DC30,0x0000028C)

--1 Player - Small Rear View
eeObj.WriteMem32(0x004E2920,0x44100000)
eeObj.WriteMem32(0x004E2940,0x3F3BBBBC)
eeObj.WriteMem32(0x004E292C,0x000001AC)
eeObj.WriteMem32(0x004E2930,0x450D0000)
eeObj.WriteMem32(0x004E2938,0x000008D0)
eeObj.WriteMem32(0x0013E368,0x00000002)
eeObj.WriteMem32(0x001423E0,0x0000003D)

--2-4 Players - In-Game Loading Bar
eeObj.WriteMem32(0x004E2BE4,0x000000A1)
eeObj.WriteMem32(0x004E2BEC,0x000000F0)

--2 Players - Horizontal Splitscreen
eeObj.WriteMem32(0x004E2030,0x43E40000)
eeObj.WriteMem32(0x004E2050,0x3F3BBBBC)
eeObj.WriteMem32(0x004E20E0,0x43E40000)
eeObj.WriteMem32(0x004E2100,0x3F3BBBBC)
eeObj.WriteMem32(0x00500330,0xC043645A)
eeObj.WriteMem32(0x0013D4EC,0x0000401D)
eeObj.WriteMem32(0x001400D8,0x0000003F)
eeObj.WriteMem32(0x0013DCB0,0x0000028C)

--2 Players - Vertical Splitscreen
eeObj.WriteMem32(0x004E2190,0x43C00000)
eeObj.WriteMem32(0x004E21B0,0x3F3BBBBC)
eeObj.WriteMem32(0x004E2240,0x43C00000)
eeObj.WriteMem32(0x004E2260,0x3F3BBBBC)
eeObj.WriteMem32(0x00500344,0xBFCF1AA0)
eeObj.WriteMem32(0x00500350,0x3F900000)
eeObj.WriteMem32(0x001400E8,0x0000003F)
eeObj.WriteMem32(0x00142948,0x00000023)
eeObj.WriteMem32(0x0013DCF8,0x000000BD)
eeObj.WriteMem32(0x00142494,0x000000BB)
eeObj.WriteMem32(0x0014249C,0x00000049)

--3-4 Players
eeObj.WriteMem32(0x004E2660,0x44040000)
eeObj.WriteMem32(0x004E2680,0x3F3BBBBB)
eeObj.WriteMem32(0x004E2710,0x44040000)
eeObj.WriteMem32(0x004E2730,0x3F3BBBBB)
eeObj.WriteMem32(0x004E27C0,0x44040000)
eeObj.WriteMem32(0x004E27E0,0x3F3BBBBB)
eeObj.WriteMem32(0x004E2870,0x44040000)
eeObj.WriteMem32(0x004E2890,0x3F3BBBBB)
eeObj.WriteMem32(0x00500358,0xC006978D)
eeObj.WriteMem32(0x00500364,0x3FBDF3B6)
eeObj.WriteMem32(0x0013D918,0x00000111)
eeObj.WriteMem32(0x0013D920,0x00000025)
eeObj.WriteMem32(0x0013D934,0x00000111)
eeObj.WriteMem32(0x0013D938,0x0000000E)
eeObj.WriteMem32(0x0013D93C,0x00000025)
eeObj.WriteMem32(0x0013D950,0x0000012D)
eeObj.WriteMem32(0x0013D954,0x00000011)
eeObj.WriteMem32(0x0013D958,0x00000008)
eeObj.WriteMem32(0x0013D960,0x00000020)
eeObj.WriteMem32(0x00142378,0x00000099)
eeObj.WriteMem32(0x001643B4,0x0000019D)
eeObj.WriteMem32(0x001644CC,0x0000019D)
eeObj.WriteMem32(0x001648D4,0x0000019D)

--Moving Enemy Health Bars
eeObj.WriteMem32(0x0013FE34,0x00000020)
eeObj.WriteMem32(0x0013FE3C,0x00000010)

--Moving Enemy Indicator Arrows
eeObj.WriteMem32(0x0013F7E4,0x0000FFF7)
eeObj.WriteMem32(0x0013F80C,0x00000009)

--Sprites
eeObj.WriteMem32(0x00234750,0x43E40000)
--eeObj.WriteMem32(0x00234488,0x43E40000)
--eeObj.WriteMem32(0x002344A8,0x43640000)

--Generic Font
eeObj.WriteMem32(0x001C538C,0x00000007)

--Radar - Closest Enemy Names Widths (hudCarWidths)
eeObj.WriteMem32(0x0023E650,0x09070707)
eeObj.WriteMem32(0x0023E654,0x06080808)
eeObj.WriteMem32(0x0023E658,0x09070807)
eeObj.WriteMem32(0x0023E65C,0x08060708)
eeObj.WriteMem32(0x0023E660,0x00000808)

--Radar - Coordinates Positioning
eeObj.WriteMem32(0x001404DC,0x00004134)
eeObj.WriteMem32(0x00140508,0x08071648)
eeObj.WriteMem32(0x001C5920,0x3C014189)
eeObj.WriteMem32(0x001C5924,0x34212492)
eeObj.WriteMem32(0x001C5928,0x44812800)
eeObj.WriteMem32(0x001C592C,0x08050144)
eeObj.WriteMem32(0x001C5930,0x46051082)

--Left-Aligned Text Positioning (fontSpritePrintXY)
eeObj.WriteMem32(0x001C55F4,0x080819C8)
eeObj.WriteMem32(0x00206720,0x4485F800)
eeObj.WriteMem32(0x00206724,0x4680FFE0)
eeObj.WriteMem32(0x00206728,0x3C0142D5)
eeObj.WriteMem32(0x0020672C,0x34215558)
eeObj.WriteMem32(0x00206730,0x4481F000)
eeObj.WriteMem32(0x00206734,0x461EFFC0)
eeObj.WriteMem32(0x00206738,0x3C013F40)
eeObj.WriteMem32(0x0020673C,0x4481F000)
eeObj.WriteMem32(0x00206740,0x461EFFC2)
eeObj.WriteMem32(0x00206744,0x3C013F00)
eeObj.WriteMem32(0x00206748,0x4481F000)
eeObj.WriteMem32(0x0020674C,0x461EFFC0)
eeObj.WriteMem32(0x00206750,0x4600FFE4)
eeObj.WriteMem32(0x00206754,0x4405F800)
eeObj.WriteMem32(0x00206758,0x0807157F)
eeObj.WriteMem32(0x0020675C,0x3C030051)

--Sub Pixel Font Width/Spacing (fontSetCharSizesInSubPixels)
eeObj.WriteMem32(0x001C5870,0x08071626)
eeObj.WriteMem32(0x001C5898,0x3C013F40)
eeObj.WriteMem32(0x001C589C,0x4481E800)
eeObj.WriteMem32(0x001C58A0,0x3C013F00)
eeObj.WriteMem32(0x001C58A4,0x4481F000)
eeObj.WriteMem32(0x001C58A8,0x4485F800)
eeObj.WriteMem32(0x001C58AC,0x4680FFE0)
eeObj.WriteMem32(0x001C58B0,0x461DFFC2)
eeObj.WriteMem32(0x001C58B4,0x461EFFC0)
eeObj.WriteMem32(0x001C58B8,0x4600FFE4)
eeObj.WriteMem32(0x001C58BC,0x4405F800)
eeObj.WriteMem32(0x001C58C0,0x4487F800)
eeObj.WriteMem32(0x001C58C4,0x4680FFE0)
eeObj.WriteMem32(0x001C58C8,0x461DFFC2)
eeObj.WriteMem32(0x001C58CC,0x461EFFC1)
eeObj.WriteMem32(0x001C58D0,0x4600FFE4)
eeObj.WriteMem32(0x001C58D4,0x4407F800)
eeObj.WriteMem32(0x001C58D8,0x0807161E)
eeObj.WriteMem32(0x001C58DC,0x00832018)

--Sub Pixel-Based Text Positioning (fontSetCursorAtSubPixel)
eeObj.WriteMem32(0x001C5940,0x08071638)
eeObj.WriteMem32(0x001C58E0,0x4485F800)
eeObj.WriteMem32(0x001C58E4,0x4680FFE0)
eeObj.WriteMem32(0x001C58E8,0x3C0144D5)
eeObj.WriteMem32(0x001C58EC,0x34218AAB)
eeObj.WriteMem32(0x001C58F0,0x4481F000)
eeObj.WriteMem32(0x001C58F4,0x461EFFC0)
eeObj.WriteMem32(0x001C58F8,0x3C013F40)
eeObj.WriteMem32(0x001C58FC,0x4481F000)
eeObj.WriteMem32(0x001C5900,0x461EFFC2)
eeObj.WriteMem32(0x001C5904,0x3C013F00)
eeObj.WriteMem32(0x001C5908,0x4481F000)
eeObj.WriteMem32(0x001C590C,0x461EFFC0)
eeObj.WriteMem32(0x001C5910,0x4600FFE4)
eeObj.WriteMem32(0x001C5914,0x4405F800)
eeObj.WriteMem32(0x001C5918,0x08071652)
eeObj.WriteMem32(0x001C591C,0x00832018)
end

emuObj.AddVsyncHook(widescreen)