apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack (16:9) by ElHecht
--
-- 16:9
eeObj.WriteMem32(0x00146d28,0x3c0243b4)
eeObj.WriteMem32(0x00146ddc,0x3c0243f0)
eeObj.WriteMem32(0x001988cc,0x3c023f15)
end

emuObj.AddVsyncHook(widescreen)