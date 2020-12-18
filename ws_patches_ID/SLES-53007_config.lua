apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
-- ==========
 -- pgert@150820
 -- http:--forums.pcsx2.net/Thread-PCSX2-Widescreen-Game-Patches?pid=240786#pid240786
-- ==========

-- ==========
 --comment= Splinter Cell 3 - Chaos Theory * SLES-53007 * PAL-M5 * 4C4D7072
-- ==========

-- ==========
 --comment=- 16:9 Widescreen hack for Solo/Coop mode by ElHecht.
 eeObj.WriteMem32(0x001F2908,0x3C023F40)
-- ==========
-- --comment=- 16:10 Widescreen hack for Solo/Coop mode by ElHecht.
-- eeObj.WriteMem32(0x001F2908,0x3C023F55)
-- eeObj.WriteMem32(0x001F2988,0x34425555)
-- ==========

-- ==========
-- Notes (by pgert) - do not use.
-- - Alternative 16:10 Widescreen hack by pgert.
--   Might not work with all BIOS types & configurations.
--   Fast boot recommended.
-- eeObj.WriteMem32(0x00F0843C,0x3F400000)
-- eeObj.WriteMem32(0x00F08440,0x3FAB130D)
-- ==========

end

emuObj.AddVsyncHook(widescreen)