apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack  by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x001f4520,0x3c013f40)

--Render fix
eeObj.WriteMem32(0x001f4788,0x3c0142d0)
end

emuObj.AddVsyncHook(widescreen)