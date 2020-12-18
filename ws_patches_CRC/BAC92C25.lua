apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=NBA Live 06 (PAL)(SLES-53546)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--003f013c 00088144 1800028e
eeObj.WriteMem32(0x0049be5c,0x3c013ec0)
end

emuObj.AddVsyncHook(widescreen)