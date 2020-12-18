apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
-- ==========
 -- pgert@180129
 -- http:--forums.pcsx2.net/Thread-PCSX2-Widescreen-Game-Patches?pid=240786#pid240786
-- ==========
 --gametitle=Baldur's Gate: Dark Alliance II
 --comment= Baldur's Gate: Dark Alliance II * SLES-52188 * PAL-M3 * F59FF56B
 --comment= Widescreen Hack by El_Patas
-- ==========

-- 16:9 - somewhat corrected by pgert
-- ==========
 -- Vert fov- 
 eeObj.WriteMem32(0x001ED078,0x3C013F36)
 eeObj.WriteMem32(0x001ED07C,0x34210B62)
 eeObj.WriteMem32(0x0023FFC4,0x3C013F36)
 eeObj.WriteMem32(0x0023FFC8,0x34210B62)
 eeObj.WriteMem32(0x0027FDBC,0x3C013F36)
 eeObj.WriteMem32(0x0027FDC0,0x34210B62)
 eeObj.WriteMem32(0x002C9458,0x3C013F36)
 eeObj.WriteMem32(0x002C945C,0x34210B62)
-- ==========
 -- Both fov+
 eeObj.WriteMem32(0x001ED08C,0x3C014440)
 eeObj.WriteMem32(0x0023FFD4,0x3C014440)
 eeObj.WriteMem32(0x0027FDCC,0x3C014440)
 eeObj.WriteMem32(0x002C9468,0x3C014440)
-- ==========
 -- Render fix
 eeObj.WriteMem32(0x002C5334,0x3C013FE2)
 eeObj.WriteMem32(0x002C5338,0x3421FC96)
 eeObj.WriteMem32(0x002C909C,0x3C013FE2)
 eeObj.WriteMem32(0x002C90A0,0x3421FC96)
-- ==========

-- 16:10 - pgert
-- ==========
-- eeObj.WriteMem32(0x001ED078,0x3C013F23)
-- eeObj.WriteMem32(0x001ED07C,0x3421D70C)
-- eeObj.WriteMem32(0x0023FFC4,0x3C013F23)
-- eeObj.WriteMem32(0x0023FFC8,0x3421D70C)
-- eeObj.WriteMem32(0x0027FDBC,0x3C013F23)
-- eeObj.WriteMem32(0x0027FDC0,0x3421D70C)
-- eeObj.WriteMem32(0x002C9458,0x3C013F23)
-- eeObj.WriteMem32(0x002C945C,0x3421D70C)
-- ==========
-- eeObj.WriteMem32(0x001ED08C,0x3C014455)
-- eeObj.WriteMem32(0x0023FFD4,0x3C014455)
-- eeObj.WriteMem32(0x0027FDCC,0x3C014455)
-- eeObj.WriteMem32(0x002C9468,0x3C014455)
-- ==========
-- eeObj.WriteMem32(0x002C5334,0x3C013FCC)
-- eeObj.WriteMem32(0x002C5338,0x342149BB)
-- eeObj.WriteMem32(0x002C909C,0x3C013FCC)
-- eeObj.WriteMem32(0x002C90A0,0x342149BB)
-- ==========

-- 15:10 (MS Surface Book) - pgert
-- ==========
-- eeObj.WriteMem32(0x001ED078,0x3C013F19)
-- eeObj.WriteMem32(0x001ED07C,0x3421999B)
-- eeObj.WriteMem32(0x0023FFC4,0x3C013F19)
-- eeObj.WriteMem32(0x0023FFC8,0x3421999B)
-- eeObj.WriteMem32(0x0027FDBC,0x3C013F19)
-- eeObj.WriteMem32(0x0027FDC0,0x3421999B)
-- eeObj.WriteMem32(0x002C9458,0x3C013F19)
-- eeObj.WriteMem32(0x002C945C,0x3421999B)
-- ==========
-- eeObj.WriteMem32(0x001ED08C,0x3C014464)
-- eeObj.WriteMem32(0x0023FFD4,0x3C014464)
-- eeObj.WriteMem32(0x0027FDCC,0x3C014464)
-- eeObj.WriteMem32(0x002C9468,0x3C014464)
-- ==========
-- eeObj.WriteMem32(0x002C5334,0x3C013FBF)
-- eeObj.WriteMem32(0x002C5338,0x3421851F)
-- eeObj.WriteMem32(0x002C909C,0x3C013FBF)
-- eeObj.WriteMem32(0x002C90A0,0x3421851F)
-- ==========

-- ==========
-- Built-in cheats:
-- ==========
-- Warp & Invulnerability menu:
--  while in a game, press L1 + R1 + Triangle + Square + Circle + Cross + Start.
-- Level 10 + 500,000 gold + 45 skillpoints:
--  while in a game, press L1 + R1 + Triangle + Square + Circle + Cross + L2.
-- ==========

end

emuObj.AddVsyncHook(widescreen)