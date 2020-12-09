apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=World Tour Soccer 2002 (U)(SCUS-97172)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x0014d4bc,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)