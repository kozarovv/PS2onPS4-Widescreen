apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x0014076c,0x0c0501f1)
eeObj.WriteMem32(0x001407c4,0x3c013f40)
eeObj.WriteMem32(0x001407cc,0x4481f000)
eeObj.WriteMem32(0x00140808,0x461e7d43)
end

emuObj.AddVsyncHook(widescreen)