apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Ratchet - Deadlocked
--comment=Widescreen hack by PsxFan107

-- Code patching routine DWORD
eeObj.WriteMem32(0x000C0000,0x3C1B000C)
eeObj.WriteMem32(0x000C0004,0xDF7101A0)
eeObj.WriteMem32(0x000C0008,0x14510005)
eeObj.WriteMem32(0x000C0010,0x8F7101E8)
eeObj.WriteMem32(0x000C0014,0xAC71FF78)
eeObj.WriteMem32(0x000C0018,0x8F7101EC)
eeObj.WriteMem32(0x000C001C,0xAC71FF8C)
eeObj.WriteMem32(0x000C0020,0xDF7101A8)
eeObj.WriteMem32(0x000C0024,0x14510003)
eeObj.WriteMem32(0x000C002C,0x8F7101F0)
eeObj.WriteMem32(0x000C0030,0xAC71FFC0)
eeObj.WriteMem32(0x000C0034,0xDF7101B0)
eeObj.WriteMem32(0x000C0038,0x14510003)
eeObj.WriteMem32(0x000C0040,0x8F7101F0)
eeObj.WriteMem32(0x000C0044,0xAC71FFA4)
eeObj.WriteMem32(0x000C0048,0xDF7101B8)
eeObj.WriteMem32(0x000C004C,0x14510005)
eeObj.WriteMem32(0x000C0054,0x8F7101F4)
eeObj.WriteMem32(0x000C0058,0xAC71FF94)
eeObj.WriteMem32(0x000C005C,0x8F7101F8)
eeObj.WriteMem32(0x000C0060,0xAC71FFA0)
eeObj.WriteMem32(0x000C0064,0xDF7101C0)
eeObj.WriteMem32(0x000C0068,0x14510003)
eeObj.WriteMem32(0x000C0070,0x8F7101FC)
eeObj.WriteMem32(0x000C0074,0xAC17FFDC)
eeObj.WriteMem32(0x000C0078,0xDF7101C8)
eeObj.WriteMem32(0x000C007C,0x14510003)
eeObj.WriteMem32(0x000C0084,0x8F710200)
eeObj.WriteMem32(0x000C0088,0xAC71FEF0)
eeObj.WriteMem32(0x000C008C,0xDF7101D0)
eeObj.WriteMem32(0x000C0090,0x14510003)
eeObj.WriteMem32(0x000C0098,0x8F710204)
eeObj.WriteMem32(0x000C009C,0xAC71FF64)
eeObj.WriteMem32(0x000C00A0,0xDF7101D8)
eeObj.WriteMem32(0x000C00A4,0x14510003)
eeObj.WriteMem32(0x000C00AC,0x8F710204)
eeObj.WriteMem32(0x000C00B0,0xAC71FFCC)
eeObj.WriteMem32(0x000C00B4,0xDF7101E0)
eeObj.WriteMem32(0x000C00B8,0x14510003)
eeObj.WriteMem32(0x000C00C0,0x8F710208)
eeObj.WriteMem32(0x000C00C4,0xAC71FFC8)
eeObj.WriteMem32(0x000C00C8,0x08055DEF)
eeObj.WriteMem32(0x000C00CC,0xFC62FFF8)

-- Code patching routine WORD
eeObj.WriteMem32(0x000C00D0,0x3C1B000C)
eeObj.WriteMem32(0x000C00D4,0x8F7101A0)
eeObj.WriteMem32(0x000C00D8,0x14510005)
eeObj.WriteMem32(0x000C00E0,0x8F7101E8)
eeObj.WriteMem32(0x000C00E4,0xACD1FF7C)
eeObj.WriteMem32(0x000C00E8,0x8F7101EC)
eeObj.WriteMem32(0x000C00EC,0xACD1FF90)
eeObj.WriteMem32(0x000C00F0,0x8F7101AC)
eeObj.WriteMem32(0x000C00F4,0x14510003)
eeObj.WriteMem32(0x000C00FC,0x8F7101F0)
eeObj.WriteMem32(0x000C0100,0xACD1FF80)
eeObj.WriteMem32(0x000C0104,0x8F7101B0)
eeObj.WriteMem32(0x000C0108,0x14510003)
eeObj.WriteMem32(0x000C0110,0x8F7101F0)
eeObj.WriteMem32(0x000C0114,0xACD1FFA8)
eeObj.WriteMem32(0x000C0118,0x8F7101BC)
eeObj.WriteMem32(0x000C011C,0x14510005)
eeObj.WriteMem32(0x000C0124,0x8F7101F4)
eeObj.WriteMem32(0x000C0128,0xACD1FF94)
eeObj.WriteMem32(0x000C012C,0x8F7101F8)
eeObj.WriteMem32(0x000C0130,0xACD1FFA0)
eeObj.WriteMem32(0x000C0134,0x8F7101C4)
eeObj.WriteMem32(0x000C0138,0x14510003)
eeObj.WriteMem32(0x000C0140,0x8F7101FC)
eeObj.WriteMem32(0x000C0144,0xACD1FFDC)
eeObj.WriteMem32(0x000C0148,0x8F7101C8)
eeObj.WriteMem32(0x000C014C,0x14510003)
eeObj.WriteMem32(0x000C0154,0x8F710200)
eeObj.WriteMem32(0x000C0158,0xACD1FEF4)
eeObj.WriteMem32(0x000C015C,0x8F7101D4)
eeObj.WriteMem32(0x000C0160,0x14510003)
eeObj.WriteMem32(0x000C0168,0x8F710204)
eeObj.WriteMem32(0x000C016C,0xACD1FF64)
eeObj.WriteMem32(0x000C0170,0x8F7101DC)
eeObj.WriteMem32(0x000C0174,0x14510003)
eeObj.WriteMem32(0x000C017C,0x8F710204)
eeObj.WriteMem32(0x000C0180,0xACD1FFCC)
eeObj.WriteMem32(0x000C0184,0x8F7101E4)
eeObj.WriteMem32(0x000C0188,0x14510003)
eeObj.WriteMem32(0x000C0190,0x8F710208)
eeObj.WriteMem32(0x000C0194,0xACD1FFC8)
eeObj.WriteMem32(0x000C0198,0x08055E03)
eeObj.WriteMem32(0x000C019C,0xACC2FFFC)

-- Refrence DWORD/WORD for Widescreen 
--Note: The patching routine uses this to patch an address before this in memory.
eeObj.WriteMem32(0x000C01A0,0xC6030210)
eeObj.WriteMem32(0x000C01A4,0x4600A306)

-- Refrence DWORD/WORD for hoverbike zoom fix 1
--Note: The patching routine uses this to patch an address before this in memory.
eeObj.WriteMem32(0x000C01A8,0x02242018)
eeObj.WriteMem32(0x000C01AC,0x02329018)

-- Refrence DWORD/WORD for hoverbike zoom  fix 2
--Note: The patching routine uses this to patch an address before this in memory.
eeObj.WriteMem32(0x000C01B0,0xC44503A0)
eeObj.WriteMem32(0x000C01B4,0x01054021)

-- Refrence  DWORD/WORD for cutscene render fix
--Note: The patching routine uses this to patch two addresses before this in memory.
eeObj.WriteMem32(0x000C01B8,0xE7B40070)
eeObj.WriteMem32(0x000C01BC,0x82020090)

-- Refrence  DWORD/WORD for alt coop widescreen branch 1
eeObj.WriteMem32(0x000C01C0,0x34A54040)
eeObj.WriteMem32(0x000C01C4,0x27848861)

-- Refrence  DWORD/WORD for alt coop widescreen branch 2
eeObj.WriteMem32(0x000C01C8,0x1083FFF7)
eeObj.WriteMem32(0x000C01CC,0x24020002)

-- Refrence  DWORD/WORD for alt coop widescreen branch 3
eeObj.WriteMem32(0x000C01D4,0x8C622670)
eeObj.WriteMem32(0x000C01D0,0x8E430000)

-- Refrence  DWORD/WORD for alt coop widescreen branch 4
eeObj.WriteMem32(0x000C01D8,0xC48F0014)
eeObj.WriteMem32(0x000C01DC,0xC48E0010)

-- Refrence  DWORD/WORD for alt coop widescreen branch 5
eeObj.WriteMem32(0x000C01E0,0xC4A40000)
eeObj.WriteMem32(0x000C01E4,0x3C014122)

-- Replacement  WORDs for widescreen
eeObj.WriteMem32(0x000C01E8,0x0C030083)
eeObj.WriteMem32(0x000C01EC,0x14600007)

--Replacement  WORD for hoverbike zoom fix
eeObj.WriteMem32(0x000C01F0,0x461E0543)

-- Replacement  WORDs for cutscene render fix
eeObj.WriteMem32(0x000C01F4,0x3C013F1C)
eeObj.WriteMem32(0x000C01F8,0xAEA100B0)

-- Replacement WORDs for alt coop widescreen
eeObj.WriteMem32(0x000C01FC,0x1440006E)
eeObj.WriteMem32(0x000C0200,0x14400007)
eeObj.WriteMem32(0x000C0204,0x14600009)
eeObj.WriteMem32(0x000C0208,0x1440000F)

-- Hor FOV recalulation routine
-- This routine checks if an unpatched HOR FOV currently resides in ram,
-- by iterating through a list and patching the value if a match is found.
eeObj.WriteMem32(0x000C020C,0xC77E0250)
eeObj.WriteMem32(0x000C0210,0x3C01000C)
eeObj.WriteMem32(0x000C0214,0x34210274)
eeObj.WriteMem32(0x000C0218,0x277B0254)
eeObj.WriteMem32(0x000C021C,0xC46000B0)
eeObj.WriteMem32(0x000C0220,0x103B0007)
eeObj.WriteMem32(0x000C0224,0xC7620000)
eeObj.WriteMem32(0x000C0228,0x277B0004)
eeObj.WriteMem32(0x000C022C,0x46020032)
eeObj.WriteMem32(0x000C0230,0x4500FFFB)
eeObj.WriteMem32(0x000C0238,0x461E0003)
eeObj.WriteMem32(0x000C023C,0xE46000B0)
eeObj.WriteMem32(0x000C0240,0x461E0002)
eeObj.WriteMem32(0x000C0244,0x46010002)
eeObj.WriteMem32(0x000C0248,0x03E00008)
eeObj.WriteMem32(0x000C024C,0x3C1B000C)
eeObj.WriteMem32(0x000C0250,0x3F400000)

-- Unpatched Hor FOV values
eeObj.WriteMem32(0x000C0254,0x3F1EB852)
eeObj.WriteMem32(0x000C0258,0x3ED40674)
eeObj.WriteMem32(0x000C025C,0x3F1EBA08)
eeObj.WriteMem32(0x000C0260,0x3EE978D5)
eeObj.WriteMem32(0x000C0264,0x3F5A3D70)
eeObj.WriteMem32(0x000C0268,0x3F5A3FCB)
eeObj.WriteMem32(0x000C026C,0x3F870CAE)
eeObj.WriteMem32(0x000C0270,0x3F53A04B)

-- Jump to DWORD patching routine
eeObj.WriteMem32(0x001577B4,0x08030000)

-- Jump to WORD patching routine
eeObj.WriteMem32(0x00157804,0x08030034)

--Force built-in widescreen
eeObj.WriteMem32(0x00010101,0x00171DE8)
eeObj.WriteMem32(0x00171DEB,byte,00000001
end

emuObj.AddVsyncHook(widescreen)