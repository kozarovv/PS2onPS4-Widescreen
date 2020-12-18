apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack
eeObj.WriteMem32(0x0018B6B8,0x3C033F40)
eeObj.WriteMem32(0x0017e7d4,0x3c033f40)
end

emuObj.AddVsyncHook(widescreen)