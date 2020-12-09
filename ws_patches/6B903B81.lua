apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack (PAL by Arapapa)

-- 16:9 (00000000 00000000 43ad1346 00000000)
eeObj.WriteMem32(0x001043fc,0x3c013f40)
eeObj.WriteMem32(0x00104400,0x44810000)
eeObj.WriteMem32(0x00104408,0x4600c602)

-- Render fix by El_Patas (803f053c 4400023c)
eeObj.WriteMem32(0x00125f3c,0x3C053FAB)
end

emuObj.AddVsyncHook(widescreen)