apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov (3D Battles)
eeObj.WriteMem32(0x001565b8,0x0809c7cc)
eeObj.WriteMem32(0x00271f30,0x3c013f40)
eeObj.WriteMem32(0x00271f34,0x4481f000)
eeObj.WriteMem32(0x00271f38,0xc6010068)
eeObj.WriteMem32(0x00271f3c,0xc602006c)
eeObj.WriteMem32(0x00271f40,0x461e0843)
eeObj.WriteMem32(0x00271f48,0xe6010068)
eeObj.WriteMem32(0x00271f4c,0x08055970)

--2D fix (Not fixed address)
--eeObj.WriteMem32(0x002fda18,0x43b40000)
--eeObj.WriteMem32(0x002fda20,0x43b40000)

--eeObj.WriteMem32(0x002fc358,0x43555555)
--eeObj.WriteMem32(0x002fc360,0x43555555)


end

emuObj.AddVsyncHook(widescreen)