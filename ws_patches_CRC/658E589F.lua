apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x00100024,0x3c1b3f40)
eeObj.WriteMem32(0x00138380,0x449bf000)
eeObj.WriteMem32(0x00138388,0x4600f787)
eeObj.WriteMem32(0x001383d4,0xe7be0060)
eeObj.WriteMem32(0x0013811c,0x449bf000)
eeObj.WriteMem32(0x00138124,0x4600f787)
eeObj.WriteMem32(0x0013816c,0xe7be0050)
eeObj.WriteMem32(0x001384b0,0x3c023fab)
end

emuObj.AddVsyncHook(widescreen)