apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Fisherman's Challenge (U)(SLUS 20553)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x0016cd0c,0x3c013ec0)
eeObj.WriteMem32(0x0016cd10,0x4481f000)

--42180146 02180046 42081446
eeObj.WriteMem32(0x0016cd50,0x4601f042)
end

emuObj.AddVsyncHook(widescreen)