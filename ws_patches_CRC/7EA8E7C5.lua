apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Zoom
--0040033c 42ce0346 
eeObj.WriteMem32(0x001a8354,0x3c033fc0)

--Y-Fov
--43200346 100022e6
eeObj.WriteMem32(0x001a839c,0x080e72b4)
eeObj.WriteMem32(0x0039cad0,0x46032043)
eeObj.WriteMem32(0x0039cad4,0x3c013f40)
eeObj.WriteMem32(0x0039cad8,0x4481f000)
eeObj.WriteMem32(0x0039cadc,0x461e0843)
eeObj.WriteMem32(0x0039cae0,0x0806a0e8)
end

emuObj.AddVsyncHook(widescreen)