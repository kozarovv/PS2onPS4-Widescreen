apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Zoom
--0e3c013c 36fa2134 -> 3e3c013c eca42134

eeObj.WriteMem32(0x001a4930,0x3c013c3e)
eeObj.WriteMem32(0x001a4934,0x3421a4ec)

--Y-Fov
--983f013c f9d52134 -> 653f013c ee402134
eeObj.WriteMem32(0x001a4978,0x3c013f65)
eeObj.WriteMem32(0x001a497c,0x342140ee)
end

emuObj.AddVsyncHook(widescreen)