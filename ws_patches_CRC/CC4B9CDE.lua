apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Samurai Warriors 2 (U)(SLUS-21462)
--comment=Widescreen Hack (16:9) by ElHecht

-- 16:9
--4c3f023c 040203ae cdcc4234 
eeObj.WriteMem32(0x00179f18,0x3c023f19)
eeObj.WriteMem32(0x00179f20,0x3442999a)

--4c3f033c ee3e023c cdcc6334
eeObj.WriteMem32(0x0017a0d8,0x3c033f19)
eeObj.WriteMem32(0x0017a0e0,0x3463999a)

--cf43033c 0042043c
eeObj.WriteMem32(0x0017a3a4,0x3c03440a)
--cf43033c 8042043c
eeObj.WriteMem32(0x0017a344,0x3c03440a)

--Skip Videos
--eeObj.WriteMem32(0x0013CD10,0x24020001)
--ZeroGS patches
--zerogs=00000002
end

emuObj.AddVsyncHook(widescreen)