apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Furry Tales (E)(SLES-52824)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--003f023c 00088244 0000a3fc
eeObj.WriteMem32(0x00286ecc,0x3c023f2a)
end

emuObj.AddVsyncHook(widescreen)