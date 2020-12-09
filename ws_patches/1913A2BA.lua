apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesis2000
-- Ported to PAL, added 16:10 support (ElHecht)

-- 16:9
eeObj.WriteMem32(0x002d870c,0x3c033f40)

-- 16:10
--eeObj.WriteMem32(0x001003c4,0x3c1b3f55)
--eeObj.WriteMem32(0x002d870c,0x37635555)
end

emuObj.AddVsyncHook(widescreen)