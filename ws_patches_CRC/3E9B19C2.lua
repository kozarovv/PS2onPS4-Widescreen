apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x001b633c,0x3c013f40)
eeObj.WriteMem32(0x001b6340,0x4481f000)
eeObj.WriteMem32(0x001b6344,0x4618a843)
eeObj.WriteMem32(0x001b6348,0x461e0842)

--Render fix
eeObj.WriteMem32(0x001afc44,0x3c023f2b)
end

emuObj.AddVsyncHook(widescreen)