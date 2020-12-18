apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Cocoto Funfair (E)(SLES-53805)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--003f023c 00bf033c
eeObj.WriteMem32(0x0046b578,0x3c023ec0)
end

emuObj.AddVsyncHook(widescreen)