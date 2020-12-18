apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Zoom
--f041013c 00008144 713e013c
eeObj.WriteMem32(0x00155e5c,0x3c014120)

--Y-Fov
--440003e6 03a50046
eeObj.WriteMem32(0x001f8ec0,0x0809ae74)
eeObj.WriteMem32(0x0026b9d0,0x4600a503)
eeObj.WriteMem32(0x0026b9d4,0x46031082)
eeObj.WriteMem32(0x0026b9d8,0x3c013f40)
eeObj.WriteMem32(0x0026b9dc,0x4481f000)
eeObj.WriteMem32(0x0026b9e0,0x461e18c3)
eeObj.WriteMem32(0x0026b9e4,0xe6030044)
eeObj.WriteMem32(0x0026b9e8,0x0807e3b3)
end

emuObj.AddVsyncHook(widescreen)