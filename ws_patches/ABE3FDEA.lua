apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
-- ==========
 -- pgert@150820
 -- http:--forums.pcsx2.net/Thread-PCSX2-Widescreen-Game-Patches?pid=240786#pid240786
-- ==========

-- ==========
 --gametitle=Splinter Cell 4 - Double Agent
 --comment= Splinter Cell 4 - Double Agent * SLES-53826 * PAL-M5 * ABE3FDEA
-- ==========

-- ==========
 --comment=- 16:9 Widescreen hack for Solo/Coop mode by ElHecht.
 eeObj.WriteMem32(0x001F483C,0x3C0D3F40)
-- ==========
-- --comment=- 16:10 Widescreen hack for Solo/Coop mode by ElHecht.
-- eeObj.WriteMem32(0x001F483C,0x3C0D3F55)
-- eeObj.WriteMem32(0x001F48AC,0x35AD5555)
-- eeObj.WriteMem32(0x001F4980,0xAE6D00BC)
-- eeObj.WriteMem32(0x001F4984,0x7BB30030)
-- eeObj.WriteMem32(0x001F4988,0x7BB20020)
-- eeObj.WriteMem32(0x001F498C,0x7BB10010)
-- eeObj.WriteMem32(0x001F4990,0x7BB00000)
-- eeObj.WriteMem32(0x001F4994,0x03E00008)
-- eeObj.WriteMem32(0x001F4998,0x27BD0070)
-- ==========

-- ==========
-- Notes (by pgert) - do not use.
-- - Alternative 16:10 Widescreen hack by pgert.
--   Might not work with all BIOS types & configurations.
--   Fast boot recommended.
-- eeObj.WriteMem32(0x00F6435C,0x3F400000)
-- eeObj.WriteMem32(0x00F64360,0x3FAB130D)
-- ==========

end

emuObj.AddVsyncHook(widescreen)