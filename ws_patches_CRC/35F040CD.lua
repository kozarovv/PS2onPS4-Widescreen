apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x0014d834,0x3c013f40)
eeObj.WriteMem32(0x0014d838,0x4481e000)
eeObj.WriteMem32(0x0014d8a4,0x461cc602)
eeObj.WriteMem32(0x0014d8a8,0x46170703)

eeObj.WriteMem32(0x0014d6c0,0x3c013f40)
eeObj.WriteMem32(0x0014d6f0,0x4481a800)
eeObj.WriteMem32(0x0014d71c,0x4615b582)
eeObj.WriteMem32(0x0014d720,0x46041d42)
end

emuObj.AddVsyncHook(widescreen)