apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle= Winning Eleven 8 - International (NTSC-K) (SLKA_25262)
--comment= Widescreen pnach by Arapapa

-- 16:9 (00000000 00000000 43ad1346 00000000)
eeObj.WriteMem32(0x00104634,0x3c013f40)
eeObj.WriteMem32(0x00104638,0x44810000)
eeObj.WriteMem32(0x00104640,0x4600c602)

-- Render fix  (803f023c 5c6a22ac)
eeObj.WriteMem32(0x00126104,0x3C023FAB)
end

emuObj.AddVsyncHook(widescreen)