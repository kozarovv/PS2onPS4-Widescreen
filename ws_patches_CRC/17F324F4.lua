apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x00105438,0x3c013f40)
eeObj.WriteMem32(0x00105650,0x3c013f40)
eeObj.WriteMem32(0x00105654,0x4481f000)
eeObj.WriteMem32(0x0010565c,0x461e6303)
end

emuObj.AddVsyncHook(widescreen)