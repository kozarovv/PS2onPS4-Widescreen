apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=NBA Live 06 (K)(SLKA-25315)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--003f013c 00088144 1800028e
eeObj.WriteMem32(0x0049bf0c,0x3c013ec0)
end

emuObj.AddVsyncHook(widescreen)