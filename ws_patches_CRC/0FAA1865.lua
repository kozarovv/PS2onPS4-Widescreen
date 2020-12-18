apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x0015a8e0,0x080f4f58)

eeObj.WriteMem32(0x003d3d60,0x460c0082)
eeObj.WriteMem32(0x003d3d64,0x3c013fa0)
eeObj.WriteMem32(0x003d3d68,0x3421aaaa)
eeObj.WriteMem32(0x003d3d6c,0x4481f000)
eeObj.WriteMem32(0x003d3d70,0x461e1082)
eeObj.WriteMem32(0x003d3d74,0x08056a39)
end

emuObj.AddVsyncHook(widescreen)