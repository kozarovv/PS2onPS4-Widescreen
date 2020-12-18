apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle= Winning Eleven 2008 (NTSC-J) (SLPM_66885)
--comment= Widescreen pnach El_Patas (NTSC-J by Arapapa)

-- 16:9 (00000000 00000000 43ad1346 00000000)
eeObj.WriteMem32(0x001043fc,0x3c013f40)
eeObj.WriteMem32(0x00104400,0x44810000)
eeObj.WriteMem32(0x00104408,0x4600c602)

-- Render fix by El_Patas (42091746 803f053c)
eeObj.WriteMem32(0x0012a69c,0x3C053FAB)
end

emuObj.AddVsyncHook(widescreen)