apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--03000146 a00040e4
eeObj.WriteMem32(0x001d1528,0x08085a48)

eeObj.WriteMem32(0x00216920,0x46010003)
eeObj.WriteMem32(0x00216924,0x3c013f40)
eeObj.WriteMem32(0x00216928,0x4481f000)
eeObj.WriteMem32(0x0021692c,0x461e0002)
eeObj.WriteMem32(0x00216930,0x0807454b)
end

emuObj.AddVsyncHook(widescreen)