apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
-- ==========
 -- pgert@190222
 -- http:--forums.pcsx2.net/Thread-PCSX2-Widescreen-Game-Patches?pid=240786#pid240786
-- ==========
 --gametitle=Lara Croft Tomb Raider - Anniversary
 --comment= Lara Croft Tomb Raider - Anniversary * SLES-54674 * PAL/Europe * A629A376
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
-- eeObj.WriteMem32(0x001B8754,0x3C013F55)
 -- eeObj.WriteMem32(0x004AD580,0x3F555555)
 -- eeObj.WriteMem32(0x004AD588,0x3F555555)
 -- - 204AD580 & 204AD588 might not work with all BIOS types & configurations.
-- eeObj.WriteMem32(0x00140E1C,0x3C013F55)
-- eeObj.WriteMem32(0x001513C4,0x3C013F55)
-- eeObj.WriteMem32(0x00151680,0x3C013F55)
-- eeObj.WriteMem32(0x001517B4,0x3C013F55)
-- eeObj.WriteMem32(0x0016f374,0x3C01BF55)
-- eeObj.WriteMem32(0x0016F380,0x3C013F55)
-- eeObj.WriteMem32(0x00192EBC,0x3C013F55)
-- eeObj.WriteMem32(0x00212708,0x3C013F55)
-- eeObj.WriteMem32(0x002147AC,0x3C013F55)
-- eeObj.WriteMem32(0x00241D38,0x3C013F55)
-- eeObj.WriteMem32(0x002A6724,0x3C013F55)
-- eeObj.WriteMem32(0x002C3D1C,0x3C013F55)
-- eeObj.WriteMem32(0x002DBA08,0x3C013F55)
-- eeObj.WriteMem32(0x002F1C98,0x3C013F55)
-- eeObj.WriteMem32(0x002F7864,0x3C013F55)
-- ==========

-- ==========
 -- 15:10 support (MS Surface Book).
-- eeObj.WriteMem32(0x001B8754,0x3C013F64)
 -- eeObj.WriteMem32(0x004AD580,0x3F638E39)
 -- eeObj.WriteMem32(0x004AD588,0x3F638E39)
 -- - 204AD580 & 204AD588 might not work with all BIOS types & configurations.
-- eeObj.WriteMem32(0x00140E1C,0x3C013F64)
-- eeObj.WriteMem32(0x001513C4,0x3C013F64)
-- eeObj.WriteMem32(0x00151680,0x3C013F64)
-- eeObj.WriteMem32(0x001517B4,0x3C013F64)
-- eeObj.WriteMem32(0x0016f374,0x3C01BF64)
-- eeObj.WriteMem32(0x0016F380,0x3C013F64)
-- eeObj.WriteMem32(0x00192EBC,0x3C013F64)
-- eeObj.WriteMem32(0x00212708,0x3C013F64)
-- eeObj.WriteMem32(0x002147AC,0x3C013F64)
-- eeObj.WriteMem32(0x00241D38,0x3C013F64)
-- eeObj.WriteMem32(0x002A6724,0x3C013F64)
-- eeObj.WriteMem32(0x002C3D1C,0x3C013F64)
-- eeObj.WriteMem32(0x002DBA08,0x3C013F64)
-- eeObj.WriteMem32(0x002F1C98,0x3C013F64)
-- eeObj.WriteMem32(0x002F7864,0x3C013F64)
-- ==========

-- ==========
 -- Widescreen enforcement lazy-hack (optional).
-- eeObj.WriteMem32(0x00398590,0x3F800000)
-- eeObj.WriteMem32(0x003BED10,0x00000001)
-- eeObj.WriteMem32(0x00992524,0x00000001)
 -- - Might not work with all BIOS types & configurations.
-- ==========
 -- Calcutta-Cinematic Subtitles-Placement patches (optional) - only for 50Hz mode.
-- eeObj.WriteMem32(0x00109CB4,0x3C013F47)
-- eeObj.WriteMem32(0x001515B4,0x3C013F83)
-- ==========
 -- Blackbars hack (optional).
-- eeObj.WriteMem32(0x0016F374,0x3C01BF60)
-- eeObj.WriteMem32(0x0016F380,0x3C013F60)
 -- - Set the value of these patches to 3C01BF80 & 3C013F80 to fully remove the Blackbars.
-- ==========

end

emuObj.AddVsyncHook(widescreen)