apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen patch by BloodRaynare

-- 16:9
eeObj.WriteMem32(0x0010107c,0x3c013f40)
eeObj.WriteMem32(0x00298ea4,0x3c093f40)
eeObj.WriteMem32(0x00101504,0x080a63a9)
eeObj.WriteMem32(0x00101508,0x00000000)
eeObj.WriteMem32(0x00298eac,0x4489f000)
eeObj.WriteMem32(0x00298eb0,0x461e0843)
eeObj.WriteMem32(0x00298eb4,0x46000843)
eeObj.WriteMem32(0x00298eb8,0xe62004e8)
eeObj.WriteMem32(0x00298ebc,0x08040542)
end

emuObj.AddVsyncHook(widescreen)