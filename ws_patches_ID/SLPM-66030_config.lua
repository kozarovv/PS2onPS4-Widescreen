apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Heavy Metal Thunder (J)(SLPM-66030)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Zoom
eeObj.WriteMem32(0x0012dc5c,0x3c033fc0)

--Y-Fov
eeObj.WriteMem32(0x0012de6c,0x3c023fc7)
eeObj.WriteMem32(0x0012de70,0x3443ae14)
end

emuObj.AddVsyncHook(widescreen)