apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x0015392c,0x080669cc)
eeObj.WriteMem32(0x0019a730,0x4614c042)
eeObj.WriteMem32(0x0019a734,0x3c013f40)
eeObj.WriteMem32(0x0019a738,0x4481f000)
eeObj.WriteMem32(0x0019a73c,0x461e0842)
eeObj.WriteMem32(0x0019a740,0x08054e4c)

--Render fix
eeObj.WriteMem32(0x0015353c,0x3c013f2b)


end

emuObj.AddVsyncHook(widescreen)