apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle= J-League Winning Eleven 9 - Asia Championship (NTSC-J) (SLPM-66169)
--comment= Widescreen pnach by Arapapa

-- 16:9 (00000000 00000000 43ad1346 00000000)
eeObj.WriteMem32(0x0010444c,0x3c013f40)
eeObj.WriteMem32(0x00104450,0x44810000)
eeObj.WriteMem32(0x00104458,0x4600c602)

-- Render fix (42091746 803f053c)
eeObj.WriteMem32(0x001252bc,0x3c053Fab)
end

emuObj.AddVsyncHook(widescreen)