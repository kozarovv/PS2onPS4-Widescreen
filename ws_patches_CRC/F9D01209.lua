apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=All-Star Baseball 2004 (E)(SLES-51602)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-fov
--003f023c 00188344 f001a1c7
eeObj.WriteMem32(0x003e6dc8,0x3c023f2b)

--Render fix
--803f033c 0040023c 00108344
eeObj.WriteMem32(0x003d2ae8,0x3c033f20)
end

emuObj.AddVsyncHook(widescreen)