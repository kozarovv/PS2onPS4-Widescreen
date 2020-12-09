apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen patch by BloodRaynare (Based on PAL version by ElHecht)

-- 16:9
eeObj.WriteMem32(0x00101130,0x3c013f40)
eeObj.WriteMem32(0x00272894,0x3c093f40)
eeObj.WriteMem32(0x00101714,0x0809ca25)
eeObj.WriteMem32(0x00101718,0x00000000)
eeObj.WriteMem32(0x0027289c,0x4489f000)
eeObj.WriteMem32(0x002728a0,0x461e0843)
eeObj.WriteMem32(0x002728a4,0x46000843)
eeObj.WriteMem32(0x002728a8,0xe62004e8)
eeObj.WriteMem32(0x002728ac,0x080405c6)
end

emuObj.AddVsyncHook(widescreen)