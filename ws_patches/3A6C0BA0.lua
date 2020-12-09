apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment= Widescreen pnach by Arapapa

-- 16:9 (00000000 00000000 43ad1346 00000000)
eeObj.WriteMem32(0x011c5c6c,0x3c013f40)
eeObj.WriteMem32(0x011c5c70,0x44810000)
eeObj.WriteMem32(0x011c5c78,0x4600c602)

--eeObj.WriteMem32(0x01768A80,0x3faaaaab)
end

emuObj.AddVsyncHook(widescreen)