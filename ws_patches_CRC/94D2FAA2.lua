apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle= Winning Eleven 9 - Liveware Evolution (NTSC-K) (SLKA_25359)
--comment= Widescreen pnach by Arapapa

-- 16:9 (00000000 00000000 43ad1346 00000000)
eeObj.WriteMem32(0x0010444c,0x3c013f40)
eeObj.WriteMem32(0x00104450,0x44810000)
eeObj.WriteMem32(0x00104458,0x4600c602)

-- Render fix (46170942 803f053c)
eeObj.WriteMem32(0x00129e0c,0x3c053FAB)
end

emuObj.AddVsyncHook(widescreen)