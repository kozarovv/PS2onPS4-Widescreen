apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by  ElHecht (NTSC-U by Arapapa)

--Widescreen hack 16:9

eeObj.WriteMem32(0x001c0474,0x3c013f40)
eeObj.WriteMem32(0x001c0478,0x4481e800)
eeObj.WriteMem32(0x001c0480,0x461dbdc3)

--0000000003100046d00100e606000046
eeObj.WriteMem32(0x00291450,0x461d0002)
eeObj.WriteMem32(0x00291688,0x461d0002)
end

emuObj.AddVsyncHook(widescreen)