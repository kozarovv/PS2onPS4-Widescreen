apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
-- ==========
 -- pgert@150820
 -- http:--forums.pcsx2.net/Thread-PCSX2-Widescreen-Game-Patches?pid=240786#pid240786
-- ==========

-- ==========
 --gametitle=Splinter Cell 2 - Pandora Tomorrow
 --comment= Splinter Cell 2 - Pandora Tomorrow * SLES-52149 * PAL-M5 * AB82114E
-- ==========

-- ==========
 --comment=- 16:9 Widescreen hack for Single Player mode by ElHecht.
 eeObj.WriteMem32(0x0017A200,0x3C1B3F40)
 eeObj.WriteMem32(0x001B79F4,0xAE1B008C)
-- ==========
-- --comment=- 16:10 Widescreen hack for Single Player mode by ElHecht.
-- eeObj.WriteMem32(0x0017A200,0x3C1B3F55)
-- eeObj.WriteMem32(0x001B79F4,0x377B5555)
-- eeObj.WriteMem32(0x001B7A0C,0xAE1B008C)
-- ==========

-- ==========
-- Notes (by pgert) - do not use.
-- - Alternative 16:10 Widescreen hack by pgert.
--   Might not work with all BIOS types & configurations.
--   Fast boot recommended.
-- eeObj.WriteMem32(0x01628ABC,0x3F400000)
-- eeObj.WriteMem32(0x01628AC0,0x3F666666)
-- ==========

end

emuObj.AddVsyncHook(widescreen)