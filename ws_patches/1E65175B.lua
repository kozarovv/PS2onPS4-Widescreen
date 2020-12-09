apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa
 
--Widescreen 16:9


--X-Fov
--803f013c 00608144 7c00458e
eeObj.WriteMem32(0x002da76c,0x3c013fab)

--Render fix
eeObj.WriteMem32(0x002da790,0x3c013fab)
end

emuObj.AddVsyncHook(widescreen)