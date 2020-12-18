apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Zoom
eeObj.WriteMem32(0x001a4828,0x3c013c3e)
eeObj.WriteMem32(0x001a482c,0x3421a4ec)

--Y-Fov
eeObj.WriteMem32(0x001a4870,0x3c013f65)
eeObj.WriteMem32(0x001a4874,0x342140ee)
end

emuObj.AddVsyncHook(widescreen)