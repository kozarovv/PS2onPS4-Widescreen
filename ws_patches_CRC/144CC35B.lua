apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
-- ==========
 -- pgert@180130
 -- http:--forums.pcsx2.net/Thread-PCSX2-Widescreen-Game-Patches?pid=240786#pid240786
-- ==========

-- ==========
 --comment= Rogue Ops * SLES-52002 * PAL-M6 * 144CC35B
 --comment=- Widescreen hack by pgert.
 --comment=- Might not work with all BIOS types & configurations.
 eeObj.WriteMem32(0x0065A190,0x3F400000)
-- eeObj.WriteMem32(0x0065A190,0x3F555555)
-- eeObj.WriteMem32(0x0065A190,0x3F638E39)
-- ==========
-- eeObj.WriteMem32(0x0065A194,0x3F555555)
-- ==========

end

emuObj.AddVsyncHook(widescreen)