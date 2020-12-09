apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x00100024,0x3c1b3f40)
eeObj.WriteMem32(0x00137b8c,0x449bf000)
eeObj.WriteMem32(0x00137b94,0x4600f787)
eeObj.WriteMem32(0x00137bdc,0xe7be0050)
eeObj.WriteMem32(0x00137df0,0x449bf000)
eeObj.WriteMem32(0x00137df8,0x4600f787)
eeObj.WriteMem32(0x00137e44,0xe7be0060)
eeObj.WriteMem32(0x00137f20,0x3c023fab)
end

emuObj.AddVsyncHook(widescreen)