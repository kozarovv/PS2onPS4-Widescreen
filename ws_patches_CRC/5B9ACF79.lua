apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x00313f7c,0x3c013f10)
eeObj.WriteMem32(0x002bbe18,0x3c1b3f40)
eeObj.WriteMem32(0x002bc00c,0x3c013f00)
eeObj.WriteMem32(0x002bc010,0x4481a800)
eeObj.WriteMem32(0x002bc014,0x4615ad00)
eeObj.WriteMem32(0x002bc018,0x449bf000)
eeObj.WriteMem32(0x002bc054,0x461e0002)
eeObj.WriteMem32(0x002bc058,0x46150002)
eeObj.WriteMem32(0x002bc05c,0x4600a583)
eeObj.WriteMem32(0x002bc060,0xe6200054)
eeObj.WriteMem32(0x002bc064,0x4600a807)
end

emuObj.AddVsyncHook(widescreen)