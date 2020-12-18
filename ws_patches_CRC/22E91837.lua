apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
-- ==========
 -- pgert@180129
 -- http:--forums.pcsx2.net/Thread-PCSX2-Widescreen-Game-Patches?pid=240786#pid240786
-- ==========
 --comment= Project Zero * SLES-50821 * PAL-M5 * 22E91837
 --comment=- Widescreen & HD pnach by pgert.
 --comment=- Credits to ElHecht & nemesis2000.
-- ==========
 -- Due to missing renderingfixes, black stripes can show up on ghosts, spirits and photos.
 -- If using GSdx in HW-mode, this can be fixed by having "Enable HW Hacks" set in the GSdx configuration dialog,
 --  and having "Align Sprite" set and "Sprite" set to Half in "Advanced Settings and Hacks".
-- ==========

-- ==========
 -- 16:9 support.
-- ==========
 eeObj.WriteMem32(0x00185B40,0x3C0145C0)
 eeObj.WriteMem32(0x00185B4C,0x3C013F40)
 eeObj.WriteMem32(0x0018A2CC,0x3C013F40)
-- ==========
 -- Flashlight 16:9 Widescreen hack, ported by pgert from the NTSC-U pnach by nemesis2000,
 --  and modified so that the values are altered with half of the regular amount
 --  (0,875 instead of 0,75) - better.
 eeObj.WriteMem32(0x00135B18,0x3C01428C)
 eeObj.WriteMem32(0x00135B80,0x3C0141A8)
 eeObj.WriteMem32(0x00135BC4,0x3C014128)
 eeObj.WriteMem32(0x00135BFC,0x3C01410C)
 eeObj.WriteMem32(0x0013715C,0x3C013F12)
-- ==========
 -- 16:9 Cinematics hack by nemesis2000.
 eeObj.WriteMem32(0x00182730,0x24027100)
 eeObj.WriteMem32(0x00182740,0x24027100)
 -- - 6C00h = 27648d : width of Cinematics = 640d : 27648 + 1600 - 640/2 = 28160 : 28160d = 7100h
 eeObj.WriteMem32(0x00182748,0x24091E00)
 -- - 2800h = 10240d : width of Cinematics = 640d : 10240 - 1600 - 640*1.5 = 7680 : 7680d = 1E00h
-- ==========

-- ==========
 -- 16:10 support.
-- ==========
-- eeObj.WriteMem32(0x00185B40,0x3C0145C0)
-- eeObj.WriteMem32(0x00185B4C,0x3C013F55)
-- eeObj.WriteMem32(0x0018A2CC,0x3C013F55)
-- ==========
 -- Flashlight 16:10 Widescreen hack, ported by pgert from the NTSC-U pnach by nemesis2000,
 --  and modified so that the values are altered with half of the regular amount
 --  (0,91666665 instead of 0,8333333) - better.
-- eeObj.WriteMem32(0x00135B18,0x3C014293)
-- eeObj.WriteMem32(0x00135B80,0x3C0141B0)
-- eeObj.WriteMem32(0x00135BC4,0x3C014130)
-- eeObj.WriteMem32(0x00135BFC,0x3C014113)
-- eeObj.WriteMem32(0x0013715C,0x3C013F0C)
-- ==========
 -- Cinematics hack by nemesis2000, ported to 16:10 by pgert.
-- eeObj.WriteMem32(0x00182730,0x24027080)
-- eeObj.WriteMem32(0x00182740,0x24027080)
 -- - 7100h = 28160d : 28160 + 640 = 28800 : 28800d = 7080h
-- eeObj.WriteMem32(0x00182748,0x24091F00)
 -- - 1E00h = 7680d : 7680 + 256 = 7936 : 7936d = 1F00h
-- ==========

-- ==========
 -- 15:10 (MS Surface Book) support.
-- ==========
-- eeObj.WriteMem32(0x00185B40,0x3C0145C0)
-- eeObj.WriteMem32(0x00185B4C,0x3C013F64)
-- eeObj.WriteMem32(0x0018A2CC,0x3C013F64)
-- ==========
 -- Flashlight 15:10 Widescreen hack, ported by pgert from the NTSC-U pnach by nemesis2000,
 --  and modified so that the values are altered with half of the regular amount
 --  (0,94444445 instead of 0,8888889) - better.
-- eeObj.WriteMem32(0x00135B18,0x3C014297)
-- eeObj.WriteMem32(0x00135B80,0x3C0141B5)
-- eeObj.WriteMem32(0x00135BC4,0x3C014135)
-- eeObj.WriteMem32(0x00135BFC,0x3C014117)
-- eeObj.WriteMem32(0x0013715C,0x3C013F08)
-- ==========
 -- Cinematics hack by nemesis2000, ported to 15:10 by pgert.
-- eeObj.WriteMem32(0x00182730,0x240270AB)
-- eeObj.WriteMem32(0x00182740,0x240270AB)
 -- - 7100h = 28160d : 28160 + (640*(16/15)) = 28843 : 28760d = 70ABh
-- eeObj.WriteMem32(0x00182748,0x24091F11)
 -- - 1E00h = 7680d : 7680 + (256*(16/15)) = 7953 : 7953d = 1F11h
-- ==========

-- ==========
 -- Optional SpecialFixes.
-- ==========
-- eeObj.WriteMem32(0x0011C58C,0x3C013F40)
-- eeObj.WriteMem32(0x0011C5BC,0x3C013F40)
-- eeObj.WriteMem32(0x0011DF3C,0x3C014510)
-- eeObj.WriteMem32(0x0013BF98,0x3C014220)
-- ==========
-- eeObj.WriteMem32(0x0011D604,0x3C014510)
-- eeObj.WriteMem32(0x001B5F84,0x3C013C82)
-- eeObj.WriteMem32(0x002039B4,0x3C014410)
-- eeObj.WriteMem32(0x002039C0,0x3C014438)
 -- - An unfixed side-effect of 0011D604 is that the graining-effect in GameMenu & CameraView disappears.
-- ==========

-- ==========
 -- Notes (by pgert).
-- ==========
 -- Original hacks:
-- eeObj.WriteMem32(0x002565F0,0x3F400000)
-- eeObj.WriteMem32(0x002565F4,0x3EBB7FE1)
 -- Alternative 16:10 support:
-- eeObj.WriteMem32(0x0017B39C,0x3C013EE8)
-- eeObj.WriteMem32(0x0035C7BC,0x3EBB7FE1)
-- eeObj.WriteMem32(0x00185AAC,0x3C014348)
-- eeObj.WriteMem32(0x00185CA0,0x3C014348)
-- eeObj.WriteMem32(0x0035c760,0x3EA6AA8F)
 -- - 3ED05532h = 0,4069f : 0.8 * 0.4069 = 0,32552 : 0,32552f = 3EA6AA8Fh
-- ==========

end

emuObj.AddVsyncHook(widescreen)