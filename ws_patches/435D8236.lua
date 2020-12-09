apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--Widescreen hack 16:9

eeObj.WriteMem32(0x0026cf84,0x3c023f40)

eeObj.WriteMem32(0x00843D30,0x44bff400)
eeObj.WriteMem32(0x00843EF0,0x443FE7FF)
eeObj.WriteMem32(0x008440B0,0x443FE7FF)
end

emuObj.AddVsyncHook(widescreen)