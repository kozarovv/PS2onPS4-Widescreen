apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Zoom
--803f023c 00288244 00000000
eeObj.WriteMem32(0x0014fcd8,0x3c023f40)

--Fov
--4040023c 00108244 600600c6
eeObj.WriteMem32(0x0014fcac,0x3c024010)
end

emuObj.AddVsyncHook(widescreen)