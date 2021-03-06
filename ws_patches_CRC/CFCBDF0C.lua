apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Twisted Metal: Black [Demo] (NTSC-U) [SCUS-97164] [CFCBDF0C]
--comment=Widescreen hacks by Aced14

--16:9 Widescreen

--FMV
--eeObj.WriteMem32(0x001C225C,0x00000000)

--Main Menu
eeObj.WriteMem32(0x004DFD30,0x43C00000)
eeObj.WriteMem32(0x004DFD50,0x3FAAAAAB)
eeObj.WriteMem32(0x004E02B4,0x0000009D)

--1 Player
eeObj.WriteMem32(0x004DF700,0x43E40000)
eeObj.WriteMem32(0x004DF720,0x3F206D39)
eeObj.WriteMem32(0x004FBF08,0xC01F1AA0)
eeObj.WriteMem32(0x004FBF14,0x40076C8B)
eeObj.WriteMem32(0x001401EC,0x0000004F)
eeObj.WriteMem32(0x0013DE3C,0x00000284)
eeObj.WriteMem32(0x00142520,0x00000035)

--1 Player - Large Rear View
eeObj.WriteMem32(0x004E0150,0x43E40000)
eeObj.WriteMem32(0x004E0170,0x3F206D39)
eeObj.WriteMem32(0x004E0200,0x43E40000)
eeObj.WriteMem32(0x004E0220,0x3F206D39)
eeObj.WriteMem32(0x004FBEE8,0x3E46A7F0)
eeObj.WriteMem32(0x004FBEFC,0x3ED47AE1)
eeObj.WriteMem32(0x001401D4,0x00000047)
eeObj.WriteMem32(0x0013DDFC,0x0000028C)

--1 Player - Small Rear View
eeObj.WriteMem32(0x004E00A0,0x44100000)
eeObj.WriteMem32(0x004E00C0,0x3F206D3A)
eeObj.WriteMem32(0x004E00A6,0x00000030)
eeObj.WriteMem32(0x004E00AC,0x000001AC)
eeObj.WriteMem32(0x004E00B0,0x450D0000)
eeObj.WriteMem32(0x004E00B4,0x44F6C000)
eeObj.WriteMem32(0x004E00B8,0x000008D0)
eeObj.WriteMem32(0x004E00BC,0x000007B6)
eeObj.WriteMem32(0x0013E490,0x00000002)
eeObj.WriteMem32(0x00142508,0x00000035)

--2 Players - Horizontal Splitscreen
eeObj.WriteMem32(0x004DF7B0,0x43E40000)
eeObj.WriteMem32(0x004DF7D0,0x3F206D39)
eeObj.WriteMem32(0x004DF860,0x43E40000)
eeObj.WriteMem32(0x004DF880,0x3F206D39)
eeObj.WriteMem32(0x004FBF20,0xC043645A)
eeObj.WriteMem32(0x0013D6F4,0x0000401D)
eeObj.WriteMem32(0x00140200,0x0000003F)
eeObj.WriteMem32(0x0013DE7C,0x0000028C)

--2 Players - Vertical Splitscreen
eeObj.WriteMem32(0x004DF910,0x43C00000)
eeObj.WriteMem32(0x004DF930,0x3F206D3A)
eeObj.WriteMem32(0x004DF9C0,0x43C00000)
eeObj.WriteMem32(0x004DF9E0,0x3F206D3A)
eeObj.WriteMem32(0x004FBF34,0xBFCF1AA0)
eeObj.WriteMem32(0x004FBF40,0x3F900000)
eeObj.WriteMem32(0x00140210,0x0000003F)
eeObj.WriteMem32(0x00142A70,0x00000023)
eeObj.WriteMem32(0x001425BC,0x000000BB)
eeObj.WriteMem32(0x001425C4,0x0000003F)

--Moving Enemy Health Bars
eeObj.WriteMem32(0x0013FF5C,0x00000020)
eeObj.WriteMem32(0x0013FF64,0x00000010)

--Moving Enemy Indicator Arrows
eeObj.WriteMem32(0x0013F90C,0x0000FFF7)
eeObj.WriteMem32(0x0013F934,0x00000009)

--Sprites
eeObj.WriteMem32(0x00233950,0x43E40000)
--eeObj.WriteMem32(0x00233688,0x43E40000)
--eeObj.WriteMem32(0x002336A8,0x43640000)

--Generic Font
eeObj.WriteMem32(0x001C459C,0x00000007)

--Radar - Closest Enemy Names Widths (hudCarWidths)
eeObj.WriteMem32(0x0023C9B0,0x09070707)
eeObj.WriteMem32(0x0023C9B4,0x06080808)
eeObj.WriteMem32(0x0023C9B8,0x09070807)
eeObj.WriteMem32(0x0023C9BC,0x08060708)
eeObj.WriteMem32(0x0023C9B0,0x00000808)

--Radar - Coordinates Positioning
eeObj.WriteMem32(0x00140604,0x00004134)
eeObj.WriteMem32(0x00140630,0x0808164C)
eeObj.WriteMem32(0x00205930,0x3C014170)
eeObj.WriteMem32(0x00205934,0x44812800)
eeObj.WriteMem32(0x00205938,0x0805018E)
eeObj.WriteMem32(0x0020593C,0x46051082)

--Left-Aligned Text Positioning (fontSpritePrintXY)
eeObj.WriteMem32(0x001C4804,0x08081650)
eeObj.WriteMem32(0x00205940,0x4485F800)
eeObj.WriteMem32(0x00205944,0x4680FFE0)
eeObj.WriteMem32(0x00205948,0x3C0142D5)
eeObj.WriteMem32(0x0020594C,0x34215558)
eeObj.WriteMem32(0x00205950,0x4481F000)
eeObj.WriteMem32(0x00205954,0x461EFFC0)
eeObj.WriteMem32(0x00205958,0x3C013F40)
eeObj.WriteMem32(0x0020595C,0x4481F000)
eeObj.WriteMem32(0x00205960,0x461EFFC2)
eeObj.WriteMem32(0x00205964,0x3C013F00)
eeObj.WriteMem32(0x00205968,0x4481F000)
eeObj.WriteMem32(0x0020596C,0x461EFFC0)
eeObj.WriteMem32(0x00205970,0x4600FFE4)
eeObj.WriteMem32(0x00205974,0x4405F800)
eeObj.WriteMem32(0x00205978,0x08071203)
eeObj.WriteMem32(0x0020597C,0x3C030051)

--Sub Pixel Font Width/Spacing (fontSetCharSizesInSubPixels)
eeObj.WriteMem32(0x001C4A80,0x080712AA)
eeObj.WriteMem32(0x001C4AA8,0x3C013F40)
eeObj.WriteMem32(0x001C4AAC,0x4481E800)
eeObj.WriteMem32(0x001C4AB0,0x3C013F00)
eeObj.WriteMem32(0x001C4AB4,0x4481F000)
eeObj.WriteMem32(0x001C4AB8,0x4485F800)
eeObj.WriteMem32(0x001C4ABC,0x4680FFE0)
eeObj.WriteMem32(0x001C4AC0,0x461DFFC2)
eeObj.WriteMem32(0x001C4AC4,0x461EFFC0)
eeObj.WriteMem32(0x001C4AC8,0x4600FFE4)
eeObj.WriteMem32(0x001C4ACC,0x4405F800)
eeObj.WriteMem32(0x001C4AD0,0x4487F800)
eeObj.WriteMem32(0x001C4AD4,0x4680FFE0)
eeObj.WriteMem32(0x001C4AD8,0x461DFFC2)
eeObj.WriteMem32(0x001C4ADC,0x461EFFC1)
eeObj.WriteMem32(0x001C4AE0,0x4600FFE4)
eeObj.WriteMem32(0x001C4AE4,0x4407F800)
eeObj.WriteMem32(0x001C4AE8,0x080712A2)
eeObj.WriteMem32(0x001C4AEC,0x00832018)

--Sub Pixel-Based Text Positioning (fontSetCursorAtSubPixel)
eeObj.WriteMem32(0x001C4B50,0x080712BC)
eeObj.WriteMem32(0x001C4AF0,0x4485F800)
eeObj.WriteMem32(0x001C4AF4,0x4680FFE0)
eeObj.WriteMem32(0x001C4AF8,0x3C0144D5)
eeObj.WriteMem32(0x001C4AFC,0x34218AAB)
eeObj.WriteMem32(0x001C4B00,0x4481F000)
eeObj.WriteMem32(0x001C4B04,0x461EFFC0)
eeObj.WriteMem32(0x001C4B08,0x3C013F40)
eeObj.WriteMem32(0x001C4B0C,0x4481F000)
eeObj.WriteMem32(0x001C4B10,0x461EFFC2)
eeObj.WriteMem32(0x001C4B14,0x3C013F00)
eeObj.WriteMem32(0x001C4B18,0x4481F000)
eeObj.WriteMem32(0x001C4B1C,0x461EFFC0)
eeObj.WriteMem32(0x001C4B20,0x4600FFE4)
eeObj.WriteMem32(0x001C4B24,0x4405F800)
eeObj.WriteMem32(0x001C4B28,0x080712D6)
eeObj.WriteMem32(0x001C4B2C,0x00832018)
end

emuObj.AddVsyncHook(widescreen)