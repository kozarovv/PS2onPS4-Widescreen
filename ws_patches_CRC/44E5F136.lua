apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Zoom
--803f023c 2d208002 00088244
eeObj.WriteMem32(0x0047a218,0x3c023f40)

--Y-Fov
--00bf033c 00088244 2d204002
eeObj.WriteMem32(0x004694ec,0x3c03bf2a)

--HUD fix (Zoom)
--0040023c 00088644
eeObj.WriteMem32(0x004699e4,0x3c023fc0)
end

emuObj.AddVsyncHook(widescreen)