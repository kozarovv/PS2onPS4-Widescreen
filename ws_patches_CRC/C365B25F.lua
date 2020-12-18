apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=The Cat in the Hat (E)(SLES-52034)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov

eeObj.WriteMem32(0x0010b3a4,0x3c013fb6)
eeObj.WriteMem32(0x0010b3a8,0x34212492)
end

emuObj.AddVsyncHook(widescreen)