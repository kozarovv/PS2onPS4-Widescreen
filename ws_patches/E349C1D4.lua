apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
-- ==========
 -- pgert@180128
 -- http:--forums.pcsx2.net/Thread-PCSX2-Widescreen-Game-Patches?pid=240786#pid240786
-- ==========

-- ==========
 --gametitle=RTX - Red Rock
 --comment= RTX - Red Rock * SLES-51069 * PAL-M5 * E349C1D4
 --comment=- Widescreen hack by pgert.
 --comment=- Might not work with all BIOS types & configurations.
 eeObj.WriteMem32(0x005F1840,0x3F400000)
-- eeObj.WriteMem32(0x005F1840,0x3F555555)
-- eeObj.WriteMem32(0x005F1840,0x3F638E39)
-- ==========
-- eeObj.WriteMem32(0x0057BEB4,0x3F000000)
-- ==========

end

emuObj.AddVsyncHook(widescreen)