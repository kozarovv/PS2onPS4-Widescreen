apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x00111b04,0x3c024456)

--Render fix
eeObj.WriteMem32(0x00101ff8,0x3c0343e0)
end

emuObj.AddVsyncHook(widescreen)