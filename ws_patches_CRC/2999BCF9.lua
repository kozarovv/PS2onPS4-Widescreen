apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen patch by BloodRaynare

-- 16:9
eeObj.WriteMem32(0x00101074,0x3c013f40)
eeObj.WriteMem32(0x00299544,0x3c093f40)
eeObj.WriteMem32(0x001014a4,0x080a6551)
eeObj.WriteMem32(0x001014a8,0x00000000)
eeObj.WriteMem32(0x0029954c,0x4489f000)
eeObj.WriteMem32(0x00299550,0x461e0843)
eeObj.WriteMem32(0x00299554,0x46000843)
eeObj.WriteMem32(0x00299558,0xe62004e8)
eeObj.WriteMem32(0x0029955c,0x0804052a)
end

emuObj.AddVsyncHook(widescreen)