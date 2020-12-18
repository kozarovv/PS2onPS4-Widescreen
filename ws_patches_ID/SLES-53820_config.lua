apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Armored Core - Last Raven (PAL-E) (SLES-53820)
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x00174dd4,0x3c094455)
eeObj.WriteMem32(0x00174ddc,0x35295555)
eeObj.WriteMem32(0x00174e38,0x4489f000)
eeObj.WriteMem32(0x00174e3c,0x461e2f83)
eeObj.WriteMem32(0x00174e64,0xe49e02cc)

-- 16:10
eeObj.WriteMem32(0x00174dd4,0x3c094440)
eeObj.WriteMem32(0x00174ddc,0x35290000)
eeObj.WriteMem32(0x00174e38,0x4489f000)
eeObj.WriteMem32(0x00174e3c,0x461e2f83)
eeObj.WriteMem32(0x00174e64,0xe49e02cc)
end

emuObj.AddVsyncHook(widescreen)