apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by nemesis2000/pnach by ElHecht
-- Added 16:10 support (ElHecht)

-- 16:9
eeObj.WriteMem32(0x0032f6fc,0x3f400000)
eeObj.WriteMem32(0x0032f850,0x3f2aaaab)
eeObj.WriteMem32(0x0010e840,0x3c013f2b)

-- 16:10
--eeObj.WriteMem32(0x0032f6fc,0x3f555555)
--eeObj.WriteMem32(0x0032f850,0x3f19999a)
--eeObj.WriteMem32(0x0010e840,0x3c013f1a)
end

emuObj.AddVsyncHook(widescreen)