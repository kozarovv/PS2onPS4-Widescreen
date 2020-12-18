apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
-- ==========
 -- pgert@190227
 -- http:-- forums.pcsx2.net/Thread-PCSX2-Widescreen-Game- patches?pid=240786#pid240786
-- ==========
 --comment= Tomb Raider - Angel of Darkness * SLES-51227 * PAL-M10 * 54AD76D7
-- ==========
 -- Ported from the NTSC-U pnach by Arapapa.
-- ==========

 -- Fast Boot 4:3 hack - 16:9
 eeObj.WriteMem32(0x00207494,0x3C013FE2)
 eeObj.WriteMem32(0x00207498,0x3421FC93)

 -- Fast Boot 4:3 hack - 16:10
-- eeObj.WriteMem32(0x00207494,0x3C013FCC)
-- eeObj.WriteMem32(0x00207498,0x342149BB)

 -- Fast Boot 4:3 hack - 15:10
-- eeObj.WriteMem32(0x00207494,0x3C013FBF)
-- eeObj.WriteMem32(0x00207498,0x3421851F)

 -- Full Boot 16:9 fix
 eeObj.WriteMem32(0x002074A8,0x3C013FE2)
 eeObj.WriteMem32(0x002074AC,0x3421FC93)

 -- Full Boot 16:10
-- eeObj.WriteMem32(0x002074A8,0x3C013FCC)
-- eeObj.WriteMem32(0x002074AC,0x342149BB)

 -- Full Boot 15:10
-- eeObj.WriteMem32(0x002074A8,0x3C013FBF)
-- eeObj.WriteMem32(0x002074AC,0x3421851F)

end

emuObj.AddVsyncHook(widescreen)