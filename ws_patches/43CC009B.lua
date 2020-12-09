apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x0016ead0,0x3c013f40)

--Render fix
eeObj.WriteMem32(0x0014edd4,0x3c013f2b)
end

emuObj.AddVsyncHook(widescreen)