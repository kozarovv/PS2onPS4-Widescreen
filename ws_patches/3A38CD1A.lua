apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-fov
--003f023c 00188344 f001a1c7
eeObj.WriteMem32(0x003e6d18,0x3c023f2b)

--Render fix
--803f033c 0040023c 00108344
eeObj.WriteMem32(0x003d2ac8,0x3c033f20)

--------------------------------------/
--X-Fov
--803f023c 5c01a0af 47a00046
--eeObj.WriteMem32(0x003d11c0,0x3c023f30)

--Y-Fov
--eeObj.WriteMem32(0x003d1308,0x3c023fab)

--zoom
--eeObj.WriteMem32(0x003d252c,0x3c023f20)
--eeObj.WriteMem32(0x003fc404,0x3c023fab)
--eeObj.WriteMem32(0x00137c04,0x3c033fab)

--Y-fov
--eeObj.WriteMem32(0x003e6d14,0x3c033fab)
end

emuObj.AddVsyncHook(widescreen)