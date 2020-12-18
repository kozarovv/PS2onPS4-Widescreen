apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x001e8448,0x3c013f40)

--Zoom
--eeObj.WriteMem32(0x001e839c,0x3c013ff0)
--Y-Fov + Zoom
--eeObj.WriteMem32(0x00104c28,0x3c013fab)
end

emuObj.AddVsyncHook(widescreen)