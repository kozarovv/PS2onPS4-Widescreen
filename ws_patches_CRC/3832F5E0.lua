apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-fov
--803f023c 00688244 0045023c
eeObj.WriteMem32(0x0012ae64,0x3c023f40)

--Render fix
--003f023c 00088244 9901013c
eeObj.WriteMem32(0x00136b94,0x3c023f30)
end

emuObj.AddVsyncHook(widescreen)