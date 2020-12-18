apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Covert Command (E)(SLES-54568)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x002057ec,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)