apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x0013e5a4,0x4483e800)
eeObj.WriteMem32(0x0013e5a8,0x4600eb02)
eeObj.WriteMem32(0x0013e5ac,0xe7b40000)
eeObj.WriteMem32(0x0013e5b0,0x0c046676)
eeObj.WriteMem32(0x0013e5b4,0x46006d06)
eeObj.WriteMem32(0x0013e5b8,0x3c013f40)
eeObj.WriteMem32(0x0013e5bc,0x4481f000)
eeObj.WriteMem32(0x0013e5c0,0x461e0003)
eeObj.WriteMem32(0x0013e5d8,0x4600e846)
end

emuObj.AddVsyncHook(widescreen)