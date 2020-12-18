apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Armored Core - Last Raven [NTSC-J] (SLPS-25462)
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x00174e64,0x3c094455)
eeObj.WriteMem32(0x00174e6c,0x35295555)
eeObj.WriteMem32(0x00174ec8,0x4489f000)
eeObj.WriteMem32(0x00174ecc,0x461e2f83)
eeObj.WriteMem32(0x00174ef4,0xe49e02cc)

-- 16:10
--eeObj.WriteMem32(0x00174e64,0x3c094440)
--eeObj.WriteMem32(0x00174e6c,0x35290000)
--eeObj.WriteMem32(0x00174ec8,0x4489f000)
--eeObj.WriteMem32(0x00174ecc,0x461e2f83)
--eeObj.WriteMem32(0x00174ef4,0xe49e02cc)
end

emuObj.AddVsyncHook(widescreen)