apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Zoom  (1st)
--5f3f013c f4662134
--943f013c 4eef2134
eeObj.WriteMem32(0x001801e4,0x3c013f94)
eeObj.WriteMem32(0x001801e8,0x3421ef4e)

--Y-Fov (3rd)
--aa3f013c abaa2134
--e33f013c 4eef2134
eeObj.WriteMem32(0x001800e4,0x3c013fe3)
eeObj.WriteMem32(0x001800e8,0x3421ef4e)
----------------------------------------

--Render fix
--eeObj.WriteMem32(0x0014d62c,0x3c013f40)
--eeObj.WriteMem32(0x0014d864,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)