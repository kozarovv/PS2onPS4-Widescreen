apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen 16:9

--X-Fov
eeObj.WriteMem32(0x00290f90,0x080e2f48)
eeObj.WriteMem32(0x0038bd20,0x3c013f40)
eeObj.WriteMem32(0x0038bd24,0x4481f000)
eeObj.WriteMem32(0x0038bd28,0xc6010068)
eeObj.WriteMem32(0x0038bd2c,0xc602006c)
eeObj.WriteMem32(0x0038bd30,0x461e0843)
eeObj.WriteMem32(0x0038bd34,0xe6010068)
eeObj.WriteMem32(0x0038bd38,0x080a43e6)
end

emuObj.AddVsyncHook(widescreen)