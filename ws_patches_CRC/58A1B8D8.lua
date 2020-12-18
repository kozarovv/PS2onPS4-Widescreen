apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x001c2e44,0x3c013f40)
eeObj.WriteMem32(0x001c2e48,0x4481e800)
eeObj.WriteMem32(0x001c2e50,0x461dbdc3)

eeObj.WriteMem32(0x0029a008,0x461d0002)
eeObj.WriteMem32(0x00299dd0,0x461d0002)

eeObj.WriteMem32(0x003c17f0,0x3c023b00)
end

emuObj.AddVsyncHook(widescreen)