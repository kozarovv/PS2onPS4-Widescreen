apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--aa3f023c abaa4234 00008344 00608244 (1st)
eeObj.WriteMem32(0x001af938,0x3c023fe3)
eeObj.WriteMem32(0x001af93c,0x34428e2a)

--Zoom
--eeObj.WriteMem32(0x001c2b58,0x3c023f40)
--eeObj.WriteMem32(0x001c8dc0,0x3c023f40)

--Y-Fov ???
--eeObj.WriteMem32(0x001c3210,0x3c023f40)
--???
--eeObj.WriteMem32(0x001c9048,0x3c053f00)
end

emuObj.AddVsyncHook(widescreen)