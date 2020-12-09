apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Gameplay 16:9

--X-Fov
eeObj.WriteMem32(0x0021899c,0x3c014455)


--Render Fix
eeObj.WriteMem32(0x00218bf4,0x3c0143e0)


------------------------------------/
--Y-Fov
--eeObj.WriteMem32(0x002189ac,0x3c0143B4)

--Zoom
--eeObj.WriteMem32(0x00402f34,0x3c013fab)
end

emuObj.AddVsyncHook(widescreen)