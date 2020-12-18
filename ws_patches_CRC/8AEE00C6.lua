apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
-- ==========
-- pgert@130503
-- http:--forums.pcsx2.net/Thread-PCSX2-Widescreen-Game-Patches?pid=240786#pid240786
-- ==========

-- ==========
 --gametitle=RTX - Red Rock * SLES-51069 * PAL/Europe * E349C1D4
 --comment=RTX - Red Rock * SLES-51069 * PAL/Europe * E349C1D4
 --comment=- Widescreen hack by pgert.
 eeObj.WriteMem32(0x005F1840,0x3F400000)
-- ==========
-- --comment=- 16:10 support by pgert.
-- eeObj.WriteMem32(0x0057BEB4,0x3F000000)
-- ==========
end

emuObj.AddVsyncHook(widescreen)