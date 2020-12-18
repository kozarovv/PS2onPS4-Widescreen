apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
-- ==========
 -- pgert@180218
 -- http:--forums.pcsx2.net/Thread-PCSX2-Widescreen-Game-Patches?pid=240786#pid240786
-- ==========
 -- This game has a sound-distortion when using the Spu2-X plug-in.
 -- Therefore (as a suggestion) use this special version of the plug-in:
 --  "https:--forums.pcsx2.net/attachment.php?aid=65729".
-- ==========
 --comment= Project Zero 3 - The Tormented * SLES-53825 * PAL-M5 * 23B754F4
 --comment=- Widescreen & HD pnach by pgert.
 --comment=- Credits to ElHecht, Little giant and nemesis2000.
-- ==========

-- ==========
 -- HD-fixes for GSdx in HW-mode - makes no difference with Native Resolution or in SW-mode.
 eeObj.WriteMem32(0x001573FC,0x00000000)
 eeObj.WriteMem32(0x0036E268,0x43A30000)
 eeObj.WriteMem32(0x0036E26C,0x43660000)
 eeObj.WriteMem32(0x0037098C,0x439F8000)
 eeObj.WriteMem32(0x00370990,0x435F8000)
-- ==========
 eeObj.WriteMem32(0x0032885C,0x3F400000)
 -- eeObj.WriteMem32(0x0032885C,0x3F400000)
-- ==========
-- eeObj.WriteMem32(0x00370508,0x3F400000)
-- eeObj.WriteMem32(0x00370524,0x3F400000)
-- eeObj.WriteMem32(0x00370538,0x3F400000)
-- ==========
 eeObj.WriteMem32(0x003705A8,0x3F400000)
 eeObj.WriteMem32(0x003705B4,0x3F400000)
-- eeObj.WriteMem32(0x003705A8,0x3F555555)
-- eeObj.WriteMem32(0x003705B4,0x3F555555)
-- ==========

-- ==========
 -- 16:9 Cinematics hacks by pgert (thanks to nemesis2000).
 eeObj.WriteMem32(0x003713A0,0x43F00000)
 -- 44200000h = 640f : 640 * 0,75 = 480 : 480f = 43F00000h
 eeObj.WriteMem32(0x003713A8,0x42D40000)
-- ==========
 -- 16:10 Cinematics hacks by pgert (thanks to nemesis2000).
-- eeObj.WriteMem32(0x003713A0,0x44048000)
 -- 44200000h = 640f : 640 * 0,828125 = 530 : 530f = 44048000h
-- eeObj.WriteMem32(0x003713A8,0x42830000)
 -- 42400000h appears to be the reference point here.
-- ==========
 -- Problem on both 16:9 & 16:10 because of the Cinematics hacks:
 -- - The "Game Over" sign is displayed wrongly.
-- ==========

-- ==========
-- Notes (by pgert).
-- ==========
 -- eeObj.WriteMem32(0x003EB57C,0x3F400000)
 -- eeObj.WriteMem32(0x003EB580,0x3F555555)
-- ==========
 -- eeObj.WriteMem32(0x00328860,0x3F49999A)
 -- eeObj.WriteMem32(0x00370B58,0x3EF40000)
-- ==========
 -- CutsceneRendering-fixes for GSdx HW & SW mode - made obsolete by 001573FC.
 -- eeObj.WriteMem32(0x0036EC48,0x42F00000)
 -- eeObj.WriteMem32(0x0036F2D4,0x44C00000)
 -- - This patch also gives a significant speed-up, but darkens GamePlay,
 --    and removes the "blue fire" from when a door-seal is dispatched.
 --   Set brightness to Max (in the GameMenu), or enable 003709CC, when using this patch.
 -- eeObj.WriteMem32(0x003709CC,0x44C00000)
 -- - Corrects the darkening caused by 0036F2D4, but darkens photos and causes minor corruptions in scene-transitions.
-- ==========

end

emuObj.AddVsyncHook(widescreen)