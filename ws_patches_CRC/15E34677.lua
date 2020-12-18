apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--a043013c 00b08144
eeObj.WriteMem32(0x00119a04,0x3c0143e0)
end

emuObj.AddVsyncHook(widescreen)