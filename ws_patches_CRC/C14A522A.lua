apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Shinsengumi Gunrou-den [NTSC-J] (SLPM-65823)
--comment=Widescreen hack by ElHecht (pnach by Little Giant)

-- 16:9
eeObj.WriteMem32(0x00207b44,0x3c013f40)
eeObj.WriteMem32(0x00207b48,0x4481e000)
eeObj.WriteMem32(0x00207bb4,0x461cc602)
eeObj.WriteMem32(0x00207bb8,0x46170703)

eeObj.WriteMem32(0x002079d0,0x3c013f40)
eeObj.WriteMem32(0x00207a00,0x4481a800)
eeObj.WriteMem32(0x00207a2c,0x4615b582)
eeObj.WriteMem32(0x00207a30,0x46041d42)
end

emuObj.AddVsyncHook(widescreen)