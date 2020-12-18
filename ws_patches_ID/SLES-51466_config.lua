apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
-- ==========
 -- pgert@150820
 -- http:--forums.pcsx2.net/Thread-PCSX2-Widescreen-Game-Patches?pid=240786#pid240786
-- ==========

-- ==========
 --gametitle=Splinter Cell
 --comment= Splinter Cell * SLES-51466 * PAL-M5 * A7705A52
-- ==========

-- ==========
 --comment=- 16:9 Widescreen hack by sergx12.
 eeObj.WriteMem32(0x001CF890,0x3C053F40)
-- ==========
-- --comment=- 16:10 Widescreen hack by ElHecht.
-- eeObj.WriteMem32(0x001CF890,0x3C053F55)
-- eeObj.WriteMem32(0x001CF930,0x34A55555)
-- eeObj.WriteMem32(0x001CF934,0xAC450088)
-- ==========

-- ==========
-- Notes (by pgert) - do not use.
-- - Alternative 16:10 Widescreen hack by pgert.
--   Fast boot recommended.
-- eeObj.WriteMem32(0x001CF880,0x3C023F8A)
-- eeObj.WriteMem32(0x001CF884,0x34449246)
-- - X-axis patch by sergx12.
-- eeObj.WriteMem32(0x001CF890,0x3C053F40)
-- ==========

end

emuObj.AddVsyncHook(widescreen)