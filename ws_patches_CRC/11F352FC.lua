apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack (NTSC-J by Arapapa)

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x0022af4c,0x3c023f40)

--Render fix
eeObj.WriteMem32(0x0022af10,0x3c0243d7)
end

emuObj.AddVsyncHook(widescreen)