apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Mountain Bike Adrenaline featuring Salomon (E)(SLES-54728)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x001996b0,0x3c013f10)
end

emuObj.AddVsyncHook(widescreen)