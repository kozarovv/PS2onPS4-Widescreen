apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x0014f64c,0x3c013f40)
eeObj.WriteMem32(0x0014f650,0x4481e800)
eeObj.WriteMem32(0x0014f658,0x461dbdc3)

eeObj.WriteMem32(0x001c8400,0x4614a083)
eeObj.WriteMem32(0x001c8410,0x461d0002)

eeObj.WriteMem32(0x001c7c04,0x4614a103)
eeObj.WriteMem32(0x001c7c14,0x461d1082)
end

emuObj.AddVsyncHook(widescreen)