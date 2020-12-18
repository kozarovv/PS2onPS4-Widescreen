apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x00561a00,0x3f366666)

--Render Fix
eeObj.WriteMem32(0x00561a14,0x42a00000)
end

emuObj.AddVsyncHook(widescreen)