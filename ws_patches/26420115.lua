apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
-- ==========
 -- pgert@180129
 -- http:--forums.pcsx2.net/Thread-PCSX2-Widescreen-Game-Patches?pid=240786#pid240786
-- ==========
 --comment= The Bard's Tale * SLES-53154 * PAL-M8 * 26420115
 --comment= Gameplay & Render fixes by El_Patas.
 --comment= Font fix by Arapapa.
-- ==========
 -- This gamedisc supports multiple languages.
 -- Language selection is done through the BIOS configuration.
 -- Implementation requires Full boot - "Boot CDVD (full)".
-- ==========

 -- Gameplay 16:9
 eeObj.WriteMem32(0x0011C0D4,0x3C023F40)
 eeObj.WriteMem32(0x0012E6EC,0x3C033F40)
 eeObj.WriteMem32(0x001440F8,0x3C053F40)
 eeObj.WriteMem32(0x00144174,0x3C033F40)
 eeObj.WriteMem32(0x001441C4,0x3C023F40)

 -- Gameplay 16:10
-- eeObj.WriteMem32(0x0011C0D4,0x3C023F55)
-- eeObj.WriteMem32(0x0012E6EC,0x3C033F55)
-- eeObj.WriteMem32(0x001440F8,0x3C053F55)
-- eeObj.WriteMem32(0x00144174,0x3C033F55)
-- eeObj.WriteMem32(0x001441C4,0x3C023F55)

 -- Gameplay 15:10 (MS Surface Book)
-- eeObj.WriteMem32(0x0011C0D4,0x3C023F64)
-- eeObj.WriteMem32(0x0012E6EC,0x3C033F64)
-- eeObj.WriteMem32(0x001440F8,0x3C053F64)
-- eeObj.WriteMem32(0x00144174,0x3C033F64)
-- eeObj.WriteMem32(0x001441C4,0x3C023F64)

 -- Render fix
 eeObj.WriteMem32(0x0013D9D0,0x3C023F2B)
-- eeObj.WriteMem32(0x0013D9D0,0x3C023F1A)
-- eeObj.WriteMem32(0x0013D9D0,0x3C023F10)

 -- Font fix
 eeObj.WriteMem32(0x0010EC74,0x3C0341C0)
-- eeObj.WriteMem32(0x0010EC74,0x3C0341D5)
-- eeObj.WriteMem32(0x0010EC74,0x3C0341E4)

end

emuObj.AddVsyncHook(widescreen)