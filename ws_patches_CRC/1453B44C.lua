apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--2044033c a41943c4
eeObj.WriteMem32(0x00111aa4,0x3c034456)

--Render fix
--a043033c 00088344
eeObj.WriteMem32(0x00101e80,0x3c0343e0)
end

emuObj.AddVsyncHook(widescreen)