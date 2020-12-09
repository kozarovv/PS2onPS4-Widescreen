apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle= J-League Winning Eleven 10 - Europa League '06-'07 (NTSC-J) (SLPM-66595)
--comment= Widescreen pnach by Arapapa

-- 16:9 (00000000 00000000 43ad1346 00000000)
eeObj.WriteMem32(0x001043fc,0x3c013f40)
eeObj.WriteMem32(0x00104400,0x44810000)
eeObj.WriteMem32(0x00104408,0x4600c602)

-- Render fix (42111446 803f053c)
eeObj.WriteMem32(0x0012531c,0x3c053FAB)
end

emuObj.AddVsyncHook(widescreen)