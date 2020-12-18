apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
-- ==========
 -- pgert@180129
 -- http:--forums.pcsx2.net/Thread-PCSX2-Widescreen-Game-Patches?pid=240786#pid240786
-- ==========
 --comment= Baldur's Gate: Dark Alliance * SLES-50672 * PAL-M5 * 4A9D8E01
 --comment= Widescreen Hack by El_Patas
-- ==========

-- 16:9 - somewhat corrected by pgert
-- ==========
 -- Vert fov- 
 eeObj.WriteMem32(0x00322460,0x3F1F49F4)
 eeObj.WriteMem32(0x00322418,0x3F360B62)
 eeObj.WriteMem32(0x003224F0,0x3F360B62)
 eeObj.WriteMem32(0x00322550,0x3F360B62)
 eeObj.WriteMem32(0x00323E9C,0x3F360B62)
-- ==========
 -- Both fov+
 eeObj.WriteMem32(0x001451D0,0x3C014440)
 eeObj.WriteMem32(0x0014CCF4,0x3C014440)
 eeObj.WriteMem32(0x00201E40,0x3C014440)
 eeObj.WriteMem32(0x0013D280,0x3C014440)
 eeObj.WriteMem32(0x00152C40,0x3C014440)
-- ==========
 -- Render fix
 eeObj.WriteMem32(0x003224C8,0x3FE2FC96)
 eeObj.WriteMem32(0x003224EC,0x3FE2FC96)
-- ==========

-- 16:10 - pgert
-- ==========
-- eeObj.WriteMem32(0x00322460,0x3F0F5C2A)
-- eeObj.WriteMem32(0x00322418,0x3F23D70C)
-- eeObj.WriteMem32(0x003224F0,0x3F23D70C)
-- eeObj.WriteMem32(0x00322550,0x3F23D70C)
-- eeObj.WriteMem32(0x00323E9C,0x3F23D70C)
-- ==========
-- eeObj.WriteMem32(0x001451D0,0x3C014455)
-- eeObj.WriteMem32(0x0014CCF4,0x3C014455)
-- eeObj.WriteMem32(0x00201E40,0x3C014455)
-- eeObj.WriteMem32(0x0013D280,0x3C014455)
-- eeObj.WriteMem32(0x00152C40,0x3C014455)
-- ==========
-- eeObj.WriteMem32(0x003224C8,0x3FCC49BB)
-- eeObj.WriteMem32(0x003224EC,0x3FCC49BB)
-- ==========

-- 15:10 (MS Surface Book) - pgert
-- ==========
-- eeObj.WriteMem32(0x00322460,0x3F066667)
-- eeObj.WriteMem32(0x00322418,0x3F066665)
-- eeObj.WriteMem32(0x003224F0,0x3F066665)
-- eeObj.WriteMem32(0x00322550,0x3F066665)
-- eeObj.WriteMem32(0x00323E9C,0x3F066665)
-- ==========
-- eeObj.WriteMem32(0x001451D0,0x3C014464)
-- eeObj.WriteMem32(0x0014CCF4,0x3C014464)
-- eeObj.WriteMem32(0x00201E40,0x3C014464)
-- eeObj.WriteMem32(0x0013D280,0x3C014464)
-- eeObj.WriteMem32(0x00152C40,0x3C014464)
-- ==========
-- eeObj.WriteMem32(0x003224C8,0x3FBF851F)
-- eeObj.WriteMem32(0x003224EC,0x3FBF851F)
-- ==========

end

emuObj.AddVsyncHook(widescreen)