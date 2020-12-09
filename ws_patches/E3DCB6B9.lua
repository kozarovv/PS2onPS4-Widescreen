apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=NHL 2001 (E)(SLES-50027)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9


--X-Fov
--003f013c 00008144 0800aac7
eeObj.WriteMem32(0x0027021c,0x3c013ec0)
end

emuObj.AddVsyncHook(widescreen)