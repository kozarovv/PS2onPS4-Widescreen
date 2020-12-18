apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x0013ea88,0x3c013f40)
eeObj.WriteMem32(0x0013ea8c,0x4481f000)
eeObj.WriteMem32(0x0013ea90,0x461e0002)
eeObj.WriteMem32(0x0013ea94,0x46020003)
eeObj.WriteMem32(0x0013ea98,0xe4805ebc)
eeObj.WriteMem32(0x0013ea9c,0xc4805eb8)
eeObj.WriteMem32(0x0013eaa0,0x46010003)
end

emuObj.AddVsyncHook(widescreen)