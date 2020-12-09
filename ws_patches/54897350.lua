apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

-- 16:9 (00000000 00000000 43ad1346 00000000)
eeObj.WriteMem32(0x0018fe84,0x3c013f40)
eeObj.WriteMem32(0x0018fe88,0x44810000)
eeObj.WriteMem32(0x0018fe90,0x4600c602)
end

emuObj.AddVsyncHook(widescreen)