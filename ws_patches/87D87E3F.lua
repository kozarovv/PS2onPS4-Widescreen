apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov (Matrix hack)
eeObj.WriteMem32(0x0029ed24,0x3c013f40)
eeObj.WriteMem32(0x0029ed28,0x44810000)
eeObj.WriteMem32(0x0029ed30,0x4600c602)

--Render fix
--003f013c 00a08144 3e028384
eeObj.WriteMem32(0x00271e0c,0x3c013f2b)
end

emuObj.AddVsyncHook(widescreen)