apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack (16:9) by ElHecht (pnach by Arapapa)

-- 16:9 
eeObj.WriteMem32(0x0027f7b4,0x3c013f40)
eeObj.WriteMem32(0x0027f7b8,0x44810000)
eeObj.WriteMem32(0x0027f7c0,0x4600c602)
eeObj.WriteMem32(0x0018285c,0x3c014430)
--
-- Compass
eeObj.WriteMem32(0x00416300,0x43C00000)
end

emuObj.AddVsyncHook(widescreen)