apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment= Widescreen pnach by Arapapa

-- 16:9 (00000000 00000000 43ad1346 00000000)
eeObj.WriteMem32(0x010cc58c,0x3c013f40)
eeObj.WriteMem32(0x010cc590,0x44810000)
eeObj.WriteMem32(0x010cc598,0x4600c602)

-- Render fix  (803f023c 0cbd22ac)
eeObj.WriteMem32(0x01109f18,0x3C023FAB)
end

emuObj.AddVsyncHook(widescreen)