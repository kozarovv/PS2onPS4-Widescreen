apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by ElHecht (NTSC-U by Arapapa)

--eeObj.WriteMem32(0x001E9734,0x3C02BFAA)
--eeObj.WriteMem32(0x001E9748,0x3C02BFAA)

eeObj.WriteMem32(0x00151e5c,0x3c013f40)
eeObj.WriteMem32(0x00151e60,0x4481e800)
eeObj.WriteMem32(0x00151e68,0x461dbdc3)

--C00140E6 C80140E6 803F023C
eeObj.WriteMem32(0x001e7424,0x461d0842)

eeObj.WriteMem32(0x001e6c74,0x4614a143)
eeObj.WriteMem32(0x001e6c80,0x461d18c2)
end

emuObj.AddVsyncHook(widescreen)