apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--aa3f013c 713d2134 00188144 10008324 -> e23f013c fc932134 00188144 10008324
eeObj.WriteMem32(0x00183368,0x3c013fe2)
eeObj.WriteMem32(0x0018336c,0x3421fc93)
end

emuObj.AddVsyncHook(widescreen)