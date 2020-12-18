apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
-- ==========
 -- pgert@180217
 -- http:--forums.pcsx2.net/Thread-PCSX2-Widescreen-Game-Patches?pid=240786#pid240786
-- ==========
 --gametitle=Fatal Frame II
 --comment= Fatal Frame II - Crimson Butterfly * SLUS-20766 * NTSC-U * 9A51B627
 --comment=- This game might have some problems with the Cinematics,
 --comment=-  regardless of resolution or patches-- this pnach is not causing that.
 --comment=- *  *  *  *  *
 --comment=- Widescreen & HD pnach by pgert.
 --comment=- Patches primarily by nemesis2000.
-- ==========
 -- This game has a sound-distortion when using the Spu2-X plug-in.
 -- Therefore (as a suggestion) use this special version of the plug-in:
 --  "https:--forums.pcsx2.net/attachment.php?aid=65729".
-- ==========

-- ==========
 eeObj.WriteMem32(0x0033760C,0x3F400000)
-- eeObj.WriteMem32(0x0033760C,0x3F555555)
-- eeObj.WriteMem32(0x0033760C,0x3F638E39)
-- ==========
 eeObj.WriteMem32(0x0020C1BC,0x00000000)
-- eeObj.WriteMem32(0x0019EDD4,0x10000012)
-- ==========
 -- Optional: Puts the Y-axis value to that of 50Hz-mode (PAL).
-- eeObj.WriteMem32(0x00337610,0x3F800000)
-- ==========
 -- Flashlight Widescreen hack by nemesis2000.
 eeObj.WriteMem32(0x0013A19C,0x0C053DCB)
 eeObj.WriteMem32(0x0013A224,0x0C053DCB)
 eeObj.WriteMem32(0x0013A28C,0x0C053DCB)
 eeObj.WriteMem32(0x0013A304,0x0C053DCB)
 eeObj.WriteMem32(0x0014F72C,0x3C013F40)
-- eeObj.WriteMem32(0x0014F72C,0x3C013F55)
-- eeObj.WriteMem32(0x0014F72C,0x3C013F64)
 eeObj.WriteMem32(0x0014F79C,0x44810800)
 eeObj.WriteMem32(0x0014F7A0,0x46016302)
-- ==========

-- ==========
 -- Cinematics hacks by nemesis2000.
 eeObj.WriteMem32(0x001E5834,0x01C02820)
 eeObj.WriteMem32(0x001E5838,0xE4830030)
 eeObj.WriteMem32(0x001E5990,0x0C0795E0)
 eeObj.WriteMem32(0x001E5994,0x44811800)
 eeObj.WriteMem32(0x001E5998,0x8F84BE5C)
 eeObj.WriteMem32(0x001E599C,0x0C079EFE)
 eeObj.WriteMem32(0x001E59A0,0x0040802D)
 eeObj.WriteMem32(0x001E59A4,0x0200102D)
 eeObj.WriteMem32(0x001E59A8,0xDFBF0008)
 eeObj.WriteMem32(0x001E59AC,0x27BD0010)
 eeObj.WriteMem32(0x001E59B0,0x03E00008)
 eeObj.WriteMem32(0x001E59B4,0xDFB00000)
-- ==========
 -- FMV-values.
 eeObj.WriteMem32(0x001E598C,0x3C013F40)
 eeObj.WriteMem32(0x0033B228,0x0000006A)
-- eeObj.WriteMem32(0x001E598C,0x3C013F55)
-- eeObj.WriteMem32(0x0033B228,0x00000040)
-- eeObj.WriteMem32(0x001E598C,0x3C013F64)
-- eeObj.WriteMem32(0x0033B228,0x00000028)
-- ==========

-- ==========
-- Notes (by pgert).
-- ==========
-- eeObj.WriteMem32(0x0018A05C,0x3C013EE8)
-- ==========
-- eeObj.WriteMem32(0x001788E0,0x3C0144C0)
-- eeObj.WriteMem32(0x001F5770,0x3C014450)
-- eeObj.WriteMem32(0x001F5778,0x3C014438)
-- ==========

end

emuObj.AddVsyncHook(widescreen)