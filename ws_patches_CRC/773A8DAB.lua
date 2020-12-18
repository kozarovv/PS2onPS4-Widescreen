apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
-- ==========
 --comment=Baldur's Gate: Dark Alliance * SLUS-20035 * NTSC-U * 773A8DAB
-- ==========

-- 16:9
-- ==========
-- vert fov-
 eeObj.WriteMem32(0x00320fd0,0x3f1f49f4)
 eeObj.WriteMem32(0x0032102c,0x3f1f49f4)
 eeObj.WriteMem32(0x00322950,0x3f1f49f4)
 eeObj.WriteMem32(0x00320efc,0x3f1f49f4)
 eeObj.WriteMem32(0x00320f44,0x3f1f49f4)
-- ==========
-- both fov+
 eeObj.WriteMem32(0x0014ca8c,0x3c014440)
 eeObj.WriteMem32(0x00152998,0x3c014440)
 eeObj.WriteMem32(0x00200bf8,0x3c014440)
 eeObj.WriteMem32(0x0013d048,0x3c014440)
 eeObj.WriteMem32(0x00144f60,0x3c014440)
-- ==========
-- render fix value by No.47
 eeObj.WriteMem32(0x00320fa8,0x3fe3d70a)
 eeObj.WriteMem32(0x00320fcc,0x3fe3d70a)
-- ==========

-- 16:10 - pgert
-- ==========
-- vert fov-
-- eeObj.WriteMem32(0x00320fd0,0x3F0F5C2A)
-- eeObj.WriteMem32(0x0032102c,0x3F0F5C2A)
-- eeObj.WriteMem32(0x00322950,0x3F0F5C2A)
-- eeObj.WriteMem32(0x00320efc,0x3F0F5C2A)
-- eeObj.WriteMem32(0x00320f44,0x3F0F5C2A)
-- ==========
-- both fov+
-- eeObj.WriteMem32(0x0014ca8c,0x3C014455)
-- eeObj.WriteMem32(0x00152998,0x3C014455)
-- eeObj.WriteMem32(0x00200bf8,0x3C014455)
-- eeObj.WriteMem32(0x0013d048,0x3C014455)
-- eeObj.WriteMem32(0x00144f60,0x3C014455)
-- ==========
-- render fix value by No.47
-- eeObj.WriteMem32(0x00320fa8,0x3FCC49BB)
-- eeObj.WriteMem32(0x00320fcc,0x3FCC49BB)
-- ==========
end

emuObj.AddVsyncHook(widescreen)