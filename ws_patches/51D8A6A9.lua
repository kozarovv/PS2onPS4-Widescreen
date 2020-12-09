apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x001009dc,0x3c013f40)
eeObj.WriteMem32(0x001009f0,0x4481f800)
eeObj.WriteMem32(0x00100a40,0x461fad42)
eeObj.WriteMem32(0x00100a44,0x461fa502)
end

emuObj.AddVsyncHook(widescreen)