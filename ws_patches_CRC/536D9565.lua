apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Zoom
--0040033c 42ce0346 
eeObj.WriteMem32(0x001a6104,0x3c033fc0)

--Y-Fov
--43200346 100022e6
eeObj.WriteMem32(0x001a614c,0x080e3b84)
eeObj.WriteMem32(0x0038ee10,0x46032043)
eeObj.WriteMem32(0x0038ee14,0x3c013f40)
eeObj.WriteMem32(0x0038ee18,0x4481f000)
eeObj.WriteMem32(0x0038ee1c,0x461e0843)
eeObj.WriteMem32(0x0038ee20,0x08069854)
end

emuObj.AddVsyncHook(widescreen)