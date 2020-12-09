apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by PsxFan107

-- DWORD Code patching routine
eeObj.WriteMem32(0x000C0000,0x3C1B000C)
eeObj.WriteMem32(0x000C0004,0xDF7100A8)
eeObj.WriteMem32(0x000C0008,0x14510005)
eeObj.WriteMem32(0x000C0010,0x8F7100B8)
eeObj.WriteMem32(0x000C0014,0xAC71FFB4)
eeObj.WriteMem32(0x000C0018,0x8F7100BC)
eeObj.WriteMem32(0x000C001C,0xAC71FFC8)
eeObj.WriteMem32(0x000C0020,0xDF7100B0)
eeObj.WriteMem32(0x000C0024,0x14510009)
eeObj.WriteMem32(0x000C002C,0x8F7100C0)
eeObj.WriteMem32(0x000C0030,0xAC71FF84)
eeObj.WriteMem32(0x000C0034,0x8F7100C4)
eeObj.WriteMem32(0x000C0038,0xAC71FF88)
eeObj.WriteMem32(0x000C003C,0x8F7100C8)
eeObj.WriteMem32(0x000C0040,0xAC71FF94)
eeObj.WriteMem32(0x000C0044,0x8F7100CC)
eeObj.WriteMem32(0x000C0048,0xAC71FFAC)
eeObj.WriteMem32(0x000C004C,0x0804C747)
eeObj.WriteMem32(0x000C0050,0xFC62FFF8)

-- WORD Code patching routine
eeObj.WriteMem32(0x000C0054,0x3C1B000C)
eeObj.WriteMem32(0x000C0058,0x8F7100A8)
eeObj.WriteMem32(0x000C005C,0x14510005)
eeObj.WriteMem32(0x000C0064,0x8F7100B8)
eeObj.WriteMem32(0x000C0068,0xACB1FFB8)
eeObj.WriteMem32(0x000C006C,0x8F7100BC)
eeObj.WriteMem32(0x000C0070,0xACB1FFCC)
eeObj.WriteMem32(0x000C0074,0x8F7100B4)
eeObj.WriteMem32(0x000C0078,0x14510009)
eeObj.WriteMem32(0x000C0080,0x8F7100C0)
eeObj.WriteMem32(0x000C0084,0xACB1FF84)
eeObj.WriteMem32(0x000C0088,0x8F7100C4)
eeObj.WriteMem32(0x000C008C,0xACB1FF88)
eeObj.WriteMem32(0x000C0090,0x8F7100C8)
eeObj.WriteMem32(0x000C0094,0xACB1FF94)
eeObj.WriteMem32(0x000C0098,0x8F7100CC)
eeObj.WriteMem32(0x000C009C,0xACB1FFAC)
eeObj.WriteMem32(0x000C00A0,0x0804C753)
eeObj.WriteMem32(0x000C00A4,0xACA2FFFC)

-- Refrence WORD/DWORD for widescreen
-- Note: The patching routine uses this to patch an address before this in memory.
eeObj.WriteMem32(0x000C00A8,0xC6030200)
eeObj.WriteMem32(0x000C00AC,0x4600A306)

-- Refrence WORD/DWORD for HUD fix
-- Note: The patching routine uses this to patch an address before this in memory.
eeObj.WriteMem32(0x000C00B0,0x468010A0)
eeObj.WriteMem32(0x000C00B4,0xC7A40030)

-- Replacement WORDs for widescreen 
eeObj.WriteMem32(0x000C00B8,0x0C030034)
eeObj.WriteMem32(0x000C00BC,0x14400007)

-- Replacement WORDs for HUD fix
eeObj.WriteMem32(0x000C00C0,0x3C013F40)
eeObj.WriteMem32(0x000C00C4,0x4481F000)
eeObj.WriteMem32(0x000C00C8,0x461E0002)
eeObj.WriteMem32(0x000C00CC,0x14600008)

-- Hor FOV recalulation routine
-- This routine checks if an unpatched HOR FOV currently resides in ram,
-- by iterating through a list and patching the value if a match is found.
eeObj.WriteMem32(0x000C00D0,0xC77E0114)
eeObj.WriteMem32(0x000C00D4,0x3C01000C)
eeObj.WriteMem32(0x000C00D8,0x3421012C)
eeObj.WriteMem32(0x000C00DC,0x277B0118)
eeObj.WriteMem32(0x000C00E0,0xC46000B0)
eeObj.WriteMem32(0x000C00E4,0x103B0007)
eeObj.WriteMem32(0x000C00E8,0xC7620000)
eeObj.WriteMem32(0x000C00EC,0x277B0004)
eeObj.WriteMem32(0x000C00F0,0x46020032)
eeObj.WriteMem32(0x000C00F4,0x4500FFFB)
eeObj.WriteMem32(0x000C00FC,0x461E0003)
eeObj.WriteMem32(0x000C0100,0xE46000B0)
eeObj.WriteMem32(0x000C0104,0x461E0002)
eeObj.WriteMem32(0x000C0108,0x46010002)
eeObj.WriteMem32(0x000C010C,0x03E00008)
eeObj.WriteMem32(0x000C0110,0x3C1B000C)

--Hor scale
eeObj.WriteMem32(0x000C0114,0x3F400000)

-- Unpatched Hor FOV values 
eeObj.WriteMem32(0x000C0118,0x3F214633)
eeObj.WriteMem32(0x000C011C,0x3F2147AE)
eeObj.WriteMem32(0x000C0120,0x3F1EB852)
eeObj.WriteMem32(0x000C0124,0x3F1FF770)
eeObj.WriteMem32(0x000C0128,0x3ED40674)

-- Jump to DWORD patching routine
eeObj.WriteMem32(0x00131D14,0x08030000)

-- Jump to WORD patching routine
eeObj.WriteMem32(0x00131D44,0x08030015)

--Force built-in widescreen
eeObj.WriteMem32(0x00010101,0x001A7BB2)
eeObj.WriteMem32(0x001A7BB1,byte,00000001
end

emuObj.AddVsyncHook(widescreen)