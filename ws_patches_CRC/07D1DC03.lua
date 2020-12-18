apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--1042023c 2d808000 00008244
eeObj.WriteMem32(0x00407f9c,0x3c024240)
end

emuObj.AddVsyncHook(widescreen)