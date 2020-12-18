apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
-- ==========
 -- pgert@190222
 -- http:--forums.pcsx2.net/Thread-PCSX2-Widescreen-Game-Patches?pid=240786#pid240786
-- ==========
 --comment= Lara Croft Tomb Raider - Legend * SLES-53908 * PAL/Europe * 05177ECE
 --comment= pnach by pgert.
-- ==========
 -- Note that GSdx have a CRC-specific HW-hack for this game.
-- ==========
 -- This game gains a big speedup by (in combination) setting "EE Cycle Skipping" to 2
 --  under Config > Emulation Settings > Speedhacks, and activating "Monitor Frequency PAL-60"
 --  under Options > Display in the game-menu.
-- ==========

-- ==========
 -- 16:10 support.
-- eeObj.WriteMem32(0x001B6B34,0x3C013F55)
 -- eeObj.WriteMem32(0x004A4E10,0x3F555555)
 -- eeObj.WriteMem32(0x004A4E18,0x3F555555)
 -- - 204A4E10 & 204A4E18 might not work with all BIOS types & configurations.
-- eeObj.WriteMem32(0x001401D4,0x3C013F55)
-- eeObj.WriteMem32(0x0014EA44,0x3C013F55)
-- eeObj.WriteMem32(0x0014ED00,0x3C013F55)
-- eeObj.WriteMem32(0x0014EE34,0x3C013F55)
-- eeObj.WriteMem32(0x0018E804,0x3C013F55)
-- eeObj.WriteMem32(0x001C8518,0x3C013F55)
-- eeObj.WriteMem32(0x002163D8,0x3C013F55)
-- eeObj.WriteMem32(0x0021845C,0x3C013F55)
-- eeObj.WriteMem32(0x002402E0,0x3C013F55)
-- eeObj.WriteMem32(0x0027D3B0,0x3C013F55)
-- eeObj.WriteMem32(0x002ADBBC,0x3C013F55)
-- eeObj.WriteMem32(0x002C64C4,0x3C013F55)
-- eeObj.WriteMem32(0x002DF170,0x3C013F55)
-- eeObj.WriteMem32(0x002F41C0,0x3C013F55)
-- eeObj.WriteMem32(0x002F995C,0x3C013F55)
-- ==========

-- ==========
 -- 15:10 support (MS Surface Book).
 -- eeObj.WriteMem32(0x001B6B34,0x3C013F64)
 -- eeObj.WriteMem32(0x004A4E10,0x3F638E39)
 -- eeObj.WriteMem32(0x004A4E18,0x3F638E39)
 -- - 204A4E10 & 204A4E18 might not work with all BIOS types & configurations.
 -- eeObj.WriteMem32(0x001401D4,0x3C013F64)
 -- eeObj.WriteMem32(0x0014EA44,0x3C013F64)
 -- eeObj.WriteMem32(0x0014ED00,0x3C013F64)
 -- eeObj.WriteMem32(0x0014EE34,0x3C013F64)
 -- eeObj.WriteMem32(0x0018E804,0x3C013F64)
 -- eeObj.WriteMem32(0x001C8518,0x3C013F64)
 -- eeObj.WriteMem32(0x002163D8,0x3C013F64)
 -- eeObj.WriteMem32(0x0021845C,0x3C013F64)
 -- eeObj.WriteMem32(0x002402E0,0x3C013F64)
 -- eeObj.WriteMem32(0x0027D3B0,0x3C013F64)
 -- eeObj.WriteMem32(0x002ADBBC,0x3C013F64)
 -- eeObj.WriteMem32(0x002C64C4,0x3C013F64)
 -- eeObj.WriteMem32(0x002DF170,0x3C013F64)
 -- eeObj.WriteMem32(0x002F41C0,0x3C013F64)
 -- eeObj.WriteMem32(0x002F995C,0x3C013F64)
-- ==========

-- ==========
 -- Widescreen enforcement lazy-hack (optional).
-- eeObj.WriteMem32(0x003921F0,0x3F800000)
-- eeObj.WriteMem32(0x003B9080,0x00000001)
-- eeObj.WriteMem32(0x0046ED64,0x3F800000)
-- eeObj.WriteMem32(0x00977390,0x00000001)
-- eeObj.WriteMem32(0x0098EFA0,0x00000001)
 -- - Might not work with all BIOS types & configurations.
-- ==========
 -- Blackbars hack (optional).
-- eeObj.WriteMem32(0x0016C688,0x3C01BF60)
-- eeObj.WriteMem32(0x0016C694,0x3C013F60)
 -- - Set the value of these patches to 3C01BF80 & 3C013F80 to fully remove the Blackbars.
-- ==========

end

emuObj.AddVsyncHook(widescreen)