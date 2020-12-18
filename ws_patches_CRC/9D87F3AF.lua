apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
-- ==========
 -- pgert@180217
 -- http:--forums.pcsx2.net/Thread-PCSX2-Widescreen-Game-Patches?pid=240786#pid240786
-- ==========
 --gametitle=Project Zero 2 - Crimson Butterfly
 --comment= Project Zero 2 - Crimson Butterfly * SLES-52384 * PAL-M5 * 9D87F3AF
 --comment=- This game might have some problems with the Cinematics in 60Hz mode,
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
 eeObj.WriteMem32(0x0018F090,0x3C013F40)
 eeObj.WriteMem32(0x00340DDC,0x3F400000)
-- eeObj.WriteMem32(0x0018F090,0x3C013F55)
-- eeObj.WriteMem32(0x00340DDC,0x3F555555)
-- eeObj.WriteMem32(0x0018F090,0x3C013F64)
-- eeObj.WriteMem32(0x00340DDC,0x3F638E39)
-- ==========
 eeObj.WriteMem32(0x00210DC4,0x00000000)
-- eeObj.WriteMem32(0x001A1904,0x10000012)
-- ==========
 -- Optional: Puts the Y-axis value to that of 50Hz-mode, when having 60Hz-mode.
-- eeObj.WriteMem32(0x0018F09C,0x3C013F80)
-- eeObj.WriteMem32(0x00340DE0,0x3F800000)
-- ==========
 -- Flashlight Widescreen hack.
 eeObj.WriteMem32(0x0013B1DC,0x0C0541DB)
 eeObj.WriteMem32(0x0013B264,0x0C0541DB)
 eeObj.WriteMem32(0x0013B2CC,0x0C0541DB)
 eeObj.WriteMem32(0x0013B344,0x0C0541DB)
 eeObj.WriteMem32(0x0015076C,0x3C013F40)
-- eeObj.WriteMem32(0x0015076C,0x3C013F55)
-- eeObj.WriteMem32(0x0015076C,0x3C013F64)
 eeObj.WriteMem32(0x001507DC,0x44810800)
 eeObj.WriteMem32(0x001507E0,0x46016302)
-- ==========

-- ==========
 -- Cinematics hack.
 eeObj.WriteMem32(0x001E9308,0xE49E0030)
 eeObj.WriteMem32(0x001E930C,0x0200202D)
 eeObj.WriteMem32(0x001E9310,0xFFA20068)
 eeObj.WriteMem32(0x001E9314,0xFFA30070)
 eeObj.WriteMem32(0x001E9318,0x0C05E542)
 eeObj.WriteMem32(0x001E931C,0xFFA50090)
 eeObj.WriteMem32(0x001E9320,0x0220102D)
 eeObj.WriteMem32(0x001E9324,0xDFB000B0)
 eeObj.WriteMem32(0x001E9328,0xDFB100B8)
 eeObj.WriteMem32(0x001E932C,0xDFBF00C0)
 eeObj.WriteMem32(0x001E9330,0x03E00008)
 eeObj.WriteMem32(0x001E9334,0x27BD00D0)
 eeObj.WriteMem32(0x001E947C,0x10400003)
 eeObj.WriteMem32(0x001E9484,0x10000002)
 eeObj.WriteMem32(0x001E948C,0x8F84C00C)
 eeObj.WriteMem32(0x001E9498,0x4481F000)
-- ==========
 -- FMV-values.
 eeObj.WriteMem32(0x001E9490,0x3C013F40)
 eeObj.WriteMem32(0x00344BD8,0x0000006A)
-- eeObj.WriteMem32(0x001E9490,0x3C013F55)
-- eeObj.WriteMem32(0x00344BD8,0x00000040)
-- eeObj.WriteMem32(0x001E9490,0x3C013F64)
-- eeObj.WriteMem32(0x00344BD8,0x00000028)
-- ==========

-- ==========
-- Notes (by pgert).
-- ==========
-- eeObj.WriteMem32(0x0040A48C,0x3F400000)
-- eeObj.WriteMem32(0x0040A490,0x3F666666)
-- eeObj.WriteMem32(0x001795F4,0x3C014370)
-- eeObj.WriteMem32(0x0018C95C,0x3C013EEA)
-- ==========
-- eeObj.WriteMem32(0x0017ACD0,0x3C0144C0)
-- eeObj.WriteMem32(0x001F9FF8,0x3C014450)
-- eeObj.WriteMem32(0x001FA000,0x3C014438)
-- ==========

end

emuObj.AddVsyncHook(widescreen)