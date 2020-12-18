apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x001c225c,0x3c013f40)
eeObj.WriteMem32(0x001c2260,0x44810000)
eeObj.WriteMem32(0x001c2268,0x4600c602)
eeObj.WriteMem32(0x00146f18,0x2402010e)
end

emuObj.AddVsyncHook(widescreen)