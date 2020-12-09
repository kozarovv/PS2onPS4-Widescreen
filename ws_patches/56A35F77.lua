apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by PsxFan107 (NTSC-J by Arapapa)

-- DWORD Code patching routine
eeObj.WriteMem32(0x000C0000,0x3C1B000C)
eeObj.WriteMem32(0x000C0004,0xDF710080)
eeObj.WriteMem32(0x000C0008,0x14510002)
eeObj.WriteMem32(0x000C0010,0xDF620088)
eeObj.WriteMem32(0x000C0014,0xDF710090)
eeObj.WriteMem32(0x000C0018,0x14510003)
eeObj.WriteMem32(0x000C0020,0x8F7200A0)
eeObj.WriteMem32(0x000C0024,0xAC72FFF0)
eeObj.WriteMem32(0x000C0028,0xDF710098)
eeObj.WriteMem32(0x000C002C,0x14510002)
eeObj.WriteMem32(0x000C0034,0xAC72FFF0)

--0000000000000000faff6614
eeObj.WriteMem32(0x000C0038,0x0804b6a7)
eeObj.WriteMem32(0x000C003C,0xFC62FFF8)

-- WORD Code patching routine
eeObj.WriteMem32(0x000C0040,0x3C1B000C)
eeObj.WriteMem32(0x000C0044,0x8F710080)
eeObj.WriteMem32(0x000C0048,0x14510002)
eeObj.WriteMem32(0x000C0050,0x8F620088)
eeObj.WriteMem32(0x000C0054,0x8F710090)
eeObj.WriteMem32(0x000C0058,0x14510003)
eeObj.WriteMem32(0x000C0060,0x8F7200A0)
eeObj.WriteMem32(0x000C0064,0xACB2FFF4)
eeObj.WriteMem32(0x000C0068,0x8F71009C)
eeObj.WriteMem32(0x000C006C,0x14510002)
eeObj.WriteMem32(0x000C0074,0xACB2FFF0)

--0000000000000000faffa314
eeObj.WriteMem32(0x000C0078,0x0804b6b3)
eeObj.WriteMem32(0x000C007C,0xACA2FFFC)

-- Widescreen comparison  DWORD/WORD
eeObj.WriteMem32(0x000C0080,0xC46000B0)
eeObj.WriteMem32(0x000C0084,0x46010002)

-- Widescreen replacement  DWORD/WORD
eeObj.WriteMem32(0x000C0088,0x0C030029)
eeObj.WriteMem32(0x000C008C,0x46010002)

-- Pause menu fix refrence  DWORD/WORD
-- Note: The injection routine works backwards from this.
eeObj.WriteMem32(0x000C0090,0x00055443)
eeObj.WriteMem32(0x000C0094,0x00031C00)

-- Gadgetron vendor fix refrence  DWORD/WORD
-- Note: The injection routine works backwards from this.
eeObj.WriteMem32(0x000C0098,0xE60100E8)
eeObj.WriteMem32(0x000C009C,0xE44000B0)

-- Pause menu / Gadgetron vendor fix replacement DWORD/WORD
eeObj.WriteMem32(0x000C00A0,0x342147AF)

-- HOR FOV Recalculation routine
-- This routine works by iterating through a list of unpatched FOV's.
-- If the HOR FOV in ram matches one these values, it gets recalculated.
eeObj.WriteMem32(0x000C00A4,0x8C6100B0)
eeObj.WriteMem32(0x000C00A8,0x8F640110)
eeObj.WriteMem32(0x000C00AC,0x14240006)
eeObj.WriteMem32(0x000C00B4,0xC7620114)
eeObj.WriteMem32(0x000C00B8,0xE46200B0)
eeObj.WriteMem32(0x000C00BC,0x44810000)
eeObj.WriteMem32(0x000C00C0,0x1000000F)
eeObj.WriteMem32(0x000C00C8,0xC77E010C)
eeObj.WriteMem32(0x000C00CC,0x3C01000C)
eeObj.WriteMem32(0x000C00D0,0x3421011C)
eeObj.WriteMem32(0x000C00D4,0x277B0114)
eeObj.WriteMem32(0x000C00D8,0xC46000B0)
eeObj.WriteMem32(0x000C00DC,0x103B0007)
eeObj.WriteMem32(0x000C00E0,0xC7620000)
eeObj.WriteMem32(0x000C00E4,0x277B0004)
eeObj.WriteMem32(0x000C00E8,0x46020032)
eeObj.WriteMem32(0x000C00EC,0x4500FFFB)
eeObj.WriteMem32(0x000C00F4,0x461E0003)
eeObj.WriteMem32(0x000C00F8,0xE46000B0)
eeObj.WriteMem32(0x000C00FC,0x461E0002)
eeObj.WriteMem32(0x000C0100,0x46010002)
eeObj.WriteMem32(0x000C0104,0x03E00008)
eeObj.WriteMem32(0x000C0108,0x3C1B000C)

-- Hor scale
eeObj.WriteMem32(0x000C010C,0x3F400000)

-- Pause menu and Gadgetron Hor FOV
eeObj.WriteMem32(0x000C0110,0x3F2147AF)

-- Unpatched Hor FOV values
eeObj.WriteMem32(0x000C0114,0x3F2147AE)
eeObj.WriteMem32(0x000C0118,0x3ED40674)

-- Jump to DWORD patching routine
--000062fc08006324 #1
eeObj.WriteMem32(0x0012da94,0x08030000)

-- Jump to WORD patching routine
eeObj.WriteMem32(0x0012DAC4,0x08030010)
end

emuObj.AddVsyncHook(widescreen)