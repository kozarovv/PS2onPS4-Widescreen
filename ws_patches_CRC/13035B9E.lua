apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa and ElHecht

-- 16:9 (search 00000000 00000000 43ad1346 00000000)
eeObj.WriteMem32(0x001be9dc,0x3c013f40)
eeObj.WriteMem32(0x001be9e0,0x44810000)
eeObj.WriteMem32(0x001be9e8,0x4600c602)

eeObj.WriteMem32(0x001438bc,0x2402010e)
end

emuObj.AddVsyncHook(widescreen)