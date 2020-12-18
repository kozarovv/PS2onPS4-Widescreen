apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Gravity Games Bike - Street, Vert. Dirt. (E)(SLES-50715)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Zoom
eeObj.WriteMem32(0x001cdc6c,0x3c023f21)

--Y-Fov
eeObj.WriteMem32(0x001cdcb8,0x3c023f10)
end

emuObj.AddVsyncHook(widescreen)