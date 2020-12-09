apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-fov (In Squared Ring)
eeObj.WriteMem32(0x0014fab0,0x3c023f40)

--Zoom (Event)
eeObj.WriteMem32(0x00103288,0x3c013fab)

--Y-Fov (Event)
eeObj.WriteMem32(0x001bacd4,0x3c0743B4)
end

emuObj.AddVsyncHook(widescreen)